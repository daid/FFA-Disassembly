;; Disassembled with BadBoy Disassembler: https://github.com/daid/BadBoy

SECTION "bank05", ROMX[$4000], BANK[$05]

; This seems to contain map data
; Basic format is 2 pointers pointing to a "object table" and runlength encoded "tilemap" data
mapRoomPointers_00:
    db   $00, $03, $10, $10                            ;; 05:4000 ....
    dw   map00_room00_00_script                        ;; 05:4004 $04 $44
    dw   map00_room00_00_tiles                         ;; 05:4006 $0a $44
    dw   map00_room01_00_script                        ;; 05:4008 $3c $44
    dw   map00_room01_00_tiles                         ;; 05:400a $3f $44
    dw   map00_room02_00_script                        ;; 05:400c $6d $44
    dw   map00_room02_00_tiles                         ;; 05:400e $70 $44
    dw   map00_room03_00_script                        ;; 05:4010 $a2 $44
    dw   map00_room03_00_tiles                         ;; 05:4012 $a5 $44
    dw   map00_room04_00_script                        ;; 05:4014 $d1 $44
    dw   map00_room04_00_tiles                         ;; 05:4016 $d4 $44
    dw   map00_room05_00_script                        ;; 05:4018 $04 $45
    dw   map00_room05_00_tiles                         ;; 05:401a $07 $45
    dw   map00_room06_00_script                        ;; 05:401c $33 $45
    dw   map00_room06_00_tiles                         ;; 05:401e $39 $45
    dw   map00_room07_00_script                        ;; 05:4020 $67 $45
    dw   map00_room07_00_tiles                         ;; 05:4022 $6d $45
    dw   map00_room08_00_script                        ;; 05:4024 $97 $45
    dw   map00_room08_00_tiles                         ;; 05:4026 $9a $45
    dw   map00_room09_00_script                        ;; 05:4028 $d0 $45
    dw   map00_room09_00_tiles                         ;; 05:402a $d6 $45
    dw   map00_room0a_00_script                        ;; 05:402c $04 $46
    dw   map00_room0a_00_tiles                         ;; 05:402e $07 $46
    dw   map00_room0b_00_script                        ;; 05:4030 $33 $46
    dw   map00_room0b_00_tiles                         ;; 05:4032 $36 $46
    dw   map00_room0c_00_script                        ;; 05:4034 $62 $46
    dw   map00_room0c_00_tiles                         ;; 05:4036 $65 $46
    dw   map00_room0d_00_script                        ;; 05:4038 $95 $46
    dw   map00_room0d_00_tiles                         ;; 05:403a $98 $46
    dw   map00_room0e_00_script                        ;; 05:403c $ca $46
    dw   map00_room0e_00_tiles                         ;; 05:403e $cd $46
    dw   map00_room0f_00_script                        ;; 05:4040 $07 $47
    dw   map00_room0f_00_tiles                         ;; 05:4042 $0d $47
    dw   map00_room00_01_script                        ;; 05:4044 $51 $47
    dw   map00_room00_01_tiles                         ;; 05:4046 $54 $47
    dw   map00_room01_01_script                        ;; 05:4048 $8e $47
    dw   map00_room01_01_tiles                         ;; 05:404a $91 $47
    dw   map00_room02_01_script                        ;; 05:404c $cb $47
    dw   map00_room02_01_tiles                         ;; 05:404e $ce $47
    dw   map00_room03_01_script                        ;; 05:4050 $0e $48
    dw   map00_room03_01_tiles                         ;; 05:4052 $11 $48
    dw   map00_room04_01_script                        ;; 05:4054 $49 $48
    dw   map00_room04_01_tiles                         ;; 05:4056 $4c $48
    dw   map00_room05_01_script                        ;; 05:4058 $82 $48
    dw   map00_room05_01_tiles                         ;; 05:405a $88 $48
    dw   map00_room06_01_script                        ;; 05:405c $c6 $48
    dw   map00_room06_01_tiles                         ;; 05:405e $c9 $48
    dw   map00_room07_01_script                        ;; 05:4060 $03 $49
    dw   map00_room07_01_tiles                         ;; 05:4062 $06 $49
    dw   map00_room08_01_script                        ;; 05:4064 $2c $49
    dw   map00_room08_01_tiles                         ;; 05:4066 $2f $49
    dw   map00_room09_01_script                        ;; 05:4068 $61 $49
    dw   map00_room09_01_tiles                         ;; 05:406a $64 $49
    dw   map00_room0a_01_script                        ;; 05:406c $96 $49
    dw   map00_room0a_01_tiles                         ;; 05:406e $9c $49
    dw   map00_room0b_01_script                        ;; 05:4070 $da $49
    dw   map00_room0b_01_tiles                         ;; 05:4072 $dd $49
    dw   map00_room0c_01_script                        ;; 05:4074 $13 $4a
    dw   map00_room0c_01_tiles                         ;; 05:4076 $16 $4a
    dw   map00_room0d_01_script                        ;; 05:4078 $52 $4a
    dw   map00_room0d_01_tiles                         ;; 05:407a $58 $4a
    dw   map00_room0e_01_script                        ;; 05:407c $8a $4a
    dw   map00_room0e_01_tiles                         ;; 05:407e $8d $4a
    dw   map00_room0f_01_script                        ;; 05:4080 $b9 $4a
    dw   map00_room0f_01_tiles                         ;; 05:4082 $bc $4a
    dw   map00_room00_02_script                        ;; 05:4084 $ea $4a
    dw   map00_room00_02_tiles                         ;; 05:4086 $ed $4a
    dw   map00_room01_02_script                        ;; 05:4088 $23 $4b
    dw   map00_room01_02_tiles                         ;; 05:408a $29 $4b
    dw   map00_room02_02_script                        ;; 05:408c $5d $4b
    dw   map00_room02_02_tiles                         ;; 05:408e $60 $4b
    dw   map00_room03_02_script                        ;; 05:4090 $8c $4b
    dw   map00_room03_02_tiles                         ;; 05:4092 $8f $4b
    dw   map00_room04_02_script                        ;; 05:4094 $cb $4b
    dw   map00_room04_02_tiles                         ;; 05:4096 $ce $4b
    dw   map00_room05_02_script                        ;; 05:4098 $04 $4c
    dw   map00_room05_02_tiles                         ;; 05:409a $07 $4c
    dw   map00_room06_02_script                        ;; 05:409c $41 $4c
    dw   map00_room06_02_tiles                         ;; 05:409e $47 $4c
    dw   map00_room07_02_script                        ;; 05:40a0 $8b $4c
    dw   map00_room07_02_tiles                         ;; 05:40a2 $8e $4c
    dw   map00_room08_02_script                        ;; 05:40a4 $c2 $4c
    dw   map00_room08_02_tiles                         ;; 05:40a6 $c5 $4c
    dw   map00_room09_02_script                        ;; 05:40a8 $ed $4c
    dw   map00_room09_02_tiles                         ;; 05:40aa $f3 $4c
    dw   map00_room0a_02_script                        ;; 05:40ac $2d $4d
    dw   map00_room0a_02_tiles                         ;; 05:40ae $30 $4d
    dw   map00_room0b_02_script                        ;; 05:40b0 $70 $4d
    dw   map00_room0b_02_tiles                         ;; 05:40b2 $73 $4d
    dw   map00_room0c_02_script                        ;; 05:40b4 $a9 $4d
    dw   map00_room0c_02_tiles                         ;; 05:40b6 $ac $4d
    dw   map00_room0d_02_script                        ;; 05:40b8 $e0 $4d
    dw   map00_room0d_02_tiles                         ;; 05:40ba $e3 $4d
    dw   map00_room0e_02_script                        ;; 05:40bc $25 $4e
    dw   map00_room0e_02_tiles                         ;; 05:40be $28 $4e
    dw   map00_room0f_02_script                        ;; 05:40c0 $50 $4e
    dw   map00_room0f_02_tiles                         ;; 05:40c2 $56 $4e
    dw   map00_room00_03_script                        ;; 05:40c4 $82 $4e
    dw   map00_room00_03_tiles                         ;; 05:40c6 $85 $4e
    dw   map00_room01_03_script                        ;; 05:40c8 $c1 $4e
    dw   map00_room01_03_tiles                         ;; 05:40ca $c4 $4e
    dw   map00_room02_03_script                        ;; 05:40cc $fc $4e
    dw   map00_room02_03_tiles                         ;; 05:40ce $02 $4f
    dw   map00_room03_03_script                        ;; 05:40d0 $44 $4f
    dw   map00_room03_03_tiles                         ;; 05:40d2 $4a $4f
    dw   map00_room04_03_script                        ;; 05:40d4 $8c $4f
    dw   map00_room04_03_tiles                         ;; 05:40d6 $92 $4f
    dw   map00_room05_03_script                        ;; 05:40d8 $c8 $4f
    dw   map00_room05_03_tiles                         ;; 05:40da $cb $4f
    dw   map00_room06_03_script                        ;; 05:40dc $05 $50
    dw   map00_room06_03_tiles                         ;; 05:40de $08 $50
    dw   map00_room07_03_script                        ;; 05:40e0 $40 $50
    dw   map00_room07_03_tiles                         ;; 05:40e2 $46 $50
    dw   map00_room08_03_script                        ;; 05:40e4 $6e $50
    dw   map00_room08_03_tiles                         ;; 05:40e6 $71 $50
    dw   map00_room09_03_script                        ;; 05:40e8 $99 $50
    dw   map00_room09_03_tiles                         ;; 05:40ea $9c $50
    dw   map00_room0a_03_script                        ;; 05:40ec $cc $50
    dw   map00_room0a_03_tiles                         ;; 05:40ee $cf $50
    dw   map00_room0b_03_script                        ;; 05:40f0 $11 $51
    dw   map00_room0b_03_tiles                         ;; 05:40f2 $14 $51
    dw   map00_room0c_03_script                        ;; 05:40f4 $4a $51
    dw   map00_room0c_03_tiles                         ;; 05:40f6 $4d $51
    dw   map00_room0d_03_script                        ;; 05:40f8 $7f $51
    dw   map00_room0d_03_tiles                         ;; 05:40fa $85 $51
    dw   map00_room0e_03_script                        ;; 05:40fc $c1 $51
    dw   map00_room0e_03_tiles                         ;; 05:40fe $c4 $51
    dw   map00_room0f_03_script                        ;; 05:4100 $f4 $51
    dw   map00_room0f_03_tiles                         ;; 05:4102 $f7 $51
    dw   map00_room00_04_script                        ;; 05:4104 $23 $52
    dw   map00_room00_04_tiles                         ;; 05:4106 $26 $52
    dw   map00_room01_04_script                        ;; 05:4108 $64 $52
    dw   map00_room01_04_tiles                         ;; 05:410a $67 $52
    dw   map00_room02_04_script                        ;; 05:410c $9f $52
    dw   map00_room02_04_tiles                         ;; 05:410e $a2 $52
    dw   map00_room03_04_script                        ;; 05:4110 $e2 $52
    dw   map00_room03_04_tiles                         ;; 05:4112 $e5 $52
    dw   map00_room04_04_script                        ;; 05:4114 $27 $53
    dw   map00_room04_04_tiles                         ;; 05:4116 $2a $53
    dw   map00_room05_04_script                        ;; 05:4118 $66 $53
    dw   map00_room05_04_tiles                         ;; 05:411a $69 $53
    dw   map00_room06_04_script                        ;; 05:411c $a3 $53
    dw   map00_room06_04_tiles                         ;; 05:411e $a9 $53
    dw   map00_room07_04_script                        ;; 05:4120 $e3 $53
    dw   map00_room07_04_tiles                         ;; 05:4122 $e6 $53
    dw   map00_room08_04_script                        ;; 05:4124 $2a $54
    dw   map00_room08_04_tiles                         ;; 05:4126 $2d $54
    dw   map00_room09_04_script                        ;; 05:4128 $65 $54
    dw   map00_room09_04_tiles                         ;; 05:412a $68 $54
    dw   map00_room0a_04_script                        ;; 05:412c $a4 $54
    dw   map00_room0a_04_tiles                         ;; 05:412e $a7 $54
    dw   map00_room0b_04_script                        ;; 05:4130 $ef $54
    dw   map00_room0b_04_tiles                         ;; 05:4132 $f2 $54
    dw   map00_room0c_04_script                        ;; 05:4134 $26 $55
    dw   map00_room0c_04_tiles                         ;; 05:4136 $29 $55
    dw   map00_room0d_04_script                        ;; 05:4138 $5f $55
    dw   map00_room0d_04_tiles                         ;; 05:413a $62 $55
    dw   map00_room0e_04_script                        ;; 05:413c $92 $55
    dw   map00_room0e_04_tiles                         ;; 05:413e $95 $55
    dw   map00_room0f_04_script                        ;; 05:4140 $d9 $55
    dw   map00_room0f_04_tiles                         ;; 05:4142 $dc $55
    dw   map00_room00_05_script                        ;; 05:4144 $14 $56
    dw   map00_room00_05_tiles                         ;; 05:4146 $17 $56
    dw   map00_room01_05_script                        ;; 05:4148 $57 $56
    dw   map00_room01_05_tiles                         ;; 05:414a $5a $56
    dw   map00_room02_05_script                        ;; 05:414c $90 $56
    dw   map00_room02_05_tiles                         ;; 05:414e $93 $56
    dw   map00_room03_05_script                        ;; 05:4150 $c1 $56
    dw   map00_room03_05_tiles                         ;; 05:4152 $c4 $56
    dw   map00_room04_05_script                        ;; 05:4154 $f6 $56
    dw   map00_room04_05_tiles                         ;; 05:4156 $f9 $56
    dw   map00_room05_05_script                        ;; 05:4158 $39 $57
    dw   map00_room05_05_tiles                         ;; 05:415a $3f $57
    dw   map00_room06_05_script                        ;; 05:415c $73 $57
    dw   map00_room06_05_tiles                         ;; 05:415e $76 $57
    dw   map00_room07_05_script                        ;; 05:4160 $ac $57
    dw   map00_room07_05_tiles                         ;; 05:4162 $af $57
    dw   map00_room08_05_script                        ;; 05:4164 $e5 $57
    dw   map00_room08_05_tiles                         ;; 05:4166 $e8 $57
    dw   map00_room09_05_script                        ;; 05:4168 $20 $58
    dw   map00_room09_05_tiles                         ;; 05:416a $26 $58
    dw   map00_room0a_05_script                        ;; 05:416c $5a $58
    dw   map00_room0a_05_tiles                         ;; 05:416e $60 $58
    dw   map00_room0b_05_script                        ;; 05:4170 $a2 $58
    dw   map00_room0b_05_tiles                         ;; 05:4172 $a5 $58
    dw   map00_room0c_05_script                        ;; 05:4174 $df $58
    dw   map00_room0c_05_tiles                         ;; 05:4176 $e8 $58
    dw   map00_room0d_05_script                        ;; 05:4178 $2a $59
    dw   map00_room0d_05_tiles                         ;; 05:417a $2d $59
    dw   map00_room0e_05_script                        ;; 05:417c $65 $59
    dw   map00_room0e_05_tiles                         ;; 05:417e $68 $59
    dw   map00_room0f_05_script                        ;; 05:4180 $9e $59
    dw   map00_room0f_05_tiles                         ;; 05:4182 $a1 $59
    dw   map00_room00_06_script                        ;; 05:4184 $db $59
    dw   map00_room00_06_tiles                         ;; 05:4186 $de $59
    dw   map00_room01_06_script                        ;; 05:4188 $18 $5a
    dw   map00_room01_06_tiles                         ;; 05:418a $1b $5a
    dw   map00_room02_06_script                        ;; 05:418c $51 $5a
    dw   map00_room02_06_tiles                         ;; 05:418e $54 $5a
    dw   map00_room03_06_script                        ;; 05:4190 $8a $5a
    dw   map00_room03_06_tiles                         ;; 05:4192 $8d $5a
    dw   map00_room04_06_script                        ;; 05:4194 $c3 $5a
    dw   map00_room04_06_tiles                         ;; 05:4196 $c6 $5a
    dw   map00_room05_06_script                        ;; 05:4198 $0a $5b
    dw   map00_room05_06_tiles                         ;; 05:419a $0d $5b
    dw   map00_room06_06_script                        ;; 05:419c $3d $5b
    dw   map00_room06_06_tiles                         ;; 05:419e $40 $5b
    dw   map00_room07_06_script                        ;; 05:41a0 $72 $5b
    dw   map00_room07_06_tiles                         ;; 05:41a2 $75 $5b
    dw   map00_room08_06_script                        ;; 05:41a4 $a9 $5b
    dw   map00_room08_06_tiles                         ;; 05:41a6 $ac $5b
    dw   map00_room09_06_script                        ;; 05:41a8 $d6 $5b
    dw   map00_room09_06_tiles                         ;; 05:41aa $dc $5b
    dw   map00_room0a_06_script                        ;; 05:41ac $10 $5c
    dw   map00_room0a_06_tiles                         ;; 05:41ae $13 $5c
    dw   map00_room0b_06_script                        ;; 05:41b0 $41 $5c
    dw   map00_room0b_06_tiles                         ;; 05:41b2 $44 $5c
    dw   map00_room0c_06_script                        ;; 05:41b4 $7a $5c
    dw   map00_room0c_06_tiles                         ;; 05:41b6 $7d $5c
    dw   map00_room0d_06_script                        ;; 05:41b8 $b5 $5c
    dw   map00_room0d_06_tiles                         ;; 05:41ba $bb $5c
    dw   map00_room0e_06_script                        ;; 05:41bc $03 $5d
    dw   map00_room0e_06_tiles                         ;; 05:41be $06 $5d
    dw   map00_room0f_06_script                        ;; 05:41c0 $4e $5d
    dw   map00_room0f_06_tiles                         ;; 05:41c2 $51 $5d
    dw   map00_room00_07_script                        ;; 05:41c4 $85 $5d
    dw   map00_room00_07_tiles                         ;; 05:41c6 $88 $5d
    dw   map00_room01_07_script                        ;; 05:41c8 $ba $5d
    dw   map00_room01_07_tiles                         ;; 05:41ca $bd $5d
    dw   map00_room02_07_script                        ;; 05:41cc $f5 $5d
    dw   map00_room02_07_tiles                         ;; 05:41ce $f8 $5d
    dw   map00_room03_07_script                        ;; 05:41d0 $38 $5e
    dw   map00_room03_07_tiles                         ;; 05:41d2 $3b $5e
    dw   map00_room04_07_script                        ;; 05:41d4 $77 $5e
    dw   map00_room04_07_tiles                         ;; 05:41d6 $7a $5e
    dw   map00_room05_07_script                        ;; 05:41d8 $ac $5e
    dw   map00_room05_07_tiles                         ;; 05:41da $af $5e
    dw   map00_room06_07_script                        ;; 05:41dc $db $5e
    dw   map00_room06_07_tiles                         ;; 05:41de $de $5e
    dw   map00_room07_07_script                        ;; 05:41e0 $10 $5f
    dw   map00_room07_07_tiles                         ;; 05:41e2 $13 $5f
    dw   map00_room08_07_script                        ;; 05:41e4 $49 $5f
    dw   map00_room08_07_tiles                         ;; 05:41e6 $4f $5f
    dw   map00_room09_07_script                        ;; 05:41e8 $81 $5f
    dw   map00_room09_07_tiles                         ;; 05:41ea $84 $5f
    dw   map00_room0a_07_script                        ;; 05:41ec $b0 $5f
    dw   map00_room0a_07_tiles                         ;; 05:41ee $b3 $5f
    dw   map00_room0b_07_script                        ;; 05:41f0 $e3 $5f
    dw   map00_room0b_07_tiles                         ;; 05:41f2 $e6 $5f
    dw   map00_room0c_07_script                        ;; 05:41f4 $10 $60
    dw   map00_room0c_07_tiles                         ;; 05:41f6 $16 $60
    dw   map00_room0d_07_script                        ;; 05:41f8 $42 $60
    dw   map00_room0d_07_tiles                         ;; 05:41fa $45 $60
    dw   map00_room0e_07_script                        ;; 05:41fc $79 $60
    dw   map00_room0e_07_tiles                         ;; 05:41fe $7c $60
    dw   map00_room0f_07_script                        ;; 05:4200 $b8 $60
    dw   map00_room0f_07_tiles                         ;; 05:4202 $bb $60
    dw   map00_room00_08_script                        ;; 05:4204 $ed $60
    dw   map00_room00_08_tiles                         ;; 05:4206 $f3 $60
    dw   map00_room01_08_script                        ;; 05:4208 $25 $61
    dw   map00_room01_08_tiles                         ;; 05:420a $2e $61
    dw   map00_room02_08_script                        ;; 05:420c $72 $61
    dw   map00_room02_08_tiles                         ;; 05:420e $75 $61
    dw   map00_room03_08_script                        ;; 05:4210 $af $61
    dw   map00_room03_08_tiles                         ;; 05:4212 $b2 $61
    dw   map00_room04_08_script                        ;; 05:4214 $ec $61
    dw   map00_room04_08_tiles                         ;; 05:4216 $ef $61
    dw   map00_room05_08_script                        ;; 05:4218 $29 $62
    dw   map00_room05_08_tiles                         ;; 05:421a $2c $62
    dw   map00_room06_08_script                        ;; 05:421c $68 $62
    dw   map00_room06_08_tiles                         ;; 05:421e $6b $62
    dw   map00_room07_08_script                        ;; 05:4220 $95 $62
    dw   map00_room07_08_tiles                         ;; 05:4222 $98 $62
    dw   map00_room08_08_script                        ;; 05:4224 $c2 $62
    dw   map00_room08_08_tiles                         ;; 05:4226 $c5 $62
    dw   map00_room09_08_script                        ;; 05:4228 $ef $62
    dw   map00_room09_08_tiles                         ;; 05:422a $f2 $62
    dw   map00_room0a_08_script                        ;; 05:422c $1c $63
    dw   map00_room0a_08_tiles                         ;; 05:422e $1f $63
    dw   map00_room0b_08_script                        ;; 05:4230 $4d $63
    dw   map00_room0b_08_tiles                         ;; 05:4232 $50 $63
    dw   map00_room0c_08_script                        ;; 05:4234 $7c $63
    dw   map00_room0c_08_tiles                         ;; 05:4236 $7f $63
    dw   map00_room0d_08_script                        ;; 05:4238 $b7 $63
    dw   map00_room0d_08_tiles                         ;; 05:423a $ba $63
    dw   map00_room0e_08_script                        ;; 05:423c $f0 $63
    dw   map00_room0e_08_tiles                         ;; 05:423e $f6 $63
    dw   map00_room0f_08_script                        ;; 05:4240 $30 $64
    dw   map00_room0f_08_tiles                         ;; 05:4242 $33 $64
    dw   map00_room00_09_script                        ;; 05:4244 $63 $64
    dw   map00_room00_09_tiles                         ;; 05:4246 $66 $64
    dw   map00_room01_09_script                        ;; 05:4248 $92 $64
    dw   map00_room01_09_tiles                         ;; 05:424a $95 $64
    dw   map00_room02_09_script                        ;; 05:424c $d1 $64
    dw   map00_room02_09_tiles                         ;; 05:424e $d4 $64
    dw   map00_room03_09_script                        ;; 05:4250 $08 $65
    dw   map00_room03_09_tiles                         ;; 05:4252 $0b $65
    dw   map00_room04_09_script                        ;; 05:4254 $4d $65
    dw   map00_room04_09_tiles                         ;; 05:4256 $53 $65
    dw   map00_room05_09_script                        ;; 05:4258 $89 $65
    dw   map00_room05_09_tiles                         ;; 05:425a $8c $65
    dw   map00_room06_09_script                        ;; 05:425c $bc $65
    dw   map00_room06_09_tiles                         ;; 05:425e $c2 $65
    dw   map00_room07_09_script                        ;; 05:4260 $fc $65
    dw   map00_room07_09_tiles                         ;; 05:4262 $ff $65
    dw   map00_room08_09_script                        ;; 05:4264 $33 $66
    dw   map00_room08_09_tiles                         ;; 05:4266 $36 $66
    dw   map00_room09_09_script                        ;; 05:4268 $68 $66
    dw   map00_room09_09_tiles                         ;; 05:426a $6b $66
    dw   map00_room0a_09_script                        ;; 05:426c $99 $66
    dw   map00_room0a_09_tiles                         ;; 05:426e $9f $66
    dw   map00_room0b_09_script                        ;; 05:4270 $d9 $66
    dw   map00_room0b_09_tiles                         ;; 05:4272 $dc $66
    dw   map00_room0c_09_script                        ;; 05:4274 $0c $67
    dw   map00_room0c_09_tiles                         ;; 05:4276 $0f $67
    dw   map00_room0d_09_script                        ;; 05:4278 $43 $67
    dw   map00_room0d_09_tiles                         ;; 05:427a $46 $67
    dw   map00_room0e_09_script                        ;; 05:427c $6c $67
    dw   map00_room0e_09_tiles                         ;; 05:427e $6f $67
    dw   map00_room0f_09_script                        ;; 05:4280 $9d $67
    dw   map00_room0f_09_tiles                         ;; 05:4282 $a0 $67
    dw   map00_room00_0a_script                        ;; 05:4284 $dc $67
    dw   map00_room00_0a_tiles                         ;; 05:4286 $e2 $67
    dw   map00_room01_0a_script                        ;; 05:4288 $16 $68
    dw   map00_room01_0a_tiles                         ;; 05:428a $19 $68
    dw   map00_room02_0a_script                        ;; 05:428c $51 $68
    dw   map00_room02_0a_tiles                         ;; 05:428e $54 $68
    dw   map00_room03_0a_script                        ;; 05:4290 $84 $68
    dw   map00_room03_0a_tiles                         ;; 05:4292 $87 $68
    dw   map00_room04_0a_script                        ;; 05:4294 $b7 $68
    dw   map00_room04_0a_tiles                         ;; 05:4296 $ba $68
    dw   map00_room05_0a_script                        ;; 05:4298 $ec $68
    dw   map00_room05_0a_tiles                         ;; 05:429a $ef $68
    dw   map00_room06_0a_script                        ;; 05:429c $1d $69
    dw   map00_room06_0a_tiles                         ;; 05:429e $20 $69
    dw   map00_room07_0a_script                        ;; 05:42a0 $52 $69
    dw   map00_room07_0a_tiles                         ;; 05:42a2 $55 $69
    dw   map00_room08_0a_script                        ;; 05:42a4 $89 $69
    dw   map00_room08_0a_tiles                         ;; 05:42a6 $8c $69
    dw   map00_room09_0a_script                        ;; 05:42a8 $c6 $69
    dw   map00_room09_0a_tiles                         ;; 05:42aa $c9 $69
    dw   map00_room0a_0a_script                        ;; 05:42ac $ff $69
    dw   map00_room0a_0a_tiles                         ;; 05:42ae $05 $6a
    dw   map00_room0b_0a_script                        ;; 05:42b0 $37 $6a
    dw   map00_room0b_0a_tiles                         ;; 05:42b2 $3a $6a
    dw   map00_room0c_0a_script                        ;; 05:42b4 $78 $6a
    dw   map00_room0c_0a_tiles                         ;; 05:42b6 $7b $6a
    dw   map00_room0d_0a_script                        ;; 05:42b8 $ad $6a
    dw   map00_room0d_0a_tiles                         ;; 05:42ba $b0 $6a
    dw   map00_room0e_0a_script                        ;; 05:42bc $ea $6a
    dw   map00_room0e_0a_tiles                         ;; 05:42be $ed $6a
    dw   map00_room0f_0a_script                        ;; 05:42c0 $21 $6b
    dw   map00_room0f_0a_tiles                         ;; 05:42c2 $24 $6b
    dw   map00_room00_0b_script                        ;; 05:42c4 $5a $6b
    dw   map00_room00_0b_tiles                         ;; 05:42c6 $5d $6b
    dw   map00_room01_0b_script                        ;; 05:42c8 $8f $6b
    dw   map00_room01_0b_tiles                         ;; 05:42ca $92 $6b
    dw   map00_room02_0b_script                        ;; 05:42cc $c6 $6b
    dw   map00_room02_0b_tiles                         ;; 05:42ce $c9 $6b
    dw   map00_room03_0b_script                        ;; 05:42d0 $f7 $6b
    dw   map00_room03_0b_tiles                         ;; 05:42d2 $fa $6b
    dw   map00_room04_0b_script                        ;; 05:42d4 $2c $6c
    dw   map00_room04_0b_tiles                         ;; 05:42d6 $2f $6c
    dw   map00_room05_0b_script                        ;; 05:42d8 $6b $6c
    dw   map00_room05_0b_tiles                         ;; 05:42da $71 $6c
    dw   map00_room06_0b_script                        ;; 05:42dc $a5 $6c
    dw   map00_room06_0b_tiles                         ;; 05:42de $a8 $6c
    dw   map00_room07_0b_script                        ;; 05:42e0 $de $6c
    dw   map00_room07_0b_tiles                         ;; 05:42e2 $e1 $6c
    dw   map00_room08_0b_script                        ;; 05:42e4 $13 $6d
    dw   map00_room08_0b_tiles                         ;; 05:42e6 $19 $6d
    dw   map00_room09_0b_script                        ;; 05:42e8 $57 $6d
    dw   map00_room09_0b_tiles                         ;; 05:42ea $5d $6d
    dw   map00_room0a_0b_script                        ;; 05:42ec $93 $6d
    dw   map00_room0a_0b_tiles                         ;; 05:42ee $96 $6d
    dw   map00_room0b_0b_script                        ;; 05:42f0 $d0 $6d
    dw   map00_room0b_0b_tiles                         ;; 05:42f2 $d3 $6d
    dw   map00_room0c_0b_script                        ;; 05:42f4 $ff $6d
    dw   map00_room0c_0b_tiles                         ;; 05:42f6 $02 $6e
    dw   map00_room0d_0b_script                        ;; 05:42f8 $38 $6e
    dw   map00_room0d_0b_tiles                         ;; 05:42fa $3e $6e
    dw   map00_room0e_0b_script                        ;; 05:42fc $72 $6e
    dw   map00_room0e_0b_tiles                         ;; 05:42fe $75 $6e
    dw   map00_room0f_0b_script                        ;; 05:4300 $af $6e
    dw   map00_room0f_0b_tiles                         ;; 05:4302 $b2 $6e
    dw   map00_room00_0c_script                        ;; 05:4304 $ea $6e
    dw   map00_room00_0c_tiles                         ;; 05:4306 $ed $6e
    dw   map00_room01_0c_script                        ;; 05:4308 $23 $6f
    dw   map00_room01_0c_tiles                         ;; 05:430a $26 $6f
    dw   map00_room02_0c_script                        ;; 05:430c $5a $6f
    dw   map00_room02_0c_tiles                         ;; 05:430e $69 $6f
    dw   map00_room03_0c_script                        ;; 05:4310 $a1 $6f
    dw   map00_room03_0c_tiles                         ;; 05:4312 $a4 $6f
    dw   map00_room04_0c_script                        ;; 05:4314 $d6 $6f
    dw   map00_room04_0c_tiles                         ;; 05:4316 $d9 $6f
    dw   map00_room05_0c_script                        ;; 05:4318 $11 $70
    dw   map00_room05_0c_tiles                         ;; 05:431a $14 $70
    dw   map00_room06_0c_script                        ;; 05:431c $48 $70
    dw   map00_room06_0c_tiles                         ;; 05:431e $4b $70
    dw   map00_room07_0c_script                        ;; 05:4320 $81 $70
    dw   map00_room07_0c_tiles                         ;; 05:4322 $87 $70
    dw   map00_room08_0c_script                        ;; 05:4324 $bf $70
    dw   map00_room08_0c_tiles                         ;; 05:4326 $c2 $70
    dw   map00_room09_0c_script                        ;; 05:4328 $fa $70
    dw   map00_room09_0c_tiles                         ;; 05:432a $fd $70
    dw   map00_room0a_0c_script                        ;; 05:432c $29 $71
    dw   map00_room0a_0c_tiles                         ;; 05:432e $2c $71
    dw   map00_room0b_0c_script                        ;; 05:4330 $60 $71
    dw   map00_room0b_0c_tiles                         ;; 05:4332 $63 $71
    dw   map00_room0c_0c_script                        ;; 05:4334 $8b $71
    dw   map00_room0c_0c_tiles                         ;; 05:4336 $8e $71
    dw   map00_room0d_0c_script                        ;; 05:4338 $c6 $71
    dw   map00_room0d_0c_tiles                         ;; 05:433a $cf $71
    dw   map00_room0e_0c_script                        ;; 05:433c $0b $72
    dw   map00_room0e_0c_tiles                         ;; 05:433e $0e $72
    dw   map00_room0f_0c_script                        ;; 05:4340 $4e $72
    dw   map00_room0f_0c_tiles                         ;; 05:4342 $51 $72
    dw   map00_room00_0d_script                        ;; 05:4344 $85 $72
    dw   map00_room00_0d_tiles                         ;; 05:4346 $88 $72
    dw   map00_room01_0d_script                        ;; 05:4348 $b6 $72
    dw   map00_room01_0d_tiles                         ;; 05:434a $b9 $72
    dw   map00_room02_0d_script                        ;; 05:434c $e3 $72
    dw   map00_room02_0d_tiles                         ;; 05:434e $e6 $72
    dw   map00_room03_0d_script                        ;; 05:4350 $14 $73
    dw   map00_room03_0d_tiles                         ;; 05:4352 $17 $73
    dw   map00_room04_0d_script                        ;; 05:4354 $4f $73
    dw   map00_room04_0d_tiles                         ;; 05:4356 $55 $73
    dw   map00_room05_0d_script                        ;; 05:4358 $8f $73
    dw   map00_room05_0d_tiles                         ;; 05:435a $92 $73
    dw   map00_room06_0d_script                        ;; 05:435c $ca $73
    dw   map00_room06_0d_tiles                         ;; 05:435e $d0 $73
    dw   map00_room07_0d_script                        ;; 05:4360 $f8 $73
    dw   map00_room07_0d_tiles                         ;; 05:4362 $fb $73
    dw   map00_room08_0d_script                        ;; 05:4364 $37 $74
    dw   map00_room08_0d_tiles                         ;; 05:4366 $3d $74
    dw   map00_room09_0d_script                        ;; 05:4368 $7b $74
    dw   map00_room09_0d_tiles                         ;; 05:436a $7e $74
    dw   map00_room0a_0d_script                        ;; 05:436c $b2 $74
    dw   map00_room0a_0d_tiles                         ;; 05:436e $b5 $74
    dw   map00_room0b_0d_script                        ;; 05:4370 $ed $74
    dw   map00_room0b_0d_tiles                         ;; 05:4372 $f0 $74
    dw   map00_room0c_0d_script                        ;; 05:4374 $26 $75
    dw   map00_room0c_0d_tiles                         ;; 05:4376 $29 $75
    dw   map00_room0d_0d_script                        ;; 05:4378 $5b $75
    dw   map00_room0d_0d_tiles                         ;; 05:437a $5e $75
    dw   map00_room0e_0d_script                        ;; 05:437c $8c $75
    dw   map00_room0e_0d_tiles                         ;; 05:437e $8f $75
    dw   map00_room0f_0d_script                        ;; 05:4380 $d9 $75
    dw   map00_room0f_0d_tiles                         ;; 05:4382 $dc $75
    dw   map00_room00_0e_script                        ;; 05:4384 $12 $76
    dw   map00_room00_0e_tiles                         ;; 05:4386 $1b $76
    dw   map00_room01_0e_script                        ;; 05:4388 $57 $76
    dw   map00_room01_0e_tiles                         ;; 05:438a $5a $76
    dw   map00_room02_0e_script                        ;; 05:438c $90 $76
    dw   map00_room02_0e_tiles                         ;; 05:438e $93 $76
    dw   map00_room03_0e_script                        ;; 05:4390 $c3 $76
    dw   map00_room03_0e_tiles                         ;; 05:4392 $c9 $76
    dw   map00_room04_0e_script                        ;; 05:4394 $fb $76
    dw   map00_room04_0e_tiles                         ;; 05:4396 $fe $76
    dw   map00_room05_0e_script                        ;; 05:4398 $36 $77
    dw   map00_room05_0e_tiles                         ;; 05:439a $39 $77
    dw   map00_room06_0e_script                        ;; 05:439c $69 $77
    dw   map00_room06_0e_tiles                         ;; 05:439e $6c $77
    dw   map00_room07_0e_script                        ;; 05:43a0 $98 $77
    dw   map00_room07_0e_tiles                         ;; 05:43a2 $9b $77
    dw   map00_room08_0e_script                        ;; 05:43a4 $cf $77
    dw   map00_room08_0e_tiles                         ;; 05:43a6 $d2 $77
    dw   map00_room09_0e_script                        ;; 05:43a8 $04 $78
    dw   map00_room09_0e_tiles                         ;; 05:43aa $0a $78
    dw   map00_room0a_0e_script                        ;; 05:43ac $42 $78
    dw   map00_room0a_0e_tiles                         ;; 05:43ae $45 $78
    dw   map00_room0b_0e_script                        ;; 05:43b0 $7d $78
    dw   map00_room0b_0e_tiles                         ;; 05:43b2 $80 $78
    dw   map00_room0c_0e_script                        ;; 05:43b4 $b6 $78
    dw   map00_room0c_0e_tiles                         ;; 05:43b6 $b9 $78
    dw   map00_room0d_0e_script                        ;; 05:43b8 $ed $78
    dw   map00_room0d_0e_tiles                         ;; 05:43ba $f3 $78
    dw   map00_room0e_0e_script                        ;; 05:43bc $2b $79
    dw   map00_room0e_0e_tiles                         ;; 05:43be $2e $79
    dw   map00_room0f_0e_script                        ;; 05:43c0 $78 $79
    dw   map00_room0f_0e_tiles                         ;; 05:43c2 $7b $79
    dw   map00_room00_0f_script                        ;; 05:43c4 $b7 $79
    dw   map00_room00_0f_tiles                         ;; 05:43c6 $ba $79
    dw   map00_room01_0f_script                        ;; 05:43c8 $e8 $79
    dw   map00_room01_0f_tiles                         ;; 05:43ca $eb $79
    dw   map00_room02_0f_script                        ;; 05:43cc $19 $7a
    dw   map00_room02_0f_tiles                         ;; 05:43ce $1c $7a
    dw   map00_room03_0f_script                        ;; 05:43d0 $3c $7a
    dw   map00_room03_0f_tiles                         ;; 05:43d2 $3f $7a
    dw   map00_room04_0f_script                        ;; 05:43d4 $67 $7a
    dw   map00_room04_0f_tiles                         ;; 05:43d6 $6a $7a
    dw   map00_room05_0f_script                        ;; 05:43d8 $8c $7a
    dw   map00_room05_0f_tiles                         ;; 05:43da $8f $7a
    dw   map00_room06_0f_script                        ;; 05:43dc $b5 $7a
    dw   map00_room06_0f_tiles                         ;; 05:43de $b8 $7a
    dw   map00_room07_0f_script                        ;; 05:43e0 $e4 $7a
    dw   map00_room07_0f_tiles                         ;; 05:43e2 $e7 $7a
    dw   map00_room08_0f_script                        ;; 05:43e4 $17 $7b
    dw   map00_room08_0f_tiles                         ;; 05:43e6 $1a $7b
    dw   map00_room09_0f_script                        ;; 05:43e8 $4e $7b
    dw   map00_room09_0f_tiles                         ;; 05:43ea $51 $7b
    dw   map00_room0a_0f_script                        ;; 05:43ec $89 $7b
    dw   map00_room0a_0f_tiles                         ;; 05:43ee $8f $7b
    dw   map00_room0b_0f_script                        ;; 05:43f0 $c3 $7b
    dw   map00_room0b_0f_tiles                         ;; 05:43f2 $c6 $7b
    dw   map00_room0c_0f_script                        ;; 05:43f4 $f2 $7b
    dw   map00_room0c_0f_tiles                         ;; 05:43f6 $f5 $7b
    dw   map00_room0d_0f_script                        ;; 05:43f8 $23 $7c
    dw   map00_room0d_0f_tiles                         ;; 05:43fa $29 $7c
    dw   map00_room0e_0f_script                        ;; 05:43fc $61 $7c
    dw   map00_room0e_0f_tiles                         ;; 05:43fe $64 $7c
    dw   map00_room0f_0f_script                        ;; 05:4400 $9e $7c
    dw   map00_room0f_0f_tiles                         ;; 05:4402 $a1 $7c

map00_room00_00_script:
    dw   $0076                                         ;; 05:4404 $76 $00
    db   $33                                           ;; 05:4406 ?
    dw   $0380                                         ;; 05:4407 $80 $03
    db   $ff                                           ;; 05:4409 ?

map00_room00_00_tiles:
    db         $91,        $91,        $91,$11         ;; 05:440a ????
    db         $91,        $91,        $91,$11         ;; 05:440e ????
    db $00,$00,        $dd,$20,        $91,$11         ;; 05:4412 ??????
    db $00,$00,$5e,$2e,$5e,$69,$3b,        $80         ;; 05:4418 ????????
    db $40,        $80,        $80,$3b,$00,$00         ;; 05:4420 ??????
    db $53,$00,$3b,        $80,$3b,        $80         ;; 05:4426 ??????
    db $40,        $80,$30,$31,$40,$00,$00,$30         ;; 05:442c ????????
    db $41,$40,$30,        $c1,$41,$40,$00,$41         ;; 05:4434 ????????

map00_room01_00_script:
    dw   $007c                                         ;; 05:443c $7c $00
    db   $ff                                           ;; 05:443e ?

map00_room01_00_tiles:
    db         $91,        $91,        $91,$11         ;; 05:443f ????
    db         $91,        $91,        $91,$11         ;; 05:4443 ????
    db         $91,        $91,        $91,$11         ;; 05:4447 ????
    db         $80,$00,$3b,$00,$00,$20,$11,$11         ;; 05:444b ????????
    db         $80,$3b,        $80,        $80         ;; 05:4453 ????
    db $00,$00,$3b,        $80,$3b,        $80         ;; 05:4457 ??????
    db $40,$30,$40,$00,$00,$3b,        $80,$34         ;; 05:445d ????????
    db         $c1,$40,$30,$40,$00,$00,$34,$42         ;; 05:4465 ????????

map00_room02_00_script:
    dw   $0064                                         ;; 05:446d $64 $00
    db   $ff                                           ;; 05:446f ?

map00_room02_00_tiles:
    db         $91,        $91,        $91,$11         ;; 05:4470 ????
    db         $91,        $91,        $91,$11         ;; 05:4474 ????
    db         $91,        $91,        $80,$00         ;; 05:4478 ????
    db         $91,        $91,$23,$23,$00,$00         ;; 05:447c ??????
    db         $80,$00,$11,$11,$42,$42,$23,$23         ;; 05:4482 ????????
    db $00,$00,$2b,$23,$11,$11,        $c2,$42         ;; 05:448a ????????
    db $23,$23,$2b,$42,$11,$11,        $c2,$42         ;; 05:4492 ????????
    db $42,$42,$2b,$42,$11,$11,        $c2,$42         ;; 05:449a ????????

map00_room03_00_script:
    dw   $0064                                         ;; 05:44a2 $64 $00
    db   $ff                                           ;; 05:44a4 ?

map00_room03_00_tiles:
    db         $91,        $91,        $91,$11         ;; 05:44a5 ????
    db         $91,        $91,        $91,$11         ;; 05:44a9 ????
    db         $80,$00,$00,$20,        $91,$11         ;; 05:44ad ??????
    db         $80,        $80,        $80,$00         ;; 05:44b3 ????
    db $23,        $80,        $80,        $80         ;; 05:44b7 ????
    db $42,        $80,        $80,$30,$40,$00         ;; 05:44bb ??????
    db $42,$30,$40,        $80,$30,$41,$41,$40         ;; 05:44c1 ????????
    db $30,$41,$41,$40,$00,$30,        $c1,$41         ;; 05:44c9 ????????

map00_room04_00_script:
    dw   $0064                                         ;; 05:44d1 $64 $00
    db   $ff                                           ;; 05:44d3 ?

map00_room04_00_tiles:
    db         $91,        $91,        $91,$11         ;; 05:44d4 ????
    db         $91,        $91,        $91,$11         ;; 05:44d8 ????
    db         $91,        $91,        $91,$11         ;; 05:44dc ????
    db         $80,$00,$00,$20,        $91,$11         ;; 05:44e0 ??????
    db $00,$00,$48,        $80,        $80,$00         ;; 05:44e6 ??????
    db         $80,$00,$48,        $80,$00,$00         ;; 05:44ec ??????
    db $30,$40,        $80,$00,$30,$40,$00,$00         ;; 05:44f2 ????????
    db $41,$41,$40,$00,$00,$30,$41,$41,$40,$30         ;; 05:44fa ??????????

map00_room05_00_script:
    dw   $0064                                         ;; 05:4504 $64 $00
    db   $ff                                           ;; 05:4506 ?

map00_room05_00_tiles:
    db         $91,        $91,        $91,$11         ;; 05:4507 ????
    db         $91,        $91,        $91,$11         ;; 05:450b ????
    db         $91,$11,$11,$22,        $80,$30         ;; 05:450f ??????
    db $11,$11,$22,        $80,        $80,$41         ;; 05:4515 ??????
    db         $80,$00,$00,$48,        $80,$41         ;; 05:451b ??????
    db $00,$00,$48,$48,        $80,$30,$40,$41         ;; 05:4521 ????????
    db         $80,        $80,$00,        $c1         ;; 05:4529 ????
    db $31,$40,        $80,$30,$40,        $c1         ;; 05:452d ??????

map00_room06_00_script:
    dw   $003d                                         ;; 05:4533 $3d $00
    db   $37                                           ;; 05:4535 ?
    dw   $0474                                         ;; 05:4536 $74 $04
    db   $ff                                           ;; 05:4538 ?

map00_room06_00_tiles:
    db         $91,        $91,        $91,$11         ;; 05:4539 ????
    db         $a1,        $a1,        $91,$11         ;; 05:453d ????
    db $40,        $85,$05,$05,$20,        $91         ;; 05:4541 ??????
    db $41,$40,$05,$46,        $85,$7b,$21,$21         ;; 05:4547 ????????
    db $41,$41,        $85,        $85,$05,$05         ;; 05:454f ??????
    db $41,$41,        $85,$46,        $85,$05         ;; 05:4555 ??????
    db $41,$41,$30,$40,        $85,        $85         ;; 05:455b ??????
    db         $c1,$41,        $85,$05,$05,$46         ;; 05:4561 ??????

map00_room07_00_script:
    dw   $049a                                         ;; 05:4567 $9a $04
    db   $57                                           ;; 05:4569 ?
    dw   $028b                                         ;; 05:456a $8b $02
    db   $ff                                           ;; 05:456c ?

map00_room07_00_tiles:
    db         $91,        $91,        $91,$11         ;; 05:456d ????
    db         $91,        $91,$11,        $a1         ;; 05:4571 ????
    db         $91,$11,$11,$21,$22,        $85         ;; 05:4575 ??????
    db         $a1,$21,$22,        $85,$05,$05         ;; 05:457b ??????
    db         $85,        $85,        $85,$05         ;; 05:4581 ????
    db $05,$05,$46,        $85,$05,$46,$05,$05         ;; 05:4585 ????????
    db         $85,        $85,        $85,$05         ;; 05:458d ????
    db $46,        $85,        $85,$05,$05,$46         ;; 05:4591 ??????

map00_room08_00_script:
    dw   $006d                                         ;; 05:4597 $6d $00
    db   $ff                                           ;; 05:4599 ?

map00_room08_00_tiles:
    db         $91,        $91,        $91,$11         ;; 05:459a ????
    db         $a1,        $a1,$21,        $91         ;; 05:459e ????
    db         $85,$30,$40,$30,$40,$20,$11,$11         ;; 05:45a2 ????????
    db         $85,$50,        $c1,$40,$10,$11         ;; 05:45aa ??????
    db         $85,$05,$05,$50,$41,$41,$20,$11         ;; 05:45b0 ????????
    db $05,$05,$46,$46,$05,$30,$41,$41,$40,$10         ;; 05:45b8 ??????????
    db         $85,$05,$05,$50,$51,$51,$41,$31         ;; 05:45c2 ????????
    db $46,        $85,        $85,$46,$50,$41         ;; 05:45ca ??????

map00_room09_00_script:
    dw   $0070                                         ;; 05:45d0 $70 $00
    db   $36                                           ;; 05:45d2 ?
    dw   $0381                                         ;; 05:45d3 $81 $03
    db   $ff                                           ;; 05:45d5 ?

map00_room09_00_tiles:
    db         $91,        $91,        $91,$11         ;; 05:45d6 ????
    db         $91,        $91,        $91,$11         ;; 05:45da ????
    db         $91,$11,$11,        $dd,$11,$11         ;; 05:45de ??????
    db         $91,$25,$25,$5e,$2e,$5e,$35,$35         ;; 05:45e4 ????????
    db         $91,        $a5,        $a5,$25         ;; 05:45ec ????
    db         $91,$23,        $a5,        $a5         ;; 05:45f0 ????
    db $31,$11,$11,$42,$23,        $a5,$25,$35         ;; 05:45f4 ????????
    db $41,$11,$11,$42,$42,        $a3,$23,$23         ;; 05:45fc ????????

map00_room0a_00_script:
    dw   $0073                                         ;; 05:4604 $73 $00
    db   $ff                                           ;; 05:4606 ?

map00_room0a_00_tiles:
    db         $91,        $91,        $91,$11         ;; 05:4607 ????
    db         $91,        $91,        $91,$11         ;; 05:460b ????
    db         $91,$11,$22,        $a5,$25,$25         ;; 05:460f ??????
    db $35,$35,        $a5,$25,$3e,        $a5         ;; 05:4615 ??????
    db         $a5,$25,$3e,        $a5,$25,$25         ;; 05:461b ??????
    db         $a5,        $a5,$25,$3d,$25,$25         ;; 05:4621 ??????
    db         $b5,        $a5,        $a5,$35         ;; 05:4627 ????
    db $23,$23,$35,$35,        $a5,$25,$35,$35         ;; 05:462b ????????

map00_room0b_00_script:
    dw   $0070                                         ;; 05:4633 $70 $00
    db   $ff                                           ;; 05:4635 ?

map00_room0b_00_tiles:
    db         $91,        $91,        $91,$11         ;; 05:4636 ????
    db         $91,        $91,        $91,$11         ;; 05:463a ????
    db         $a5,        $a5,$25,$3d,$25,$25         ;; 05:463e ??????
    db         $a5,$3e,        $a5,        $a5         ;; 05:4644 ????
    db $25,$25,$3e,        $a5,        $a5,$25         ;; 05:4648 ??????
    db         $a5,$25,$25,$3d,        $a5,$25         ;; 05:464e ??????
    db $35,        $a5,        $a5,$25,$30,$31         ;; 05:4654 ??????
    db         $b5,$35,$25,$25,$30,$31,$41,$41         ;; 05:465a ????????

map00_room0c_00_script:
    dw   $0073                                         ;; 05:4662 $73 $00
    db   $ff                                           ;; 05:4664 ?

map00_room0c_00_tiles:
    db         $91,        $91,        $91,$11         ;; 05:4665 ????
    db         $91,        $91,        $91,$11         ;; 05:4669 ????
    db         $a5,$20,        $91,        $91         ;; 05:466d ????
    db         $a5,$25,$20,        $91,$11,$11         ;; 05:4671 ??????
    db $25,$25,$3e,        $a5,$25,$20,$11,$11         ;; 05:4677 ????????
    db         $a5,$25,$3d,        $a5,$20,$11         ;; 05:467f ??????
    db $40,        $a5,        $a5,$25,$30,$40         ;; 05:4685 ??????
    db $41,$40,$30,$40,$30,$40,$25,$25,$41,$41         ;; 05:468b ??????????

map00_room0d_00_script:
    dw   $0079                                         ;; 05:4695 $79 $00
    db   $ff                                           ;; 05:4697 ?

map00_room0d_00_tiles:
    db         $91,$11,        $80,$00,$00,$50         ;; 05:4698 ??????
    db         $91,$11,        $80,        $80         ;; 05:469e ????
    db         $91,$11,$33,$00,$00,$3b,$00,$00         ;; 05:46a2 ????????
    db         $91,$12,$50,$33,        $80,$00         ;; 05:46aa ??????
    db         $91,$11,$02,$50,        $a3,$23         ;; 05:46b0 ??????
    db         $91,$11,$11,        $b8,$38,$38         ;; 05:46b6 ??????
    db $30,$40,$20,        $91,        $91,$11         ;; 05:46bc ??????
    db $41,$41,$40,$30,$40,$20,        $91,$11         ;; 05:46c2 ????????

map00_room0e_00_script:
    dw   $0079                                         ;; 05:46ca $79 $00
    db   $ff                                           ;; 05:46cc ?

map00_room0e_00_tiles:
    db $51,$51,$52,$50,        $c1,$42,$51,$51         ;; 05:46cd ????????
    db         $80,$00,$50,$51,$51,$52,$00,$00         ;; 05:46d5 ????????
    db $00,$00,$3b,        $80,        $80,$00         ;; 05:46dd ??????
    db         $80,        $80,        $80,$30         ;; 05:46e3 ????
    db $23,$33,$00,$3b,$00,$00,$3b,$00,$30,$51         ;; 05:46e7 ??????????
    db $02,$50,$33,$00,$3b,$3b,$00,$3b,$50,$41         ;; 05:46f1 ??????????
    db $11,$02,$50,        $80,        $80,$50         ;; 05:46fb ??????
    db $11,$11,$38,        $80,        $80,$30         ;; 05:4701 ??????

map00_room0f_00_script:
    dw   $04a3                                         ;; 05:4707 $a3 $04
    db   $44                                           ;; 05:4709 ?
    dw   $0270                                         ;; 05:470a $70 $02
    db   $ff                                           ;; 05:470c ?

map00_room0f_00_tiles:
    db $51,$53,$50,$41,$51,$41,$42,$52,$10,$11         ;; 05:470d ??????????
    db         $80,$50,$53,$50,$52,$00,$20,$21         ;; 05:4717 ????????
    db $00,$00,$30,$32,$30,$32,        $80,$00         ;; 05:471f ????????
    db $40,$30,$41,$42,$41,$42,$32,        $80         ;; 05:4727 ????????
    db $53,$41,$42,$42,$4d,$42,$52,$00,$00,$30         ;; 05:472f ??????????
    db $40,$50,$42,$52,        $80,$00,$00,$41         ;; 05:4739 ????????
    db $41,        $80,        $80,$00,$30,$41         ;; 05:4741 ??????
    db $41,$40,$30,$40,$30,$40,$30,$31,$41,$41         ;; 05:4747 ??????????

map00_room00_01_script:
    dw   $0076                                         ;; 05:4751 $76 $00
    db   $ff                                           ;; 05:4753 ?

map00_room00_01_tiles:
    db $41,$42,$52,$50,$51,$41,$41,$42,$00,$50         ;; 05:4754 ??????????
    db $41,$42,        $80,$50,$51,$52,$00,$00         ;; 05:475e ????????
    db $51,$52,        $80,        $80,$00,$00         ;; 05:4766 ??????
    db $00,$00,$3b,        $80,$3b,        $80         ;; 05:476c ??????
    db         $80,$3b,        $80,$3b,$00,$00         ;; 05:4772 ??????
    db $64,$64,$33,$00,$3b,        $80,$3b,$00         ;; 05:4778 ????????
    db $38,$02,$50,        $80,        $80,$30         ;; 05:4780 ??????
    db $11,$11,$38,        $80,$00,$00,$30,$41         ;; 05:4786 ????????

map00_room01_01_script:
    dw   $0079                                         ;; 05:478e $79 $00
    db   $ff                                           ;; 05:4790 ?

map00_room01_01_tiles:
    db $51,$51,        $c1,$42,$00,$00,$35,$35         ;; 05:4791 ????????
    db $00,$00,$50,$51,$51,$52,$00,$00,$35,$35         ;; 05:4799 ??????????
    db         $80,        $80,$3b,$00,$00,$35         ;; 05:47a3 ??????
    db $00,$00,$3b,        $80,        $80,$35         ;; 05:47a9 ??????
    db         $80,$00,$00,$30,$40,$00,$00,$35         ;; 05:47af ????????
    db $00,$00,$30,$40,$30,$41,$41,$33,$30,$31         ;; 05:47b7 ??????????
    db $40,$30,        $c1,        $c1,$41,$41         ;; 05:47c1 ??????
    db         $c1,        $c1,        $c1,$41         ;; 05:47c7 ????

map00_room02_01_script:
    dw   $007c                                         ;; 05:47cb $7c $00
    db   $ff                                           ;; 05:47cd ?

map00_room02_01_tiles:
    db $42,$42,$2b,$42,$11,$11,        $c2,$42         ;; 05:47ce ????????
    db $42,$42,$2b,$52,$10,$11,$02,$05,$42,$42         ;; 05:47d6 ??????????
    db $42,$52,$05,$15,        $91,$38,$02,$42         ;; 05:47e0 ????????
    db $42,$05,$05,$10,        $91,$11,$12,$42         ;; 05:47e8 ????????
    db $52,$05,$05,$20,        $91,$11,$22,$30         ;; 05:47f0 ????????
    db $40,        $85,$20,$21,$21,$22,$05,$41         ;; 05:47f8 ????????
    db $41,$30,$40,        $85,$05,$30,$40,$41         ;; 05:4800 ????????
    db         $c1,$40,$30,$40,$30,        $c1         ;; 05:4808 ??????

map00_room03_01_script:
    dw   $0064                                         ;; 05:480e $64 $00
    db   $ff                                           ;; 05:4810 ?

map00_room03_01_tiles:
    db $42,$41,$42,$42,$00,        $c1,$41,$41         ;; 05:4811 ????????
    db $42,$41,$42,$42,$00,$50,$51,$51,$41,$41         ;; 05:4819 ??????????
    db $42,$41,$51,$52,        $80,$00,$50,$41         ;; 05:4823 ????????
    db $52,$48,$48,        $80,        $80,$41         ;; 05:482b ??????
    db $40,$48,        $80,        $80,$00,$41         ;; 05:4831 ??????
    db $41,        $80,        $80,$00,$30,$41         ;; 05:4837 ??????
    db $41,$30,$40,        $80,$30,$40,$41,$41         ;; 05:483d ????????
    db         $c1,        $80,        $c1,$41         ;; 05:4845 ????

map00_room04_01_script:
    dw   $0064                                         ;; 05:4849 $64 $00
    db   $ff                                           ;; 05:484b ?

map00_room04_01_tiles:
    db         $c1,$00,$00,$50,        $d1,$51         ;; 05:484c ??????
    db $41,$41,$53,        $80,        $80,$00         ;; 05:4852 ??????
    db $41,$53,        $80,$37,$37,        $80         ;; 05:4858 ??????
    db $41,        $80,        $ff,$7f,$7f,$30         ;; 05:485e ??????
    db $53,$7f,$7f,$37,$37,$7f,        $80,$41         ;; 05:4864 ????????
    db $40,$00,        $ff,        $80,$00,$41         ;; 05:486c ??????
    db $41,$40,        $80,        $80,$30,$41         ;; 05:4872 ??????
    db $41,$41,$40,$00,$30,$31,$40,$30,$41,$41         ;; 05:4878 ??????????

map00_room05_01_script:
    dw   $04ac                                         ;; 05:4882 $ac $04
    db   $37                                           ;; 05:4884 ?
    dw   $0286                                         ;; 05:4885 $86 $02
    db   $ff                                           ;; 05:4887 ?

map00_room05_01_tiles:
    db $51,$53,        $80,$41,$41,        $c2         ;; 05:4888 ??????
    db         $80,$00,$30,$41,        $c2,$42         ;; 05:488e ??????
    db $00,$00,$30,$32,$41,        $c2,$42,$42         ;; 05:4894 ????????
    db $40,$30,$41,$42,$41,$42,$42,$4c,$42,$42         ;; 05:489c ??????????
    db $41,$41,$42,$42,        $80,$00,$00,$42         ;; 05:48a6 ????????
    db $41,$41,$42,$42,$33,        $80,$34,$42         ;; 05:48ae ????????
    db $41,        $c2,$41,$64,$2b,$64,$42,$42         ;; 05:48b6 ????????
    db $41,        $c2,$41,$41,$2b,$41,$42,$42         ;; 05:48be ????????

map00_room06_01_script:
    dw   $006d                                         ;; 05:48c6 $6d $00
    db   $ff                                           ;; 05:48c8 ?

map00_room06_01_tiles:
    db         $c1,$42,        $85,$05,$05,$46         ;; 05:48c9 ??????
    db $41,$41,$42,$42,$05,$05,$46,        $85         ;; 05:48cf ????????
    db $41,$41,$42,$42,        $85,        $85         ;; 05:48d7 ??????
    db $41,$41,$42,$42,$32,$30,$32,        $85         ;; 05:48dd ????????
    db $41,        $c2,$42,$41,$42,$32,$05,$05         ;; 05:48e5 ????????
    db $41,        $c2,$41,$41,$42,$42,$30,$32         ;; 05:48ed ????????
    db         $c2,$41,$41,        $c2,$41,$42         ;; 05:48f5 ??????
    db $42,$42,$41,$41,        $c2,$41,$41,$42         ;; 05:48fb ????????

map00_room07_01_script:
    dw   $006d                                         ;; 05:4903 $6d $00
    db   $ff                                           ;; 05:4905 ?

map00_room07_01_tiles:
    db $46,        $85,        $85,$05,$05,$46         ;; 05:4906 ??????
    db         $85,        $85,        $85,$05         ;; 05:490c ????
    db         $85,$46,        $85,        $85         ;; 05:4910 ????
    db         $85,        $85,        $85,$05         ;; 05:4914 ????
    db         $85,        $85,        $85,$05         ;; 05:4918 ????
    db         $85,        $85,$05,$46,$05,$05         ;; 05:491c ??????
    db $40,        $85,        $85,        $85         ;; 05:4922 ????
    db $41,        $85,        $85,$05,$05,$46         ;; 05:4926 ??????

map00_room08_01_script:
    dw   $006a                                         ;; 05:492c $6a $00
    db   $ff                                           ;; 05:492e ?

map00_room08_01_tiles:
    db $46,        $85,        $85,$46,$46,$41         ;; 05:492f ??????
    db         $85,        $85,$05,$05,$46,$50         ;; 05:4935 ??????
    db         $85,$05,$05,$46,$46,$05,$05,$30         ;; 05:493b ????????
    db $05,$05,$46,        $85,        $85,$50         ;; 05:4943 ??????
    db $05,$05,$46,        $85,        $85,$30         ;; 05:4949 ??????
    db         $85,$05,$05,$46,$46,$05,$05,$50         ;; 05:494f ????????
    db         $85,        $85,        $85,$30         ;; 05:4957 ????
    db $46,        $85,        $85,$05,$46,$41         ;; 05:495b ??????

map00_room09_01_script:
    dw   $007c                                         ;; 05:4961 $7c $00
    db   $ff                                           ;; 05:4963 ?

map00_room09_01_tiles:
    db $41,$11,$11,        $c2,        $c2,$42         ;; 05:4964 ??????
    db $41,$11,$11,$02,        $c2,        $c2         ;; 05:496a ??????
    db $41,        $91,$02,        $c2,$42,$42         ;; 05:4970 ??????
    db $41,$20,$21,$11,$11,        $b8,$38,$38         ;; 05:4976 ????????
    db $41,$30,$40,$20,$21,$21,        $91,$11         ;; 05:497e ????????
    db         $c1,$40,$30,$40,$20,        $a1         ;; 05:4986 ??????
    db         $c1,        $c1,$40,$30,$40,$30         ;; 05:498c ??????
    db         $c1,        $c1,        $c1,$41         ;; 05:4992 ????

map00_room0a_01_script:
    dw   $0070                                         ;; 05:4996 $70 $00
    db   $66                                           ;; 05:4998 ?
    dw   $04b0                                         ;; 05:4999 $b0 $04
    db   $ff                                           ;; 05:499b ?

map00_room0a_01_tiles:
    db $42,$42,$23,$35,        $a5,$25,$35,$35         ;; 05:499c ????????
    db         $c2,$23,        $a5,$25,$35,$35         ;; 05:49a4 ??????
    db         $c2,$42,$25,$3d,        $a5,$35         ;; 05:49aa ??????
    db $38,$02,$42,$42,        $a5,        $a5         ;; 05:49b0 ??????
    db $11,$11,$02,$42,        $a5,$3e,$25,$25         ;; 05:49b6 ????????
    db $21,$11,$11,$02,$33,        $a5,$25,$35         ;; 05:49be ????????
    db $40,$20,$11,$11,$41,$64,$7d,$64,$33,$35         ;; 05:49c6 ??????????
    db $41,$40,$10,$11,$41,$41,$2a,$41,$41,$64         ;; 05:49d0 ??????????

map00_room0b_01_script:
    dw   $0073                                         ;; 05:49da $73 $00
    db   $ff                                           ;; 05:49dc ?

map00_room0b_01_tiles:
    db         $b5,$35,$25,$25,$50,$51,$41,$41         ;; 05:49dd ????????
    db $35,$35,        $a5,        $a5,$50,$41         ;; 05:49e5 ??????
    db $35,        $a5,$25,$3e,        $a5,$41         ;; 05:49eb ??????
    db         $a5,$3d,        $a5,$25,$25,$50         ;; 05:49f1 ??????
    db         $a5,        $a5,$3e,$25,$25,$30         ;; 05:49f7 ??????
    db $30,$33,        $a5,        $a5,$30,$41         ;; 05:49fd ??????
    db $41,$41,$33,$25,$25,$30,$40,$30,$41,$41         ;; 05:4a03 ??????????
    db         $c1,$40,$30,        $c1,$41,$41         ;; 05:4a0d ??????

map00_room0c_01_script:
    dw   $0070                                         ;; 05:4a13 $70 $00
    db   $ff                                           ;; 05:4a15 ?

map00_room0c_01_tiles:
    db $41,$42,$42,$41,$41,$42,$25,$25,$41,$41         ;; 05:4a16 ??????????
    db $41,$42,$52,$50,$51,$52,$25,$25,$50,$41         ;; 05:4a20 ??????????
    db $41,$52,        $a5,        $a5,$25,$41         ;; 05:4a2a ??????
    db $41,        $a5,        $a5,$3d,$25,$41         ;; 05:4a30 ??????
    db $41,        $a5,$3e,        $a5,$25,$41         ;; 05:4a36 ??????
    db $41,        $a5,        $a5,$25,$25,$41         ;; 05:4a3c ??????
    db $41,$40,$25,$3e,        $a5,$25,$30,$41         ;; 05:4a42 ????????
    db $41,$41,        $a5,$25,$3d,$25,$41,$41         ;; 05:4a4a ????????

map00_room0d_01_script:
    dw   $007c                                         ;; 05:4a52 $7c $00
    db   $32                                           ;; 05:4a54 ?
    dw   $0383                                         ;; 05:4a55 $83 $03
    db   $ff                                           ;; 05:4a57 ?

map00_room0d_01_tiles:
    db $42,        $c1,$41,$40,$10,        $91         ;; 05:4a58 ??????
    db $42,        $d1,$51,$53,$10,        $91         ;; 05:4a5e ??????
    db $52,        $dd,$49,$49,$10,        $91         ;; 05:4a64 ??????
    db $40,$5e,$2e,$5e,$69,$49,$10,        $91         ;; 05:4a6a ????????
    db $41,        $c9,$49,$49,$10,        $91         ;; 05:4a72 ??????
    db $41,        $c9,$49,$49,$10,        $91         ;; 05:4a78 ??????
    db $41,$40,        $c9,$49,$10,        $91         ;; 05:4a7e ??????
    db $41,$41,        $c9,$49,$10,        $91         ;; 05:4a84 ??????

map00_room0e_01_script:
    dw   $007c                                         ;; 05:4a8a $7c $00
    db   $ff                                           ;; 05:4a8c ?

map00_room0e_01_tiles:
    db         $91,        $80,        $80,$41         ;; 05:4a8d ????
    db         $91,        $80,        $80,$50         ;; 05:4a91 ????
    db $11,$11,$12,$33,        $80,$3b,$00,$00         ;; 05:4a95 ????????
    db $11,$11,$12,$50,$23,$33,        $80,$00         ;; 05:4a9d ????????
    db         $91,$38,$02,$50,        $a3,$23         ;; 05:4aa5 ??????
    db         $91,$11,$11,        $b8,$38,$38         ;; 05:4aab ??????
    db         $91,        $91,        $91,$11         ;; 05:4ab1 ????
    db         $91,        $91,        $91,$11         ;; 05:4ab5 ????

map00_room0f_01_script:
    dw   $0079                                         ;; 05:4ab9 $79 $00
    db   $ff                                           ;; 05:4abb ?

map00_room0f_01_tiles:
    db $41,$42,        $d1,        $d1,$41,$41         ;; 05:4abc ??????
    db $51,$52,        $80,$00,$3b,$00,$50,$41         ;; 05:4ac2 ????????
    db         $80,$00,$3b,$3b,        $80,$50         ;; 05:4aca ??????
    db         $80,$3b,        $80,$3b,$00,$00         ;; 05:4ad0 ??????
    db         $a3,$23,$33,        $80,$00,$00         ;; 05:4ad6 ??????
    db         $b8,$02,$50,        $a3,$23,$23         ;; 05:4adc ??????
    db         $91,$11,        $b8,        $b8         ;; 05:4ae2 ????
    db         $91,        $91,        $91,$11         ;; 05:4ae6 ????

map00_room00_02_script:
    dw   $0067                                         ;; 05:4aea $67 $00
    db   $ff                                           ;; 05:4aec ?

map00_room00_02_tiles:
    db         $91,        $80,$00,$00,$41,$41         ;; 05:4aed ??????
    db $11,$11,$22,$33,$00,$00,$3b,$00,$41,$41         ;; 05:4af3 ??????????
    db $11,$11,$02,$50,$33,        $80,$50,$51         ;; 05:4afd ????????
    db         $91,$02,$50,        $e4,$64,$64         ;; 05:4b05 ??????
    db         $91,$11,        $b8,        $b8         ;; 05:4b0b ????
    db         $91,        $a1,        $a1,$21         ;; 05:4b0f ????
    db $11,$11,$22,        $80,        $80,$00         ;; 05:4b13 ??????
    db $11,$12,$00,$00,$48,$00,$48,$00,$30,$31         ;; 05:4b19 ??????????

map00_room01_02_script:
    dw   $04a9                                         ;; 05:4b23 $a9 $04
    db   $26                                           ;; 05:4b25 ?
    dw   $0284                                         ;; 05:4b26 $84 $02
    db   $ff                                           ;; 05:4b28 ?

map00_room01_02_tiles:
    db         $c1,$42,        $c1,        $c1         ;; 05:4b29 ????
    db         $c1,$42,        $c1,        $c1         ;; 05:4b2d ????
    db         $c1,$42,$51,$51,$4c,$51,$41,$41         ;; 05:4b31 ????????
    db         $c1,$52,$48,$48,$00,$48,$50,$41         ;; 05:4b39 ????????
    db         $b8,$02,        $80,$48,$48,$41         ;; 05:4b41 ??????
    db         $a1,$22,        $80,$00,$48,$41         ;; 05:4b47 ??????
    db         $80,        $80,$00,$00,$30,$41         ;; 05:4b4d ??????
    db $31,$31,$40,$30,$40,$30,$40,$30,$41,$41         ;; 05:4b53 ??????????

map00_room02_02_script:
    dw   $0064                                         ;; 05:4b5d $64 $00
    db   $ff                                           ;; 05:4b5f ?

map00_room02_02_tiles:
    db         $c2,$42,        $d1,        $d1         ;; 05:4b60 ????
    db $42,$52,        $80,$00,$7f,        $80         ;; 05:4b64 ??????
    db $42,        $80,$00,        $b7,$37,$37         ;; 05:4b6a ??????
    db $42,        $ff,$7f,$7f,        $b7,$37         ;; 05:4b70 ??????
    db $42,        $80,$00,$7f,        $80,$00         ;; 05:4b76 ??????
    db $42,$33,        $80,$7f,        $80,$00         ;; 05:4b7c ??????
    db $42,$41,        $e4,        $e4,$64,$64         ;; 05:4b82 ??????
    db $42,        $c1,        $c1,        $c1         ;; 05:4b88 ????

map00_room03_02_script:
    dw   $0064                                         ;; 05:4b8c $64 $00
    db   $ff                                           ;; 05:4b8e ?

map00_room03_02_tiles:
    db $51,$51,$53,        $80,$50,$51,$41,$41         ;; 05:4b8f ????????
    db $00,$00,$7f,        $80,$7f,$00,$50,$41         ;; 05:4b97 ????????
    db $37,$00,        $ff,$00,$7f,$00,$00,$41         ;; 05:4b9f ????????
    db         $b7,$37,$37,$7f,$7f,$00,$00,$50         ;; 05:4ba7 ????????
    db         $80,$00,        $b7,$37,$37,$34         ;; 05:4baf ??????
    db         $80,$00,$7f,        $80,$34,$42         ;; 05:4bb5 ??????
    db $64,$64,$0b,        $e4,$64,$64,$42,$42         ;; 05:4bbb ????????
    db $41,$41,$0b,        $c1,$41,$41,$42,$42         ;; 05:4bc3 ????????

map00_room04_02_script:
    dw   $0061                                         ;; 05:4bcb $61 $00
    db   $ff                                           ;; 05:4bcd ?

map00_room04_02_tiles:
    db $42,$41,$42,$00,$50,$51,$51,        $c1         ;; 05:4bce ????????
    db $42,$41,$42,        $80,$00,$50,$51,$51         ;; 05:4bd6 ????????
    db $42,$51,$52,        $80,        $80,$00         ;; 05:4bde ??????
    db $52,        $80,        $80,        $80         ;; 05:4be4 ????
    db $33,        $80,        $80,        $80         ;; 05:4be8 ????
    db $41,        $80,$00,$30,$40,$00,$00,$30         ;; 05:4bec ????????
    db $41,$33,$30,$40,$30,$41,$41,$40,$30,$41         ;; 05:4bf4 ??????????
    db $41,$41,$50,        $c1,        $c1,$41         ;; 05:4bfe ??????

map00_room05_02_script:
    dw   $0061                                         ;; 05:4c04 $61 $00
    db   $ff                                           ;; 05:4c06 ?

map00_room05_02_tiles:
    db $41,        $c2,$41,$41,$2b,$41,$42,$42         ;; 05:4c07 ????????
    db $51,$52,$48,$48,$50,$51,$2b,$51,$52,$48         ;; 05:4c0f ??????????
    db         $80,        $c8,$00,        $c8         ;; 05:4c19 ????
    db         $80,$00,$00,$48,$00,$48,$00,$30         ;; 05:4c1d ????????
    db         $80,        $80,        $80,$50         ;; 05:4c25 ????
    db $40,        $80,        $80,$00,$00,$30         ;; 05:4c29 ??????
    db $41,$40,$30,$40,$00,$00,$30,$40,$30,$41         ;; 05:4c2f ??????????
    db $41,$41,$31,$41,$40,$30,$31,        $c1         ;; 05:4c39 ????????

map00_room06_02_script:
    dw   $003d                                         ;; 05:4c41 $3d $00
    db   $36                                           ;; 05:4c43 ?
    dw   $0384                                         ;; 05:4c44 $84 $03
    db   $ff                                           ;; 05:4c46 ?

map00_room06_02_tiles:
    db $42,$42,$41,$41,$42,$42,$41,$42,$42,$41         ;; 05:4c47 ??????????
    db $42,$42,$41,$41,$42,$42,$41,$42,$52,$41         ;; 05:4c51 ??????????
    db $42,$42,$51,$51,$52,        $dd,$00,$41         ;; 05:4c5b ????????
    db $42,$42,        $80,$5e,$2e,$5e,$69,$41         ;; 05:4c63 ????????
    db $42,$42,        $80,        $80,$00,$41         ;; 05:4c6b ??????
    db $41,$42,$33,        $80,$00,$00,$34,$41         ;; 05:4c71 ????????
    db $41,$42,$41,$64,$64,$2b,$64,$64,$42,$41         ;; 05:4c79 ??????????
    db $41,$42,        $c1,$2b,$41,$41,$42,$41         ;; 05:4c83 ????????

map00_room07_02_script:
    dw   $006a                                         ;; 05:4c8b $6a $00
    db   $ff                                           ;; 05:4c8d ?

map00_room07_02_tiles:
    db $41,        $85,        $85,$05,$05,$46         ;; 05:4c8e ??????
    db $41,        $85,        $85,$05,$05,$46         ;; 05:4c94 ??????
    db $41,        $85,$05,$05,$46,        $85         ;; 05:4c9a ??????
    db $41,$40,$05,$05,$46,        $85,$05,$05         ;; 05:4ca0 ????????
    db $41,$41,        $85,$05,$05,$46,$05,$05         ;; 05:4ca8 ????????
    db $41,$41,        $85,$46,        $85,$05         ;; 05:4cb0 ??????
    db $41,$41,$46,        $85,        $85,$05         ;; 05:4cb6 ??????
    db $41,$41,        $c6,        $c6,$46,$46         ;; 05:4cbc ??????

map00_room08_02_script:
    dw   $006a                                         ;; 05:4cc2 $6a $00
    db   $ff                                           ;; 05:4cc4 ?

map00_room08_02_tiles:
    db $46,        $85,        $85,$05,$46,$50         ;; 05:4cc5 ??????
    db $46,        $85,        $85,$05,$05,$46         ;; 05:4ccb ??????
    db $05,$05,$46,        $85,        $85,$46         ;; 05:4cd1 ??????
    db         $85,        $85,        $85,$05         ;; 05:4cd7 ????
    db         $85,        $85,        $85,$05         ;; 05:4cdb ????
    db         $85,        $85,$46,        $85         ;; 05:4cdf ????
    db         $85,        $85,        $85,$46         ;; 05:4ce3 ????
    db $46,        $85,        $85,$05,$46,$46         ;; 05:4ce7 ??????

map00_room09_02_script:
    dw   $0497                                         ;; 05:4ced $97 $04
    db   $25                                           ;; 05:4cef ?
    dw   $0288                                         ;; 05:4cf0 $88 $02
    db   $ff                                           ;; 05:4cf2 ?

map00_room09_02_tiles:
    db $41,$41,$09,$0a,        $d5,$09,$0a,$41         ;; 05:4cf3 ????????
    db $50,$51,$09,$0a,        $d5,$09,$0a,$41         ;; 05:4cfb ????????
    db $46,$46,$09,$0a,$54,$2e,$54,$09,$0a,$41         ;; 05:4d03 ??????????
    db $05,$05,$19,$1a,        $85,$19,$1a,$50         ;; 05:4d0d ????????
    db         $85,        $85,        $85,$30         ;; 05:4d15 ????
    db         $85,$05,$46,$05,$46,$05,$05,$50         ;; 05:4d19 ????????
    db $46,$46,        $85,        $85,$05,$30         ;; 05:4d21 ??????
    db $46,$46,        $85,        $85,$30,$41         ;; 05:4d27 ??????

map00_room0a_02_script:
    dw   $0482                                         ;; 05:4d2d $82 $04
    db   $ff                                           ;; 05:4d2f ?

map00_room0a_02_tiles:
    db $41,$42,$11,$12,$41,$41,$2a,        $c1         ;; 05:4d30 ????????
    db $41,$42,$11,$12,$50,$51,$2a,        $d1         ;; 05:4d38 ????????
    db $41,$42,$10,$11,$38,$38,$2a,$38,$38,$02         ;; 05:4d40 ??????????
    db $41,$42,$10,        $91,$2a,        $91         ;; 05:4d4a ??????
    db $41,$52,$10,$11,$22,        $80,$00,$35         ;; 05:4d50 ????????
    db $41,$15,$11,$22,        $80,$00,$00,$35         ;; 05:4d58 ????????
    db $41,$10,$11,$35,        $80,$00,$00,$35         ;; 05:4d60 ????????
    db $41,$10,$11,$35,        $80,$00,$00,$35         ;; 05:4d68 ????????

map00_room0b_02_script:
    dw   $0073                                         ;; 05:4d70 $73 $00
    db   $ff                                           ;; 05:4d72 ?

map00_room0b_02_tiles:
    db $41,$42,$42,        $d1,$51,$51,$41,$41         ;; 05:4d73 ????????
    db $41,$42,$52,        $a5,$25,$25,$50,$51         ;; 05:4d7b ????????
    db $41,$52,$25,$25,$3e,        $a5,$25,$25         ;; 05:4d83 ????????
    db $41,        $a5,        $a5,        $a5         ;; 05:4d8b ????
    db $41,$25,$25,$3e,        $a5,        $a5         ;; 05:4d8f ??????
    db $41,        $a5,        $a5,$3d,$25,$25         ;; 05:4d95 ??????
    db $41,$40,        $a5,        $a5,$25,$30         ;; 05:4d9b ??????
    db $41,$41,$25,$25,$3e,        $a5,$30,$41         ;; 05:4da1 ????????

map00_room0c_02_script:
    dw   $0070                                         ;; 05:4da9 $70 $00
    db   $ff                                           ;; 05:4dab ?

map00_room0c_02_tiles:
    db $41,$42,        $a5,$25,$3d,$25,$41,$41         ;; 05:4dac ????????
    db $51,$52,        $a5,        $a5,$50,$41         ;; 05:4db4 ??????
    db         $a5,$3e,        $a5,$3d,$25,$41         ;; 05:4dba ??????
    db         $a5,        $a5,        $a5,$41         ;; 05:4dc0 ????
    db $25,$3e,        $a5,        $a5,$25,$50         ;; 05:4dc4 ??????
    db         $a5,$25,$25,$3d,        $a5,$30         ;; 05:4dca ??????
    db $40,        $a5,$25,$25,$30,$40,$30,$41         ;; 05:4dd0 ????????
    db $41,$40,$30,$40,$30,$31,        $c1,$41         ;; 05:4dd8 ????????

map00_room0d_02_script:
    dw   $0076                                         ;; 05:4de0 $76 $00
    db   $ff                                           ;; 05:4de2 ?

map00_room0d_02_tiles:
    db $42,$42,        $c9,$49,$10,        $91         ;; 05:4de3 ??????
    db $42,$52,        $c9,$49,$10,$11,$21,$21         ;; 05:4de9 ????????
    db $52,$15,$02,$49,$49,$15,$11,$22,$4e,$49         ;; 05:4df1 ??????????
    db $40,$10,$12,$4e,$15,$11,$12,        $c9         ;; 05:4dfb ????????
    db $41,$10,$11,$38,$11,$21,$11,$02,$49,$49         ;; 05:4e03 ??????????
    db $41,$20,$21,$21,$22,$49,$20,$22,$49,$49         ;; 05:4e0d ??????????
    db $41,$40,        $c9,        $c9,$49,$30         ;; 05:4e17 ??????
    db $41,$41,$40,$30,        $b1,$40,$30,$41         ;; 05:4e1d ????????

map00_room0e_02_script:
    dw   $007c                                         ;; 05:4e25 $7c $00
    db   $ff                                           ;; 05:4e27 ?

map00_room0e_02_tiles:
    db         $91,        $91,        $91,$11         ;; 05:4e28 ????
    db         $a1,        $91,        $91,$11         ;; 05:4e2c ????
    db         $c9,$20,        $91,        $91         ;; 05:4e30 ????
    db         $c9,$49,$20,        $91,$11,$11         ;; 05:4e34 ??????
    db         $c9,$49,$49,$20,        $91,$11         ;; 05:4e3a ??????
    db         $c9,        $c9,$10,        $91         ;; 05:4e40 ????
    db $31,$40,        $c9,$49,$10,        $91         ;; 05:4e44 ??????
    db $41,$41,$40,        $c9,$10,        $91         ;; 05:4e4a ??????

map00_room0f_02_script:
    dw   $0428                                         ;; 05:4e50 $28 $04
    db   $57                                           ;; 05:4e52 ?
    dw   $0474                                         ;; 05:4e53 $74 $04
    db   $ff                                           ;; 05:4e55 ?

map00_room0f_02_tiles:
    db         $91,        $91,        $91,$11         ;; 05:4e56 ????
    db         $91,        $91,        $91,$11         ;; 05:4e5a ????
    db         $91,        $a1,$21,        $91         ;; 05:4e5e ????
    db $11,$11,$12,        $a4,$24,$10,$11,$11         ;; 05:4e62 ????????
    db $11,$11,$12,        $a4,$24,$10,$11,$11         ;; 05:4e6a ????????
    db $11,$11,$12,        $a4,$24,$7b,$11,$11         ;; 05:4e72 ????????
    db         $91,        $b8,$38,        $91         ;; 05:4e7a ????
    db         $91,        $91,        $91,$11         ;; 05:4e7e ????

map00_room00_03_script:
    dw   $0067                                         ;; 05:4e82 $67 $00
    db   $ff                                           ;; 05:4e84 ?

map00_room00_03_tiles:
    db $11,$12,$00,$00,$48,$00,$48,$00,$41,$41         ;; 05:4e85 ??????????
    db $11,$12,        $80,        $80,$50,$41         ;; 05:4e8f ??????
    db $11,$12,$00,$00,$48,        $80,$00,$50         ;; 05:4e95 ????????
    db $11,$12,        $80,$00,$48,        $80         ;; 05:4e9d ??????
    db $11,$12,$00,$00,$48,        $80,$00,$30         ;; 05:4ea3 ????????
    db $11,$12,        $80,        $80,$30,$41         ;; 05:4eab ??????
    db $11,$12,        $80,$30,$40,$30,$41,$41         ;; 05:4eb1 ????????
    db $11,$12,$30,$40,$30,        $c1,$41,$41         ;; 05:4eb9 ????????

map00_room01_03_script:
    dw   $0061                                         ;; 05:4ec1 $61 $00
    db   $ff                                           ;; 05:4ec3 ?

map00_room01_03_tiles:
    db $41,$42,$41,$42,$51,        $c1,$41,$41         ;; 05:4ec4 ????????
    db $41,$42,$51,$52,$00,$50,$51,$51,$41,$41         ;; 05:4ecc ??????????
    db $51,$52,        $80,        $80,$50,$41         ;; 05:4ed6 ??????
    db         $80,        $80,        $80,$41         ;; 05:4edc ????
    db $40,$00,$00,        $c8,$48,$00,$00,$41         ;; 05:4ee0 ????????
    db $41,        $80,        $80,$00,$00,$41         ;; 05:4ee8 ??????
    db $41,$40,        $80,        $80,$30,$41         ;; 05:4eee ??????
    db $41,$41,$31,$40,        $80,$00,$41,$41         ;; 05:4ef4 ????????

map00_room02_03_script:
    dw   $0064                                         ;; 05:4efc $64 $00
    db   $35                                           ;; 05:4efe ?
    dw   $0382                                         ;; 05:4eff $82 $03
    db   $ff                                           ;; 05:4f01 ?

map00_room02_03_tiles:
    db $42,$42,        $c1,        $c1,$41,$41         ;; 05:4f02 ??????
    db $42,$42,        $c1,        $c1,$41,$41         ;; 05:4f08 ??????
    db $42,$42,$51,$51,        $dd,$51,$41,$41         ;; 05:4f0e ????????
    db $42,$42,$53,$37,$5e,$2e,$5e,$69,$50,$41         ;; 05:4f16 ??????????
    db $42,$42,$00,$00,$4f,$00,$4f,$00,$00,$41         ;; 05:4f20 ??????????
    db $42,$42,        $80,        $80,$00,$41         ;; 05:4f2a ??????
    db $42,$42,$33,$00,$34,$2b,$33,$00,$34,$41         ;; 05:4f30 ??????????
    db $42,$42,$41,$64,$42,$2b,$41,$64,$42,$41         ;; 05:4f3a ??????????

map00_room03_03_script:
    dw   $0061                                         ;; 05:4f44 $61 $00
    db   $26                                           ;; 05:4f46 ?
    dw   $04df                                         ;; 05:4f47 $df $04
    db   $ff                                           ;; 05:4f49 ?

map00_room03_03_tiles:
    db $41,$41,$0b,        $c1,        $c1,$41         ;; 05:4f4a ??????
    db $41,$41,$0b,$41,$41,        $dd,$41,$41         ;; 05:4f50 ????????
    db $41,$41,$0b,$41,$00,$5e,$2e,$5e,$41,$41         ;; 05:4f58 ??????????
    db $41,$41,$0b,$41,$00,$4a,$00,$4a,$50,$41         ;; 05:4f62 ??????????
    db $41,$41,$0b,$41,        $80,$00,$00,$41         ;; 05:4f6c ????????
    db $41,$41,$0b,$41,$33,        $80,$00,$41         ;; 05:4f74 ????????
    db $41,$41,$0b,$41,$41,$64,$0b,$64,$64,$41         ;; 05:4f7c ??????????
    db $41,$41,$0b,        $c1,$0b,        $c1         ;; 05:4f86 ??????

map00_room04_03_script:
    dw   $04a6                                         ;; 05:4f8c $a6 $04
    db   $38                                           ;; 05:4f8e ?
    dw   $0285                                         ;; 05:4f8f $85 $02
    db   $ff                                           ;; 05:4f91 ?

map00_room04_03_tiles:
    db         $c1,$42,$5b,$5b,$42,        $c1         ;; 05:4f92 ??????
    db         $c1,$42,$5b,$5b,$42,        $c1         ;; 05:4f98 ??????
    db         $c1,$42,$5b,$5b,$42,        $c1         ;; 05:4f9e ??????
    db         $c1,$42,$5b,$5b,$42,$51,$4c,$51         ;; 05:4fa4 ????????
    db         $c1,$42,$5b,$5b,$42,        $80         ;; 05:4fac ??????
    db         $c1,$42,$5b,$5b,$42,$33,$00,$00         ;; 05:4fb2 ????????
    db         $c1,$42,$5b,$5b,$42,$41,$64,$64         ;; 05:4fba ????????
    db         $c1,$42,$5b,$5b,$42,        $c1         ;; 05:4fc2 ??????

map00_room05_03_script:
    dw   $0061                                         ;; 05:4fc8 $61 $00
    db   $ff                                           ;; 05:4fca ?

map00_room05_03_tiles:
    db $41,$0b,$41,$0b,$41,$41,$0b,$0b,$41,$41         ;; 05:4fcb ??????????
    db         $c1,$0b,$41,$41,$0b,        $c1         ;; 05:4fd5 ??????
    db $41,$41,        $d1,        $d1,$41,$41         ;; 05:4fdb ??????
    db $51,$53,        $80,        $80,$50,$41         ;; 05:4fe1 ??????
    db         $80,        $80,        $80,$41         ;; 05:4fe7 ????
    db         $80,        $80,$00,$00,$34,$41         ;; 05:4feb ??????
    db $64,$64,$2b,$64,$0b,$64,$0b,$64,$42,$41         ;; 05:4ff1 ??????????
    db $41,$41,$2b,$41,$0b,$41,$0b,$41,$42,$41         ;; 05:4ffb ??????????

map00_room06_03_script:
    dw   $006a                                         ;; 05:5005 $6a $00
    db   $ff                                           ;; 05:5007 ?

map00_room06_03_tiles:
    db $41,$42,        $c1,$2b,$41,$41,$42,$41         ;; 05:5008 ????????
    db $41,$42,$51,$41,$41,$2b,$41,$41,$42,$51         ;; 05:5010 ??????????
    db $41,$52,$05,$50,$51,$2b,$51,$51,$52,$05         ;; 05:501a ??????????
    db $41,        $85,        $85,        $85         ;; 05:5024 ????
    db $41,        $85,        $85,        $85         ;; 05:5028 ????
    db $41,$33,        $85,        $85,$05,$05         ;; 05:502c ??????
    db $41,$41,$33,        $85,$05,$05,$30,$31         ;; 05:5032 ????????
    db         $c1,        $b1,$31,$31,$41,$41         ;; 05:503a ??????

map00_room07_03_script:
    dw   $03e8                                         ;; 05:5040 $e8 $03
    db   $25                                           ;; 05:5042 ?
    dw   $0282                                         ;; 05:5043 $82 $02
    db   $ff                                           ;; 05:5045 ?

map00_room07_03_tiles:
    db $41,$41,        $c6,        $c6,$46,$46         ;; 05:5046 ??????
    db $41,$53,        $85,        $85,$46,$46         ;; 05:504c ??????
    db         $85,        $85,        $85,$46         ;; 05:5052 ????
    db         $85,        $85,        $85,$05         ;; 05:5056 ????
    db         $85,        $85,        $85,$05         ;; 05:505a ????
    db         $85,        $85,        $85,$05         ;; 05:505e ????
    db $31,$33,        $85,        $85,$05,$05         ;; 05:5062 ??????
    db $41,$41,        $b1,        $b1,$31,$31         ;; 05:5068 ??????

map00_room08_03_script:
    dw   $006d                                         ;; 05:506e $6d $00
    db   $ff                                           ;; 05:5070 ?

map00_room08_03_tiles:
    db $46,        $85,        $85,$05,$46,$46         ;; 05:5071 ??????
    db $46,        $85,        $85,        $85         ;; 05:5077 ????
    db $46,        $85,        $85,        $85         ;; 05:507b ????
    db         $85,$46,$05,$05,$46,        $85         ;; 05:507f ??????
    db         $85,$46,$05,$05,$46,        $85         ;; 05:5085 ??????
    db         $85,        $85,        $85,$05         ;; 05:508b ????
    db         $85,        $85,        $85,$05         ;; 05:508f ????
    db $33,        $85,        $85,$05,$46,$46         ;; 05:5093 ??????

map00_room09_03_script:
    dw   $006a                                         ;; 05:5099 $6a $00
    db   $ff                                           ;; 05:509b ?

map00_room09_03_tiles:
    db $46,$46,        $85,        $85,$50,$41         ;; 05:509c ??????
    db         $85,        $85,        $85,$50         ;; 05:50a2 ????
    db         $85,$46,        $85,$05,$05,$30         ;; 05:50a6 ??????
    db $05,$05,$46,        $85,        $85,$50         ;; 05:50ac ??????
    db         $85,        $85,$46,$05,$05,$30         ;; 05:50b2 ??????
    db         $85,$05,$05,$46,        $85,$41         ;; 05:50b8 ??????
    db         $85,        $85,$05,$05,$30,$41         ;; 05:50be ??????
    db $46,        $85,$05,$05,$30,$31,$41,$41         ;; 05:50c4 ????????

map00_room0a_03_script:
    dw   $0067                                         ;; 05:50cc $67 $00
    db   $ff                                           ;; 05:50ce ?

map00_room0a_03_tiles:
    db $41,$11,$11,$35,        $80,$00,$00,$35         ;; 05:50cf ????????
    db $53,$11,$11,$23,        $80,$00,$00,$35         ;; 05:50d7 ????????
    db $40,$11,$11,$42,        $80,$00,$00,$35         ;; 05:50df ????????
    db $41,$11,$12,$42,        $80,$00,$00,$35         ;; 05:50e7 ????????
    db $41,$11,$12,$42,        $80,$00,$00,$35         ;; 05:50ef ????????
    db $41,$20,$11,$02,$23,        $80,$00,$30         ;; 05:50f7 ????????
    db $41,$40,$10,$11,$42,        $80,$30,$41         ;; 05:50ff ????????
    db $41,$53,$10,$11,$42,$23,$00,$30,$41,$41         ;; 05:5107 ??????????

map00_room0b_03_script:
    dw   $0070                                         ;; 05:5111 $70 $00
    db   $ff                                           ;; 05:5113 ?

map00_room0b_03_tiles:
    db $41,$42,$25,$25,$35,        $a5,$41,$41         ;; 05:5114 ????????
    db $41,$52,        $a5,        $a5,$50,$51         ;; 05:511c ??????
    db $41,        $a5,$35,$35,$25,$35,$25,$25         ;; 05:5122 ????????
    db $41,        $a5,        $a5,        $a5         ;; 05:512a ????
    db $41,$25,$35,$25,$25,$35,$35,        $a5         ;; 05:512e ????????
    db $41,        $a5,        $a5,        $a5         ;; 05:5136 ????
    db $41,$40,        $a5,$25,$30,$40,$30,$31         ;; 05:513a ????????
    db $41,$41,$40,$30,$40,$30,        $c1,$41         ;; 05:5142 ????????

map00_room0c_03_script:
    dw   $0073                                         ;; 05:514a $73 $00
    db   $ff                                           ;; 05:514c ?

map00_room0c_03_tiles:
    db $42,        $d1,        $d1,        $c1         ;; 05:514d ????
    db $52,        $a5,        $a5,$50,$41,$41         ;; 05:5151 ??????
    db         $a5,        $a5,$25,$25,$41,$41         ;; 05:5157 ??????
    db         $a5,$25,$25,$3d,$25,$25,$41,$41         ;; 05:515d ????????
    db $25,$25,$3e,        $a5,$3d,$25,$50,$51         ;; 05:5165 ????????
    db         $a5,        $a5,        $a5,$25         ;; 05:516d ????
    db $40,$25,$25,$3e,        $a5,$25,$25,$35         ;; 05:5171 ????????
    db $41,$40,        $a5,        $a5,$35,$35         ;; 05:5179 ??????

map00_room0d_03_script:
    dw   $0070                                         ;; 05:517f $70 $00
    db   $26                                           ;; 05:5181 ?
    dw   $0289                                         ;; 05:5182 $89 $02
    db   $ff                                           ;; 05:5184 ?

map00_room0d_03_tiles:
    db $41,$42,$41,$41,$42,        $c1,$41,$41         ;; 05:5185 ????????
    db $41,$42,$41,$41,$42,        $c1,$41,$41         ;; 05:518d ????????
    db $41,$42,$41,$41,$42,$51,$4c,$51,$41,$41         ;; 05:5195 ??????????
    db $41,$42,$51,$51,$52,        $a5,$50,$41         ;; 05:519f ????????
    db $51,$52,        $a5,        $a5,$25,$41         ;; 05:51a7 ??????
    db         $a5,$35,$25,$25,$35,$25,$25,$50         ;; 05:51ad ????????
    db $35,        $a5,        $a5,$25,$25,$30         ;; 05:51b5 ??????
    db $35,$35,        $a5,        $a5,$25,$41         ;; 05:51bb ??????

map00_room0e_03_script:
    dw   $0076                                         ;; 05:51c1 $76 $00
    db   $ff                                           ;; 05:51c3 ?

map00_room0e_03_tiles:
    db         $c2,        $c9,$10,        $91         ;; 05:51c4 ????
    db $42,$42,$52,        $c9,$10,        $91         ;; 05:51c8 ??????
    db $42,$52,        $c9,$49,$20,        $a1         ;; 05:51ce ??????
    db $52,        $c9,$49,$49,$1b,        $c9         ;; 05:51d4 ??????
    db $40,        $c9,$1b,$49,$1b,        $c9         ;; 05:51da ??????
    db $41,$30,$40,        $c9,        $c9,$49         ;; 05:51e0 ??????
    db         $c1,$40,        $c9,$49,$30,$40         ;; 05:51e6 ??????
    db         $c1,$41,$40,$30,$40,$30,$41,$41         ;; 05:51ec ????????

map00_room0f_03_script:
    dw   $007c                                         ;; 05:51f4 $7c $00
    db   $ff                                           ;; 05:51f6 ?

map00_room0f_03_tiles:
    db         $91,        $91,        $91,$11         ;; 05:51f7 ????
    db         $91,        $91,        $91,$11         ;; 05:51fb ????
    db         $a1,        $91,        $91,$11         ;; 05:51ff ????
    db         $c9,$20,$21,$21,        $91,$11         ;; 05:5203 ??????
    db         $c9,        $c9,$20,        $91         ;; 05:5209 ????
    db         $c9,$1b,$1b,$49,$49,$20,$11,$11         ;; 05:520d ????????
    db $30,$40,        $c9,        $c9,$10,$11         ;; 05:5215 ??????
    db $41,$41,$40,$30,$40,        $c9,$10,$11         ;; 05:521b ????????

map00_room00_04_script:
    dw   $0067                                         ;; 05:5223 $67 $00
    db   $ff                                           ;; 05:5225 ?

map00_room00_04_tiles:
    db $11,$12,$41,$41,$42,        $d1,$41,$41         ;; 05:5226 ????????
    db $11,$12,$50,$51,$52,        $80,$50,$41         ;; 05:522e ????????
    db $11,$12,        $80,        $80,$00,$41         ;; 05:5236 ??????
    db $11,$12,        $80,$00,$00,$48,$00,$50         ;; 05:523c ????????
    db $11,$12,        $80,$48,        $80,$00         ;; 05:5244 ??????
    db $11,$12,        $80,$00,$00,$48,$00,$00         ;; 05:524a ????????
    db $11,$12,$00,$30,$40,        $80,$00,$30         ;; 05:5252 ????????
    db $11,$12,$30,$41,$41,$40,$30,$40,$30,$41         ;; 05:525a ??????????

map00_room01_04_script:
    dw   $0061                                         ;; 05:5264 $61 $00
    db   $ff                                           ;; 05:5266 ?

map00_room01_04_tiles:
    db $41,$42,$51,$53,        $80,$00,$50,$41         ;; 05:5267 ????????
    db $41,$52,        $80,        $80,$00,$41         ;; 05:526f ??????
    db $41,        $80,        $80,$00,$00,$41         ;; 05:5275 ??????
    db $53,$00,$00,$06,$07,$07,$08,$00,$00,$50         ;; 05:527b ??????????
    db         $80,$26,$27,$27,$28,        $80         ;; 05:5285 ??????
    db         $80,        $80,        $80,$00         ;; 05:528b ????
    db $40,        $80,        $80,$00,$00,$30         ;; 05:528f ??????
    db $41,$31,$40,$00,$30,$31,$40,$00,$30,$41         ;; 05:5295 ??????????

map00_room02_04_script:
    dw   $0061                                         ;; 05:529f $61 $00
    db   $ff                                           ;; 05:52a1 ?

map00_room02_04_tiles:
    db $42,$42,$41,$41,$42,$2b,$41,$41,$42,$41         ;; 05:52a2 ??????????
    db $42,$42,$41,$41,$42,$2b,$41,$41,$42,$41         ;; 05:52ac ??????????
    db $42,$42,$41,$41,$42,$2b,$41,$41,$42,$41         ;; 05:52b6 ??????????
    db $52,$00,$50,$51,$52,$00,$50,$51,$52,$41         ;; 05:52c0 ??????????
    db         $80,        $80,        $80,$50         ;; 05:52ca ????
    db         $80,        $80,        $80,$30         ;; 05:52ce ????
    db $40,        $80,        $80,$00,$00,$41         ;; 05:52d2 ??????
    db $41,$31,$40,$30,$31,$40,$30,$40,$30,$41         ;; 05:52d8 ??????????

map00_room03_04_script:
    dw   $0061                                         ;; 05:52e2 $61 $00
    db   $ff                                           ;; 05:52e4 ?

map00_room03_04_tiles:
    db $41,$41,$0b,        $c1,$0b,        $c1         ;; 05:52e5 ??????
    db $41,$41,$0b,        $c1,$0b,        $d1         ;; 05:52eb ??????
    db $41,$41,$0b,        $c1,$0b,$33,$00,$34         ;; 05:52f1 ????????
    db $41,$41,$0b,        $c1,$0b,$41,$64,$42         ;; 05:52f9 ????????
    db $41,$41,$0b,        $d1,$0b,$41,$41,$42         ;; 05:5301 ????????
    db $41,$41,$0b,$33,$00,$34,$0b,$41,$41,$42         ;; 05:5309 ??????????
    db $41,$41,$0b,$41,$64,$42,$0b,$41,$41,$42         ;; 05:5313 ??????????
    db $41,$41,$0b,$41,$41,$42,$0b,$41,$41,$42         ;; 05:531d ??????????

map00_room04_04_script:
    dw   $0061                                         ;; 05:5327 $61 $00
    db   $ff                                           ;; 05:5329 ?

map00_room04_04_tiles:
    db         $c1,$42,$5b,$5b,$42,        $c1         ;; 05:532a ??????
    db         $c1,$42,$5b,$5b,$42,        $c1         ;; 05:5330 ??????
    db         $c1,$42,$5b,$5b,$42,        $c1         ;; 05:5336 ??????
    db $41,$51,$51,$42,$5b,$5b,$42,        $d1         ;; 05:533c ????????
    db $53,$00,$00,        $a9,$29,        $80         ;; 05:5344 ??????
    db $33,$00,$00,$42,$5b,$5b,$42,$33,$00,$00         ;; 05:534a ??????????
    db $41,$2b,$64,$42,$5b,$5b,$42,$41,$64,$64         ;; 05:5354 ??????????
    db $41,$2b,$41,$42,$5b,$5b,$42,        $c1         ;; 05:535e ????????

map00_room05_04_script:
    dw   $0061                                         ;; 05:5366 $61 $00
    db   $ff                                           ;; 05:5368 ?

map00_room05_04_tiles:
    db $41,$41,$2b,$41,$0b,$41,$0b,        $c1         ;; 05:5369 ????????
    db $41,$41,$2b,$41,$0b,$41,$0b,        $c1         ;; 05:5371 ????????
    db $41,$41,$2b,        $c1,$0b,        $c1         ;; 05:5379 ??????
    db $51,$51,$2b,$51,$41,$41,$0b,$41,$0b,$41         ;; 05:537f ??????????
    db         $80,$00,$41,$41,$0b,$41,$0b,$41         ;; 05:5389 ????????
    db         $80,$34,$41,$41,        $8b,$41         ;; 05:5391 ??????
    db         $e4,$42,        $c1,$0b,$41,$41         ;; 05:5397 ??????
    db         $c1,$42,        $c1,$0b,$41,$41         ;; 05:539d ??????

map00_room06_04_script:
    dw   $003d                                         ;; 05:53a3 $3d $00
    db   $37                                           ;; 05:53a5 .
    dw   $0272                                         ;; 05:53a6 $72 $02
    db   $ff                                           ;; 05:53a8 ?

map00_room06_04_tiles:
    db $41,$42,        $db,$5b,$42,        $c1         ;; 05:53a9 ......
    db $41,$42,        $db,$5b,$42,        $c1         ;; 05:53af ......
    db $41,$42,        $db,$5b,        $dd,$51         ;; 05:53b5 ......
    db $41,$42,        $db,$5b,$5e,$2e,$5e,$37         ;; 05:53bb ........
    db $41,$42,        $db,$5b,$33,$00,$00,$34         ;; 05:53c3 ........
    db $41,$42,        $db,$5b,$41,$64,$0b,$42         ;; 05:53cb ........
    db $41,$42,        $db,$5b,$41,$41,$0b,$42         ;; 05:53d3 ........
    db $41,$42,        $db,$5b,$41,$41,$0b,$42         ;; 05:53db ........

map00_room07_04_script:
    dw   $0040                                         ;; 05:53e3 $40 $00
    db   $ff                                           ;; 05:53e5 ?

map00_room07_04_tiles:
    db $41,$41,        $d1,$51,$51,        $c1         ;; 05:53e6 ......
    db $41,$53,        $80,$00,$00,$50,$41,$41         ;; 05:53ec ........
    db $41,$33,        $80,$00,$00,$34,$41,$41         ;; 05:53f4 ........
    db $41,$41,$64,$0b,$64,$64,$0b,$42,$41,$41         ;; 05:53fc ..........
    db $41,$51,$51,$0b,$41,$53,$00,$00,$50,$41         ;; 05:5406 ..........
    db $53,        $80,$50,$33,$00,$00,$34,$41         ;; 05:5410 ........
    db $33,        $80,$34,$41,$64,$0b,$42,$41         ;; 05:5418 ........
    db $41,$64,$0b,$64,$42,$41,$41,$0b,$42,$41         ;; 05:5420 ..........

map00_room08_04_script:
    dw   $006a                                         ;; 05:542a $6a $00
    db   $ff                                           ;; 05:542c ?

map00_room08_04_tiles:
    db $53,        $85,        $85,$05,$46,$46         ;; 05:542d ??????
    db $40,        $85,        $85,        $85         ;; 05:5433 ????
    db $41,$40,$05,$05,$46,$46,        $85,$05         ;; 05:5437 ????????
    db $41,$53,        $85,        $85,$05,$05         ;; 05:543f ??????
    db $41,$40,        $85,$05,$46,$46,$05,$05         ;; 05:5445 ????????
    db $41,$53,        $85,        $85,$05,$05         ;; 05:544d ??????
    db $41,$40,        $85,$05,$30,$40,$05,$05         ;; 05:5453 ????????
    db $41,$41,$40,$30,$40,$30,$41,$41,$40,$30         ;; 05:545b ??????????

map00_room09_04_script:
    dw   $006d                                         ;; 05:5465 $6d $00
    db   $ff                                           ;; 05:5467 ?

map00_room09_04_tiles:
    db $46,        $85,$05,$05,$50,$51,$41,$41         ;; 05:5468 ????????
    db         $85,        $85,$05,$05,$50,$41         ;; 05:5470 ??????
    db $05,$05,$46,$05,$05,$46,$05,$05,$30,$41         ;; 05:5476 ??????????
    db         $85,        $85,$05,$05,$50,$41         ;; 05:5480 ??????
    db $05,$05,$46,$05,$05,$46,        $85,$50         ;; 05:5486 ????????
    db         $85,        $85,        $85,$30         ;; 05:548e ????
    db $05,$05,$30,$40,        $85,$05,$30,$41         ;; 05:5492 ????????
    db $40,$30,$41,$41,$40,$30,$40,$30,$41,$41         ;; 05:549a ??????????

map00_room0a_04_script:
    dw   $0067                                         ;; 05:54a4 $67 $00
    db   $ff                                           ;; 05:54a6 ?

map00_room0a_04_tiles:
    db $41,$40,$11,$11,$42,$42,$00,        $c1         ;; 05:54a7 ????????
    db $41,$53,$11,$11,$42,$42,$7f,$50,$41,$41         ;; 05:54af ??????????
    db $41,$40,$11,$11,$02,$42,$7f,$7f,$41,$41         ;; 05:54b9 ??????????
    db $41,$41,$11,$11,$12,$42,$7f,$7f,$50,$51         ;; 05:54c3 ??????????
    db $41,$41,$40,$11,$11,$02,$33,$7f,$00,$00         ;; 05:54cd ??????????
    db $41,$41,$53,        $91,$41,$33,$00,$00         ;; 05:54d7 ????????
    db $51,$53,$23,        $91,$41,$41,$2b,$23         ;; 05:54df ????????
    db $23,$23,$42,        $91,$41,$41,$2b,$42         ;; 05:54e7 ????????

map00_room0b_04_script:
    dw   $0064                                         ;; 05:54ef $64 $00
    db   $ff                                           ;; 05:54f1 ?

map00_room0b_04_tiles:
    db $41,$42,$42,$51,$51,        $c1,$41,$41         ;; 05:54f2 ????????
    db $41,$42,$52,$35,$35,$50,        $d1,$41         ;; 05:54fa ????????
    db $41,$42,        $b5,        $b5,$50,$41         ;; 05:5502 ??????
    db $51,$52,        $80,        $80,$00,$41         ;; 05:5508 ??????
    db         $80,        $80,        $80,$41         ;; 05:550e ????
    db         $80,        $80,$00,$00,$30,$41         ;; 05:5512 ??????
    db $23,$23,$33,        $80,$30,$31,$41,$41         ;; 05:5518 ????????
    db $42,$42,$41,        $80,        $c1,$41         ;; 05:5520 ??????

map00_room0c_04_script:
    dw   $0070                                         ;; 05:5526 $70 $00
    db   $ff                                           ;; 05:5528 ?

map00_room0c_04_tiles:
    db $41,$42,        $a5,        $a5,$35,$35         ;; 05:5529 ??????
    db $41,$52,        $a5,$25,$3d,$25,$25,$35         ;; 05:552f ????????
    db $41,        $a5,$3e,        $a5,$25,$25         ;; 05:5537 ??????
    db $41,        $a5,        $a5,$25,$3d,$25         ;; 05:553d ??????
    db $41,$40,$25,$3e,        $a5,        $a5         ;; 05:5543 ??????
    db $41,$41,        $a5,        $a5,$25,$25         ;; 05:5549 ??????
    db $41,$41,$40,$25,$25,$30,$31,$31,$40,$25         ;; 05:554f ??????????
    db         $c1,$31,$31,        $c1,$41,$31         ;; 05:5559 ??????

map00_room0d_04_script:
    dw   $0073                                         ;; 05:555f $73 $00
    db   $ff                                           ;; 05:5561 ?

map00_room0d_04_tiles:
    db $35,$35,        $a5,        $a5,$25,$41         ;; 05:5562 ??????
    db $35,        $a5,$25,$3d,        $a5,$50         ;; 05:5568 ??????
    db $25,$25,$3e,        $a5,$3d,$25,$25,$30         ;; 05:556e ????????
    db         $a5,        $a5,        $a5,$41         ;; 05:5576 ????
    db $25,$3e,        $a5,$25,$25,$30,$40,$41         ;; 05:557a ????????
    db         $a5,$3d,        $a5,        $c1         ;; 05:5582 ????
    db         $a5,        $a5,$30,        $c1         ;; 05:5586 ????
    db $31,$31,$40,$30,$40,$30,        $c1,$41         ;; 05:558a ????????

map00_room0e_04_script:
    dw   $03e5                                         ;; 05:5592 $e5 $03
    db   $ff                                           ;; 05:5594 ?

map00_room0e_04_tiles:
    db $41,$42,        $c1,        $c1,$41,$41         ;; 05:5595 ??????
    db $41,$42,        $d1,        $d1,$41,$41         ;; 05:559b ??????
    db $41,$52,$00,        $ca,$4a,$00,$50,$41         ;; 05:55a1 ????????
    db $41,$00,$4a,$06,$07,$07,$08,$4a,$00,$41         ;; 05:55a9 ??????????
    db $41,$00,$4a,$16,$17,$17,$18,$4a,$00,$41         ;; 05:55b3 ??????????
    db $41,$00,$4a,$26,$27,$27,$28,$4a,$00,$41         ;; 05:55bd ??????????
    db $41,$40,$00,        $ca,$4a,$00,$25,$41         ;; 05:55c7 ????????
    db $41,$41,$31,$40,$00,$00,$30,$31,$31,$41         ;; 05:55cf ??????????

map00_room0f_04_script:
    dw   $0076                                         ;; 05:55d9 $76 $00
    db   $ff                                           ;; 05:55db ?

map00_room0f_04_tiles:
    db $41,$42,$41,$41,$42,        $c9,$10,$11         ;; 05:55dc ????????
    db $41,$42,$51,$51,$52,        $c9,$10,$11         ;; 05:55e4 ????????
    db $41,$52,        $c9,        $c9,$10,$11         ;; 05:55ec ??????
    db $41,$49,$49,$1b,        $c9,$15,$11,$11         ;; 05:55f2 ????????
    db $41,        $c9,$1b,$1b,$15,        $91         ;; 05:55fa ??????
    db $41,        $c9,$49,$49,$10,        $91         ;; 05:5600 ??????
    db $41,$40,        $c9,$49,$10,        $91         ;; 05:5606 ??????
    db $41,$41,$31,$40,$49,$49,$10,        $91         ;; 05:560c ????????

map00_room00_05_script:
    dw   $0067                                         ;; 05:5614 $67 $00
    db   $ff                                           ;; 05:5616 ?

map00_room00_05_tiles:
    db $11,$12,$50,$41,$41,$42,$51,$51,$41,$41         ;; 05:5617 ??????????
    db $11,$11,$02,$50,$51,$52,$00,$00,$50,$41         ;; 05:5621 ??????????
    db         $91,$38,$02,        $80,$00,$50         ;; 05:562b ??????
    db         $91,$11,$12,$00,$00,$48,$00,$00         ;; 05:5631 ????????
    db         $91,$11,$22,        $80,$00,$00         ;; 05:5639 ??????
    db         $91,$22,        $80,$00,$00,$30         ;; 05:563f ??????
    db $11,$11,$12,        $80,$00,$00,$30,$41         ;; 05:5645 ????????
    db $11,$11,$12,$00,$00,$30,$31,$31,$41,$41         ;; 05:564d ??????????

map00_room01_05_script:
    dw   $0061                                         ;; 05:5657 $61 $00
    db   $ff                                           ;; 05:5659 ?

map00_room01_05_tiles:
    db         $c1,$00,        $c1,$00,$41,$41         ;; 05:565a ??????
    db         $c1,$00,$50,$51,$53,$00,$50,$41         ;; 05:5660 ????????
    db $51,$51,$53,        $80,        $80,$50         ;; 05:5668 ??????
    db         $80,        $80,        $80,$30         ;; 05:566e ????
    db         $80,$48,        $80,$48,$00,$41         ;; 05:5672 ??????
    db $40,        $80,        $80,$00,$00,$41         ;; 05:5678 ??????
    db $41,        $80,$00,$30,$40,$00,$00,$50         ;; 05:567e ????????
    db $41,$40,$00,$30,$31,$41,$41,$00,$00,$30         ;; 05:5686 ??????????

map00_room02_05_script:
    dw   $0064                                         ;; 05:5690 $64 $00
    db   $ff                                           ;; 05:5692 ?

map00_room02_05_tiles:
    db         $c1,        $c1,        $c1,$41         ;; 05:5693 ????
    db $41,$41,        $d1,        $d1,$51,$51         ;; 05:5697 ??????
    db $41,$41,        $80,        $80,$00,$00         ;; 05:569d ??????
    db $41,$41,        $80,        $80,$00,$00         ;; 05:56a3 ??????
    db $41,$41,$33,        $80,        $80,$00         ;; 05:56a9 ??????
    db         $c1,$64,$2b,        $e4,$64,$64         ;; 05:56af ??????
    db         $c1,$41,$2b,        $c1,$41,$41         ;; 05:56b5 ??????
    db         $c1,$41,$2b,        $c1,$41,$41         ;; 05:56bb ??????

map00_room03_05_script:
    dw   $0064                                         ;; 05:56c1 $64 $00
    db   $ff                                           ;; 05:56c3 ?

map00_room03_05_tiles:
    db $41,$41,$0b,        $c1,$0b,        $c1         ;; 05:56c4 ??????
    db $51,$51,$0b,$51,$41,$41,$0b,        $c1         ;; 05:56ca ????????
    db         $80,$00,$50,$51,$0b,$51,$51,$41         ;; 05:56d2 ????????
    db         $80,        $80,        $80,$41         ;; 05:56da ????
    db         $80,        $80,        $80,$41         ;; 05:56de ????
    db $64,$64,$33,        $80,$00,$00,$34,$41         ;; 05:56e2 ????????
    db         $c1,        $e4,$64,$64,$42,$41         ;; 05:56ea ??????
    db         $c1,        $c1,$41,$41,$42,$41         ;; 05:56f0 ??????

map00_room04_05_script:
    dw   $0046                                         ;; 05:56f6 $46 $00
    db   $ff                                           ;; 05:56f8 ?

map00_room04_05_tiles:
    db $41,$2b,$51,$42,$5b,$5b,$42,        $d1         ;; 05:56f9 ????????
    db $63,$00,$24,$03,$5b,$5b,        $97,$17         ;; 05:5701 ????????
    db $61,$00,$24,$26,$27,        $97,$17,$17         ;; 05:5709 ????????
    db $63,$00,$00,$24,$24,$16,        $97,$17         ;; 05:5711 ????????
    db $61,$24,$00,$24,$24,        $97,$17,$17         ;; 05:5719 ????????
    db $41,$61,$00,$24,$24,        $97,$17,$17         ;; 05:5721 ????????
    db $41,$63,$00,$24,$24,        $97,$17,$27         ;; 05:5729 ????????
    db $41,$24,$00,$24,$24,        $97,$18,$37         ;; 05:5731 ????????

map00_room05_05_script:
    dw   $003d                                         ;; 05:5739 $3d $00
    db   $24                                           ;; 05:573b ?
    dw   $0385                                         ;; 05:573c $85 $03
    db   $ff                                           ;; 05:573e ?

map00_room05_05_tiles:
    db $51,$51,        $c1,$41,$41,$0b,$41,$41         ;; 05:573f ????????
    db $17,$04,$50,        $dd,$51,$0b,$41,$41         ;; 05:5747 ????????
    db $17,$18,$00,$5e,$2e,$5e,$69,$00,$41,$41         ;; 05:574f ??????????
    db $17,$18,        $80,        $80,$50,$51         ;; 05:5759 ??????
    db $17,$18,        $80,        $80,$06,$07         ;; 05:575f ??????
    db $17,$17,        $87,        $87,$17,$17         ;; 05:5765 ??????
    db         $a7,        $a7,        $a7,$27         ;; 05:576b ????
    db         $b7,        $b7,        $b7,$37         ;; 05:576f ????

map00_room06_05_script:
    dw   $003d                                         ;; 05:5773 $3d $00
    db   $ff                                           ;; 05:5775 ?

map00_room06_05_tiles:
    db $41,$42,        $db,$5b,$42,$41,$0b,$41         ;; 05:5776 ........
    db $41,$42,        $db,$5b,$42,$41,$0b,$41         ;; 05:577e ........
    db $41,$42,        $db,$5b,$42,$51,$0b,$51         ;; 05:5786 ........
    db $41,$16,        $db,$5b,$18,        $80         ;; 05:578e ......
    db $07,        $97,$17,$17,$18,        $80         ;; 05:5794 ......
    db         $97,$17,$17,$27,$27,        $97         ;; 05:579a ......
    db         $a7,$27,$14,        $80,$00,$00         ;; 05:57a0 ......
    db         $b7,$37,$37,$00,        $b7,$37         ;; 05:57a6 ......

map00_room07_05_script:
    dw   $0040                                         ;; 05:57ac $40 $00
    db   $ff                                           ;; 05:57ae ?

map00_room07_05_tiles:
    db $41,$41,$0b,        $c1,$51,$0b,$51,$51         ;; 05:57af ........
    db $41,$41,$0b,        $c1,$53,        $80         ;; 05:57b7 ......
    db $51,$51,$0b,$51,$51,$41,$33,        $80         ;; 05:57bd ........
    db         $80,        $80,$41,$0b,$64,$64         ;; 05:57c5 ......
    db         $80,        $80,$41,$0b,$51,$41         ;; 05:57cb ......
    db         $97,$17,$17,$04,$50,$0b,$41,$41         ;; 05:57d1 ........
    db         $80,$00,$00,$17,        $80,$30         ;; 05:57d9 ......
    db $37,$37,        $80,$17,        $80,$41         ;; 05:57df ......

map00_room08_05_script:
    dw   $0040                                         ;; 05:57e5 $40 $00
    db   $ff                                           ;; 05:57e7 ?

map00_room08_05_tiles:
    db         $d1,$51,        $c1,        $c1         ;; 05:57e8 ....
    db         $80,$00,$50,$41,$41,        $d1         ;; 05:57ec ......
    db         $80,$00,$34,$41,$53,        $80         ;; 05:57f2 ......
    db $64,$64,$0b,$64,$42,$41,$33,        $80         ;; 05:57f8 ........
    db $41,$41,$0b,$51,$42,$51,$41,$0b,$64,$64         ;; 05:5800 ..........
    db $41,$53,        $80,$00,$50,$0b,$51,$41         ;; 05:580a ........
    db $41,$33,        $80,        $80,$34,$41         ;; 05:5812 ......
    db $41,$41,$64,$64,$0b,        $e4,$42,$41         ;; 05:5818 ........

map00_room09_05_script:
    dw   $0040                                         ;; 05:5820 $40 $00
    db   $46                                           ;; 05:5822 .
    dw   $039b                                         ;; 05:5823 $9b $03
    db   $ff                                           ;; 05:5825 ?

map00_room09_05_tiles:
    db         $c1,        $d1,$51,$51,$41,$41         ;; 05:5826 ......
    db $51,$51,$53,        $80,$00,$00,$50,$41         ;; 05:582c ........
    db         $80,        $80,$00,$00,$34,$41         ;; 05:5834 ......
    db         $80,$34,$0b,        $e4,$42,$41         ;; 05:583a ......
    db         $e4,$42,$0b,$51,$4c,$41,$42,$41         ;; 05:5840 ........
    db         $c1,$52,        $80,$50,$42,$41         ;; 05:5848 ......
    db         $c1,$33,        $80,$34,$42,$41         ;; 05:584e ......
    db         $c1,$41,        $e4,$42,$42,$41         ;; 05:5854 ......

map00_room0a_05_script:
    dw   $0067                                         ;; 05:585a $67 $00
    db   $57                                           ;; 05:585c ?
    dw   $0474                                         ;; 05:585d $74 $04
    db   $ff                                           ;; 05:585f ?

map00_room0a_05_tiles:
    db         $c2,$10,$11,$12,$41,$41,$2b,$42         ;; 05:5860 ????????
    db $42,$42,$52,$10,$11,$12,$50,$41,$2b,$42         ;; 05:5868 ??????????
    db $52,$15,$38,        $91,$02,$50,$2b,$42         ;; 05:5872 ????????
    db $37,$10,        $91,$11,$11,$02,$00,$37         ;; 05:587a ????????
    db $37,$10,        $91,$11,$11,$12,$00,$37         ;; 05:5882 ????????
    db $37,$20,        $91,$11,$11,$7b,$00,$37         ;; 05:588a ????????
    db $37,$37,$20,$21,$21,$11,$21,$22,$00,$37         ;; 05:5892 ??????????
    db         $b7,$37,$37,$17,        $b7,$37         ;; 05:589c ??????

map00_room0b_05_script:
    dw   $0064                                         ;; 05:58a2 $64 $00
    db   $ff                                           ;; 05:58a4 ?

map00_room0b_05_tiles:
    db $41,$41,$53,        $80,        $c1,$41         ;; 05:58a5 ??????
    db $41,$41,        $80,$00,        $c1,$41         ;; 05:58ab ??????
    db $41,$41,        $80,$00,$50,        $c1         ;; 05:58b1 ??????
    db $37,$50,        $80,$00,$00,$50,$41,$41         ;; 05:58b7 ????????
    db $37,$37,$40,        $80,$00,$00,$41,$41         ;; 05:58bf ????????
    db $37,$37,$41,$40,        $80,$00,$41,$41         ;; 05:58c7 ????????
    db $37,$37,$41,$41,        $80,$00,$41,$41         ;; 05:58cf ????????
    db $37,$37,$41,$41,        $80,$00,$41,$41         ;; 05:58d7 ????????

map00_room0c_05_script:
    dw   $049d                                         ;; 05:58df $9d $04
    db   $34                                           ;; 05:58e1 ?
    dw   $028a                                         ;; 05:58e2 $8a $02
    db   $35                                           ;; 05:58e4 ?
    dw   $028a                                         ;; 05:58e5 $8a $02
    db   $ff                                           ;; 05:58e7 ?

map00_room0c_05_tiles:
    db $55,$0a,        $d5,        $d5,$09,$55         ;; 05:58e8 ??????
    db $55,$0a,$55,$55,$79,$79,$55,$55,$09,$55         ;; 05:58ee ??????????
    db $55,$0a,$55,$55,$1f,$1f,$55,$55,$09,$55         ;; 05:58f8 ??????????
    db $55,$0a,$54,$54,$6a,$6a,$54,$54,$09,$55         ;; 05:5902 ??????????
    db $54,$1a,        $80,        $80,$19,$54         ;; 05:590c ??????
    db $64,$33,        $80,        $80,$34,$64         ;; 05:5912 ??????
    db $41,$41,$64,$33,$00,$00,$30,$64,$42,$41         ;; 05:5918 ??????????
    db         $c1,$41,$2b,$2b,$41,$41,$42,$41         ;; 05:5922 ????????

map00_room0d_05_script:
    dw   $0076                                         ;; 05:592a $76 $00
    db   $ff                                           ;; 05:592c ?

map00_room0d_05_tiles:
    db $41,$42,        $c1,        $c1,$41,$41         ;; 05:592d ??????
    db $41,$42,        $d1,        $d1,$51,$51         ;; 05:5933 ??????
    db $41,$52,        $80,        $80,$49,$49         ;; 05:5939 ??????
    db $41,$00,$00,$1b,$00,        $c9,$49,$49         ;; 05:593f ????????
    db $41,        $80,$1b,$1b,$03,        $97         ;; 05:5947 ??????
    db $41,        $80,$49,$1b,        $97,$17         ;; 05:594d ??????
    db $41,$40,        $80,$49,$17,$17,$30,$40         ;; 05:5953 ????????
    db $41,$41,$40,$30,$40,$49,$17,$17,$41,$41         ;; 05:595b ??????????

map00_room0e_05_script:
    dw   $0076                                         ;; 05:5965 $76 $00
    db   $ff                                           ;; 05:5967 ?

map00_room0e_05_tiles:
    db         $c1,$41,$00,$00,        $c1,$41         ;; 05:5968 ??????
    db         $d1,$53,$00,$00,        $c1,$41         ;; 05:596e ??????
    db         $80,        $80,$50,$51,$41,$41         ;; 05:5974 ??????
    db         $80,        $c9,$49,$1b,$50,$41         ;; 05:597a ??????
    db         $97,$17,$17,$04,$49,$49,$1b,$41         ;; 05:5980 ????????
    db         $97,        $97,        $c9,$50         ;; 05:5988 ????
    db $30,$40,$00,$4e,$17,$17,$00,$49,$49,$30         ;; 05:598c ??????????
    db $41,$41,$00,$00,$17,$17,        $80,$41         ;; 05:5996 ????????

map00_room0f_05_script:
    dw   $007c                                         ;; 05:599e $7c $00
    db   $ff                                           ;; 05:59a0 ?

map00_room0f_05_tiles:
    db $42,$51,$51,$53,$49,$49,$10,        $91         ;; 05:59a1 ????????
    db $52,$4e,        $c9,$49,$10,        $91         ;; 05:59a9 ??????
    db $40,$15,$38,$02,$49,$15,        $91,$11         ;; 05:59af ????????
    db $53,$10,$11,$11,$38,        $91,$11,$11         ;; 05:59b7 ????????
    db $40,$20,$11,$11,$21,$22,$10,        $91         ;; 05:59bf ????????
    db $41,$49,$20,$22,$4e,$15,        $91,$11         ;; 05:59c7 ????????
    db $41,        $c9,$49,$10,        $91,$11         ;; 05:59cf ??????
    db $41,$40,        $c9,$10,        $91,$11         ;; 05:59d5 ??????

map00_room00_06_script:
    dw   $0067                                         ;; 05:59db $67 $00
    db   $ff                                           ;; 05:59dd ?

map00_room00_06_tiles:
    db $11,$11,$12,$00,$00,$50,$51,        $c1         ;; 05:59de ????????
    db $11,$11,$12,        $80,$00,$50,$51,$41         ;; 05:59e6 ????????
    db $11,$11,$12,$00,$48,        $80,$00,$50         ;; 05:59ee ????????
    db $11,$11,$12,        $80,        $80,$00         ;; 05:59f6 ??????
    db $11,$11,$12,$00,$00,$48,        $80,$00         ;; 05:59fc ????????
    db         $91,$02,        $80,$00,$00,$30         ;; 05:5a04 ??????
    db         $91,$11,$38,$02,        $80,$41         ;; 05:5a0a ??????
    db         $91,$11,$11,$12,$30,$40,$30,$41         ;; 05:5a10 ????????

map00_room01_06_script:
    dw   $0061                                         ;; 05:5a18 $61 $00
    db   $ff                                           ;; 05:5a1a ?

map00_room01_06_tiles:
    db $41,$41,$00,$50,$51,$51,$53,$00,$00,$41         ;; 05:5a1b ??????????
    db $41,$53,        $80,        $80,$00,$41         ;; 05:5a25 ??????
    db $53,        $80,        $80,$00,$00,$41         ;; 05:5a2b ??????
    db         $80,        $80,        $c8,$50         ;; 05:5a31 ????
    db         $80,$00,$00,$48,$48,        $80         ;; 05:5a35 ??????
    db         $80,$00,$48,$48,        $80,$00         ;; 05:5a3b ??????
    db $40,$00,$00,$48,$30,$40,        $80,$30         ;; 05:5a41 ????????
    db $41,$40,$00,$30,$41,$41,        $80,$41         ;; 05:5a49 ????????

map00_room02_06_script:
    dw   $0061                                         ;; 05:5a51 $61 $00
    db   $ff                                           ;; 05:5a53 ?

map00_room02_06_tiles:
    db         $c1,$41,$2b,        $c1,$41,$41         ;; 05:5a54 ??????
    db         $c1,$41,$2b,        $d1,$41,$41         ;; 05:5a5a ??????
    db         $c1,$53,$00,        $c8,$50,$41         ;; 05:5a60 ??????
    db $51,$51,$53,        $80,$00,$48,$48,$41         ;; 05:5a66 ????????
    db         $80,        $80,$00,$00,$48,$41         ;; 05:5a6e ??????
    db         $80,        $80,        $80,$50         ;; 05:5a74 ????
    db $40,        $80,$00,$30,$40,$00,$00,$30         ;; 05:5a78 ????????
    db $41,$40,$30,$40,$30,$41,$41,$40,$30,$41         ;; 05:5a80 ??????????

map00_room03_06_script:
    dw   $0223                                         ;; 05:5a8a $23 $02
    db   $ff                                           ;; 05:5a8c ?

map00_room03_06_tiles:
    db $41,$42,        $c1,        $c1,$42,$51         ;; 05:5a8d ??????
    db $41,$42,        $d1,        $d1,$75,$24         ;; 05:5a93 ??????
    db $41,$52,$24,        $ff,        $a4,$24         ;; 05:5a99 ??????
    db $41,$24,        $ff,        $ff,$24,$24         ;; 05:5a9f ??????
    db $41,$24,$24,$00,$00,        $ff,$00,$00         ;; 05:5aa5 ????????
    db $41,$24,$24,$00,        $ff,        $a4         ;; 05:5aad ??????
    db $41,$61,$00,$00,$24,        $ff,$7f,$24         ;; 05:5ab3 ????????
    db $41,$41,$00,$24,$24,$06,        $87,$07         ;; 05:5abb ????????

map00_room04_06_script:
    dw   $0067                                         ;; 05:5ac3 $67 $00
    db   $ff                                           ;; 05:5ac5 ?

map00_room04_06_tiles:
    db $63,$24,$00,$24,$24,$16,$17,$17,$18,$37         ;; 05:5ac6 ??????????
    db $24,$24,$00,$24,$24,$16,$17,$17,$18,$37         ;; 05:5ad0 ??????????
    db $24,$24,$00,$24,$24,$16,$17,$17,$18,$37         ;; 05:5ada ??????????
    db $24,$00,$00,$24,$24,$16,$17,$17,$18,$37         ;; 05:5ae4 ??????????
    db $00,$00,        $a4,$16,$17,$17,$18,$51         ;; 05:5aee ????????
    db         $a4,$24,$24,$16,$17,        $a7         ;; 05:5af6 ??????
    db         $a4,$24,$24,$16,$18,        $80         ;; 05:5afc ??????
    db         $87,$07,$07,$17,$18,$00,$00,$37         ;; 05:5b02 ????????

map00_room05_06_script:
    dw   $003d                                         ;; 05:5b0a $3d $00
    db   $ff                                           ;; 05:5b0c ?

map00_room05_06_tiles:
    db         $b7,        $b7,        $b7,$37         ;; 05:5b0d ....
    db $37,$37,        $d1,        $d1,$37,$37         ;; 05:5b11 ......
    db $37,$51,$69,        $80,$00,$00,$51,$37         ;; 05:5b17 ........
    db $37,$6e,        $80,        $80,$00,$51         ;; 05:5b1f ......
    db $51,$69,        $80,        $80,$00,$00         ;; 05:5b25 ......
    db         $97,$04,        $80,$00,$00,$37         ;; 05:5b2b ......
    db         $80,$17,        $80,$00,$37,$37         ;; 05:5b31 ......
    db $37,$00,$00,$17,        $b7,        $b7         ;; 05:5b37 ......

map00_room06_06_script:
    dw   $0043                                         ;; 05:5b3d $43 $00
    db   $ff                                           ;; 05:5b3f ?

map00_room06_06_tiles:
    db         $b7,$37,$37,$6e,        $b7,$37         ;; 05:5b40 ......
    db $37,        $d1,$51,$69,        $d1,$37         ;; 05:5b46 ......
    db $37,$6e,        $80,        $80,$00,$51         ;; 05:5b4c ......
    db $51,$69,$37,        $80,$37,$37,$00,$00         ;; 05:5b52 ........
    db         $80,$00,$37,        $80,$00,$37         ;; 05:5b5a ......
    db $37,$00,$37,        $80,$37,$37,$00,$37         ;; 05:5b60 ........
    db $37,        $80,        $80,$00,$00,$37         ;; 05:5b68 ......
    db         $b7,        $b7,        $b7,$37         ;; 05:5b6e ....

map00_room07_06_script:
    dw   $0043                                         ;; 05:5b72 $43 $00
    db   $ff                                           ;; 05:5b74 ?

map00_room07_06_tiles:
    db $37,$37,$6e,$00,$00,$17,        $80,$41         ;; 05:5b75 ........
    db $37,$34,$69,$00,$00,$17,        $80,$50         ;; 05:5b7d ........
    db $51,$52,        $80,$17,        $80,$00         ;; 05:5b85 ......
    db         $80,$00,$00,$17,        $80,$00         ;; 05:5b8b ......
    db $37,        $80,$00,$13,        $97,$17         ;; 05:5b91 ......
    db $37,$37,        $80,        $80,$00,$36         ;; 05:5b97 ......
    db $37,$37,        $80,        $80,$00,$36         ;; 05:5b9d ......
    db $37,$37,$00,$00,        $b6,        $b6         ;; 05:5ba3 ......

map00_room08_06_script:
    dw   $0040                                         ;; 05:5ba9 $40 $00
    db   $ff                                           ;; 05:5bab ?

map00_room08_06_tiles:
    db         $c1,$41,$0b,        $c1,$41,$41         ;; 05:5bac ......
    db         $d1,$51,$0b,$51,        $c1,$41         ;; 05:5bb2 ......
    db         $80,        $80,$50,        $c1         ;; 05:5bb8 ....
    db         $80,        $80,$00,$50,$51,$51         ;; 05:5bbc ......
    db         $97,$17,$2a,        $97,$17,$17         ;; 05:5bc2 ......
    db $36,$36,        $80,        $80,$00,$00         ;; 05:5bc8 ......
    db         $b6,        $80,        $80,$00         ;; 05:5bce ....
    db         $b6,        $b6,        $b6,$36         ;; 05:5bd2 ....

map00_room09_06_script:
    dw   $0043                                         ;; 05:5bd6 $43 $00
    db   $16                                           ;; 05:5bd8 .
    dw   $039c                                         ;; 05:5bd9 $9c $03
    db   $ff                                           ;; 05:5bdb ?

map00_room09_06_tiles:
    db $41,$42,$41,$41,$42,        $c1,$41,$41         ;; 05:5bdc ........
    db $41,$42,$41,$41,$42,$51,$4c,        $d1         ;; 05:5be4 ........
    db $41,$42,$51,$51,$52,        $80,$00,$00         ;; 05:5bec ........
    db $51,$52,        $80,        $80,$00,$00         ;; 05:5bf4 ......
    db         $97,        $97,        $97,$17         ;; 05:5bfa ....
    db         $80,$00,$17,        $80,$00,$00         ;; 05:5bfe ......
    db         $80,$00,$29,        $80,$00,$00         ;; 05:5c04 ......
    db         $b6,$36,$17,$00,$00,        $b6         ;; 05:5c0a ......

map00_room0a_06_script:
    dw   $0040                                         ;; 05:5c10 $40 $00
    db   $ff                                           ;; 05:5c12 ?

map00_room0a_06_tiles:
    db         $c1,$41,$42,$17,        $b6,$36         ;; 05:5c13 ......
    db         $d1,$51,$52,$17,        $b6,$36         ;; 05:5c19 ......
    db         $80,$00,$00,$29,        $80,$00         ;; 05:5c1f ......
    db         $80,$00,$00,$17,        $80,$00         ;; 05:5c25 ......
    db         $97,        $97,        $80,$00         ;; 05:5c2b ....
    db         $80,$00,$00,$17,        $b6,$36         ;; 05:5c2f ......
    db         $80,$00,$00,$17,        $b6,$36         ;; 05:5c35 ......
    db $36,        $80,$00,$17,        $b6,$36         ;; 05:5c3b ......

map00_room0b_06_script:
    dw   $0040                                         ;; 05:5c41 $40 $00
    db   $ff                                           ;; 05:5c43 ?

map00_room0b_06_tiles:
    db $36,$36,$50,$41,        $80,$00,$41,$41         ;; 05:5c44 ........
    db         $b6,$50,        $80,$00,$41,$41         ;; 05:5c4c ......
    db $00,$00,$36,$36,$33,        $80,$50,$51         ;; 05:5c52 ........
    db         $80,$36,$41,        $80,$00,$35         ;; 05:5c5a ......
    db         $80,$00,$41,        $80,$00,$00         ;; 05:5c60 ......
    db $36,        $80,$41,$33,        $80,$00         ;; 05:5c66 ......
    db $36,$36,$00,$00,$50,$41,        $e4,$64         ;; 05:5c6c ........
    db         $b6,$00,$00,        $c1,$41,$41         ;; 05:5c74 ......

map00_room0c_06_script:
    dw   $0064                                         ;; 05:5c7a $64 $00
    db   $ff                                           ;; 05:5c7c ?

map00_room0c_06_tiles:
    db         $c1,$41,$2b,$2b,$41,$41,$42,$41         ;; 05:5c7d ????????
    db         $c1,$41,$2b,$2b,$41,$41,$42,$41         ;; 05:5c85 ????????
    db $51,        $c1,$2b,$2b,$41,$41,$42,$41         ;; 05:5c8d ????????
    db $35,$50,$51,$51,$2b,$2b,$51,$51,$52,$41         ;; 05:5c95 ??????????
    db         $80,        $80,        $80,$51         ;; 05:5c9f ????
    db         $80,        $80,$00,$00,$34,$03         ;; 05:5ca3 ??????
    db         $e4,        $e4,$64,$64,$42,$17         ;; 05:5ca9 ??????
    db         $c1,        $c1,$41,$41,$42,$17         ;; 05:5caf ??????

map00_room0d_06_script:
    dw   $003d                                         ;; 05:5cb5 $3d $00
    db   $45                                           ;; 05:5cb7 ?
    dw   $0474                                         ;; 05:5cb8 $74 $04
    db   $ff                                           ;; 05:5cba ?

map00_room0d_06_tiles:
    db $41,$42,$42,$41,$42,$49,$17,$17,$41,$41         ;; 05:5cbb ??????????
    db $41,$42,$42,$51,$52,$49,$17,$17,$50,$51         ;; 05:5cc5 ??????????
    db $41,$42,$52,$1b,$49,$49,$17,$17,$00,$00         ;; 05:5ccf ??????????
    db $41,$42,$1b,$00,$49,$49,$17,$17,$00,$00         ;; 05:5cd9 ??????????
    db $51,$52,$1b,$49,$49,$7b,$17,$17,$00,$00         ;; 05:5ce3 ??????????
    db         $97,        $97,$17,$17,$00,$00         ;; 05:5ced ??????
    db         $97,        $97,$17,$14,$30,$40         ;; 05:5cf3 ??????
    db $17,$30,$40,$30,$31,$31,$40,$30,$41,$41         ;; 05:5cf9 ??????????

map00_room0e_06_script:
    dw   $0076                                         ;; 05:5d03 $76 $00
    db   $ff                                           ;; 05:5d05 ?

map00_room0e_06_tiles:
    db $41,$41,$00,$00,$17,$17,        $80,$41         ;; 05:5d06 ????????
    db $51,$53,$00,$49,$17,$17,        $80,$41         ;; 05:5d0e ????????
    db $00,$00,$49,$1b,$17,$17,$00,$00,$1b,$50         ;; 05:5d16 ??????????
    db $00,$00,$1b,$49,$17,$17,        $80,$49         ;; 05:5d20 ????????
    db $00,$00,$1b,$49,$17,$17,$1b,$00,$49,$49         ;; 05:5d28 ??????????
    db $00,$00,$49,$49,$17,$17,$4e,$00,$00,$30         ;; 05:5d32 ??????????
    db $30,$40,$00,$49,$17,$17,$30,$40,$30,$41         ;; 05:5d3c ??????????
    db $41,$41,$00,$00,$17,$17,        $c1,$41         ;; 05:5d46 ????????

map00_room0f_06_script:
    dw   $007c                                         ;; 05:5d4e $7c $00
    db   $ff                                           ;; 05:5d50 ?

map00_room0f_06_tiles:
    db $41,$41,        $c9,$10,        $91,$11         ;; 05:5d51 ??????
    db $41,$53,        $c9,$10,        $91,$11         ;; 05:5d57 ??????
    db $53,        $c9,$15,        $91,$11,$11         ;; 05:5d5d ??????
    db $49,$49,$1b,$49,$10,        $91,$11,$11         ;; 05:5d63 ????????
    db         $c9,$49,$10,        $91,$11,$11         ;; 05:5d6b ??????
    db $40,        $c9,$20,        $91,$11,$11         ;; 05:5d71 ??????
    db $41,        $c9,$1b,$20,        $91,$11         ;; 05:5d77 ??????
    db $41,$40,$30,$40,$1b,$1b,$10,        $91         ;; 05:5d7d ????????

map00_room00_07_script:
    dw   $003d                                         ;; 05:5d85 $3d $00
    db   $ff                                           ;; 05:5d87 ?

map00_room00_07_tiles:
    db         $91,        $91,        $c1,$41         ;; 05:5d88 ????
    db         $91,        $91,$51,$51,$41,$41         ;; 05:5d8c ??????
    db         $91,$11,        $80,$00,$00,$41         ;; 05:5d92 ??????
    db         $91,$11,$00,$37,$00,$37,$00,$41         ;; 05:5d98 ????????
    db         $91,$11,        $80,$00,$00,$41         ;; 05:5da0 ??????
    db         $91,$11,$33,        $80,$00,$41         ;; 05:5da6 ??????
    db         $91,$11,$41,$64,$64,$0b,$64,$41         ;; 05:5dac ????????
    db         $91,$11,        $c1,$0b,$41,$41         ;; 05:5db4 ??????

map00_room01_07_script:
    dw   $0064                                         ;; 05:5dba $64 $00
    db   $ff                                           ;; 05:5dbc ?

map00_room01_07_tiles:
    db $41,$41,$00,$41,$41,$42,        $80,$41         ;; 05:5dbd ????????
    db $41,$41,$00,$50,$51,$52,        $80,$41         ;; 05:5dc5 ????????
    db $41,$53,        $80,        $80,$00,$50         ;; 05:5dcd ??????
    db $41,        $80,$48,        $80,$00,$24         ;; 05:5dd3 ??????
    db $53,        $80,        $80,$00,$24,$24         ;; 05:5dd9 ??????
    db $40,        $80,$00,$48,        $80,$30         ;; 05:5ddf ??????
    db $41,$40,$30,$40,        $80,$00,$30,$41         ;; 05:5de5 ????????
    db         $c1,$41,$40,$30,$40,$30,$41,$41         ;; 05:5ded ????????

map00_room02_07_script:
    dw   $03e5                                         ;; 05:5df5 $e5 $03
    db   $ff                                           ;; 05:5df7 ?

map00_room02_07_tiles:
    db $42,$42,        $d1,        $d1,$41,$41         ;; 05:5df8 ??????
    db $42,$75,        $a4,$24,$24,$62,$41,$41         ;; 05:5dfe ????????
    db $75,        $a4,        $a4,$24,$62,$41         ;; 05:5e06 ??????
    db $24,$24,        $ca,$4a,$4a,$24,$24,$41         ;; 05:5e0c ????????
    db $24,$4a,$4a,$06,$07,$08,$4a,$4a,$24,$62         ;; 05:5e14 ??????????
    db $61,$4a,$4a,$26,$27,$28,$4a,$4a,$24,$60         ;; 05:5e1e ??????????
    db $41,$61,        $ca,$4a,$60,$61,$60,$41         ;; 05:5e28 ????????
    db $41,$41,$61,$60,$61,$60,        $c1,$41         ;; 05:5e30 ????????

map00_room03_07_script:
    dw   $0061                                         ;; 05:5e38 $61 $00
    db   $ff                                           ;; 05:5e3a ?

map00_room03_07_tiles:
    db $41,$41,$00,$24,$24,$16,        $97,$17         ;; 05:5e3b ????????
    db $41,$63,$00,$00,$24,$26,        $a7,$27         ;; 05:5e43 ????????
    db $41,$24,$24,$00,$24,        $b6,$36,$36         ;; 05:5e4b ????????
    db $41,$24,$24,$00,        $a4,        $b6         ;; 05:5e53 ??????
    db $41,$24,$24,        $80,        $80,$34         ;; 05:5e59 ??????
    db $41,        $a4,$24,$60,$40,$00,$00,$42         ;; 05:5e5f ????????
    db $41,$61,$60,$61,$60,$41,$41,$00,$00,$43         ;; 05:5e67 ??????????
    db         $c1,        $c1,$41,$00,$00,$0c         ;; 05:5e71 ??????

map00_room04_07_script:
    dw   $0223                                         ;; 05:5e77 $23 $02
    db   $ff                                           ;; 05:5e79 ?

map00_room04_07_tiles:
    db         $97,        $97,$18,$00,$00,$37         ;; 05:5e7a ??????
    db         $a7,        $a7,$28,$00,$00,$37         ;; 05:5e80 ??????
    db         $b6,        $b6,        $80,$37         ;; 05:5e86 ????
    db         $b6,$36,        $80,$00,$00,$37         ;; 05:5e8a ??????
    db $33,$36,$36,        $80,$00,$00,$37,$37         ;; 05:5e90 ????????
    db $41,        $80,        $80,        $b7         ;; 05:5e98 ????
    db $44,        $80,$00,$00,$30,$40,$30,$40         ;; 05:5e9c ????????
    db $0c,$00,$00,$30,$40,$30,        $c1,$41         ;; 05:5ea4 ????????

map00_room05_07_script:
    dw   $003d                                         ;; 05:5eac $3d $00
    db   $ff                                           ;; 05:5eae ?

map00_room05_07_tiles:
    db $37,$00,$00,$17,        $b7,        $b7         ;; 05:5eaf ??????
    db $37,$00,$00,$13,        $97,        $97         ;; 05:5eb5 ??????
    db $37,        $80,        $80,        $80         ;; 05:5ebb ????
    db $37,$37,        $80,        $80,$00,$00         ;; 05:5ebf ??????
    db $37,$37,        $80,        $80,$00,$00         ;; 05:5ec5 ??????
    db         $b7,        $80,        $80,$00         ;; 05:5ecb ????
    db         $b7,$37,$06,        $87,$07,$07         ;; 05:5ecf ??????
    db         $b7,$37,$16,        $97,$17,$17         ;; 05:5ed5 ??????

map00_room06_07_script:
    dw   $0193                                         ;; 05:5edb $93 $01
    db   $ff                                           ;; 05:5edd ?

map00_room06_07_tiles:
    db         $b7,        $b7,        $b7,$37         ;; 05:5ede ????
    db $17,$17,$04,        $80,$00,        $b7         ;; 05:5ee2 ??????
    db $00,$4e,$17,$00,$00,        $b7,$37,$37         ;; 05:5ee8 ????????
    db $00,$00,$17,        $80,$00,        $b7         ;; 05:5ef0 ??????
    db $00,$00,$17,$00,$00,        $b7,$37,$37         ;; 05:5ef6 ????????
    db $00,$00,$17,$00,$4e,        $b7,$37,$37         ;; 05:5efe ????????
    db $07,$07,$17,        $87,        $87,$07         ;; 05:5f06 ??????
    db         $97,        $97,        $97,$17         ;; 05:5f0c ????

map00_room07_07_script:
    dw   $0043                                         ;; 05:5f10 $43 $00
    db   $ff                                           ;; 05:5f12 ?

map00_room07_07_tiles:
    db $37,$37,$00,$00,        $b6,        $b6         ;; 05:5f13 ......
    db $37,        $80,        $80,$00,$00,$36         ;; 05:5f19 ......
    db $37,        $80,$36,$00,$36,$36,$00,$00         ;; 05:5f1f ........
    db $37,        $80,        $80,$00,$00,$36         ;; 05:5f27 ......
    db $37,$00,$36,$36,$00,$36,        $80,$36         ;; 05:5f2d ........
    db $37,        $80,        $80,$00,$00,$36         ;; 05:5f35 ......
    db         $87,$08,        $80,$00,$00,$36         ;; 05:5f3b ......
    db         $97,$18,$36,$00,$36,$00,$36,$36         ;; 05:5f41 ........

map00_room08_07_script:
    dw   $0485                                         ;; 05:5f49 $85 $04
    db   $14                                           ;; 05:5f4b .
    dw   $0271                                         ;; 05:5f4c $71 $02
    db   $ff                                           ;; 05:5f4e ?

map00_room08_07_tiles:
    db $4f,        $a4,$7c,        $a4,$24,$4f         ;; 05:5f4f ......
    db         $cf,$4f,$70,        $cf,$4f,$4f         ;; 05:5f55 ......
    db         $80,        $80,        $80,$36         ;; 05:5f5b ....
    db $36,        $80,        $80,$00,$00,$36         ;; 05:5f5f ......
    db $36,$06,$07,$08,        $80,        $80         ;; 05:5f65 ......
    db $36,$26,$17,$17,$08,        $80,$00,$00         ;; 05:5f6b ........
    db $36,$36,$26,$27,$28,        $80,$36,$36         ;; 05:5f73 ........
    db         $b6,$36,$36,$00,        $b6,$36         ;; 05:5f7b ......

map00_room09_07_script:
    dw   $0043                                         ;; 05:5f81 $43 $00
    db   $ff                                           ;; 05:5f83 ?

map00_room09_07_tiles:
    db         $b6,$36,$17,$00,$00,        $b6         ;; 05:5f84 ......
    db         $b6,$36,$17,        $80,$00,$00         ;; 05:5f8a ......
    db $36,        $80,$17,        $80,$00,$00         ;; 05:5f90 ......
    db $36,        $80,$17,        $80,$00,$00         ;; 05:5f96 ......
    db         $80,$00,$13,        $97,$17,$17         ;; 05:5f9c ......
    db         $80,        $80,        $80,$00         ;; 05:5fa2 ....
    db $36,        $80,        $80,        $80         ;; 05:5fa6 ....
    db         $b6,        $b6,$36,$00,$36,$36         ;; 05:5faa ......

map00_room0a_07_script:
    dw   $0043                                         ;; 05:5fb0 $43 $00
    db   $ff                                           ;; 05:5fb2 ?

map00_room0a_07_tiles:
    db $36,        $80,$00,$17,        $b6,$36         ;; 05:5fb3 ......
    db         $80,$00,$00,$17,        $80,$36         ;; 05:5fb9 ......
    db         $80,$00,$00,$29,        $80,$36         ;; 05:5fbf ......
    db         $80,$00,$00,$17,        $80,$36         ;; 05:5fc5 ......
    db         $97,$17,$17,$14,        $80,$36         ;; 05:5fcb ......
    db         $80,$00,$00,$36,        $80,$00         ;; 05:5fd1 ......
    db         $80,$00,$00,$36,        $80,$00         ;; 05:5fd7 ......
    db $36,$36,$00,$00,        $b6,        $b6         ;; 05:5fdd ......

map00_room0b_07_script:
    dw   $0043                                         ;; 05:5fe3 $43 $00
    db   $ff                                           ;; 05:5fe5 ?

map00_room0b_07_tiles:
    db         $b6,$00,$00,        $c1,$41,$41         ;; 05:5fe6 ......
    db         $b6,$00,$00,$50,        $d1,$51         ;; 05:5fec ......
    db         $b6,        $80,        $80,$00         ;; 05:5ff2 ....
    db         $b6,$36,        $80,        $80         ;; 05:5ff6 ....
    db         $b6,        $b6,$36,$36,$00,$00         ;; 05:5ffa ......
    db         $80,$00,        $b6,        $b6         ;; 05:6000 ....
    db         $80,$00,$00,        $b6,$36,$36         ;; 05:6004 ......
    db         $b6,$00,$00,        $b6,$36,$36         ;; 05:600a ......

map00_room0c_07_script:
    dw   $0043                                         ;; 05:6010 $43 $00
    db   $34                                           ;; 05:6012 .
    dw   $03a1                                         ;; 05:6013 $a1 $03
    db   $ff                                           ;; 05:6015 ?

map00_room0c_07_tiles:
    db         $c1,        $c1,$41,$41,$42,$17         ;; 05:6016 ......
    db         $d1,        $d1,$51,$51,$52,$17         ;; 05:601c ......
    db         $80,        $dd,        $b6,$17         ;; 05:6022 ....
    db         $80,$5e,$2e,$5e,$69,$00,$00,$17         ;; 05:6026 ........
    db         $80,        $80,        $80,$29         ;; 05:602e ....
    db $36,$36,        $80,        $80,$36,$17         ;; 05:6032 ......
    db         $b6,        $b6,        $b6,$17         ;; 05:6038 ....
    db $36,$36,$03,        $97,        $97,$17         ;; 05:603c ......

map00_room0d_07_script:
    dw   $004c                                         ;; 05:6042 $4c $00
    db   $ff                                           ;; 05:6044 ?

map00_room0d_07_tiles:
    db $17,$62,        $d1,        $d1,$41,$41         ;; 05:6045 ......
    db $17,        $a4,        $c5,$45,$62,$41         ;; 05:604b ......
    db $17,        $a4,$24,$24,        $c5,$41         ;; 05:6051 ......
    db $17,        $a4,        $a4,$24,$45,$41         ;; 05:6057 ......
    db $29,$24,$24,        $c5,$45,$24,$24,$41         ;; 05:605d ........
    db $17,        $c5,$45,$45,        $a4,$41         ;; 05:6065 ......
    db $17,$24,$45,$45,        $a4,$24,$60,$41         ;; 05:606b ........
    db $17,        $a4,        $a4,$24,$41,$41         ;; 05:6073 ......

map00_room0e_07_script:
    dw   $0076                                         ;; 05:6079 $76 $00
    db   $ff                                           ;; 05:607b ?

map00_room0e_07_tiles:
    db $41,$41,$49,$49,$17,$17,        $c1,$41         ;; 05:607c ????????
    db $41,$41,$00,$49,$17,$17,$50,$51,$53,$50         ;; 05:6084 ??????????
    db $41,$53,$00,$49,        $97,        $97         ;; 05:608e ??????
    db $41,$40,$00,$00,$13,        $97,$17,$17         ;; 05:6094 ????????
    db $41,$53,        $80,$1b,$1b,        $80         ;; 05:609c ??????
    db $41,$40,        $80,$00,$1b,        $80         ;; 05:60a2 ??????
    db $41,$41,$40,$30,$40,        $80,$00,$30         ;; 05:60a8 ????????
    db         $c1,$41,$41,$40,$30,$40,$30,$41         ;; 05:60b0 ????????

map00_room0f_07_script:
    dw   $007c                                         ;; 05:60b8 $7c $00
    db   $ff                                           ;; 05:60ba ?

map00_room0f_07_tiles:
    db $41,$42,$41,$52,$1b,$1b,$10,        $91         ;; 05:60bb ????????
    db $51,$52,        $9b,$15,        $91,$11         ;; 05:60c3 ??????
    db         $b8,$38,$38,        $91,$11,$11         ;; 05:60c9 ??????
    db         $a1,$21,$21,        $91,$11,$11         ;; 05:60cf ??????
    db $00,$00,        $9b,$20,        $91,$11         ;; 05:60d5 ??????
    db         $80,$00,$1b,$1b,$10,        $91         ;; 05:60db ??????
    db $40,        $80,$00,$00,$10,        $91         ;; 05:60e1 ??????
    db $41,$40,        $80,$00,$10,        $91         ;; 05:60e7 ??????

map00_room00_08_script:
    dw   $0046                                         ;; 05:60ed $46 $00
    db   $45                                           ;; 05:60ef ?
    dw   $0474                                         ;; 05:60f0 $74 $04
    db   $ff                                           ;; 05:60f2 ?

map00_room00_08_tiles:
    db         $91,$11,        $c1,$0b,$41,$41         ;; 05:60f3 ??????
    db         $91,$11,        $c1,$0b,$41,$41         ;; 05:60f9 ??????
    db         $91,$11,        $c1,$0b,$51,$41         ;; 05:60ff ??????
    db         $91,$11,$51,$51,$53,$00,$00,$41         ;; 05:6105 ????????
    db         $91,$11,$11,$7b,        $80,$41         ;; 05:610d ??????
    db         $91,$11,$11,$12,        $80,$50         ;; 05:6113 ??????
    db         $91,$11,$11,$22,        $80,$47         ;; 05:6119 ??????
    db         $91,$11,$12,        $80,$00,$47         ;; 05:611f ??????

map00_room01_08_script:
    dw   $0479                                         ;; 05:6125 $79 $04
    db   $34                                           ;; 05:6127 ?
    dw   $0280                                         ;; 05:6128 $80 $02
    db   $35                                           ;; 05:612a ?
    dw   $0280                                         ;; 05:612b $80 $02
    db   $ff                                           ;; 05:612d ?

map00_room01_08_tiles:
    db $09,$55,$0a,        $d5,$55,$09,$55,$0a         ;; 05:612e ????????
    db $09,$55,$0a,$55,$79,$79,$55,$09,$55,$0a         ;; 05:6136 ??????????
    db $09,$55,$0a,$55,$1f,$1f,$55,$09,$55,$0a         ;; 05:6140 ??????????
    db $09,$55,$0a,$54,$6a,$6a,$54,$09,$55,$0a         ;; 05:614a ??????????
    db $19,$54,$1a,        $80,$00,$19,$54,$1a         ;; 05:6154 ????????
    db         $e4,$64,$2b,$2b,        $e4,$64         ;; 05:615c ??????
    db $47,        $85,        $85,$05,$05,$47         ;; 05:6162 ??????
    db $47,$05,$47,$05,$47,$47,$05,$47,$05,$47         ;; 05:6168 ??????????

map00_room02_08_script:
    dw   $005e                                         ;; 05:6172 $5e $00
    db   $ff                                           ;; 05:6174 ?

map00_room02_08_tiles:
    db $41,$42,$42,        $d1,        $d1,$51         ;; 05:6175 ??????
    db $41,$42,$52,        $80,        $80,$00         ;; 05:617b ??????
    db $41,$52,$00,$00,        $85,$05,$00,$00         ;; 05:6181 ????????
    db $41,$40,        $85,        $85,$05,$00         ;; 05:6189 ??????
    db $41,$53,$05,$47,$05,$47,$05,$47,$05,$30         ;; 05:618f ??????????
    db $41,        $85,        $85,$05,$05,$41         ;; 05:6199 ??????
    db $41,$40,        $85,        $85,$30,$41         ;; 05:619f ??????
    db $41,$41,$31,$31,$40,$05,$05,$30,$31,$41         ;; 05:61a5 ??????????

map00_room03_08_script:
    dw   $03d6                                         ;; 05:61af $d6 $03
    db   $ff                                           ;; 05:61b1 ?

map00_room03_08_tiles:
    db $51,$51,        $c1,$42,$52,$00,$00,$0c         ;; 05:61b2 ????????
    db $00,$00,$50,$41,$41,$42,        $80,$0c         ;; 05:61ba ????????
    db         $80,$41,$41,$42,        $80,$0c         ;; 05:61c2 ??????
    db         $80,$50,$41,$52,        $80,$0c         ;; 05:61c8 ??????
    db $64,$33,        $80,        $80,$34,$0c         ;; 05:61ce ??????
    db $41,$41,        $80,$00,$00,$34,$42,$0c         ;; 05:61d4 ????????
    db $51,$41,$33,        $80,$34,$42,$43,$0c         ;; 05:61dc ????????
    db $0c,$44,$41,        $e4,$42,$43,$0c,$0c         ;; 05:61e4 ????????

map00_room04_08_script:
    dw   $00a6                                         ;; 05:61ec $a6 $00
    db   $ff                                           ;; 05:61ee ?

map00_room04_08_tiles:
    db $0c,$00,$00,$41,$41,$42,$42,        $c1         ;; 05:61ef ????????
    db $0c,$00,$00,$41,$41,$42,$52,        $80         ;; 05:61f7 ????????
    db $0c,$00,$00,$50,$51,$52,        $80,$00         ;; 05:61ff ????????
    db $0c,        $80,        $80,$00,$34,$23         ;; 05:6207 ??????
    db $0c,$33,        $80,$00,$00,$34,$42,$43         ;; 05:620d ????????
    db $0c,$41,        $e4,$64,$64,$42,$43,$0c         ;; 05:6215 ????????
    db $0c,$44,        $c1,$41,$41,$43,$0c,$0c         ;; 05:621d ????????
    db         $8c,        $8c,        $8c,$0c         ;; 05:6225 ????

map00_room05_08_script:
    dw   $0058                                         ;; 05:6229 $58 $00
    db   $ff                                           ;; 05:622b ?

map00_room05_08_tiles:
    db         $b7,$37,$16,        $97,$17,$17         ;; 05:622c ??????
    db         $80,$00,$16,$17,        $a7,$27         ;; 05:6232 ??????
    db         $80,$00,$16,$18,$4e,        $a4         ;; 05:6238 ??????
    db $37,        $80,$16,$18,        $a4,$24         ;; 05:623e ??????
    db $37,        $80,$16,$18,$24,$24,$06,$07         ;; 05:6244 ????????
    db $37,$00,$00,$4e,$16,$18,$24,$24,$16,$17         ;; 05:624c ??????????
    db $37,$37,$00,$37,$16,$17,$07,$07,$17,$17         ;; 05:6256 ??????????
    db $37,$37,$00,$37,$16,        $97,$17,$17         ;; 05:6260 ????????

map00_room06_08_script:
    dw   $003d                                         ;; 05:6268 $3d $00
    db   $ff                                           ;; 05:626a ?

map00_room06_08_tiles:
    db         $97,        $97,        $97,$17         ;; 05:626b ????
    db         $a7,$27,        $97,        $97         ;; 05:626f ????
    db         $a4,$24,$16,        $97,$17,$17         ;; 05:6273 ??????
    db         $a4,$24,$16,        $97,$17,$17         ;; 05:6279 ??????
    db         $87,$07,        $97,        $97         ;; 05:627f ????
    db         $97,        $97,$17,$27,$17,$17         ;; 05:6283 ??????
    db         $97,        $97,$18,$24,$16,$17         ;; 05:6289 ??????
    db         $97,        $97,$18,$24,$16,$17         ;; 05:628f ??????

map00_room07_08_script:
    dw   $0043                                         ;; 05:6295 $43 $00
    db   $ff                                           ;; 05:6297 ?

map00_room07_08_tiles:
    db         $97,$18,$36,$00,$36,$00,$36,$36         ;; 05:6298 ????????
    db         $97,$18,        $80,$00,$36,$36         ;; 05:62a0 ??????
    db         $97,$18,        $80,$00,$36,$36         ;; 05:62a6 ??????
    db         $97,$18,        $80,$00,$36,$36         ;; 05:62ac ??????
    db         $97,$18,        $80,        $80         ;; 05:62b2 ????
    db         $97,$18,        $80,        $80         ;; 05:62b6 ????
    db         $97,$17,        $87,        $87         ;; 05:62ba ????
    db         $97,        $97,        $97,$17         ;; 05:62be ????

map00_room08_08_script:
    dw   $0043                                         ;; 05:62c2 $43 $00
    db   $ff                                           ;; 05:62c4 ?

map00_room08_08_tiles:
    db         $b6,$36,$36,$00,        $b6,$36         ;; 05:62c5 ......
    db         $b6,$36,$36,$00,        $b6,$36         ;; 05:62cb ......
    db $36,$36,        $80,        $80,$36,$36         ;; 05:62d1 ......
    db $36,$36,        $80,        $80,$00,$00         ;; 05:62d7 ......
    db         $80,        $80,        $80,$00         ;; 05:62dd ....
    db         $80,        $80,$00,$00,$36,$36         ;; 05:62e1 ......
    db         $87,$08,        $b6,        $b6         ;; 05:62e7 ....
    db         $97,$18,        $b6,        $b6         ;; 05:62eb ....

map00_room09_08_script:
    dw   $00f5                                         ;; 05:62ef $f5 $00
    db   $ff                                           ;; 05:62f1 ?

map00_room09_08_tiles:
    db         $b6,        $b6,$36,$00,$36,$36         ;; 05:62f2 ......
    db $36,        $80,        $80,        $80         ;; 05:62f8 ....
    db $36,$00,$36,        $80,$00,$36,$00,$36         ;; 05:62fc ........
    db         $80,        $80,        $80,$00         ;; 05:6304 ....
    db         $80,        $80,        $80,$00         ;; 05:6308 ....
    db $36,$00,$36,        $80,$00,$36,$00,$36         ;; 05:630c ........
    db $36,        $80,        $80,        $80         ;; 05:6314 ....
    db         $b6,        $b6,        $b6,$36         ;; 05:6318 ....

map00_room0a_08_script:
    dw   $0043                                         ;; 05:631c $43 $00
    db   $ff                                           ;; 05:631e ?

map00_room0a_08_tiles:
    db $36,$36,$00,$00,        $b6,        $b6         ;; 05:631f ......
    db         $80,        $80,        $80,$36         ;; 05:6325 ....
    db $36,$00,$36,        $80,$36,$36,$00,$00         ;; 05:6329 ........
    db         $80,$00,$36,        $80,$00,$36         ;; 05:6331 ......
    db         $80,$00,$36,        $80,$00,$36         ;; 05:6337 ......
    db $36,$00,$36,        $80,$36,$36,$00,$36         ;; 05:633d ........
    db         $80,        $80,        $80,$00         ;; 05:6345 ....
    db         $b6,        $b6,        $b6,$36         ;; 05:6349 ....

map00_room0b_08_script:
    dw   $0043                                         ;; 05:634d $43 $00
    db   $ff                                           ;; 05:634f ?

map00_room0b_08_tiles:
    db         $b6,$00,$00,        $b6,$36,$36         ;; 05:6350 ......
    db         $b6,$00,$00,        $b6,$36,$36         ;; 05:6356 ......
    db         $80,        $80,        $80,$00         ;; 05:635c ....
    db         $b6,$00,$00,        $b6,$36,$36         ;; 05:6360 ......
    db         $b6,$00,$00,        $b6,$36,$36         ;; 05:6366 ......
    db         $b6,$00,$00,        $b6,$36,$36         ;; 05:636c ......
    db         $80,        $80,        $80,$00         ;; 05:6372 ....
    db         $b6,$00,$00,        $b6,$36,$36         ;; 05:6376 ......

map00_room0c_08_script:
    dw   $004c                                         ;; 05:637c $4c $00
    db   $ff                                           ;; 05:637e ?

map00_room0c_08_tiles:
    db $36,$36,        $97,        $97,$17,$17         ;; 05:637f ......
    db $36,$36,$17,        $a4,        $a4,$24         ;; 05:6385 ......
    db $00,$00,$17,$24,$24,$45,$45,        $a4         ;; 05:638b ........
    db $36,$00,$17,$24,        $c5,        $a4         ;; 05:6393 ......
    db $36,$00,$17,$24,$45,$45,        $a4,$24         ;; 05:6399 ........
    db $36,$00,$17,        $a4,        $a4,$24         ;; 05:63a1 ......
    db $00,$00,$17,        $a4,        $a4,$60         ;; 05:63a7 ......
    db $36,$00,$17,$60,$31,$31,$61,$24,$60,$41         ;; 05:63ad ..........

map00_room0d_08_script:
    dw   $004c                                         ;; 05:63b7 $4c $00
    db   $ff                                           ;; 05:63b9 ?

map00_room0d_08_tiles:
    db $14,        $a4,        $a4,$24,$41,$41         ;; 05:63ba ......
    db         $a4,        $a4,$24,$24,$41,$41         ;; 05:63c0 ......
    db         $a4,$24,$45,$45,$24,$24,$62,$41         ;; 05:63c6 ........
    db $24,$24,        $c5,$45,$45,$24,$24,$41         ;; 05:63ce ........
    db $24,$24,        $c5,$45,$45,$24,$24,$41         ;; 05:63d6 ........
    db         $a4,$45,$45,        $a4,$24,$41         ;; 05:63de ......
    db $61,        $a4,        $a4,$24,$60,$41         ;; 05:63e4 ......
    db $41,        $a4,$60,        $b1,$41,$41         ;; 05:63ea ......

map00_room0e_08_script:
    dw   $048b                                         ;; 05:63f0 $8b $04
    db   $15                                           ;; 05:63f2 .
    dw   $0275                                         ;; 05:63f3 $75 $02
    db   $ff                                           ;; 05:63f5 ?

map00_room0e_08_tiles:
    db $42,$42,        $c1,        $c1,$41,$41         ;; 05:63f6 ......
    db $42,$42,        $d1,$4d,$51,        $c1         ;; 05:63fc ......
    db $42,$75,        $a4,$24,$24,$62,$41,$41         ;; 05:6402 ........
    db $75,$24,$24,$45,        $a4,$24,$41,$41         ;; 05:640a ........
    db $61,$24,$24,$45,$24,$45,$24,$24,$62,$41         ;; 05:6412 ..........
    db $41,        $a4,$24,$45,$45,$24,$24,$41         ;; 05:641c ........
    db $41,        $a4,        $a4,$24,$24,$41         ;; 05:6424 ......
    db $41,$61,        $a4,        $a4,$60,$41         ;; 05:642a ......

map00_room0f_08_script:
    dw   $007c                                         ;; 05:6430 $7c $00
    db   $ff                                           ;; 05:6432 ?

map00_room0f_08_tiles:
    db $42,$42,        $80,$00,$10,        $91         ;; 05:6433 ??????
    db $42,$52,        $80,$00,$10,        $91         ;; 05:6439 ??????
    db $52,        $80,$00,$00,$10,        $91         ;; 05:643f ??????
    db $40,        $80,$00,$1b,$10,        $91         ;; 05:6445 ??????
    db $41,        $80,$1b,$00,$10,        $91         ;; 05:644b ??????
    db $41,$00,$1b,        $80,$10,        $91         ;; 05:6451 ??????
    db $41,        $80,$00,$00,$10,        $91         ;; 05:6457 ??????
    db $41,        $80,$00,$00,$10,        $91         ;; 05:645d ??????

map00_room00_09_script:
    dw   $0046                                         ;; 05:6463 $46 $00
    db   $ff                                           ;; 05:6465 ?

map00_room00_09_tiles:
    db         $91,$11,$12,        $85,$05,$47         ;; 05:6466 ??????
    db         $91,$11,$12,        $85,$05,$05         ;; 05:646c ??????
    db         $91,$11,$12,        $85,$05,$47         ;; 05:6472 ??????
    db         $91,$11,$22,        $85,$05,$47         ;; 05:6478 ??????
    db         $91,$12,        $85,$05,$05,$47         ;; 05:647e ??????
    db         $91,$12,        $85,        $85         ;; 05:6484 ????
    db         $91,$12,        $85,$05,$47,$47         ;; 05:6488 ??????
    db         $91,$12,        $c7,        $c7         ;; 05:648e ????

map00_room01_09_script:
    dw   $005b                                         ;; 05:6492 $5b $00
    db   $ff                                           ;; 05:6494 ?

map00_room01_09_tiles:
    db $47,$05,$47,$05,$47,$47,$05,$47,$05,$47         ;; 05:6495 ??????????
    db $05,$05,$47,        $85,$05,$47,$05,$47         ;; 05:649f ????????
    db $47,        $85,$47,$47,        $85,$47         ;; 05:64a7 ??????
    db $47,$05,$47,        $85,$05,$47,$05,$05         ;; 05:64ad ????????
    db $47,$05,$47,        $85,$05,$47,$05,$05         ;; 05:64b5 ????????
    db $05,$05,$47,$05,$47,$47,$05,$47,$05,$47         ;; 05:64bd ??????????
    db $47,        $85,        $85,$05,$05,$47         ;; 05:64c7 ??????
    db         $c7,        $c7,        $c7,$47         ;; 05:64cd ????

map00_room02_09_script:
    dw   $005b                                         ;; 05:64d1 $5b $00
    db   $ff                                           ;; 05:64d3 ?

map00_room02_09_tiles:
    db $41,$42,$42,$51,$52,$05,$05,        $c1         ;; 05:64d4 ????????
    db $41,$42,$52,        $85,$05,        $c1         ;; 05:64dc ??????
    db $51,$52,        $85,$05,$05,$50,$51,$51         ;; 05:64e2 ????????
    db         $85,        $85,        $85,$05         ;; 05:64ea ????
    db         $85,        $85,        $85,$30         ;; 05:64ee ????
    db $31,$40,        $85,        $85,$05,$41         ;; 05:64f2 ??????
    db $41,$41,        $85,        $85,$05,$41         ;; 05:64f8 ??????
    db $41,$41,$40,$05,$05,$30,$40,$05,$05,$41         ;; 05:64fe ??????????

map00_room03_09_script:
    dw   $005b                                         ;; 05:6508 $5b $00
    db   $ff                                           ;; 05:650a ?

map00_room03_09_tiles:
    db $41,$42,$41,$42,        $d1,$51,$41,$41         ;; 05:650b ????????
    db $41,$42,$51,$52,        $c7,$47,$50,$41         ;; 05:6513 ????????
    db $51,$52,        $85,        $85,$47,$41         ;; 05:651b ??????
    db         $85,$06,$07,$07,$08,$05,$47,$41         ;; 05:6521 ????????
    db $40,$05,$47,$26,$27,$27,$28,$05,$05,$41         ;; 05:6529 ??????????
    db $41,$05,$47,$05,$05,$47,$47,$05,$05,$41         ;; 05:6533 ??????????
    db $41,        $85,        $85,$05,$30,$41         ;; 05:653d ??????
    db $41,$40,$30,$40,$05,$30,$40,$30,$41,$41         ;; 05:6543 ??????????

map00_room04_09_script:
    dw   $0476                                         ;; 05:654d $76 $04
    db   $14                                           ;; 05:654f ?
    dw   $027f                                         ;; 05:6550 $7f $02
    db   $ff                                           ;; 05:6552 ?

map00_room04_09_tiles:
    db $41,$42,$4f,$37,$7c,$37,$37,$4f,$41,$41         ;; 05:6553 ??????????
    db $41,$52,$4f,$4f,$70,        $cf,$50,$41         ;; 05:655d ????????
    db $41,        $80,        $80,$00,$00,$41         ;; 05:6565 ??????
    db $41,        $80,        $80,$00,$00,$41         ;; 05:656b ??????
    db $41,        $80,        $80,$00,$00,$41         ;; 05:6571 ??????
    db $41,$40,        $80,        $80,$30,$41         ;; 05:6577 ??????
    db $41,$41,$40,        $80,$30,$31,$41,$41         ;; 05:657d ????????
    db         $c1,        $80,        $c1,$41         ;; 05:6585 ????

map00_room05_09_script:
    dw   $0046                                         ;; 05:6589 $46 $00
    db   $ff                                           ;; 05:658b ?

map00_room05_09_tiles:
    db $36,$36,$00,$36,$16,        $97,$17,$17         ;; 05:658c ????????
    db $36,$36,$00,$36,$16,        $97,$17,$17         ;; 05:6594 ????????
    db $36,        $80,$16,        $97,$17,$17         ;; 05:659c ??????
    db $36,        $80,$26,        $a7,$27,$27         ;; 05:65a2 ??????
    db $36,        $80,$36,$36,        $80,$00         ;; 05:65a8 ??????
    db $36,        $80,        $80,        $80         ;; 05:65ae ????
    db $36,        $80,        $80,        $80         ;; 05:65b2 ????
    db         $b6,        $b6,$00,$00,$36,$36         ;; 05:65b6 ??????

map00_room06_09_script:
    dw   $003d                                         ;; 05:65bc $3d $00
    db   $07                                           ;; 05:65be ?
    dw   $027c                                         ;; 05:65bf $7c $02
    db   $ff                                           ;; 05:65c1 ?

map00_room06_09_tiles:
    db         $97,        $97,$18,$70,$26,$27         ;; 05:65c2 ??????
    db         $97,        $97,$18,        $80         ;; 05:65c8 ????
    db         $97,        $97,$28,$00,$24,$24         ;; 05:65cc ??????
    db         $a7,$27,$17,$18,$00,$00,$24,$06         ;; 05:65d2 ????????
    db         $80,$00,$16,$18,$00,$24,$24,$16         ;; 05:65da ????????
    db         $80,$00,$16,$18,$00,$24,$06,$17         ;; 05:65e2 ????????
    db         $80,$00,$16,$18,$00,$24,$26,$17         ;; 05:65ea ????????
    db $36,$36,$00,$00,$16,$18,$00,$24,$24,$16         ;; 05:65f2 ??????????

map00_room07_09_script:
    dw   $00a6                                         ;; 05:65fc $a6 $00
    db   $ff                                           ;; 05:65fe ?

map00_room07_09_tiles:
    db         $a7,$27,        $97,        $a7         ;; 05:65ff ????
    db         $80,$00,$16,$17,$18,$4e,$24,$24         ;; 05:6603 ????????
    db $24,$06,$07,$07,        $97,        $87         ;; 05:660b ??????
    db $07,        $97,        $97,        $97         ;; 05:6611 ????
    db         $97,        $97,$27,$17,$17,$27         ;; 05:6615 ??????
    db         $97,$17,$17,$18,$4e,$16,$18,$24         ;; 05:661b ????????
    db         $97,$17,$17,$28,$24,$16,$17,$07         ;; 05:6623 ????????
    db         $97,$17,$18,$24,$24,$16,$17,$17         ;; 05:662b ????????

map00_room08_09_script:
    dw   $00a6                                         ;; 05:6633 $a6 $00
    db   $ff                                           ;; 05:6635 ?

map00_room08_09_tiles:
    db $27,$27,$41,$41,        $d1,        $d1         ;; 05:6636 ??????
    db $24,$24,$41,$53,        $80,        $80         ;; 05:663c ??????
    db $08,$24,$62,$33,        $80,        $80         ;; 05:6642 ??????
    db $18,$24,$24,$41,$64,$0b,$33,        $80         ;; 05:6648 ????????
    db $28,$24,$24,$62,$51,$0b,$41,        $e4         ;; 05:6650 ????????
    db         $a4,        $a4,$62,        $d1         ;; 05:6658 ????
    db         $87,        $87,$08,$4e,$00,$00         ;; 05:665c ??????
    db         $97,        $97,$18,$00,$00,$37         ;; 05:6662 ??????

map00_room09_09_script:
    dw   $0058                                         ;; 05:6668 $58 $00
    db   $ff                                           ;; 05:666a ?

map00_room09_09_tiles:
    db         $d1,        $d1,        $c1,$41         ;; 05:666b ????
    db         $80,        $80,$50,        $c1         ;; 05:666f ????
    db         $80,$00,$00,$4e,$34,        $d1         ;; 05:6673 ??????
    db $00,$00,$34,        $e4,$42,$69,$00,$37         ;; 05:6679 ????????
    db $64,$64,$42,        $d1,$52,$00,$00,$37         ;; 05:6681 ????????
    db $51,$51,$52,        $80,        $80,$37         ;; 05:6689 ??????
    db         $80,        $80,$00,$00,$37,$37         ;; 05:668f ??????
    db         $b7,        $b7,        $b7,$37         ;; 05:6695 ????

map00_room0a_09_script:
    dw   $0488                                         ;; 05:6699 $88 $04
    db   $25                                           ;; 05:669b ?
    dw   $0276                                         ;; 05:669c $76 $02
    db   $ff                                           ;; 05:669e ?

map00_room0a_09_tiles:
    db $41,$42,$09,$0a,        $d5,$09,$0a,$37         ;; 05:669f ????????
    db $41,$42,$09,$0a,        $d5,$09,$0a,$37         ;; 05:66a7 ????????
    db $51,$52,$09,$0a,$54,$2e,$54,$09,$0a,$37         ;; 05:66af ??????????
    db $37,$24,$19,$1a,$24,$00,$24,$19,$1a,$37         ;; 05:66b9 ??????????
    db $37,        $a4,$24,$00,        $a4,$37         ;; 05:66c3 ??????
    db $37,        $a4,$24,        $80,$24,$37         ;; 05:66c9 ??????
    db $37,$37,        $a4,$24,$24,        $80         ;; 05:66cf ??????
    db         $b7,        $b7,        $b7,$37         ;; 05:66d5 ????

map00_room0b_09_script:
    dw   $004c                                         ;; 05:66d9 $4c $00
    db   $ff                                           ;; 05:66db ?

map00_room0b_09_tiles:
    db         $b6,$00,$00,        $b6,$36,$36         ;; 05:66dc ??????
    db         $b6,        $80,        $80,$00         ;; 05:66e2 ????
    db         $b6,$36,$03,        $97,$17,$17         ;; 05:66e6 ??????
    db $36,$36,$00,$00,$17,$24,$24,        $c5         ;; 05:66ec ????????
    db $36,        $80,$17,        $a4,$45,$45         ;; 05:66f4 ??????
    db $36,        $80,$29,        $a4,$24,$24         ;; 05:66fa ??????
    db         $80,$00,$17,        $a4,$24,$24         ;; 05:6700 ??????
    db         $b6,$36,$17,$60,        $b1,$31         ;; 05:6706 ??????

map00_room0c_09_script:
    dw   $004c                                         ;; 05:670c $4c $00
    db   $ff                                           ;; 05:670e ?

map00_room0c_09_tiles:
    db $36,$00,$17,$62,$51,$51,$63,$24,$62,$41         ;; 05:670f ..........
    db $00,$00,$17,        $c5,        $a4,$62         ;; 05:6719 ......
    db $17,$17,$14,$45,$45,        $a4,$24,$24         ;; 05:671f ........
    db         $c5,$45,        $a4,        $a4         ;; 05:6727 ....
    db $45,$45,        $a4,        $a4,$24,$24         ;; 05:672b ......
    db         $a4,        $a4,        $a4,$24         ;; 05:6731 ....
    db         $a4,$24,$60,$31,$31,$61,$24,$24         ;; 05:6735 ........
    db         $b1,$31,        $c1,$41,$31,$31         ;; 05:673d ......

map00_room0d_09_script:
    dw   $0049                                         ;; 05:6743 $49 $00
    db   $ff                                           ;; 05:6745 ?

map00_room0d_09_tiles:
    db $41,        $a4,        $c1,        $c1         ;; 05:6746 ....
    db $63,        $a4,$62,        $d1,$51,$51         ;; 05:674a ......
    db         $a4,        $a4,        $a4,$24         ;; 05:6750 ....
    db         $a4,$24,        $c5,        $a4         ;; 05:6754 ....
    db         $a4,        $c5,$45,        $a4         ;; 05:6758 ....
    db         $a4,        $c5,        $a4,$24         ;; 05:675c ....
    db         $a4,        $a4,        $a4,$24         ;; 05:6760 ....
    db         $b1,$61,$60,$61,$24,$24,$60,$31         ;; 05:6764 ........

map00_room0e_09_script:
    dw   $0049                                         ;; 05:676c $49 $00
    db   $ff                                           ;; 05:676e ?

map00_room0e_09_tiles:
    db $41,$63,        $a4,        $a4,$62,$41         ;; 05:676f ......
    db $63,        $a4,        $a4,$24,$24,$41         ;; 05:6775 ......
    db         $a4,$45,$45,        $a4,$24,$41         ;; 05:677b ......
    db         $a4,$24,        $c5,$24,$24,$41         ;; 05:6781 ......
    db         $a4,$45,$45,        $a4,$24,$41         ;; 05:6787 ......
    db         $a4,        $a4,        $a4,$41         ;; 05:678d ....
    db         $a4,        $a4,$24,$24,$60,$41         ;; 05:6791 ......
    db $61,$60,        $b1,        $b1,$41,$41         ;; 05:6797 ......

map00_room0f_09_script:
    dw   $007c                                         ;; 05:679d $7c $00
    db   $ff                                           ;; 05:679f ?

map00_room0f_09_tiles:
    db $42,        $80,$00,$00,$10,        $91         ;; 05:67a0 ??????
    db $52,        $80,$00,$00,$10,        $91         ;; 05:67a6 ??????
    db $40,$00,$00,$1b,$00,$00,$20,        $91         ;; 05:67ac ????????
    db $41,$40,        $80,$00,$00,$10,$11,$11         ;; 05:67b4 ????????
    db $41,$41,        $80,$1b,$00,$10,$11,$11         ;; 05:67bc ????????
    db $41,$41,$00,$00,$1b,$00,$00,$10,$11,$11         ;; 05:67c4 ??????????
    db $41,$41,$40,        $80,$00,$10,$11,$11         ;; 05:67ce ????????
    db         $c1,        $80,$00,$10,$11,$11         ;; 05:67d6 ??????

map00_room00_0a_script:
    dw   $0046                                         ;; 05:67dc $46 $00
    db   $27                                           ;; 05:67de ?
    dw   $0386                                         ;; 05:67df $86 $03
    db   $ff                                           ;; 05:67e1 ?

map00_room00_0a_tiles:
    db         $91,$12,        $c1,        $c1         ;; 05:67e2 ????
    db         $91,$12,$50,$51,        $dd,$41         ;; 05:67e6 ??????
    db         $91,$12,$47,$47,$5e,$2e,$5e,$41         ;; 05:67ec ????????
    db         $91,$12,        $80,$00,$30,$41         ;; 05:67f4 ??????
    db         $91,$12,$05,$05,$47,$00,$50,$41         ;; 05:67fa ????????
    db         $91,$12,$05,$05,$47,$05,$05,$50         ;; 05:6802 ????????
    db         $91,$11,$02,        $85,$05,$30         ;; 05:680a ??????
    db         $91,$11,$12,        $85,$05,$41         ;; 05:6810 ??????

map00_room01_0a_script:
    dw   $005e                                         ;; 05:6816 $5e $00
    db   $ff                                           ;; 05:6818 ?

map00_room01_0a_tiles:
    db $41,$42,$42,$41,$41,$42,$42,$52,$50,$41         ;; 05:6819 ??????????
    db $41,$42,$52,$50,$41,$42,$52,$05,$05,$50         ;; 05:6823 ??????????
    db $41,$52,$05,$05,$50,$52,        $85,$05         ;; 05:682d ????????
    db $41,        $85,        $85,        $85         ;; 05:6835 ????
    db $41,        $85,        $85,        $85         ;; 05:6839 ????
    db $41,        $85,        $85,        $85         ;; 05:683d ????
    db $41,$40,        $85,$30,$40,        $85         ;; 05:6841 ??????
    db $41,$41,$05,$05,$30,$41,$41,$40,$30,$31         ;; 05:6847 ??????????

map00_room02_0a_script:
    dw   $005b                                         ;; 05:6851 $5b $00
    db   $ff                                           ;; 05:6853 ?

map00_room02_0a_tiles:
    db $42,$51,$52,$05,$05,$41,$42,$05,$05,$41         ;; 05:6854 ??????????
    db $52,        $85,$05,$50,$52,$05,$05,$50         ;; 05:685e ????????
    db         $85,        $85,        $85,$05         ;; 05:6866 ????
    db         $85,        $85,        $85,$05         ;; 05:686a ????
    db         $85,        $85,        $85,$05         ;; 05:686e ????
    db         $85,        $85,        $85,$05         ;; 05:6872 ????
    db         $85,        $85,        $85,$30         ;; 05:6876 ????
    db $31,$40,$05,$05,$30,$40,$30,$40,$30,$41         ;; 05:687a ??????????

map00_room03_0a_script:
    dw   $005b                                         ;; 05:6884 $5b $00
    db   $ff                                           ;; 05:6886 ?

map00_room03_0a_tiles:
    db         $c1,$42,$05,        $c1,$41,$41         ;; 05:6887 ??????
    db         $d1,$52,$05,        $c1,$41,$41         ;; 05:688d ??????
    db         $85,$05,$05,$50,$51,$51,$41,$41         ;; 05:6893 ????????
    db         $85,        $85,$05,$05,$50,$41         ;; 05:689b ??????
    db         $85,        $85,        $85,$41         ;; 05:68a1 ????
    db         $85,        $85,        $85,$41         ;; 05:68a5 ????
    db $40,        $85,        $85,$05,$05,$41         ;; 05:68a9 ??????
    db $41,$31,$31,$40,        $85,$05,$05,$41         ;; 05:68af ????????

map00_room04_0a_script:
    dw   $0058                                         ;; 05:68b7 $58 $00
    db   $ff                                           ;; 05:68b9 ?

map00_room04_0a_tiles:
    db         $c2,        $80,$50,        $d1         ;; 05:68ba ????
    db $42,$42,$52,        $80,$00,        $b6         ;; 05:68be ??????
    db $42,$52,        $80,        $80,$00,$36         ;; 05:68c4 ??????
    db $42,        $80,        $80,$00,$00,$36         ;; 05:68ca ??????
    db $52,        $80,$03,        $97,$17,$17         ;; 05:68d0 ??????
    db $40,        $80,$17,        $80,$00,$00         ;; 05:68d6 ??????
    db $41,$00,$00,$36,$17,        $80,$00,$00         ;; 05:68dc ????????
    db $41,$00,$00,$36,$17,        $80,$30,$31         ;; 05:68e4 ????????

map00_room05_0a_script:
    dw   $0058                                         ;; 05:68ec $58 $00
    db   $ff                                           ;; 05:68ee ?

map00_room05_0a_tiles:
    db         $b6,        $b6,$00,$00,$36,$36         ;; 05:68ef ??????
    db $36,        $80,        $80,        $80         ;; 05:68f5 ????
    db $36,        $80,        $80,        $80         ;; 05:68f9 ????
    db $36,        $80,$00,$03,        $97,$17         ;; 05:68fd ??????
    db         $97,$2a,$17,$14,        $80,$30         ;; 05:6903 ??????
    db         $80,        $80,        $80,$41         ;; 05:6909 ????
    db         $80,        $80,$00,$00,$30,$41         ;; 05:690d ??????
    db $31,$40,$30,$40,$30,$31,$40,$30,$41,$41         ;; 05:6913 ??????????

map00_room06_0a_script:
    dw   $00a6                                         ;; 05:691d $a6 $00
    db   $ff                                           ;; 05:691f ?

map00_room06_0a_tiles:
    db $36,$36,$00,$00,$16,$18,$00,$24,$24,$26         ;; 05:6920 ??????????
    db         $80,$00,$16,$18,$00,$00,$24,$24         ;; 05:692a ????????
    db         $80,$00,$16,$17,$08,        $80         ;; 05:6932 ??????
    db         $97,        $97,$17,        $87         ;; 05:6938 ????
    db $40,        $80,$26,        $a7,$27,$27         ;; 05:693c ??????
    db $41,        $80,        $80,        $80         ;; 05:6942 ????
    db $41,$40,        $80,        $80,$00,$00         ;; 05:6946 ??????
    db $41,$41,        $b7,        $b7,$37,$37         ;; 05:694c ??????

map00_room07_0a_script:
    dw   $0046                                         ;; 05:6952 $46 $00
    db   $ff                                           ;; 05:6954 ?

map00_room07_0a_tiles:
    db $27,        $97,$28,$24,$24,$16,$17,$17         ;; 05:6955 ????????
    db $24,$26,$27,$28,        $a4,$16,$17,$17         ;; 05:695d ????????
    db $00,$00,        $a4,$24,$06,        $97         ;; 05:6965 ??????
    db         $87,        $87,$17,$17,$27,$27         ;; 05:696b ??????
    db         $a7,        $a7,$27,$28,$00,$00         ;; 05:6971 ??????
    db         $80,$00,$00,        $ff,$00,$00         ;; 05:6977 ??????
    db         $80,$00,        $ff,$7f,$7f,$37         ;; 05:697d ??????
    db $37,$37,$00,        $b7,        $b7,$37         ;; 05:6983 ??????

map00_room08_0a_script:
    dw   $00a6                                         ;; 05:6989 $a6 $00
    db   $ff                                           ;; 05:698b ?

map00_room08_0a_tiles:
    db         $97,        $97,$18,$00,$00,$37         ;; 05:698c ??????
    db         $97,        $97,$18,$00,$00,$37         ;; 05:6992 ??????
    db         $97,        $97,$18,$00,$00,$37         ;; 05:6998 ??????
    db $27,$27,$17,$17,$27,$27,$28,$00,$00,$37         ;; 05:699e ??????????
    db $00,$00,$16,$17,$00,$4e,        $80,$37         ;; 05:69a8 ????????
    db $00,$4e,$26,$17,        $80,$00,$00,$37         ;; 05:69b0 ????????
    db $37,$37,$00,        $97,        $97,$17         ;; 05:69b8 ??????
    db $37,$37,$00,$17,$30,        $b1,$31,$31         ;; 05:69be ????????

map00_room09_0a_script:
    dw   $0052                                         ;; 05:69c6 $52 $00
    db   $ff                                           ;; 05:69c8 ?

map00_room09_0a_tiles:
    db         $b6,        $b6,        $b6,$36         ;; 05:69c9 ????
    db $36,$03,        $97,        $97,$17,$17         ;; 05:69cd ??????
    db $36,$17,        $80,        $80,$00,$00         ;; 05:69d3 ??????
    db $36,$17,$00,$00,        $b6,        $80         ;; 05:69d9 ??????
    db $36,$17,        $80,        $80,$36,$36         ;; 05:69df ??????
    db $36,$17,        $80,$36,$36,$00,$36,$36         ;; 05:69e5 ????????
    db $17,$14,$30,$40,        $80,$00,$36,$36         ;; 05:69ed ????????
    db $40,$30,$41,$41,$31,$40,$00,$00,$36,$36         ;; 05:69f5 ??????????

map00_room0a_0a_script:
    dw   $004f                                         ;; 05:69ff $4f $00
    db   $47                                           ;; 05:6a01 ?
    dw   $0387                                         ;; 05:6a02 $87 $03
    db   $ff                                           ;; 05:6a04 ?

map00_room0a_0a_tiles:
    db         $b6,        $b6,        $b6,$36         ;; 05:6a05 ????
    db         $97,$04,        $80,        $b6         ;; 05:6a09 ????
    db         $80,$17,        $80,$00,$36,$36         ;; 05:6a0d ??????
    db         $80,$17,$00,$00,        $dd,$36         ;; 05:6a13 ??????
    db $36,$36,$00,$17,$00,$00,$5e,$2e,$5e,$36         ;; 05:6a19 ??????????
    db $36,$36,$00,$29,        $80,$00,$36,$36         ;; 05:6a23 ????????
    db $36,$36,$00,$13,        $97,        $97         ;; 05:6a2b ??????
    db $36,$36,$00,        $b6,        $b6,$36         ;; 05:6a31 ??????

map00_room0b_0a_script:
    dw   $004c                                         ;; 05:6a37 $4c $00
    db   $ff                                           ;; 05:6a39 ?

map00_room0b_0a_tiles:
    db $42,        $d1,$17,$41,        $d1,$41         ;; 05:6a3a ??????
    db $52,$00,$00,$4e,$17,$41,        $80,$41         ;; 05:6a40 ????????
    db $33,$00,$00,$34,$17,$62,$33,$00,$00,$41         ;; 05:6a48 ??????????
    db $41,$2b,$64,$42,$17,$24,$41,$2b,$64,$41         ;; 05:6a52 ??????????
    db $50,$2b,$41,$52,$17,$24,$62,$2b,$51,$41         ;; 05:6a5c ??????????
    db $37,        $80,$17,$4e,        $a4,$41         ;; 05:6a66 ??????
    db $17,$2a,        $97,        $a4,$24,$41         ;; 05:6a6c ??????
    db $37,        $80,$17,        $a4,$24,$41         ;; 05:6a72 ??????

map00_room0c_0a_script:
    dw   $0049                                         ;; 05:6a78 $49 $00
    db   $ff                                           ;; 05:6a7a ?

map00_room0c_0a_tiles:
    db $41,$42,        $d1,        $d1,$41,$41         ;; 05:6a7b ??????
    db $41,$75,        $a4,        $c5,$62,$41         ;; 05:6a81 ??????
    db $41,$24,$24,        $c5,        $c5,$41         ;; 05:6a87 ??????
    db $41,        $a4,$45,$45,        $a4,$62         ;; 05:6a8d ??????
    db $41,        $c5,$45,        $a4,$24,$24         ;; 05:6a93 ??????
    db $41,$24,$24,        $c5,$45,        $a4         ;; 05:6a99 ??????
    db $41,$61,        $a4,        $c5,$45,$60         ;; 05:6a9f ??????
    db $41,$41,$31,$61,        $a4,$24,$60,$41         ;; 05:6aa5 ????????

map00_room0d_0a_script:
    dw   $00d6                                         ;; 05:6aad $d6 $00
    db   $ff                                           ;; 05:6aaf ?

map00_room0d_0a_tiles:
    db $42,$42,        $d1,$75,$24,$24,$62,$41         ;; 05:6ab0 ????????
    db $42,$75,        $a4,        $a4,$24,$41         ;; 05:6ab8 ??????
    db $42,        $a4,$45,$45,        $a4,$41         ;; 05:6abe ??????
    db $75,$24,$24,$45,$24,$24,$45,$24,$24,$62         ;; 05:6ac4 ??????????
    db         $a4,$45,        $a4,$24,$24,$60         ;; 05:6ace ??????
    db         $a4,$24,$45,$45,        $a4,$41         ;; 05:6ad4 ??????
    db $61,        $a4,        $a4,$24,$60,$41         ;; 05:6ada ??????
    db $41,$61,$60,$31,$61,$60,$61,$60,$41,$41         ;; 05:6ae0 ??????????

map00_room0e_0a_script:
    dw   $0079                                         ;; 05:6aea $79 $00
    db   $ff                                           ;; 05:6aec ?

map00_room0e_0a_tiles:
    db $41,$42,$42,        $d1,        $c1,$41         ;; 05:6aed ??????
    db $41,$42,$52,        $80,$50,        $d1         ;; 05:6af3 ??????
    db $41,$52,        $80,$00,$3b,        $80         ;; 05:6af9 ??????
    db $41,$40,$00,$3b,$00,$3b,        $80,$00         ;; 05:6aff ????????
    db $41,$53,        $80,$3b,        $80,$30         ;; 05:6b07 ??????
    db $53,$00,$3b,        $80,$3b,$00,$3b,$41         ;; 05:6b0d ????????
    db $40,        $80,        $80,$3b,$00,$50         ;; 05:6b15 ??????
    db $41,$31,$40,        $80,        $80,$30         ;; 05:6b1b ??????

map00_room0f_0a_script:
    dw   $007c                                         ;; 05:6b21 $7c $00
    db   $ff                                           ;; 05:6b23 ?

map00_room0f_0a_tiles:
    db $41,$41,$42,        $80,$00,$10,$11,$11         ;; 05:6b24 ????????
    db $51,$51,$52,        $80,$00,$10,$11,$11         ;; 05:6b2c ????????
    db         $80,        $80,$15,        $91         ;; 05:6b34 ????
    db         $80,$1b,$00,$00,$10,        $91         ;; 05:6b38 ??????
    db $40,        $80,$00,$00,$10,        $91         ;; 05:6b3e ??????
    db $41,        $80,$1b,$00,$10,        $91         ;; 05:6b44 ??????
    db $41,$40,        $80,$00,$20,        $91         ;; 05:6b4a ??????
    db $41,$41,$31,$40,$30,$31,$40,$10,$11,$11         ;; 05:6b50 ??????????

map00_room00_0b_script:
    dw   $0046                                         ;; 05:6b5a $46 $00
    db   $ff                                           ;; 05:6b5c ?

map00_room00_0b_tiles:
    db         $91,$11,$12,        $85,$05,$41         ;; 05:6b5d ??????
    db         $91,$11,$12,        $85,$05,$41         ;; 05:6b63 ??????
    db         $91,$11,$22,$05,$05,$47,$05,$50         ;; 05:6b69 ????????
    db         $91,$12,        $85,        $85         ;; 05:6b71 ????
    db         $91,$12,$05,$47,        $85,$05         ;; 05:6b75 ??????
    db         $91,$12,        $85,$47,$05,$05         ;; 05:6b7b ??????
    db         $91,$12,        $85,$05,$05,$30         ;; 05:6b81 ??????
    db         $91,$12,$30,$40,$30,$40,$30,$41         ;; 05:6b87 ????????

map00_room01_0b_script:
    dw   $005b                                         ;; 05:6b8f $5b $00
    db   $ff                                           ;; 05:6b91 ?

map00_room01_0b_tiles:
    db $41,$42,$05,$05,        $c1,        $c1         ;; 05:6b92 ??????
    db $41,$42,$05,$05,$50,        $d1,$53,$50         ;; 05:6b98 ????????
    db $51,$52,        $85,        $85,$05,$05         ;; 05:6ba0 ??????
    db         $85,$47,$47,$05,$05,$47,$05,$05         ;; 05:6ba6 ????????
    db         $85,        $85,        $85,$05         ;; 05:6bae ????
    db         $85,        $85,        $85,$05         ;; 05:6bb2 ????
    db $40,$30,$40,        $85,$05,$05,$30,$31         ;; 05:6bb6 ????????
    db         $c1,$40,$05,$05,$30,$31,$41,$41         ;; 05:6bbe ????????

map00_room02_0b_script:
    dw   $005e                                         ;; 05:6bc6 $5e $00
    db   $ff                                           ;; 05:6bc8 ?

map00_room02_0b_tiles:
    db $42,$52,$05,$05,$50,        $d1,$41,$41         ;; 05:6bc9 ????????
    db $52,        $85,        $85,$05,$50,$41         ;; 05:6bd1 ??????
    db         $85,        $85,        $85,$41         ;; 05:6bd7 ????
    db         $85,        $85,        $85,$50         ;; 05:6bdb ????
    db         $85,        $85,        $85,$05         ;; 05:6bdf ????
    db $05,$05,$30,$40,$30,$40,        $85,$05         ;; 05:6be3 ????????
    db $40,$30,        $c1,$41,$40,$30,$40,$30         ;; 05:6beb ????????
    db         $c1,        $c1,        $c1,$41         ;; 05:6bf3 ????

map00_room03_0b_script:
    dw   $005b                                         ;; 05:6bf7 $5b $00
    db   $ff                                           ;; 05:6bf9 ?

map00_room03_0b_tiles:
    db $42,$42,$51,$52,        $85,$05,$05,$41         ;; 05:6bfa ????????
    db $42,$52,        $85,        $85,$05,$50         ;; 05:6c02 ??????
    db $42,        $85,$05,$47,$47,        $85         ;; 05:6c08 ??????
    db $52,        $85,        $c7,        $85         ;; 05:6c0e ????
    db         $85,$05,$47,$47,        $85,$30         ;; 05:6c12 ??????
    db         $85,        $85,        $85,$41         ;; 05:6c18 ????
    db $40,$30,$40,        $85,$05,$05,$30,$41         ;; 05:6c1c ????????
    db         $c1,$40,$05,$30,$31,$31,$41,$41         ;; 05:6c24 ????????

map00_room04_0b_script:
    dw   $0058                                         ;; 05:6c2c $58 $00
    db   $ff                                           ;; 05:6c2e ?

map00_room04_0b_tiles:
    db $42,$00,$00,$36,$17,        $80,$50,$41         ;; 05:6c2f ????????
    db $52,        $80,$17,        $80,$00,$41         ;; 05:6c37 ??????
    db $05,        $80,$17,        $80,$00,$41         ;; 05:6c3d ??????
    db $05,$05,$00,$00,$13,$17,$04,$00,$00,$41         ;; 05:6c43 ??????????
    db $40,        $80,$00,$00,$29,$00,$00,$50         ;; 05:6c4d ????????
    db $41,        $80,$00,$00,$13,        $97         ;; 05:6c55 ??????
    db $41,$40,$30,$40,$00,$00,$30,$40,$30,$31         ;; 05:6c5b ??????????
    db         $c1,$41,$40,$30,        $c1,$41         ;; 05:6c65 ??????

map00_room05_0b_script:
    dw   $0058                                         ;; 05:6c6b $58 $00
    db   $24                                           ;; 05:6c6d ?
    dw   $0388                                         ;; 05:6c6e $88 $03
    db   $ff                                           ;; 05:6c70 ?

map00_room05_0b_tiles:
    db $41,$42,$42,        $d1,$41,        $d1         ;; 05:6c71 ??????
    db $41,$42,$42,        $dd,$51,        $b7         ;; 05:6c77 ??????
    db $41,$42,$52,$5e,$2e,$5e,$69,        $d1         ;; 05:6c7d ????????
    db $41,$42,        $80,        $80,$00,$00         ;; 05:6c85 ??????
    db $51,$52,        $80,        $80,$00,$37         ;; 05:6c8b ??????
    db         $97,$17,$17,$04,        $80,$37         ;; 05:6c91 ??????
    db $31,$40,        $80,$29,        $80,$37         ;; 05:6c97 ??????
    db $41,$41,        $80,$17,$37,$37,$00,$37         ;; 05:6c9d ????????

map00_room06_0b_script:
    dw   $0058                                         ;; 05:6ca5 $58 $00
    db   $ff                                           ;; 05:6ca7 ?

map00_room06_0b_tiles:
    db $51,$53,        $b7,        $b7,$37,$37         ;; 05:6ca8 ??????
    db         $b7,        $b7,        $d1,$51         ;; 05:6cae ????
    db $51,$51,$33,        $b7,$6e,        $80         ;; 05:6cb2 ??????
    db $00,$00,$50,        $b7,$6e,$00,$37,$37         ;; 05:6cb8 ????????
    db $37,$00,$00,        $b7,$6e,$00,$37,$37         ;; 05:6cc0 ????????
    db $37,$6e,$00,        $d1,$69,$00,$51,$51         ;; 05:6cc8 ????????
    db $37,$6e,        $80,        $80,$00,$00         ;; 05:6cd0 ??????
    db $37,$6e,$00,        $b7,$00,$00,$37,$37         ;; 05:6cd6 ????????

map00_room07_0b_script:
    dw   $0058                                         ;; 05:6cde $58 $00
    db   $ff                                           ;; 05:6ce0 ?

map00_room07_0b_tiles:
    db $37,$37,$6e,$33,        $b7,        $b7         ;; 05:6ce1 ??????
    db $51,$51,$69,$50,        $d1,$33,$37,$37         ;; 05:6ce7 ????????
    db         $80,$00,        $b7,$50,$51,$51         ;; 05:6cef ??????
    db $37,$37,        $80,$37,$37,        $80         ;; 05:6cf5 ??????
    db $37,$37,$6e,$00,$00,$37,$37,        $80         ;; 05:6cfb ????????
    db $51,$51,$69,$00,$00,        $b7,$00,$00         ;; 05:6d03 ????????
    db         $80,$00,        $b7,        $b7         ;; 05:6d0b ????
    db         $b7,        $b7,        $b7,$37         ;; 05:6d0f ????

map00_room08_0b_script:
    dw   $003d                                         ;; 05:6d13 $3d $00
    db   $16                                           ;; 05:6d15 ?
    dw   $027a                                         ;; 05:6d16 $7a $02
    db   $ff                                           ;; 05:6d18 ?

map00_room08_0b_tiles:
    db $37,$37,$6e,$17,$41,$41,$1c,        $c1         ;; 05:6d19 ????????
    db $37,$34,$69,$17,$50,$51,$4c,$51,$41,$41         ;; 05:6d21 ??????????
    db $51,$52,$00,$17,        $80,$00,$50,$41         ;; 05:6d2b ????????
    db         $80,$17,        $80,$00,$00,$41         ;; 05:6d33 ??????
    db         $80,$13,$17,$17,$04,$00,$00,$41         ;; 05:6d39 ????????
    db         $80,        $80,$17,$00,$00,$41         ;; 05:6d41 ??????
    db $37,$37,        $80,$00,$17,$00,$00,$41         ;; 05:6d47 ????????
    db $37,$37,$6e,        $80,$17,$00,$00,$41         ;; 05:6d4f ????????

map00_room09_0b_script:
    dw   $0491                                         ;; 05:6d57 $91 $04
    db   $22                                           ;; 05:6d59 ?
    dw   $0279                                         ;; 05:6d5a $79 $02
    db   $ff                                           ;; 05:6d5c ?

map00_room09_0b_tiles:
    db $41,$42,        $c1,$42,$00,$00,$37,$37         ;; 05:6d5d ????????
    db $41,$42,        $c1,$42,        $80,$37         ;; 05:6d65 ??????
    db $41,$42,$4c,$51,$51,$52,        $80,$00         ;; 05:6d6b ????????
    db $41,$52,        $c9,$49,        $80,$37         ;; 05:6d73 ??????
    db $41,        $c9,        $80,$00,$00,$37         ;; 05:6d79 ??????
    db $41,$49,        $80,        $80,$00,$37         ;; 05:6d7f ??????
    db $41,$40,        $80,        $80,$00,$30         ;; 05:6d85 ??????
    db $41,$41,        $b1,$40,$30,$40,$30,$41         ;; 05:6d8b ????????

map00_room0a_0b_script:
    dw   $0052                                         ;; 05:6d93 $52 $00
    db   $ff                                           ;; 05:6d95 ?

map00_room0a_0b_tiles:
    db $37,$37,$00,        $b7,        $b7,$37         ;; 05:6d96 ??????
    db $37,$37,$00,$7f,$7f,$37,        $80,$37         ;; 05:6d9c ????????
    db         $80,$37,$7f,$37,        $80,$37         ;; 05:6da4 ??????
    db         $b7,$37,$7f,$7f,        $80,$37         ;; 05:6daa ??????
    db $37,        $ff,        $b7,$7f,$37,$37         ;; 05:6db0 ??????
    db $37,$7f,$7f,$00,$00,$37,$7f,$7f,$37,$37         ;; 05:6db6 ??????????
    db $40,$7f,$7f,$00,$00,$7f,$7f,        $b7         ;; 05:6dc0 ????????
    db $41,$31,$40,$00,$00,        $b7,$37,$37         ;; 05:6dc8 ????????

map00_room0b_0b_script:
    dw   $0049                                         ;; 05:6dd0 $49 $00
    db   $ff                                           ;; 05:6dd2 ?

map00_room0b_0b_tiles:
    db $37,        $80,$17,        $a4,$24,$41         ;; 05:6dd3 ??????
    db $37,        $80,$17,        $a4,$24,$62         ;; 05:6dd9 ??????
    db $37,        $80,$17,        $a4,$24,$24         ;; 05:6ddf ??????
    db $37,        $80,$17,        $a4,$24,$24         ;; 05:6de5 ??????
    db $37,        $80,$13,        $97,$17,$17         ;; 05:6deb ??????
    db $37,        $80,        $80,        $80         ;; 05:6df1 ????
    db $37,$37,        $80,        $80,$00,$00         ;; 05:6df5 ??????
    db         $b7,        $b7,        $b7,$37         ;; 05:6dfb ????

map00_room0c_0b_script:
    dw   $0049                                         ;; 05:6dff $49 $00
    db   $ff                                           ;; 05:6e01 ?

map00_room0c_0b_tiles:
    db $42,$51,$51,$75,        $a4,$24,$62,$41         ;; 05:6e02 ????????
    db $75,        $a4,        $a4,$24,$24,$41         ;; 05:6e0a ??????
    db $24,$24,$45,$45,        $a4,$45,$45,$41         ;; 05:6e10 ????????
    db         $a4,        $a4,        $c5,$41         ;; 05:6e18 ????
    db         $97,        $97,$17,$17,$04,$41         ;; 05:6e1c ??????
    db         $80,        $80,$00,$00,$17,$51         ;; 05:6e22 ??????
    db         $80,        $80,$00,$00,$17,$07         ;; 05:6e28 ??????
    db $37,$37,$00,$00,$37,$37,$00,$00,$17,$6c         ;; 05:6e2e ??????????

map00_room0d_0b_script:
    dw   $0079                                         ;; 05:6e38 $79 $00
    db   $24                                           ;; 05:6e3a ?
    dw   $0389                                         ;; 05:6e3b $89 $03
    db   $ff                                           ;; 05:6e3d ?

map00_room0d_0b_tiles:
    db         $c1,        $c1,        $c1,$41         ;; 05:6e3e ????
    db $41,$41,$51,        $dd,        $d1,$51         ;; 05:6e42 ??????
    db $41,$41,$36,$5e,$2e,$5e,$69,        $80         ;; 05:6e48 ????????
    db $41,$41,$36,$36,        $80,        $80         ;; 05:6e50 ??????
    db $41,$41,        $80,$00,$36,$36,$00,$00         ;; 05:6e56 ????????
    db $51,$53,        $80,        $80,$00,$00         ;; 05:6e5e ??????
    db         $87,        $87,        $87,$07         ;; 05:6e64 ????
    db $6d,$6c,$6d,$6c,$6d,$6c,$6d,$6c,$6d,$6c         ;; 05:6e68 ??????????

map00_room0e_0b_script:
    dw   $0079                                         ;; 05:6e72 $79 $00
    db   $ff                                           ;; 05:6e74 ?

map00_room0e_0b_tiles:
    db $41,$41,$53,        $80,        $80,$41         ;; 05:6e75 ??????
    db $51,$53,        $80,        $80,$3b,$50         ;; 05:6e7b ??????
    db         $80,        $80,$00,$3b,$00,$00         ;; 05:6e81 ??????
    db $00,$00,$3b,$00,$00,$3b,$00,$3b,$00,$00         ;; 05:6e87 ??????????
    db         $80,$30,$40,$00,$3b,$00,$00,$30         ;; 05:6e91 ????????
    db $00,$00,$30,$41,$41,        $80,$00,$41         ;; 05:6e99 ????????
    db $07,$08,        $c1,        $80,$00,$41         ;; 05:6ea1 ??????
    db $6c,$18,        $c1,$40,$00,$00,$30,$41         ;; 05:6ea7 ????????

map00_room0f_0b_script:
    dw   $007c                                         ;; 05:6eaf $7c $00
    db   $ff                                           ;; 05:6eb1 ?

map00_room0f_0b_tiles:
    db $41,$42,        $d1,$51,$53,$10,$11,$11         ;; 05:6eb2 ????????
    db $51,$52,        $80,$00,$00,$10,$11,$11         ;; 05:6eba ????????
    db         $80,        $80,$00,$10,$11,$11         ;; 05:6ec2 ??????
    db $00,$00,$3b,        $80,$00,$10,$11,$11         ;; 05:6ec8 ????????
    db $40,        $80,$00,$00,$15,        $91         ;; 05:6ed0 ??????
    db $53,        $80,$3b,$00,$10,        $91         ;; 05:6ed6 ??????
    db $40,        $80,$00,$00,$10,        $91         ;; 05:6edc ??????
    db $41,$40,$30,$40,$30,$40,$10,        $91         ;; 05:6ee2 ????????

map00_room00_0c_script:
    dw   $005b                                         ;; 05:6eea $5b $00
    db   $ff                                           ;; 05:6eec ?

map00_room00_0c_tiles:
    db         $91,$12,$50,$51,$52,$50,$41,$41         ;; 05:6eed ????????
    db         $91,$12,        $c7,$47,$50,$51         ;; 05:6ef5 ??????
    db         $91,$12,$47,        $85,$05,$05         ;; 05:6efb ??????
    db         $91,$22,        $85,        $85         ;; 05:6f01 ????
    db $11,$11,$12,        $85,        $85,$30         ;; 05:6f05 ??????
    db $11,$11,$12,        $85,$05,$05,$47,$41         ;; 05:6f0b ????????
    db $11,$11,$12,        $85,$05,$05,$47,$41         ;; 05:6f13 ????????
    db $11,$11,$12,        $85,$05,$47,$30,$41         ;; 05:6f1b ????????

map00_room01_0c_script:
    dw   $005e                                         ;; 05:6f23 $5e $00
    db   $ff                                           ;; 05:6f25 ?

map00_room01_0c_tiles:
    db $41,$42,$51,$52,$05,$05,$50,$51,$41,$41         ;; 05:6f26 ??????????
    db $51,$52,        $85,        $85,$50,$41         ;; 05:6f30 ??????
    db         $85,        $85,        $85,$50         ;; 05:6f36 ????
    db         $85,        $85,        $85,$05         ;; 05:6f3a ????
    db $40,        $85,        $85,$05,$05,$30         ;; 05:6f3e ??????
    db $41,        $85,        $85,$05,$30,$41         ;; 05:6f44 ??????
    db $41,$40,        $85,        $85,$50,$41         ;; 05:6f4a ??????
    db $41,$41,$40,$30,$40,$30,$40,$05,$30,$41         ;; 05:6f50 ??????????

map00_room02_0c_script:
    dw   $047c                                         ;; 05:6f5a $7c $04
    db   $17                                           ;; 05:6f5c ?
    dw   $0281                                         ;; 05:6f5d $81 $02
    db   $34                                           ;; 05:6f5f ?
    dw   $040c                                         ;; 05:6f60 $0c $04
    db   $36                                           ;; 05:6f62 ?
    dw   $040d                                         ;; 05:6f63 $0d $04
    db   $38                                           ;; 05:6f65 ?
    dw   $040e                                         ;; 05:6f66 $0e $04
    db   $ff                                           ;; 05:6f68 ?

map00_room02_0c_tiles:
    db         $c7,$47,$47,        $c1,$41,$41         ;; 05:6f69 ??????
    db $47,$47,        $80,$50,$51,$51,$41,$51         ;; 05:6f6f ????????
    db $47,        $80,        $80,$00,$00,$47         ;; 05:6f77 ??????
    db         $80,$00,$70,$47,$70,$47,$70,$47         ;; 05:6f7d ????????
    db $47,$06,$07,$08,        $80,$00,$00,$47         ;; 05:6f85 ????????
    db $47,$26,$27,$17,$07,$08,        $80,$47         ;; 05:6f8d ????????
    db         $c7,$26,$27,$28,        $80,$47         ;; 05:6f95 ??????
    db         $c7,        $c7,$00,$00,$47,$47         ;; 05:6f9b ??????

map00_room03_0c_script:
    dw   $005e                                         ;; 05:6fa1 $5e $00
    db   $ff                                           ;; 05:6fa3 ?

map00_room03_0c_tiles:
    db $41,$42,$51,$52,$05,$50,$51,$51,$41,$41         ;; 05:6fa4 ??????????
    db $41,$52,        $85,        $85,$50,$41         ;; 05:6fae ??????
    db $41,        $85,        $85,$05,$30,$41         ;; 05:6fb4 ??????
    db $41,        $85,        $85,$05,$50,$51         ;; 05:6fba ??????
    db $41,        $85,        $85,        $85         ;; 05:6fc0 ????
    db $41,        $85,        $85,        $85         ;; 05:6fc4 ????
    db $41,$40,        $85,        $85,$05,$30         ;; 05:6fc8 ??????
    db $41,$41,        $85,$05,$30,$40,$30,$41         ;; 05:6fce ????????

map00_room04_0c_script:
    dw   $005e                                         ;; 05:6fd6 $5e $00
    db   $ff                                           ;; 05:6fd8 ?

map00_room04_0c_tiles:
    db $42,$42,        $d1,        $c1,$41,$41         ;; 05:6fd9 ??????
    db $42,$52,        $c7,$50,$51,$51,$41,$41         ;; 05:6fdf ????????
    db $42,        $85,$06,$07,$07,$08,$50,$41         ;; 05:6fe7 ????????
    db $52,        $85,$26,$27,$17,$17,$08,$41         ;; 05:6fef ????????
    db         $85,        $85,$26,$27,$28,$41         ;; 05:6ff7 ??????
    db         $85,        $85,        $c7,$41         ;; 05:6ffd ????
    db $31,$40,        $85,$05,$30,$40,$30,$41         ;; 05:7001 ????????
    db $41,$41,$40,$30,$40,$30,        $c1,$41         ;; 05:7009 ????????

map00_room05_0c_script:
    dw   $0058                                         ;; 05:7011 $58 $00
    db   $ff                                           ;; 05:7013 ?

map00_room05_0c_tiles:
    db $41,$53,        $80,$17,$37,$37,$6e,$37         ;; 05:7014 ????????
    db $41,        $80,$00,$17,$51,$51,$69,$51         ;; 05:701c ????????
    db $41,        $80,$00,$17,        $80,$00         ;; 05:7024 ??????
    db $41,        $80,$00,$17,        $80,$00         ;; 05:702a ??????
    db $41,        $80,$00,$13,        $97,$17         ;; 05:7030 ??????
    db $41,$40,        $80,        $80,$00,$00         ;; 05:7036 ??????
    db $41,$41,$31,$40,        $80,        $80         ;; 05:703c ??????
    db         $c1,$41,        $b1,$31,$40,$30         ;; 05:7042 ??????

map00_room06_0c_script:
    dw   $0058                                         ;; 05:7048 $58 $00
    db   $ff                                           ;; 05:704a ?

map00_room06_0c_tiles:
    db $37,$6e,$00,        $b7,$6e,$00,$37,$37         ;; 05:704b ????????
    db $51,$69,$00,        $d1,$69,$00,$37,$37         ;; 05:7053 ????????
    db         $80,        $80,$00,$00,$40,$37         ;; 05:705b ??????
    db         $80,        $80,$00,$00,$50,$51         ;; 05:7061 ??????
    db $17,$2a,        $97,$04,        $80,$00         ;; 05:7067 ??????
    db         $80,$00,$00,$17,        $80,$00         ;; 05:706d ??????
    db         $80,$00,$15,$11,        $b8,$38         ;; 05:7073 ??????
    db $40,$30,$31,$40,$10,        $91,$11,$11         ;; 05:7079 ????????

map00_room07_0c_script:
    dw   $0058                                         ;; 05:7081 $58 $00
    db   $24                                           ;; 05:7083 ?
    dw   $038a                                         ;; 05:7084 $8a $03
    db   $ff                                           ;; 05:7086 ?

map00_room07_0c_tiles:
    db         $b7,        $b7,        $b7,$37         ;; 05:7087 ????
    db $37,$37,$34,        $dd,$51,        $b7         ;; 05:708b ??????
    db $37,$34,$52,$5e,$2e,$5e,$69,$33,$37,$37         ;; 05:7091 ??????????
    db $51,$52,$7f,$7f,        $80,$50,$51,$51         ;; 05:709b ????????
    db $00,$7f,$7f,        $80,        $80,$00         ;; 05:70a3 ??????
    db $00,$7f,        $80,        $80,$00,$00         ;; 05:70a9 ??????
    db $38,$02,        $80,$00,$00,$30,$40,$30         ;; 05:70af ????????
    db $11,$11,$02,$00,$30,$40,$30,        $c1         ;; 05:70b7 ????????

map00_room08_0c_script:
    dw   $0055                                         ;; 05:70bf $55 $00
    db   $ff                                           ;; 05:70c1 ?

map00_room08_0c_tiles:
    db $37,$37,$6e,        $80,$17,$00,$00,$41         ;; 05:70c2 ????????
    db $37,$37,$6e,        $80,$17,$00,$00,$50         ;; 05:70ca ????????
    db $37,$34,$69,        $80,$17,        $80         ;; 05:70d2 ??????
    db $51,$52,        $80,$00,$17,        $80         ;; 05:70d8 ??????
    db         $80,        $80,$17,        $80         ;; 05:70de ????
    db         $80,        $80,$17,        $80         ;; 05:70e2 ????
    db $40,$00,$00,$30,$40,$00,$17,$00,$00,$37         ;; 05:70e6 ??????????
    db $41,$40,$30,$41,$41,$40,$17,$00,$00,$37         ;; 05:70f0 ??????????

map00_room09_0c_script:
    dw   $004f                                         ;; 05:70fa $4f $00
    db   $ff                                           ;; 05:70fc ?

map00_room09_0c_tiles:
    db $41,$42,        $d1,        $c1,$41,$41         ;; 05:70fd ??????
    db $51,$52,        $80,$50,        $c1,$41         ;; 05:7103 ??????
    db         $80,        $80,$50,        $d1         ;; 05:7109 ????
    db         $80,        $80,        $80,$00         ;; 05:710d ????
    db         $80,        $80,        $80,$00         ;; 05:7111 ????
    db         $80,        $80,        $80,$37         ;; 05:7115 ????
    db $37,$37,$00,        $b7,$00,$00,$37,$37         ;; 05:7119 ????????
    db $37,$37,$00,        $b7,$00,$00,$37,$37         ;; 05:7121 ????????

map00_room0a_0c_script:
    dw   $0052                                         ;; 05:7129 $52 $00
    db   $ff                                           ;; 05:712b ?

map00_room0a_0c_tiles:
    db $41,$42,$42,$00,$00,        $b7,$37,$37         ;; 05:712c ????????
    db $41,$42,$52,        $ff,$7f,        $80         ;; 05:7134 ??????
    db $51,$52,        $ff,        $b7,$37,$37         ;; 05:713a ??????
    db         $80,$00,$7f,        $b7,$37,$37         ;; 05:7140 ??????
    db         $80,$00,$00,        $b7,$37,$37         ;; 05:7146 ??????
    db $37,        $80,        $80,        $80         ;; 05:714c ????
    db $37,$37,$00,$37,$00,        $b7,$37,$37         ;; 05:7150 ????????
    db $37,$37,$00,$37,$00,        $b7,$37,$37         ;; 05:7158 ????????

map00_room0b_0c_script:
    dw   $004f                                         ;; 05:7160 $4f $00
    db   $ff                                           ;; 05:7162 ?

map00_room0b_0c_tiles:
    db         $b7,        $b7,        $b7,$37         ;; 05:7163 ????
    db         $80,        $80,        $80,$37         ;; 05:7167 ????
    db         $b7,        $b7,        $80,$37         ;; 05:716b ????
    db         $b7,        $b7,$37,$37,$7f,$00         ;; 05:716f ??????
    db         $b7,        $b7,$37,$37,$00,$00         ;; 05:7175 ??????
    db         $80,        $80,        $b7,$37         ;; 05:717b ????
    db         $b7,$37,$00,$00,        $b7,$37         ;; 05:717f ??????
    db         $b7,$37,$00,$00,        $b7,$37         ;; 05:7185 ??????

map00_room0c_0c_script:
    dw   $0052                                         ;; 05:718b $52 $00
    db   $ff                                           ;; 05:718d ?

map00_room0c_0c_tiles:
    db $37,$37,$00,$00,$37,$37,$00,$00,$16,$09         ;; 05:718e ??????????
    db $37,        $80,        $80,$00,$16,$09         ;; 05:7198 ??????
    db $37,        $80,        $80,$00,$16,$09         ;; 05:719e ??????
    db         $80,        $80,$00,$00,$16,$09         ;; 05:71a4 ??????
    db         $80,        $80,$00,$00,$16,$09         ;; 05:71aa ??????
    db $37,        $80,        $80,$00,$16,$19         ;; 05:71b0 ??????
    db $37,$37,        $80,$00,$00,$37,$16,$23         ;; 05:71b6 ????????
    db $37,$37,$00,$00,        $b7,$37,$16,$17         ;; 05:71be ????????

map00_room0d_0c_script:
    dw   $048e                                         ;; 05:71c6 $8e $04
    db   $44                                           ;; 05:71c8 ?
    dw   $0277                                         ;; 05:71c9 $77 $02
    db   $45                                           ;; 05:71cb ?
    dw   $0277                                         ;; 05:71cc $77 $02
    db   $ff                                           ;; 05:71ce ?

map00_room0d_0c_tiles:
    db $55,$0a,        $d5,        $d5,$09,$55         ;; 05:71cf ??????
    db $55,$0a,        $d5,        $d5,$09,$55         ;; 05:71d5 ??????
    db $55,$0a,$55,$55,$79,$79,$55,$55,$09,$55         ;; 05:71db ??????????
    db $55,$0a,$55,$55,$1f,$1f,$55,$55,$09,$55         ;; 05:71e5 ??????????
    db $55,$0a,$55,$55,$6a,$6a,$55,$55,$09,$55         ;; 05:71ef ??????????
    db $54,$1a,        $80,        $80,$19,$54         ;; 05:71f9 ??????
    db         $a3,$23,$56,$57,        $a3,$23         ;; 05:71ff ??????
    db         $97,$17,$56,$57,        $97,$17         ;; 05:7205 ??????

map00_room0e_0c_script:
    dw   $0079                                         ;; 05:720b $79 $00
    db   $ff                                           ;; 05:720d ?

map00_room0e_0c_tiles:
    db $0a,$18,$41,$41,$51,$53,$00,$00,$50,$41         ;; 05:720e ??????????
    db $0a,$18,$50,$53,        $80,$00,$00,$41         ;; 05:7218 ????????
    db $0a,$18,        $80,        $80,$00,$50         ;; 05:7220 ??????
    db $0a,$18,$00,$00,$3b,$00,$00,$3b,$3b,$00         ;; 05:7226 ??????????
    db $0a,$18,        $80,$00,$3b,        $80         ;; 05:7230 ??????
    db $1a,$18,$00,$30,$40,$3b,        $80,$00         ;; 05:7236 ????????
    db $23,$18,$30,$41,$41,$40,$30,$40,$00,$00         ;; 05:723e ??????????
    db $17,$18,        $c1,        $c1,$40,$30         ;; 05:7248 ??????

map00_room0f_0c_script:
    dw   $007c                                         ;; 05:724e $7c $00
    db   $ff                                           ;; 05:7250 ?

map00_room0f_0c_tiles:
    db $41,$42,$42,$51,$51,$52,$10,        $91         ;; 05:7251 ????????
    db $41,$42,$52,        $80,$10,        $91         ;; 05:7259 ??????
    db $51,$52,$00,$3b,$00,$00,$10,        $91         ;; 05:725f ????????
    db         $80,        $80,$10,        $91         ;; 05:7267 ????
    db         $80,$00,$00,$15,        $91,$11         ;; 05:726b ??????
    db $00,$00,$3b,$00,$00,$10,        $91,$11         ;; 05:7271 ????????
    db         $80,$00,$00,$10,        $91,$11         ;; 05:7279 ??????
    db $40,        $80,$00,$10,        $91,$11         ;; 05:727f ??????

map00_room00_0d_script:
    dw   $005e                                         ;; 05:7285 $5e $00
    db   $ff                                           ;; 05:7287 ?

map00_room00_0d_tiles:
    db $11,$11,$12,        $85,$05,$47,$50,$51         ;; 05:7288 ????????
    db $11,$11,$12,        $85,$05,$05,$47,$47         ;; 05:7290 ????????
    db $11,$11,$12,        $85,        $85,$05         ;; 05:7298 ??????
    db         $91,$02,        $85,        $85         ;; 05:729e ????
    db         $91,$11,$02,        $85,$05,$05         ;; 05:72a2 ??????
    db         $91,$11,$11,        $b8,$38,$38         ;; 05:72a8 ??????
    db         $91,        $91,        $91,$11         ;; 05:72ae ????
    db         $91,        $91,        $91,$11         ;; 05:72b2 ????

map00_room01_0d_script:
    dw   $0046                                         ;; 05:72b6 $46 $00
    db   $ff                                           ;; 05:72b8 ?

map00_room01_0d_tiles:
    db $51,$51,$52,$50,$51,$51,$52,$05,$50,$51         ;; 05:72b9 ??????????
    db $47,$47,        $85,        $85,$05,$05         ;; 05:72c3 ??????
    db         $85,        $85,        $85,$05         ;; 05:72c9 ????
    db         $85,        $85,        $85,$05         ;; 05:72cd ????
    db         $85,$15,$38,$38,$02,        $85         ;; 05:72d1 ??????
    db         $b8,        $91,$11,        $b8         ;; 05:72d7 ????
    db         $91,        $91,        $91,$11         ;; 05:72db ????
    db         $91,        $91,        $91,$11         ;; 05:72df ????

map00_room02_0d_script:
    dw   $005b                                         ;; 05:72e3 $5b $00
    db   $ff                                           ;; 05:72e5 ?

map00_room02_0d_tiles:
    db         $d1,$51,$51,$53,$05,$05,$50,$41         ;; 05:72e6 ????????
    db         $85,        $85,        $85,$50         ;; 05:72ee ????
    db         $85,        $85,        $85,$05         ;; 05:72f2 ????
    db         $85,        $85,        $85,$05         ;; 05:72f6 ????
    db         $85,        $85,        $85,$05         ;; 05:72fa ????
    db $38,$02,        $85,        $85,$05,$05         ;; 05:72fe ??????
    db $11,$11,$02,        $85,        $85,$05         ;; 05:7304 ??????
    db $11,$11,$12,$30,$31,$40,$05,$30,$40,$30         ;; 05:730a ??????????

map00_room03_0d_script:
    dw   $005e                                         ;; 05:7314 $5e $00
    db   $ff                                           ;; 05:7316 ?

map00_room03_0d_tiles:
    db $42,$52,        $85,$05,$50,$51,$41,$41         ;; 05:7317 ????????
    db $52,        $85,        $85,$05,$50,$41         ;; 05:731f ??????
    db         $85,$30,$40,        $85,$05,$50         ;; 05:7325 ??????
    db $05,$05,$30,$41,$41,$31,$40,        $85         ;; 05:732b ????????
    db $05,$05,$50,        $d1,$53,        $85         ;; 05:7333 ??????
    db         $85,        $85,        $85,$05         ;; 05:7339 ????
    db $31,$40,        $85,$05,$30,$40,$05,$30         ;; 05:733d ????????
    db $41,$41,$40,$30,$40,$30,$41,$41,$31,$41         ;; 05:7345 ??????????

map00_room04_0d_script:
    dw   $005e                                         ;; 05:734f $5e $00
    db   $25                                           ;; 05:7351 ?
    dw   $038b                                         ;; 05:7352 $8b $03
    db   $ff                                           ;; 05:7354 ?

map00_room04_0d_tiles:
    db $41,$42,        $c1,        $c1,$41,$41         ;; 05:7355 ??????
    db $41,$42,$51,$51,        $dd,$51,$41,$41         ;; 05:735b ????????
    db $51,$52,$47,$47,$5e,$2e,$5e,$69,$50,$41         ;; 05:7363 ??????????
    db         $85,        $80,        $80,$50         ;; 05:736d ????
    db         $85,$05,$47,$00,$47,$00,$00,$30         ;; 05:7371 ????????
    db         $85,        $80,        $80,$41         ;; 05:7379 ????
    db $40,        $80,$00,$30,$40,$00,$00,$41         ;; 05:737d ????????
    db $41,$40,$30,$40,$30,$41,$41,$40,$30,$41         ;; 05:7385 ??????????

map00_room05_0d_script:
    dw   $007c                                         ;; 05:738f $7c $00
    db   $ff                                           ;; 05:7391 ?

map00_room05_0d_tiles:
    db $42,$42,        $d1,        $d1,$51,$51         ;; 05:7392 ??????
    db $42,$52,        $c7,        $c7,$47,$47         ;; 05:7398 ??????
    db $42,$47,$47,        $85,        $85,$05         ;; 05:739e ??????
    db $52,$47,$05,$05,        $c7,        $c7         ;; 05:73a4 ??????
    db $40,$47,$05,$47,$47,$15,        $b8,$38         ;; 05:73aa ????????
    db $53,$47,$05,$47,$15,        $91,$11,$11         ;; 05:73b2 ????????
    db $40,$47,$05,$47,$10,        $91,$11,$11         ;; 05:73ba ????????
    db $41,$47,$05,$47,$10,        $91,$11,$11         ;; 05:73c2 ????????

map00_room06_0d_script:
    dw   $007c                                         ;; 05:73ca $7c $00
    db   $14                                           ;; 05:73cc ?
    dw   $0474                                         ;; 05:73cd $74 $04
    db   $ff                                           ;; 05:73cf ?

map00_room06_0d_tiles:
    db         $d1,$53,$10,        $91,$11,$11         ;; 05:73d0 ??????
    db $47,$47,$05,$05,$7b,        $91,$11,$11         ;; 05:73d6 ????????
    db         $85,$47,$10,        $91,$11,$11         ;; 05:73de ??????
    db         $c7,$15,        $91,        $91         ;; 05:73e4 ????
    db         $b8,        $91,        $91,$11         ;; 05:73e8 ????
    db         $91,        $91,        $91,$11         ;; 05:73ec ????
    db         $91,        $91,        $91,$11         ;; 05:73f0 ????
    db         $91,        $91,        $91,$11         ;; 05:73f4 ????

map00_room07_0d_script:
    dw   $0046                                         ;; 05:73f8 $46 $00
    db   $ff                                           ;; 05:73fa ?

map00_room07_0d_tiles:
    db $11,$11,$12,$00,$50,        $c1,$41,$41         ;; 05:73fb ????????
    db $11,$11,$12,$00,$00,$50,$53,$50,$41,$41         ;; 05:7403 ??????????
    db $11,$11,$12,        $80,$00,$00,$50,$41         ;; 05:740d ????????
    db $11,$11,$12,        $80,$00,$00,$30,$41         ;; 05:7415 ????????
    db $11,$11,$12,        $80,$00,$00,$50,$41         ;; 05:741d ????????
    db         $91,$02,        $80,$00,$00,$50         ;; 05:7425 ??????
    db         $91,$12,        $80,$00,$00,$30         ;; 05:742b ??????
    db         $91,$12,        $80,$00,$30,$41         ;; 05:7431 ??????

map00_room08_0d_script:
    dw   $003d                                         ;; 05:7437 $3d $00
    db   $33                                           ;; 05:7439 ?
    dw   $027b                                         ;; 05:743a $7b $02
    db   $ff                                           ;; 05:743c ?

map00_room08_0d_tiles:
    db $41,$42,        $c1,$42,$17,$00,$00,$37         ;; 05:743d ????????
    db $41,$42,        $c1,$42,$17,$00,$00,$37         ;; 05:7445 ????????
    db $41,$42,$41,$1c,$41,$42,$17,$00,$00,$37         ;; 05:744d ??????????
    db $41,$42,$51,$4c,$51,$52,$17,        $80         ;; 05:7457 ????????
    db $41,$52,        $80,$00,$17,        $80         ;; 05:745f ??????
    db $41,        $80,$00,$00,$13,        $97         ;; 05:7465 ??????
    db $41,$40,        $80,        $80,$30,$31         ;; 05:746b ??????
    db $41,$41,$00,$30,$31,$31,$40,$00,$41,$41         ;; 05:7471 ??????????

map00_room09_0d_script:
    dw   $0052                                         ;; 05:747b $52 $00
    db   $ff                                           ;; 05:747d ?

map00_room09_0d_tiles:
    db $37,$37,$00,        $b7,$00,$00,$37,$37         ;; 05:747e ????????
    db $37,        $80,        $80,$00,$00,$37         ;; 05:7486 ??????
    db $37,        $80,        $80,$00,$00,$37         ;; 05:748c ??????
    db         $80,        $80,        $80,$00         ;; 05:7492 ????
    db         $80,        $80,        $80,$00         ;; 05:7496 ????
    db         $97,$17,$04,        $80,$00,$30         ;; 05:749a ??????
    db $31,$40,$00,$4e,$17,$00,$30,$31,$31,$41         ;; 05:74a0 ??????????
    db $41,$41,$00,$00,$17,$00,        $c1,$41         ;; 05:74aa ????????

map00_room0a_0d_script:
    dw   $004f                                         ;; 05:74b2 $4f $00
    db   $ff                                           ;; 05:74b4 ?

map00_room0a_0d_tiles:
    db $37,$37,$00,$37,$00,        $b7,$37,$37         ;; 05:74b5 ????????
    db $37,$37,        $80,        $80,$37,$37         ;; 05:74bd ??????
    db $37,        $80,        $80,        $80         ;; 05:74c3 ????
    db $00,$00,$37,$00,$37,$00,$37,$00,$37,$00         ;; 05:74c7 ??????????
    db         $80,        $80,        $80,$00         ;; 05:74d1 ????
    db $40,$00,$37,$00,$37,$00,$37,$00,$37,$00         ;; 05:74d5 ??????????
    db $41,        $80,        $80,        $80         ;; 05:74df ????
    db $41,$40,$30,$40,$00,$00,$37,$37,$00,$37         ;; 05:74e3 ??????????

map00_room0b_0d_script:
    dw   $0052                                         ;; 05:74ed $52 $00
    db   $ff                                           ;; 05:74ef ?

map00_room0b_0d_tiles:
    db         $b7,$37,$00,$00,        $b7,$37         ;; 05:74f0 ??????
    db         $b7,$37,$00,$00,        $b7,$37         ;; 05:74f6 ??????
    db $00,$00,$37,$37,$00,$00,        $b7,$37         ;; 05:74fc ????????
    db         $80,$37,$00,$00,$7f,$7f,$00,$00         ;; 05:7504 ????????
    db         $80,$37,$00,$00,$7f,$7f,$00,$00         ;; 05:750c ????????
    db         $80,$37,$37,$00,$00,        $b7         ;; 05:7514 ??????
    db         $80,$00,$37,$00,$00,        $b7         ;; 05:751a ??????
    db $37,        $80,$37,$00,$00,        $b7         ;; 05:7520 ??????

map00_room0c_0d_script:
    dw   $004f                                         ;; 05:7526 $4f $00
    db   $ff                                           ;; 05:7528 ?

map00_room0c_0d_tiles:
    db $37,$37,$00,$00,        $b7,$37,$26,$27         ;; 05:7529 ????????
    db $37,$37,$00,$00,        $b7,        $b7         ;; 05:7531 ??????
    db $37,$37,$00,$00,        $b7,        $b7         ;; 05:7537 ??????
    db         $80,        $80,        $80,$00         ;; 05:753d ????
    db         $80,        $80,        $80,$00         ;; 05:7541 ????
    db $37,$37,$00,$00,        $b7,        $b7         ;; 05:7545 ??????
    db $37,$37,$00,$00,        $b7,$37,$37,$30         ;; 05:754b ????????
    db $37,$37,$00,$00,        $b7,$37,$30,$41         ;; 05:7553 ????????

map00_room0d_0d_script:
    dw   $0052                                         ;; 05:755b $52 $00
    db   $ff                                           ;; 05:755d ?

map00_room0d_0d_tiles:
    db         $a7,$27,$56,$57,        $a7,$27         ;; 05:755e ??????
    db         $b7,$37,$00,$00,        $b7,$37         ;; 05:7564 ??????
    db         $b7,$37,$00,$00,        $b7,$37         ;; 05:756a ??????
    db         $80,        $80,        $80,$37         ;; 05:7570 ????
    db         $80,        $80,        $80,$37         ;; 05:7574 ????
    db $37,        $80,        $80,$00,$00,$37         ;; 05:7578 ??????
    db $37,$37,        $80,        $b7,$37,$30         ;; 05:757e ??????
    db $31,$31,$40,$00,$30,        $b1,$31,$41         ;; 05:7584 ????????

map00_room0e_0d_script:
    dw   $0079                                         ;; 05:758c $79 $00
    db   $ff                                           ;; 05:758e ?

map00_room0e_0d_tiles:
    db $17,$17,        $c1,$42,$51,$51,$41,$41         ;; 05:758f ????????
    db $40,$17,$50,$51,$51,$52,$49,$49,$50,$41         ;; 05:7597 ??????????
    db $53,$17,        $80,$00,$00,$49,$49,$41         ;; 05:75a1 ????????
    db $40,$13,$17,$2a,$17,$04,$00,$00,$49,$41         ;; 05:75a9 ??????????
    db $41,$40,        $80,$17,$3b,$00,$49,$50         ;; 05:75b3 ????????
    db $51,$53,$49,$00,$00,$17,$00,$3b,$49,$30         ;; 05:75bb ??????????
    db $31,$40,$49,$49,$00,$17,$00,$49,$30,$41         ;; 05:75c5 ??????????
    db $41,$41,$40,$49,$00,$17,$00,$49,$41,$41         ;; 05:75cf ??????????

map00_room0f_0d_script:
    dw   $007c                                         ;; 05:75d9 $7c $00
    db   $ff                                           ;; 05:75db ?

map00_room0f_0d_tiles:
    db $42,        $80,$00,$10,        $91,$11         ;; 05:75dc ??????
    db $52,        $80,$00,$20,        $91,$11         ;; 05:75e2 ??????
    db $40,$00,$00,$3b,$00,$00,$10,        $91         ;; 05:75e8 ????????
    db $41,$3b,$3b,        $80,$10,        $91         ;; 05:75f0 ??????
    db $41,$40,$00,$3b,$00,$3b,$10,        $91         ;; 05:75f6 ????????
    db $41,$53,$00,$00,$3b,$00,$10,        $91         ;; 05:75fe ????????
    db $53,$49,$49,        $80,$10,        $91         ;; 05:7606 ??????
    db $40,        $c9,$00,$00,$10,        $91         ;; 05:760c ??????

map00_room00_0e_script:
    dw   $003d                                         ;; 05:7612 $3d $00
    db   $27                                           ;; 05:7614 ?
    dw   $028c                                         ;; 05:7615 $8c $02
    db   $56                                           ;; 05:7617 ?
    dw   $028d                                         ;; 05:7618 $8d $02
    db   $ff                                           ;; 05:761a ?

map00_room00_0e_tiles:
    db         $91,        $91,$11,        $a1         ;; 05:761b ????
    db         $91,        $91,$22,        $80         ;; 05:761f ????
    db         $91,$11,$21,$22,$00,$4b,$30,$32         ;; 05:7623 ????????
    db         $91,$22,$47,$30,$32,$30,$41,$42         ;; 05:762b ????????
    db $11,$11,$12,$47,$30,$42,$42,$41,$42,$42         ;; 05:7633 ??????????
    db $11,$11,$12,$47,$50,$42,$4c,$41,$42,$42         ;; 05:763d ??????????
    db $11,$11,$12,        $80,$00,$50,$42,$41         ;; 05:7647 ????????
    db $11,$11,$12,        $80,$00,$30,$41,$41         ;; 05:764f ????????

map00_room01_0e_script:
    dw   $0079                                         ;; 05:7657 $79 $00
    db   $ff                                           ;; 05:7659 ?

map00_room01_0e_tiles:
    db $21,$21,        $91,        $91,$11,$11         ;; 05:765a ??????
    db $00,$00,$20,        $91,        $91,$11         ;; 05:7660 ??????
    db         $80,$10,        $91,        $91         ;; 05:7666 ????
    db $32,$00,$00,$20,        $91,        $91         ;; 05:766a ??????
    db $42,$32,$00,$00,$20,$21,        $91,$11         ;; 05:7670 ????????
    db $42,$52,        $80,$00,$20,        $91         ;; 05:7678 ??????
    db $41,$32,$47,$47,        $80,$10,$11,$11         ;; 05:767e ????????
    db $41,$42,$32,$30,$32,$00,$00,$10,$11,$11         ;; 05:7686 ??????????

map00_room02_0e_script:
    dw   $0046                                         ;; 05:7690 $46 $00
    db   $ff                                           ;; 05:7692 ?

map00_room02_0e_tiles:
    db $11,$11,$12,$50,$51,$53,$05,$50,$51,$41         ;; 05:7693 ??????????
    db $11,$11,$12,        $85,$05,$47,$47,$50         ;; 05:769d ????????
    db $11,$11,$12,        $85,$05,$05,$47,$47         ;; 05:76a5 ????????
    db         $91,$02,        $85,$05,$05,$47         ;; 05:76ad ??????
    db         $91,$11,        $b8,        $b8         ;; 05:76b3 ????
    db         $91,        $91,        $91,$11         ;; 05:76b7 ????
    db         $91,        $91,        $91,$11         ;; 05:76bb ????
    db         $91,        $91,        $91,$11         ;; 05:76bf ????

map00_room03_0e_script:
    dw   $04a0                                         ;; 05:76c3 $a0 $04
    db   $36                                           ;; 05:76c5 ?
    dw   $039f                                         ;; 05:76c6 $9f $03
    db   $ff                                           ;; 05:76c8 ?

map00_room03_0e_tiles:
    db         $c1,        $c1,        $c1,$41         ;; 05:76c9 ????
    db $51,$51,        $c1,        $c1,$41,$41         ;; 05:76cd ??????
    db $47,$47,$50,        $c1,        $c1,$41         ;; 05:76d3 ??????
    db         $c7,$50,$51,$51,$4c,        $c1         ;; 05:76d9 ??????
    db $38,$02,        $c7,$47,$05,$50,$41,$41         ;; 05:76df ????????
    db $11,$11,$38,$02,        $85,$05,$50,$51         ;; 05:76e7 ????????
    db         $91,$12,        $85,$05,$05,$47         ;; 05:76ef ??????
    db         $91,$12,        $85,$05,$47,$47         ;; 05:76f5 ??????

map00_room04_0e_script:
    dw   $0076                                         ;; 05:76fb $76 $00
    db   $ff                                           ;; 05:76fd ?

map00_room04_0e_tiles:
    db $41,$42,$42,        $c1,        $c1,$41         ;; 05:76fe ??????
    db $41,$42,$42,        $d1,        $d1,$51         ;; 05:7704 ??????
    db $41,$42,$52,        $85,        $85,$05         ;; 05:770a ??????
    db $41,$42,$05,$05,$47,$47,$05,$47,$47,$05         ;; 05:7710 ??????????
    db $41,$42,        $85,        $85,$05,$05         ;; 05:771a ??????
    db $51,$52,$05,$05,$47,$47,$05,$47,$47,$05         ;; 05:7720 ??????????
    db $47,$47,        $85,        $85,$05,$05         ;; 05:772a ??????
    db         $c7,        $c7,$05,$47,$05,$47         ;; 05:7730 ??????

map00_room05_0e_script:
    dw   $007c                                         ;; 05:7736 $7c $00
    db   $ff                                           ;; 05:7738 ?

map00_room05_0e_tiles:
    db $41,$47,$05,$47,$10,        $91,$11,$11         ;; 05:7739 ????????
    db $53,        $85,$10,        $91,$11,$11         ;; 05:7741 ??????
    db         $85,$05,$20,        $91,$11,$11         ;; 05:7747 ??????
    db $05,$05,$47,$47,$05,$20,        $a1,$21         ;; 05:774d ????????
    db         $85,        $85,        $85,$05         ;; 05:7755 ????
    db $05,$05,        $c7,$05,$47,        $85         ;; 05:7759 ??????
    db         $85,        $85,        $85,$05         ;; 05:775f ????
    db $47,        $85,        $85,$05,$05,$47         ;; 05:7763 ??????

map00_room06_0e_script:
    dw   $007c                                         ;; 05:7769 $7c $00
    db   $ff                                           ;; 05:776b ?

map00_room06_0e_tiles:
    db         $91,        $91,        $91,$11         ;; 05:776c ????
    db         $91,        $91,        $91,$11         ;; 05:7770 ????
    db         $91,        $91,        $91,$11         ;; 05:7774 ????
    db $21,$21,        $91,        $91,$11,$11         ;; 05:7778 ??????
    db $05,$05,$20,        $a1,$21,        $91         ;; 05:777e ??????
    db $05,$05,$47,$47,        $85,$20,$11,$11         ;; 05:7784 ????????
    db         $85,        $85,$05,$05,$10,$11         ;; 05:778c ??????
    db $47,        $85,        $85,$05,$10,$11         ;; 05:7792 ??????

map00_room07_0e_script:
    dw   $0055                                         ;; 05:7798 $55 $00
    db   $ff                                           ;; 05:779a ?

map00_room07_0e_tiles:
    db         $91,$12,        $80,$00,$50,$41         ;; 05:779b ??????
    db         $91,$12,        $80,$00,$30,$41         ;; 05:77a1 ??????
    db         $91,$22,        $80,$00,$50,$41         ;; 05:77a7 ??????
    db $11,$11,$12,        $80,        $80,$50         ;; 05:77ad ??????
    db $11,$11,$12,        $80,        $80,$00         ;; 05:77b3 ??????
    db $11,$11,$12,        $80,        $80,$00         ;; 05:77b9 ??????
    db $11,$11,$12,        $80,$30,$40,$30,$31         ;; 05:77bf ????????
    db $11,$11,$12,$00,$00,$30,        $c1,$41         ;; 05:77c7 ????????

map00_room08_0e_script:
    dw   $0223                                         ;; 05:77cf $23 $02
    db   $ff                                           ;; 05:77d1 ?

map00_room08_0e_tiles:
    db $37,$37,$00,        $b7,$37,$00,$37,$37         ;; 05:77d2 ????????
    db $37,$37,$00,        $b7,$37,$00,$00,$37         ;; 05:77da ????????
    db $37,$37,        $80,        $80,$00,$37         ;; 05:77e2 ??????
    db $37,$37,$7f,        $b7,        $80,$37         ;; 05:77e8 ??????
    db $00,$00,$7f,        $b7,        $80,$37         ;; 05:77ee ??????
    db $00,$00,$7f,        $b7,        $80,$37         ;; 05:77f4 ??????
    db         $b7,        $b7,        $80,$37         ;; 05:77fa ????
    db         $b7,        $b7,$37,$00,$37,$37         ;; 05:77fe ??????

map00_room09_0e_script:
    dw   $0494                                         ;; 05:7804 $94 $04
    db   $18                                           ;; 05:7806 ?
    dw   $0278                                         ;; 05:7807 $78 $02
    db   $ff                                           ;; 05:7809 ?

map00_room09_0e_tiles:
    db $41,$42,$00,$00,$17,$00,        $c1,$41         ;; 05:780a ????????
    db $41,$52,$00,$00,$17,$00,$50,$51,$4c,$41         ;; 05:7812 ??????????
    db $41,        $80,$17,        $80,$00,$50         ;; 05:781c ??????
    db $41,        $80,$17,        $80,$00,$00         ;; 05:7822 ??????
    db $41,        $80,$17,        $80,$00,$00         ;; 05:7828 ??????
    db $41,        $80,$13,        $97,$17,$17         ;; 05:782e ??????
    db $41,$40,        $80,        $80,$00,$00         ;; 05:7834 ??????
    db $41,$41,$31,$31,$40,$00,$30,        $b1         ;; 05:783a ????????

map00_room0a_0e_script:
    dw   $0055                                         ;; 05:7842 $55 $00
    db   $ff                                           ;; 05:7844 ?

map00_room0a_0e_tiles:
    db $41,$41,$42,$42,$00,$00,$37,$37,$00,$37         ;; 05:7845 ??????????
    db $41,$41,$42,$52,        $80,        $85         ;; 05:784f ??????
    db $51,$51,$52,        $80,$05,$05,$15,$38         ;; 05:7855 ????????
    db         $80,$00,        $85,$05,$10,$11         ;; 05:785d ??????
    db         $80,$05,$05,$4e,$05,$15,$11,$11         ;; 05:7863 ????????
    db         $91,        $91,        $91,$11         ;; 05:786b ????
    db $00,$00,        $85,$05,$20,        $91         ;; 05:786f ??????
    db         $b1,$31,$40,$05,$05,$10,$11,$11         ;; 05:7875 ????????

map00_room0b_0e_script:
    dw   $0055                                         ;; 05:787d $55 $00
    db   $ff                                           ;; 05:787f ?

map00_room0b_0e_tiles:
    db $37,        $80,$37,$00,$00,        $b7         ;; 05:7880 ??????
    db         $80,        $80,$00,$7f,$7f,$37         ;; 05:7886 ??????
    db $38,$02,        $80,        $ff,$7f,$37         ;; 05:788c ??????
    db $11,$12,$7f,$37,$37,        $ff,$00,$00         ;; 05:7892 ????????
    db $11,$12,        $85,$37,$37,        $80         ;; 05:789a ??????
    db $11,$11,$02,        $85,$05,$00,$00,$30         ;; 05:78a0 ????????
    db $11,$11,$12,        $85,        $85,$41         ;; 05:78a8 ??????
    db $11,$11,$12,        $85,$05,$05,$30,$41         ;; 05:78ae ????????

map00_room0c_0e_script:
    dw   $0052                                         ;; 05:78b6 $52 $00
    db   $ff                                           ;; 05:78b8 ?

map00_room0c_0e_tiles:
    db $37,$37,$00,$00,        $b7,$37,$41,$41         ;; 05:78b9 ????????
    db $37,$37,        $80,        $80,$50,$41         ;; 05:78c1 ??????
    db $37,$37,        $80,        $80,$00,$41         ;; 05:78c7 ??????
    db         $80,        $80,        $80,$50         ;; 05:78cd ????
    db         $80,        $80,$05,$05,$15,$38         ;; 05:78d1 ??????
    db $40,        $80,        $85,$05,$10,$11         ;; 05:78d7 ??????
    db $41,$40,        $85,        $85,$10,$11         ;; 05:78dd ??????
    db $41,$41,$40,$30,$31,$40,$05,$05,$10,$11         ;; 05:78e3 ??????????

map00_room0d_0e_script:
    dw   $0055                                         ;; 05:78ed $55 $00
    db   $44                                           ;; 05:78ef ?
    dw   $0474                                         ;; 05:78f0 $74 $04
    db   $ff                                           ;; 05:78f2 ?

map00_room0d_0e_tiles:
    db $41,$42,$42,$2b,        $c1,        $c1         ;; 05:78f3 ??????
    db $41,$42,$42,$2b,        $d1,$51,$41,$41         ;; 05:78f9 ????????
    db $41,$42,$52,        $85,$05,$05,$50,$41         ;; 05:7901 ????????
    db $51,$52,$15,$38,$02,        $85,$05,$41         ;; 05:7909 ????????
    db $38,$38,$11,$11,$7b,        $85,$05,$50         ;; 05:7911 ????????
    db         $91,$11,$22,$05,$05,$30,$40,$30         ;; 05:7919 ????????
    db         $91,$12,$30,$40,$30,        $c1         ;; 05:7921 ??????
    db         $91,$12,        $c1,        $c1         ;; 05:7927 ????

map00_room0e_0e_script:
    dw   $0076                                         ;; 05:792b $76 $00
    db   $ff                                           ;; 05:792d ?

map00_room0e_0e_tiles:
    db $41,$42,$42,$49,$00,$17,$00,$49,$50,$51         ;; 05:792e ??????????
    db $41,$42,$52,$49,$00,$17,$00,$3b,$49,$49         ;; 05:7938 ??????????
    db $41,$52,$3b,$49,$00,$17,$3b,$00,$00,$49         ;; 05:7942 ??????????
    db $41,$40,$49,$3b,$00,$17,        $80,$49         ;; 05:794c ????????
    db $41,$53,$49,$3b,$00,$17,$00,$3b,$49,$30         ;; 05:7954 ??????????
    db $53,$49,$49,$00,$3b,$17,$00,$00,$49,$41         ;; 05:795e ??????????
    db $40,$49,        $80,$17,$00,$49,$49,$50         ;; 05:7968 ????????
    db $41,$40,        $80,$17,$00,$49,$49,$30         ;; 05:7970 ????????

map00_room0f_0e_script:
    dw   $007c                                         ;; 05:7978 $7c $00
    db   $ff                                           ;; 05:797a ?

map00_room0f_0e_tiles:
    db $53,        $c9,$00,$00,$10,        $91         ;; 05:797b ??????
    db         $c9,$49,$00,$00,$10,        $91         ;; 05:7981 ??????
    db $49,$49,$3b,        $80,$20,        $91         ;; 05:7987 ??????
    db $49,$49,        $80,$00,$00,$10,$11,$11         ;; 05:798d ????????
    db $40,        $c9,$00,$3b,$00,$10,$11,$11         ;; 05:7995 ????????
    db $41,$40,$49,$49,$3b,$00,$00,$10,$11,$11         ;; 05:799d ??????????
    db $41,$53,$49,$49,        $80,$10,$11,$11         ;; 05:79a7 ????????
    db $41,$49,$49,        $80,$00,$10,$11,$11         ;; 05:79af ????????

map00_room00_0f_script:
    dw   $007c                                         ;; 05:79b7 $7c $00
    db   $ff                                           ;; 05:79b9 ?

map00_room00_0f_tiles:
    db $11,$11,$12,        $80,$00,$50,$41,$42         ;; 05:79ba ????????
    db $11,$11,$12,        $80,$00,$47,$50,$42         ;; 05:79c2 ????????
    db         $91,$02,        $80,$00,$47,$47         ;; 05:79ca ??????
    db         $91,$11,$02,        $80,$00,$00         ;; 05:79d0 ??????
    db         $91,$11,$11,$02,        $80,$00         ;; 05:79d6 ??????
    db         $91,        $91,        $b8,$38         ;; 05:79dc ????
    db         $91,        $91,        $91,$11         ;; 05:79e0 ????
    db         $91,        $91,        $91,$11         ;; 05:79e4 ????

map00_room01_0f_script:
    dw   $007c                                         ;; 05:79e8 $7c $00
    db   $ff                                           ;; 05:79ea ?

map00_room01_0f_tiles:
    db         $c2,$42,$52,$00,$00,$10,$11,$11         ;; 05:79eb ????????
    db $42,$42,$52,$47,        $80,$10,$11,$11         ;; 05:79f3 ????????
    db $47,$47,        $80,$00,$00,$10,$11,$11         ;; 05:79fb ????????
    db         $80,        $80,$15,        $91         ;; 05:7a03 ????
    db         $80,$15,$38,$38,        $91,$11         ;; 05:7a07 ??????
    db         $b8,        $91,        $91,$11         ;; 05:7a0d ????
    db         $91,        $91,        $91,$11         ;; 05:7a11 ????
    db         $91,        $91,        $91,$11         ;; 05:7a15 ????

map00_room02_0f_script:
    dw   $003d                                         ;; 05:7a19 $3d $00
    db   $ff                                           ;; 05:7a1b ?

map00_room02_0f_tiles:
    db         $91,        $91,        $91,$11         ;; 05:7a1c ????
    db         $91,        $91,        $91,$11         ;; 05:7a20 ????
    db         $91,        $91,        $91,$11         ;; 05:7a24 ????
    db         $91,        $91,        $91,$11         ;; 05:7a28 ????
    db         $91,        $91,        $91,$11         ;; 05:7a2c ????
    db         $91,        $91,        $91,$11         ;; 05:7a30 ????
    db         $91,        $91,        $91,$11         ;; 05:7a34 ????
    db         $91,        $91,        $91,$11         ;; 05:7a38 ????

map00_room03_0f_script:
    dw   $007c                                         ;; 05:7a3c $7c $00
    db   $ff                                           ;; 05:7a3e ?

map00_room03_0f_tiles:
    db         $91,$12,        $85,$05,$47,$47         ;; 05:7a3f ??????
    db         $91,$12,        $85,$05,$05,$47         ;; 05:7a45 ??????
    db         $91,$11,$02,        $85,$05,$05         ;; 05:7a4b ??????
    db         $91,$11,$11,$02,        $85,$05         ;; 05:7a51 ??????
    db         $91,        $91,        $b8,$38         ;; 05:7a57 ????
    db         $91,        $91,        $91,$11         ;; 05:7a5b ????
    db         $91,        $91,        $91,$11         ;; 05:7a5f ????
    db         $91,        $91,        $91,$11         ;; 05:7a63 ????

map00_room04_0f_script:
    dw   $007c                                         ;; 05:7a67 $7c $00
    db   $ff                                           ;; 05:7a69 ?

map00_room04_0f_tiles:
    db         $c7,        $c7,$05,$47,$05,$47         ;; 05:7a6a ??????
    db $47,        $85,        $85,        $85         ;; 05:7a70 ????
    db         $85,        $85,        $85,$47         ;; 05:7a74 ????
    db         $85,        $85,        $85,$05         ;; 05:7a78 ????
    db         $b8,        $b8,        $b8,$38         ;; 05:7a7c ????
    db         $91,        $91,        $91,$11         ;; 05:7a80 ????
    db         $91,        $91,        $91,$11         ;; 05:7a84 ????
    db         $91,        $91,        $91,$11         ;; 05:7a88 ????

map00_room05_0f_script:
    dw   $007c                                         ;; 05:7a8c $7c $00
    db   $ff                                           ;; 05:7a8e ?

map00_room05_0f_tiles:
    db $47,        $85,        $85,$05,$47,$47         ;; 05:7a8f ??????
    db         $85,        $85,        $85,$05         ;; 05:7a95 ????
    db $47,$05,$05,$47,$05,$05,$47,        $85         ;; 05:7a99 ????????
    db         $85,        $85,        $85,$05         ;; 05:7aa1 ????
    db         $b8,        $b8,        $b8,$38         ;; 05:7aa5 ????
    db         $91,        $91,        $91,$11         ;; 05:7aa9 ????
    db         $91,        $91,        $91,$11         ;; 05:7aad ????
    db         $91,        $91,        $91,$11         ;; 05:7ab1 ????

map00_room06_0f_script:
    dw   $007c                                         ;; 05:7ab5 $7c $00
    db   $ff                                           ;; 05:7ab7 ?

map00_room06_0f_tiles:
    db $47,        $85,        $85,$05,$10,$11         ;; 05:7ab8 ??????
    db         $85,$47,        $85,$05,$10,$11         ;; 05:7abe ??????
    db $05,$05,$47,        $85,$05,$15,$11,$11         ;; 05:7ac4 ????????
    db         $85,$05,$05,$15,$38,        $91         ;; 05:7acc ??????
    db         $b8,$38,$38,        $91,$11,$11         ;; 05:7ad2 ??????
    db         $91,        $91,        $91,$11         ;; 05:7ad8 ????
    db         $91,        $91,        $91,$11         ;; 05:7adc ????
    db         $91,        $91,        $91,$11         ;; 05:7ae0 ????

map00_room07_0f_script:
    dw   $0046                                         ;; 05:7ae4 $46 $00
    db   $ff                                           ;; 05:7ae6 ?

map00_room07_0f_tiles:
    db $11,$11,$12,$00,$00,$50,$51,$51,$41,$41         ;; 05:7ae7 ??????????
    db $11,$11,$12,        $80,$00,$00,$50,$41         ;; 05:7af1 ????????
    db $11,$11,$12,        $80,        $80,$41         ;; 05:7af9 ??????
    db         $91,$02,        $80,$00,$00,$50         ;; 05:7aff ??????
    db         $91,$11,$38,$02,        $80,$00         ;; 05:7b05 ??????
    db         $91,        $91,$02,        $80         ;; 05:7b0b ????
    db         $91,        $91,$11,        $b8         ;; 05:7b0f ????
    db         $91,        $91,        $91,$11         ;; 05:7b13 ????

map00_room08_0f_script:
    dw   $0055                                         ;; 05:7b17 $55 $00
    db   $ff                                           ;; 05:7b19 ?

map00_room08_0f_tiles:
    db $41,$41,$42,$42,        $c1,$00,$41,$41         ;; 05:7b1a ????????
    db $41,$41,$42,$42,$51,$51,$53,$00,$50,$41         ;; 05:7b22 ??????????
    db $41,$41,$42,$52,        $80,$00,$00,$41         ;; 05:7b2c ????????
    db $51,$51,$52,        $80,        $80,$50         ;; 05:7b34 ??????
    db         $80,        $80,$00,$00,$15,$38         ;; 05:7b3a ??????
    db         $80,        $80,$00,$15,$11,$11         ;; 05:7b40 ??????
    db         $b8,        $b8,$38,        $91         ;; 05:7b46 ????
    db         $91,        $91,        $91,$11         ;; 05:7b4a ????

map00_room09_0f_script:
    dw   $0055                                         ;; 05:7b4e $55 $00
    db   $ff                                           ;; 05:7b50 ?

map00_room09_0f_tiles:
    db $41,$42,$42,$41,$42,$00,        $c1,$41         ;; 05:7b51 ????????
    db $41,$42,$42,$51,$52,$00,$50,$51,$41,$41         ;; 05:7b59 ??????????
    db $41,$42,$52,        $80,$00,$00,$50,$51         ;; 05:7b63 ????????
    db $51,$52,        $85,        $80,$00,$00         ;; 05:7b6b ??????
    db $38,$02,        $85,        $85,$05,$05         ;; 05:7b71 ??????
    db $11,$11,$38,$38,$02,        $85,$05,$05         ;; 05:7b77 ????????
    db         $91,$11,$11,        $b8,$38,$38         ;; 05:7b7f ??????
    db         $91,        $91,        $91,$11         ;; 05:7b85 ????

map00_room0a_0f_script:
    dw   $0055                                         ;; 05:7b89 $55 $00
    db   $22                                           ;; 05:7b8b ?
    dw   $038d                                         ;; 05:7b8c $8d $03
    db   $ff                                           ;; 05:7b8e ?

map00_room0a_0f_tiles:
    db         $c1,$41,$42,$05,$05,$10,$11,$11         ;; 05:7b8f ????????
    db $41,        $dd,$52,$05,$05,$10,$11,$11         ;; 05:7b97 ????????
    db $51,$5e,$2e,$5e,$69,$05,$05,$10,$11,$11         ;; 05:7b9f ??????????
    db         $80,$00,        $85,$10,$11,$11         ;; 05:7ba9 ??????
    db         $85,        $85,$15,        $91         ;; 05:7baf ????
    db         $85,$05,$05,$15,        $91,$11         ;; 05:7bb3 ??????
    db         $b8,$38,$38,        $91,$11,$11         ;; 05:7bb9 ??????
    db         $91,        $91,        $91,$11         ;; 05:7bbf ????

map00_room0b_0f_script:
    dw   $0055                                         ;; 05:7bc3 $55 $00
    db   $ff                                           ;; 05:7bc5 ?

map00_room0b_0f_tiles:
    db $11,$11,$12,        $85,$05,$05,$41,$41         ;; 05:7bc6 ????????
    db $11,$11,$12,        $85,$05,$05,$50,$51         ;; 05:7bce ????????
    db         $91,$02,        $85,        $85         ;; 05:7bd6 ????
    db         $91,$11,$02,        $85,$05,$05         ;; 05:7bda ??????
    db         $91,$11,$11,$02,        $85,$05         ;; 05:7be0 ??????
    db         $91,        $91,        $b8,$38         ;; 05:7be6 ????
    db         $91,        $91,        $91,$11         ;; 05:7bea ????
    db         $91,        $91,        $91,$11         ;; 05:7bee ????

map00_room0c_0f_script:
    dw   $0055                                         ;; 05:7bf2 $55 $00
    db   $ff                                           ;; 05:7bf4 ?

map00_room0c_0f_tiles:
    db $41,$41,$42,$41,$41,$52,$05,$05,$10,$11         ;; 05:7bf5 ??????????
    db $51,$51,$52,        $85,$05,$05,$10,$11         ;; 05:7bff ????????
    db         $85,        $85,$05,$15,$11,$11         ;; 05:7c07 ??????
    db         $85,        $85,$15,        $91         ;; 05:7c0d ????
    db         $85,$15,$38,$38,        $91,$11         ;; 05:7c11 ??????
    db         $b8,        $91,        $91,$11         ;; 05:7c17 ????
    db         $91,        $91,        $91,$11         ;; 05:7c1b ????
    db         $91,        $91,        $91,$11         ;; 05:7c1f ????

map00_room0d_0f_script:
    dw   $0079                                         ;; 05:7c23 $79 $00
    db   $25                                           ;; 05:7c25 ?
    dw   $038c                                         ;; 05:7c26 $8c $03
    db   $ff                                           ;; 05:7c28 ?

map00_room0d_0f_tiles:
    db         $91,$12,$50,        $c1,$41,$41         ;; 05:7c29 ??????
    db         $91,$22,        $dd,$51,$41,$41         ;; 05:7c2f ??????
    db $11,$11,$22,$00,$5e,$2e,$5e,$69,$50,$51         ;; 05:7c35 ??????????
    db $11,$12,        $80,        $80,$00,$00         ;; 05:7c3f ??????
    db $11,$12,$33,        $80,$00,$3b,$00,$00         ;; 05:7c45 ????????
    db $11,$12,$50,$33,$00,$3b,        $80,$00         ;; 05:7c4d ????????
    db $11,$11,$02,$50,        $80,        $80         ;; 05:7c55 ??????
    db         $91,$38,        $80,$00,$00,$30         ;; 05:7c5b ??????

map00_room0e_0f_script:
    dw   $0079                                         ;; 05:7c61 $79 $00
    db   $ff                                           ;; 05:7c63 ?

map00_room0e_0f_tiles:
    db $42,$42,        $80,$17,$00,$49,$49,$50         ;; 05:7c64 ????????
    db $42,$52,        $80,$17,$00,$00,$49,$49         ;; 05:7c6c ????????
    db $52,$00,$3b,$00,$00,$17,        $80,$00         ;; 05:7c74 ????????
    db $00,$00,$3b,$00,$00,$13,        $97,$17         ;; 05:7c7c ????????
    db         $80,$3b,        $80,        $80         ;; 05:7c84 ????
    db         $80,$00,$3b,$00,$3b,        $80         ;; 05:7c88 ??????
    db $30,$40,$30,$40,        $80,$00,$30,$40         ;; 05:7c8e ????????
    db         $c1,$41,$40,$30,$40,$30,$41,$41         ;; 05:7c96 ????????

map00_room0f_0f_script:
    dw   $0079                                         ;; 05:7c9e $79 $00
    db   $ff                                           ;; 05:7ca0 ?

map00_room0f_0f_tiles:
    db $53,$49,        $80,$00,$00,$10,$11,$11         ;; 05:7ca1 ????????
    db $49,$00,$00,$3b,        $80,$10,$11,$11         ;; 05:7ca9 ????????
    db         $80,        $80,$15,        $91         ;; 05:7cb1 ????
    db         $91,        $91,        $91,$11         ;; 05:7cb5 ????
    db         $80,$00,$00,$3b,$20,        $91         ;; 05:7cb9 ??????
    db         $80,$3b,        $80,$10,$11,$11         ;; 05:7cbf ??????
    db $30,$40,        $80,$00,$00,$20,$11,$11         ;; 05:7cc5 ????????
    db $41,$41,$40,$30,$31,$40,$30,$40,$10,$11         ;; 05:7ccd ??????????

mapRoomPointers_09:
    db   $01, $04, $04, $05                            ;; 05:7cd7 ????
    dw   map09_room_tile_template                      ;; 05:7cdb $45 $7d
    db   $25, $35, $20, $30, $14, $03, $52, $53        ;; 05:7cdd ????????
    db   $24, $34, $21, $31, $12, $13, $42, $43        ;; 05:7ce5 ????????
    db   $15, $45, $10, $40, $01, $04, $51, $54        ;; 05:7ced ????????
    dw   map09_room00_00_script                        ;; 05:7cf5 $71 $7d
    dw   map09_room00_00_tiles                         ;; 05:7cf7 $74 $7d
    dw   map09_room01_00_script                        ;; 05:7cf9 $82 $7d
    dw   map09_room01_00_tiles                         ;; 05:7cfb $88 $7d
    dw   map09_room02_00_script                        ;; 05:7cfd $9a $7d
    dw   map09_room02_00_tiles                         ;; 05:7cff $a3 $7d
    dw   map09_room03_00_script                        ;; 05:7d01 $bb $7d
    dw   map09_room03_00_tiles                         ;; 05:7d03 $be $7d
    dw   map09_room04_00_script                        ;; 05:7d05 $dc $7d
    dw   map09_room04_00_tiles                         ;; 05:7d07 $e2 $7d
    dw   map09_room00_01_script                        ;; 05:7d09 $fe $7d
    dw   map09_room00_01_tiles                         ;; 05:7d0b $01 $7e
    dw   map09_room01_01_script                        ;; 05:7d0d $1b $7e
    dw   map09_room01_01_tiles                         ;; 05:7d0f $1e $7e
    dw   map09_room02_01_script                        ;; 05:7d11 $2c $7e
    dw   map09_room02_01_tiles                         ;; 05:7d13 $35 $7e
    dw   map09_room03_01_script                        ;; 05:7d15 $45 $7e
    dw   map09_room03_01_tiles                         ;; 05:7d17 $4b $7e
    dw   map09_room04_01_script                        ;; 05:7d19 $63 $7e
    dw   map09_room04_01_tiles                         ;; 05:7d1b $69 $7e
    dw   map09_room00_02_script                        ;; 05:7d1d $7b $7e
    dw   map09_room00_02_tiles                         ;; 05:7d1f $7e $7e
    dw   map09_room01_02_script                        ;; 05:7d21 $92 $7e
    dw   map09_room01_02_tiles                         ;; 05:7d23 $95 $7e
    dw   map09_room02_02_script                        ;; 05:7d25 $af $7e
    dw   map09_room02_02_tiles                         ;; 05:7d27 $b2 $7e
    dw   map09_room03_02_script                        ;; 05:7d29 $c0 $7e
    dw   map09_room03_02_tiles                         ;; 05:7d2b $c3 $7e
    dw   map09_room04_02_script                        ;; 05:7d2d $d5 $7e
    dw   map09_room04_02_tiles                         ;; 05:7d2f $d8 $7e
    dw   map09_room00_03_script                        ;; 05:7d31 $de $7e
    dw   map09_room00_03_tiles                         ;; 05:7d33 $e4 $7e
    dw   map09_room01_03_script                        ;; 05:7d35 $14 $7f
    dw   map09_room01_03_tiles                         ;; 05:7d37 $17 $7f
    dw   map09_room02_03_script                        ;; 05:7d39 $2d $7f
    dw   map09_room02_03_tiles                         ;; 05:7d3b $30 $7f
    dw   map09_room03_03_script                        ;; 05:7d3d $3e $7f
    dw   map09_room03_03_tiles                         ;; 05:7d3f $44 $7f
    dw   map09_room04_03_script                        ;; 05:7d41 $54 $7f
    dw   map09_room04_03_tiles                         ;; 05:7d43 $57 $7f

map09_room_tile_template:
    db $16,$01,$01,$01,$14,$03,$04,$04,$04,$05         ;; 05:7d45 ??????????
    db $10,            $80,            $80,$15         ;; 05:7d4f ????
    db $10,            $80,            $80,$15         ;; 05:7d53 ????
    db $20,            $80,            $80,$25         ;; 05:7d57 ????
    db $30,            $80,            $80,$35         ;; 05:7d5b ????
    db $40,            $80,            $80,$45         ;; 05:7d5f ????
    db $40,            $80,            $80,$45         ;; 05:7d63 ????
    db $50,$51,$51,$51,$52,$53,$54,$54,$54,$55         ;; 05:7d67 ??????????

map09_room00_00_script:
    dw   $0082                                         ;; 05:7d71 $82 $00
    db   $ff                                           ;; 05:7d73 ?

map09_room00_00_tiles:
    db   $89, $02, $02, $00 ;; Door info               ;; 05:7d74 ????
    db   $2c, $36 ;; BlockID, XY                       ;; 05:7d78 ??
    db   $2c, $37 ;; BlockID, XY                       ;; 05:7d7a ??
    db   $2c, $47 ;; BlockID, XY                       ;; 05:7d7c ??
    db   $2c, $58 ;; BlockID, XY                       ;; 05:7d7e ??
    db   $ff, $ff ;; BlockID, XY                       ;; 05:7d80 ??

map09_room01_00_script:
    dw   $0082                                         ;; 05:7d82 $82 $00
    db   $18                                           ;; 05:7d84 ?
    dw   $0361                                         ;; 05:7d85 $61 $03
    db   $ff                                           ;; 05:7d87 ?

map09_room01_00_tiles:
    db   $02, $01, $02, $02 ;; Door info               ;; 05:7d88 ????
    db   $19, $16 ;; BlockID, XY                       ;; 05:7d8c ??
    db   $19, $17 ;; BlockID, XY                       ;; 05:7d8e ??
    db   $6a, $18 ;; BlockID, XY                       ;; 05:7d90 ??
    db   $19, $27 ;; BlockID, XY                       ;; 05:7d92 ??
    db   $19, $28 ;; BlockID, XY                       ;; 05:7d94 ??
    db   $19, $38 ;; BlockID, XY                       ;; 05:7d96 ??
    db   $ff, $ff ;; BlockID, XY                       ;; 05:7d98 ??

map09_room02_00_script:
    dw   $0082                                         ;; 05:7d9a $82 $00
    db   $64                                           ;; 05:7d9c ?
    dw   $027d                                         ;; 05:7d9d $7d $02
    db   $11                                           ;; 05:7d9f ?
    dw   $0363                                         ;; 05:7da0 $63 $03
    db   $ff                                           ;; 05:7da2 ?

map09_room02_00_tiles:
    db   $00, $02, $02, $02 ;; Door info               ;; 05:7da3 ????
    db   $4f, $13 ;; BlockID, XY                       ;; 05:7da7 ??
    db   $4f, $24 ;; BlockID, XY                       ;; 05:7da9 ??
    db   $4f, $28 ;; BlockID, XY                       ;; 05:7dab ??
    db   $4f, $37 ;; BlockID, XY                       ;; 05:7dad ??
    db   $4f, $42 ;; BlockID, XY                       ;; 05:7daf ??
    db   $4f, $51 ;; BlockID, XY                       ;; 05:7db1 ??
    db   $4f, $54 ;; BlockID, XY                       ;; 05:7db3 ??
    db   $4e, $64 ;; BlockID, XY                       ;; 05:7db5 ??
    db   $4f, $65 ;; BlockID, XY                       ;; 05:7db7 ??
    db   $ff, $ff ;; BlockID, XY                       ;; 05:7db9 ??

map09_room03_00_script:
    dw   $0082                                         ;; 05:7dbb $82 $00
    db   $ff                                           ;; 05:7dbd ?

map09_room03_00_tiles:
    db   $02, $00, $02, $00 ;; Door info               ;; 05:7dbe ????
    db   $09, $51 ;; BlockID, XY                       ;; 05:7dc2 ??
    db   $09, $52 ;; BlockID, XY                       ;; 05:7dc4 ??
    db   $09, $53 ;; BlockID, XY                       ;; 05:7dc6 ??
    db   $09, $56 ;; BlockID, XY                       ;; 05:7dc8 ??
    db   $09, $57 ;; BlockID, XY                       ;; 05:7dca ??
    db   $09, $58 ;; BlockID, XY                       ;; 05:7dcc ??
    db   $09, $61 ;; BlockID, XY                       ;; 05:7dce ??
    db   $09, $62 ;; BlockID, XY                       ;; 05:7dd0 ??
    db   $09, $63 ;; BlockID, XY                       ;; 05:7dd2 ??
    db   $09, $66 ;; BlockID, XY                       ;; 05:7dd4 ??
    db   $09, $67 ;; BlockID, XY                       ;; 05:7dd6 ??
    db   $09, $68 ;; BlockID, XY                       ;; 05:7dd8 ??
    db   $ff, $ff ;; BlockID, XY                       ;; 05:7dda ??

map09_room04_00_script:
    dw   $009a                                         ;; 05:7ddc $9a $00
    db   $18                                           ;; 05:7dde ?
    dw   $02f4                                         ;; 05:7ddf $f4 $02
    db   $ff                                           ;; 05:7de1 ?

map09_room04_00_tiles:
    db   $02, $02, $02, $01 ;; Door info               ;; 05:7de2 ????
    db   $02, $18 ;; BlockID, XY                       ;; 05:7de6 ??
    db   $4f, $24 ;; BlockID, XY                       ;; 05:7de8 ??
    db   $4f, $25 ;; BlockID, XY                       ;; 05:7dea ??
    db   $4f, $26 ;; BlockID, XY                       ;; 05:7dec ??
    db   $4f, $27 ;; BlockID, XY                       ;; 05:7dee ??
    db   $4f, $28 ;; BlockID, XY                       ;; 05:7df0 ??
    db   $4f, $41 ;; BlockID, XY                       ;; 05:7df2 ??
    db   $4f, $42 ;; BlockID, XY                       ;; 05:7df4 ??
    db   $4f, $43 ;; BlockID, XY                       ;; 05:7df6 ??
    db   $4f, $44 ;; BlockID, XY                       ;; 05:7df8 ??
    db   $4f, $45 ;; BlockID, XY                       ;; 05:7dfa ??
    db   $ff, $ff ;; BlockID, XY                       ;; 05:7dfc ??

map09_room00_01_script:
    dw   $007f                                         ;; 05:7dfe $7f $00
    db   $ff                                           ;; 05:7e00 ?

map09_room00_01_tiles:
    db   $05, $02, $00, $00 ;; Door info               ;; 05:7e01 ????
    db   $47, $16 ;; BlockID, XY                       ;; 05:7e05 ??
    db   $47, $17 ;; BlockID, XY                       ;; 05:7e07 ??
    db   $47, $23 ;; BlockID, XY                       ;; 05:7e09 ??
    db   $47, $24 ;; BlockID, XY                       ;; 05:7e0b ??
    db   $47, $25 ;; BlockID, XY                       ;; 05:7e0d ??
    db   $47, $26 ;; BlockID, XY                       ;; 05:7e0f ??
    db   $47, $31 ;; BlockID, XY                       ;; 05:7e11 ??
    db   $47, $32 ;; BlockID, XY                       ;; 05:7e13 ??
    db   $47, $33 ;; BlockID, XY                       ;; 05:7e15 ??
    db   $47, $42 ;; BlockID, XY                       ;; 05:7e17 ??
    db   $ff, $ff ;; BlockID, XY                       ;; 05:7e19 ??

map09_room01_01_script:
    dw   $00af                                         ;; 05:7e1b $af $00
    db   $ff                                           ;; 05:7e1d ?

map09_room01_01_tiles:
    db   $02, $09, $02, $02 ;; Door info               ;; 05:7e1e ????
    db   $4f, $24 ;; BlockID, XY                       ;; 05:7e22 ??
    db   $4f, $25 ;; BlockID, XY                       ;; 05:7e24 ??
    db   $4f, $54 ;; BlockID, XY                       ;; 05:7e26 ??
    db   $4f, $55 ;; BlockID, XY                       ;; 05:7e28 ??
    db   $ff, $ff ;; BlockID, XY                       ;; 05:7e2a ??

map09_room02_01_script:
    dw   $03eb                                         ;; 05:7e2c $eb $03
    db   $61                                           ;; 05:7e2e ?
    dw   $027e                                         ;; 05:7e2f $7e $02
    db   $18                                           ;; 05:7e31 ?
    dw   $0365                                         ;; 05:7e32 $65 $03
    db   $ff                                           ;; 05:7e34 ?

map09_room02_01_tiles:
    db   $02, $02, $02, $01 ;; Door info               ;; 05:7e35 ????
    db   $4f, $21 ;; BlockID, XY                       ;; 05:7e39 ??
    db   $4f, $28 ;; BlockID, XY                       ;; 05:7e3b ??
    db   $4f, $51 ;; BlockID, XY                       ;; 05:7e3d ??
    db   $4f, $58 ;; BlockID, XY                       ;; 05:7e3f ??
    db   $4e, $61 ;; BlockID, XY                       ;; 05:7e41 ??
    db   $ff, $ff ;; BlockID, XY                       ;; 05:7e43 ??

map09_room03_01_script:
    dw   $0190                                         ;; 05:7e45 $90 $01
    db   $18                                           ;; 05:7e47 ?
    dw   $0294                                         ;; 05:7e48 $94 $02
    db   $ff                                           ;; 05:7e4a ?

map09_room03_01_tiles:
    db   $02, $02, $00, $00 ;; Door info               ;; 05:7e4b ????
    db   $11, $18 ;; BlockID, XY                       ;; 05:7e4f ??
    db   $47, $32 ;; BlockID, XY                       ;; 05:7e51 ??
    db   $47, $33 ;; BlockID, XY                       ;; 05:7e53 ??
    db   $47, $36 ;; BlockID, XY                       ;; 05:7e55 ??
    db   $47, $37 ;; BlockID, XY                       ;; 05:7e57 ??
    db   $47, $42 ;; BlockID, XY                       ;; 05:7e59 ??
    db   $47, $43 ;; BlockID, XY                       ;; 05:7e5b ??
    db   $47, $46 ;; BlockID, XY                       ;; 05:7e5d ??
    db   $47, $47 ;; BlockID, XY                       ;; 05:7e5f ??
    db   $ff, $ff ;; BlockID, XY                       ;; 05:7e61 ??

map09_room04_01_script:
    dw   $0097                                         ;; 05:7e63 $97 $00
    db   $18                                           ;; 05:7e65 ?
    dw   $035a                                         ;; 05:7e66 $5a $03
    db   $ff                                           ;; 05:7e68 ?

map09_room04_01_tiles:
    db   $02, $02, $01, $02 ;; Door info               ;; 05:7e69 ????
    db   $4f, $16 ;; BlockID, XY                       ;; 05:7e6d ??
    db   $11, $18 ;; BlockID, XY                       ;; 05:7e6f ??
    db   $4f, $26 ;; BlockID, XY                       ;; 05:7e71 ??
    db   $4f, $36 ;; BlockID, XY                       ;; 05:7e73 ??
    db   $4f, $56 ;; BlockID, XY                       ;; 05:7e75 ??
    db   $4f, $66 ;; BlockID, XY                       ;; 05:7e77 ??
    db   $ff, $ff ;; BlockID, XY                       ;; 05:7e79 ??

map09_room00_02_script:
    dw   $0082                                         ;; 05:7e7b $82 $00
    db   $ff                                           ;; 05:7e7d ?

map09_room00_02_tiles:
    db   $00, $02, $00, $02 ;; Door info               ;; 05:7e7e ????
    db   $09, $18 ;; BlockID, XY                       ;; 05:7e82 ??
    db   $09, $26 ;; BlockID, XY                       ;; 05:7e84 ??
    db   $09, $27 ;; BlockID, XY                       ;; 05:7e86 ??
    db   $09, $28 ;; BlockID, XY                       ;; 05:7e88 ??
    db   $09, $34 ;; BlockID, XY                       ;; 05:7e8a ??
    db   $09, $35 ;; BlockID, XY                       ;; 05:7e8c ??
    db   $09, $36 ;; BlockID, XY                       ;; 05:7e8e ??
    db   $ff, $ff ;; BlockID, XY                       ;; 05:7e90 ??

map09_room01_02_script:
    dw   $0082                                         ;; 05:7e92 $82 $00
    db   $ff                                           ;; 05:7e94 ?

map09_room01_02_tiles:
    db   $00, $00, $02, $02 ;; Door info               ;; 05:7e95 ????
    db   $05, $04 ;; BlockID, XY                       ;; 05:7e99 ??
    db   $16, $05 ;; BlockID, XY                       ;; 05:7e9b ??
    db   $15, $14 ;; BlockID, XY                       ;; 05:7e9d ??
    db   $10, $15 ;; BlockID, XY                       ;; 05:7e9f ??
    db   $15, $24 ;; BlockID, XY                       ;; 05:7ea1 ??
    db   $10, $25 ;; BlockID, XY                       ;; 05:7ea3 ??
    db   $15, $34 ;; BlockID, XY                       ;; 05:7ea5 ??
    db   $10, $35 ;; BlockID, XY                       ;; 05:7ea7 ??
    db   $1b, $44 ;; BlockID, XY                       ;; 05:7ea9 ??
    db   $17, $45 ;; BlockID, XY                       ;; 05:7eab ??
    db   $ff, $ff ;; BlockID, XY                       ;; 05:7ead ??

map09_room02_02_script:
    dw   $007f                                         ;; 05:7eaf $7f $00
    db   $ff                                           ;; 05:7eb1 ?

map09_room02_02_tiles:
    db   $00, $00, $05, $02 ;; Door info               ;; 05:7eb2 ????
    db   $4f, $33 ;; BlockID, XY                       ;; 05:7eb6 ??
    db   $4f, $36 ;; BlockID, XY                       ;; 05:7eb8 ??
    db   $4f, $43 ;; BlockID, XY                       ;; 05:7eba ??
    db   $4f, $46 ;; BlockID, XY                       ;; 05:7ebc ??
    db   $ff, $ff ;; BlockID, XY                       ;; 05:7ebe ??

map09_room03_02_script:
    dw   $012a                                         ;; 05:7ec0 $2a $01
    db   $ff                                           ;; 05:7ec2 ?

map09_room03_02_tiles:
    db   $02, $02, $00, $02 ;; Door info               ;; 05:7ec3 ????
    db   $19, $11 ;; BlockID, XY                       ;; 05:7ec7 ??
    db   $19, $12 ;; BlockID, XY                       ;; 05:7ec9 ??
    db   $19, $21 ;; BlockID, XY                       ;; 05:7ecb ??
    db   $19, $51 ;; BlockID, XY                       ;; 05:7ecd ??
    db   $19, $61 ;; BlockID, XY                       ;; 05:7ecf ??
    db   $19, $62 ;; BlockID, XY                       ;; 05:7ed1 ??
    db   $ff, $ff ;; BlockID, XY                       ;; 05:7ed3 ??

map09_room04_02_script:
    dw   $ffff                                         ;; 05:7ed5 $ff $ff
    db   $ff                                           ;; 05:7ed7 ?

map09_room04_02_tiles:
    db   $00, $00, $00, $00 ;; Door info               ;; 05:7ed8 ????
    db   $ff, $ff ;; BlockID, XY                       ;; 05:7edc ??

map09_room00_03_script:
    dw   $0097                                         ;; 05:7ede $97 $00
    db   $61                                           ;; 05:7ee0 ?
    dw   $0369                                         ;; 05:7ee1 $69 $03
    db   $ff                                           ;; 05:7ee3 ?

map09_room00_03_tiles:
    db   $00, $02, $02, $02 ;; Door info               ;; 05:7ee4 ????
    db   $16, $25 ;; BlockID, XY                       ;; 05:7ee8 ??
    db   $01, $26 ;; BlockID, XY                       ;; 05:7eea ??
    db   $5d, $27 ;; BlockID, XY                       ;; 05:7eec ??
    db   $04, $28 ;; BlockID, XY                       ;; 05:7eee ??
    db   $10, $35 ;; BlockID, XY                       ;; 05:7ef0 ??
    db   $19, $36 ;; BlockID, XY                       ;; 05:7ef2 ??
    db   $40, $45 ;; BlockID, XY                       ;; 05:7ef4 ??
    db   $19, $46 ;; BlockID, XY                       ;; 05:7ef6 ??
    db   $19, $47 ;; BlockID, XY                       ;; 05:7ef8 ??
    db   $19, $48 ;; BlockID, XY                       ;; 05:7efa ??
    db   $3b, $52 ;; BlockID, XY                       ;; 05:7efc ??
    db   $37, $53 ;; BlockID, XY                       ;; 05:7efe ??
    db   $50, $55 ;; BlockID, XY                       ;; 05:7f00 ??
    db   $51, $56 ;; BlockID, XY                       ;; 05:7f02 ??
    db   $51, $57 ;; BlockID, XY                       ;; 05:7f04 ??
    db   $51, $58 ;; BlockID, XY                       ;; 05:7f06 ??
    db   $11, $61 ;; BlockID, XY                       ;; 05:7f08 ??
    db   $45, $62 ;; BlockID, XY                       ;; 05:7f0a ??
    db   $40, $63 ;; BlockID, XY                       ;; 05:7f0c ??
    db   $55, $72 ;; BlockID, XY                       ;; 05:7f0e ??
    db   $50, $73 ;; BlockID, XY                       ;; 05:7f10 ??
    db   $ff, $ff ;; BlockID, XY                       ;; 05:7f12 ??

map09_room01_03_script:
    dw   $0049                                         ;; 05:7f14 $49 $00
    db   $ff                                           ;; 05:7f16 ?

map09_room01_03_tiles:
    db   $00, $00, $02, $02 ;; Door info               ;; 05:7f17 ????
    db   $09, $25 ;; BlockID, XY                       ;; 05:7f1b ??
    db   $09, $33 ;; BlockID, XY                       ;; 05:7f1d ??
    db   $09, $34 ;; BlockID, XY                       ;; 05:7f1f ??
    db   $09, $35 ;; BlockID, XY                       ;; 05:7f21 ??
    db   $09, $44 ;; BlockID, XY                       ;; 05:7f23 ??
    db   $09, $45 ;; BlockID, XY                       ;; 05:7f25 ??
    db   $09, $46 ;; BlockID, XY                       ;; 05:7f27 ??
    db   $09, $54 ;; BlockID, XY                       ;; 05:7f29 ??
    db   $ff, $ff ;; BlockID, XY                       ;; 05:7f2b ??

map09_room02_03_script:
    dw   $0094                                         ;; 05:7f2d $94 $00
    db   $ff                                           ;; 05:7f2f ?

map09_room02_03_tiles:
    db   $00, $00, $02, $02 ;; Door info               ;; 05:7f30 ????
    db   $47, $24 ;; BlockID, XY                       ;; 05:7f34 ??
    db   $47, $35 ;; BlockID, XY                       ;; 05:7f36 ??
    db   $47, $44 ;; BlockID, XY                       ;; 05:7f38 ??
    db   $47, $55 ;; BlockID, XY                       ;; 05:7f3a ??
    db   $ff, $ff ;; BlockID, XY                       ;; 05:7f3c ??

map09_room03_03_script:
    dw   $00a6                                         ;; 05:7f3e $a6 $00
    db   $18                                           ;; 05:7f40 ?
    dw   $0399                                         ;; 05:7f41 $99 $03
    db   $ff                                           ;; 05:7f43 ?

map09_room03_03_tiles:
    db   $02, $00, $02, $02 ;; Door info               ;; 05:7f44 ????
    db   $4f, $16 ;; BlockID, XY                       ;; 05:7f48 ??
    db   $11, $18 ;; BlockID, XY                       ;; 05:7f4a ??
    db   $4f, $26 ;; BlockID, XY                       ;; 05:7f4c ??
    db   $4f, $36 ;; BlockID, XY                       ;; 05:7f4e ??
    db   $4f, $46 ;; BlockID, XY                       ;; 05:7f50 ??
    db   $ff, $ff ;; BlockID, XY                       ;; 05:7f52 ??

map09_room04_03_script:
    dw   $ffff                                         ;; 05:7f54 $ff $ff
    db   $ff                                           ;; 05:7f56 ?

map09_room04_03_tiles:
    db   $00, $00, $00, $00 ;; Door info               ;; 05:7f57 ????
    db   $ff, $ff ;; BlockID, XY                       ;; 05:7f5b ??
    db   $0f, $c1, $16, $00, $30, $06, $18, $03        ;; 05:7f5d ????????
    db   $c4, $00, $63, $00, $61, $14, $24, $12        ;; 05:7f65 ????????
    db   $02, $01, $19, $1f, $30, $1f, $10, $1f        ;; 05:7f6d ????????
    db   $10, $1f, $90, $1f, $10, $3f, $20, $3f        ;; 05:7f75 ????????
    db   $20, $3f, $20, $f2, $32, $f7, $35, $ff        ;; 05:7f7d ????????
    db   $0d, $ff, $09, $ff, $11, $ff, $11, $ff        ;; 05:7f85 ????????
    db   $11, $ff, $0f, $00, $d7, $00, $12, $20        ;; 05:7f8d ????????
    db   $20, $ff, $ff, $fb, $ce, $f1, $7f, $df        ;; 05:7f95 ????????
    db   $e0, $7f, $ff, $81, $11, $01, $01, $07        ;; 05:7f9d ????????
    db   $06, $ff, $f9, $ce, $6b, $97, $f7, $d1        ;; 05:7fa5 ????????
    db   $3d, $c9, $3f, $ff, $c0, $ff, $80, $ff        ;; 05:7fad ????????
    db   $78, $87, $fe, $21, $0b, $01, $f7, $4b        ;; 05:7fb5 ????????
    db   $b2, $ff, $fc, $fd, $07, $fc, $07, $ff        ;; 05:7fbd ????????
    db   $03, $ff, $00, $ff, $07, $ff, $1e, $ff        ;; 05:7fc5 ????????
    db   $0f, $ff, $00, $7f, $c0, $ff, $80, $ff        ;; 05:7fcd ????????
    db   $80, $ff, $80, $be, $c1, $40, $ff, $ff        ;; 05:7fd5 ????????
    db   $ff, $ff, $3f, $ee, $1e, $ef, $18, $fe        ;; 05:7fdd ????????
    db   $39, $ff, $47, $fb, $87, $83, $ff, $ff        ;; 05:7fe5 ????????
    db   $ff, $ff, $ff, $f7, $dc, $ff, $86, $fd        ;; 05:7fed ????????
    db   $e7, $ff, $0d, $3f, $d2, $ff, $fe, $ff        ;; 05:7ff5 ????????
    db   $fc, $ff, $80                                 ;; 05:7ffd ???
