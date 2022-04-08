;; Disassembled with BadBoy Disassembler: https://github.com/daid/BadBoy


; This seems to contain map data
; Basic format is 2 pointers pointing to a "object table" and runlength encoded "tilemap" data
mapRoomPointers_00:
    db   $00, $03, $10, $10                            ;; 05:4000 ....
    DEF  RLE_SIZE = 3                                  ;; 05:4004
    ;;Room data pointers
    dw   map00_room00_00_script, map00_room00_00_tiles ;; 05:4004 $04 $44 $0a $44
    dw   map00_room01_00_script, map00_room01_00_tiles ;; 05:4008 $3c $44 $3f $44
    dw   map00_room02_00_script, map00_room02_00_tiles ;; 05:400c $6d $44 $70 $44
    dw   map00_room03_00_script, map00_room03_00_tiles ;; 05:4010 $a2 $44 $a5 $44
    dw   map00_room04_00_script, map00_room04_00_tiles ;; 05:4014 $d1 $44 $d4 $44
    dw   map00_room05_00_script, map00_room05_00_tiles ;; 05:4018 $04 $45 $07 $45
    dw   map00_room06_00_script, map00_room06_00_tiles ;; 05:401c $33 $45 $39 $45
    dw   map00_room07_00_script, map00_room07_00_tiles ;; 05:4020 $67 $45 $6d $45
    dw   map00_room08_00_script, map00_room08_00_tiles ;; 05:4024 $97 $45 $9a $45
    dw   map00_room09_00_script, map00_room09_00_tiles ;; 05:4028 $d0 $45 $d6 $45
    dw   map00_room0a_00_script, map00_room0a_00_tiles ;; 05:402c $04 $46 $07 $46
    dw   map00_room0b_00_script, map00_room0b_00_tiles ;; 05:4030 $33 $46 $36 $46
    dw   map00_room0c_00_script, map00_room0c_00_tiles ;; 05:4034 $62 $46 $65 $46
    dw   map00_room0d_00_script, map00_room0d_00_tiles ;; 05:4038 $95 $46 $98 $46
    dw   map00_room0e_00_script, map00_room0e_00_tiles ;; 05:403c $ca $46 $cd $46
    dw   map00_room0f_00_script, map00_room0f_00_tiles ;; 05:4040 $07 $47 $0d $47
    dw   map00_room00_01_script, map00_room00_01_tiles ;; 05:4044 $51 $47 $54 $47
    dw   map00_room01_01_script, map00_room01_01_tiles ;; 05:4048 $8e $47 $91 $47
    dw   map00_room02_01_script, map00_room02_01_tiles ;; 05:404c $cb $47 $ce $47
    dw   map00_room03_01_script, map00_room03_01_tiles ;; 05:4050 $0e $48 $11 $48
    dw   map00_room04_01_script, map00_room04_01_tiles ;; 05:4054 $49 $48 $4c $48
    dw   map00_room05_01_script, map00_room05_01_tiles ;; 05:4058 $82 $48 $88 $48
    dw   map00_room06_01_script, map00_room06_01_tiles ;; 05:405c $c6 $48 $c9 $48
    dw   map00_room07_01_script, map00_room07_01_tiles ;; 05:4060 $03 $49 $06 $49
    dw   map00_room08_01_script, map00_room08_01_tiles ;; 05:4064 $2c $49 $2f $49
    dw   map00_room09_01_script, map00_room09_01_tiles ;; 05:4068 $61 $49 $64 $49
    dw   map00_room0a_01_script, map00_room0a_01_tiles ;; 05:406c $96 $49 $9c $49
    dw   map00_room0b_01_script, map00_room0b_01_tiles ;; 05:4070 $da $49 $dd $49
    dw   map00_room0c_01_script, map00_room0c_01_tiles ;; 05:4074 $13 $4a $16 $4a
    dw   map00_room0d_01_script, map00_room0d_01_tiles ;; 05:4078 $52 $4a $58 $4a
    dw   map00_room0e_01_script, map00_room0e_01_tiles ;; 05:407c $8a $4a $8d $4a
    dw   map00_room0f_01_script, map00_room0f_01_tiles ;; 05:4080 $b9 $4a $bc $4a
    dw   map00_room00_02_script, map00_room00_02_tiles ;; 05:4084 $ea $4a $ed $4a
    dw   map00_room01_02_script, map00_room01_02_tiles ;; 05:4088 $23 $4b $29 $4b
    dw   map00_room02_02_script, map00_room02_02_tiles ;; 05:408c $5d $4b $60 $4b
    dw   map00_room03_02_script, map00_room03_02_tiles ;; 05:4090 $8c $4b $8f $4b
    dw   map00_room04_02_script, map00_room04_02_tiles ;; 05:4094 $cb $4b $ce $4b
    dw   map00_room05_02_script, map00_room05_02_tiles ;; 05:4098 $04 $4c $07 $4c
    dw   map00_room06_02_script, map00_room06_02_tiles ;; 05:409c $41 $4c $47 $4c
    dw   map00_room07_02_script, map00_room07_02_tiles ;; 05:40a0 $8b $4c $8e $4c
    dw   map00_room08_02_script, map00_room08_02_tiles ;; 05:40a4 $c2 $4c $c5 $4c
    dw   map00_room09_02_script, map00_room09_02_tiles ;; 05:40a8 $ed $4c $f3 $4c
    dw   map00_room0a_02_script, map00_room0a_02_tiles ;; 05:40ac $2d $4d $30 $4d
    dw   map00_room0b_02_script, map00_room0b_02_tiles ;; 05:40b0 $70 $4d $73 $4d
    dw   map00_room0c_02_script, map00_room0c_02_tiles ;; 05:40b4 $a9 $4d $ac $4d
    dw   map00_room0d_02_script, map00_room0d_02_tiles ;; 05:40b8 $e0 $4d $e3 $4d
    dw   map00_room0e_02_script, map00_room0e_02_tiles ;; 05:40bc $25 $4e $28 $4e
    dw   map00_room0f_02_script, map00_room0f_02_tiles ;; 05:40c0 $50 $4e $56 $4e
    dw   map00_room00_03_script, map00_room00_03_tiles ;; 05:40c4 $82 $4e $85 $4e
    dw   map00_room01_03_script, map00_room01_03_tiles ;; 05:40c8 $c1 $4e $c4 $4e
    dw   map00_room02_03_script, map00_room02_03_tiles ;; 05:40cc $fc $4e $02 $4f
    dw   map00_room03_03_script, map00_room03_03_tiles ;; 05:40d0 $44 $4f $4a $4f
    dw   map00_room04_03_script, map00_room04_03_tiles ;; 05:40d4 $8c $4f $92 $4f
    dw   map00_room05_03_script, map00_room05_03_tiles ;; 05:40d8 $c8 $4f $cb $4f
    dw   map00_room06_03_script, map00_room06_03_tiles ;; 05:40dc $05 $50 $08 $50
    dw   map00_room07_03_script, map00_room07_03_tiles ;; 05:40e0 $40 $50 $46 $50
    dw   map00_room08_03_script, map00_room08_03_tiles ;; 05:40e4 $6e $50 $71 $50
    dw   map00_room09_03_script, map00_room09_03_tiles ;; 05:40e8 $99 $50 $9c $50
    dw   map00_room0a_03_script, map00_room0a_03_tiles ;; 05:40ec $cc $50 $cf $50
    dw   map00_room0b_03_script, map00_room0b_03_tiles ;; 05:40f0 $11 $51 $14 $51
    dw   map00_room0c_03_script, map00_room0c_03_tiles ;; 05:40f4 $4a $51 $4d $51
    dw   map00_room0d_03_script, map00_room0d_03_tiles ;; 05:40f8 $7f $51 $85 $51
    dw   map00_room0e_03_script, map00_room0e_03_tiles ;; 05:40fc $c1 $51 $c4 $51
    dw   map00_room0f_03_script, map00_room0f_03_tiles ;; 05:4100 $f4 $51 $f7 $51
    dw   map00_room00_04_script, map00_room00_04_tiles ;; 05:4104 $23 $52 $26 $52
    dw   map00_room01_04_script, map00_room01_04_tiles ;; 05:4108 $64 $52 $67 $52
    dw   map00_room02_04_script, map00_room02_04_tiles ;; 05:410c $9f $52 $a2 $52
    dw   map00_room03_04_script, map00_room03_04_tiles ;; 05:4110 $e2 $52 $e5 $52
    dw   map00_room04_04_script, map00_room04_04_tiles ;; 05:4114 $27 $53 $2a $53
    dw   map00_room05_04_script, map00_room05_04_tiles ;; 05:4118 $66 $53 $69 $53
    dw   map00_room06_04_script, map00_room06_04_tiles ;; 05:411c $a3 $53 $a9 $53
    dw   map00_room07_04_script, map00_room07_04_tiles ;; 05:4120 $e3 $53 $e6 $53
    dw   map00_room08_04_script, map00_room08_04_tiles ;; 05:4124 $2a $54 $2d $54
    dw   map00_room09_04_script, map00_room09_04_tiles ;; 05:4128 $65 $54 $68 $54
    dw   map00_room0a_04_script, map00_room0a_04_tiles ;; 05:412c $a4 $54 $a7 $54
    dw   map00_room0b_04_script, map00_room0b_04_tiles ;; 05:4130 $ef $54 $f2 $54
    dw   map00_room0c_04_script, map00_room0c_04_tiles ;; 05:4134 $26 $55 $29 $55
    dw   map00_room0d_04_script, map00_room0d_04_tiles ;; 05:4138 $5f $55 $62 $55
    dw   map00_room0e_04_script, map00_room0e_04_tiles ;; 05:413c $92 $55 $95 $55
    dw   map00_room0f_04_script, map00_room0f_04_tiles ;; 05:4140 $d9 $55 $dc $55
    dw   map00_room00_05_script, map00_room00_05_tiles ;; 05:4144 $14 $56 $17 $56
    dw   map00_room01_05_script, map00_room01_05_tiles ;; 05:4148 $57 $56 $5a $56
    dw   map00_room02_05_script, map00_room02_05_tiles ;; 05:414c $90 $56 $93 $56
    dw   map00_room03_05_script, map00_room03_05_tiles ;; 05:4150 $c1 $56 $c4 $56
    dw   map00_room04_05_script, map00_room04_05_tiles ;; 05:4154 $f6 $56 $f9 $56
    dw   map00_room05_05_script, map00_room05_05_tiles ;; 05:4158 $39 $57 $3f $57
    dw   map00_room06_05_script, map00_room06_05_tiles ;; 05:415c $73 $57 $76 $57
    dw   map00_room07_05_script, map00_room07_05_tiles ;; 05:4160 $ac $57 $af $57
    dw   map00_room08_05_script, map00_room08_05_tiles ;; 05:4164 $e5 $57 $e8 $57
    dw   map00_room09_05_script, map00_room09_05_tiles ;; 05:4168 $20 $58 $26 $58
    dw   map00_room0a_05_script, map00_room0a_05_tiles ;; 05:416c $5a $58 $60 $58
    dw   map00_room0b_05_script, map00_room0b_05_tiles ;; 05:4170 $a2 $58 $a5 $58
    dw   map00_room0c_05_script, map00_room0c_05_tiles ;; 05:4174 $df $58 $e8 $58
    dw   map00_room0d_05_script, map00_room0d_05_tiles ;; 05:4178 $2a $59 $2d $59
    dw   map00_room0e_05_script, map00_room0e_05_tiles ;; 05:417c $65 $59 $68 $59
    dw   map00_room0f_05_script, map00_room0f_05_tiles ;; 05:4180 $9e $59 $a1 $59
    dw   map00_room00_06_script, map00_room00_06_tiles ;; 05:4184 $db $59 $de $59
    dw   map00_room01_06_script, map00_room01_06_tiles ;; 05:4188 $18 $5a $1b $5a
    dw   map00_room02_06_script, map00_room02_06_tiles ;; 05:418c $51 $5a $54 $5a
    dw   map00_room03_06_script, map00_room03_06_tiles ;; 05:4190 $8a $5a $8d $5a
    dw   map00_room04_06_script, map00_room04_06_tiles ;; 05:4194 $c3 $5a $c6 $5a
    dw   map00_room05_06_script, map00_room05_06_tiles ;; 05:4198 $0a $5b $0d $5b
    dw   map00_room06_06_script, map00_room06_06_tiles ;; 05:419c $3d $5b $40 $5b
    dw   map00_room07_06_script, map00_room07_06_tiles ;; 05:41a0 $72 $5b $75 $5b
    dw   map00_room08_06_script, map00_room08_06_tiles ;; 05:41a4 $a9 $5b $ac $5b
    dw   map00_room09_06_script, map00_room09_06_tiles ;; 05:41a8 $d6 $5b $dc $5b
    dw   map00_room0a_06_script, map00_room0a_06_tiles ;; 05:41ac $10 $5c $13 $5c
    dw   map00_room0b_06_script, map00_room0b_06_tiles ;; 05:41b0 $41 $5c $44 $5c
    dw   map00_room0c_06_script, map00_room0c_06_tiles ;; 05:41b4 $7a $5c $7d $5c
    dw   map00_room0d_06_script, map00_room0d_06_tiles ;; 05:41b8 $b5 $5c $bb $5c
    dw   map00_room0e_06_script, map00_room0e_06_tiles ;; 05:41bc $03 $5d $06 $5d
    dw   map00_room0f_06_script, map00_room0f_06_tiles ;; 05:41c0 $4e $5d $51 $5d
    dw   map00_room00_07_script, map00_room00_07_tiles ;; 05:41c4 $85 $5d $88 $5d
    dw   map00_room01_07_script, map00_room01_07_tiles ;; 05:41c8 $ba $5d $bd $5d
    dw   map00_room02_07_script, map00_room02_07_tiles ;; 05:41cc $f5 $5d $f8 $5d
    dw   map00_room03_07_script, map00_room03_07_tiles ;; 05:41d0 $38 $5e $3b $5e
    dw   map00_room04_07_script, map00_room04_07_tiles ;; 05:41d4 $77 $5e $7a $5e
    dw   map00_room05_07_script, map00_room05_07_tiles ;; 05:41d8 $ac $5e $af $5e
    dw   map00_room06_07_script, map00_room06_07_tiles ;; 05:41dc $db $5e $de $5e
    dw   map00_room07_07_script, map00_room07_07_tiles ;; 05:41e0 $10 $5f $13 $5f
    dw   map00_room08_07_script, map00_room08_07_tiles ;; 05:41e4 $49 $5f $4f $5f
    dw   map00_room09_07_script, map00_room09_07_tiles ;; 05:41e8 $81 $5f $84 $5f
    dw   map00_room0a_07_script, map00_room0a_07_tiles ;; 05:41ec $b0 $5f $b3 $5f
    dw   map00_room0b_07_script, map00_room0b_07_tiles ;; 05:41f0 $e3 $5f $e6 $5f
    dw   map00_room0c_07_script, map00_room0c_07_tiles ;; 05:41f4 $10 $60 $16 $60
    dw   map00_room0d_07_script, map00_room0d_07_tiles ;; 05:41f8 $42 $60 $45 $60
    dw   map00_room0e_07_script, map00_room0e_07_tiles ;; 05:41fc $79 $60 $7c $60
    dw   map00_room0f_07_script, map00_room0f_07_tiles ;; 05:4200 $b8 $60 $bb $60
    dw   map00_room00_08_script, map00_room00_08_tiles ;; 05:4204 $ed $60 $f3 $60
    dw   map00_room01_08_script, map00_room01_08_tiles ;; 05:4208 $25 $61 $2e $61
    dw   map00_room02_08_script, map00_room02_08_tiles ;; 05:420c $72 $61 $75 $61
    dw   map00_room03_08_script, map00_room03_08_tiles ;; 05:4210 $af $61 $b2 $61
    dw   map00_room04_08_script, map00_room04_08_tiles ;; 05:4214 $ec $61 $ef $61
    dw   map00_room05_08_script, map00_room05_08_tiles ;; 05:4218 $29 $62 $2c $62
    dw   map00_room06_08_script, map00_room06_08_tiles ;; 05:421c $68 $62 $6b $62
    dw   map00_room07_08_script, map00_room07_08_tiles ;; 05:4220 $95 $62 $98 $62
    dw   map00_room08_08_script, map00_room08_08_tiles ;; 05:4224 $c2 $62 $c5 $62
    dw   map00_room09_08_script, map00_room09_08_tiles ;; 05:4228 $ef $62 $f2 $62
    dw   map00_room0a_08_script, map00_room0a_08_tiles ;; 05:422c $1c $63 $1f $63
    dw   map00_room0b_08_script, map00_room0b_08_tiles ;; 05:4230 $4d $63 $50 $63
    dw   map00_room0c_08_script, map00_room0c_08_tiles ;; 05:4234 $7c $63 $7f $63
    dw   map00_room0d_08_script, map00_room0d_08_tiles ;; 05:4238 $b7 $63 $ba $63
    dw   map00_room0e_08_script, map00_room0e_08_tiles ;; 05:423c $f0 $63 $f6 $63
    dw   map00_room0f_08_script, map00_room0f_08_tiles ;; 05:4240 $30 $64 $33 $64
    dw   map00_room00_09_script, map00_room00_09_tiles ;; 05:4244 $63 $64 $66 $64
    dw   map00_room01_09_script, map00_room01_09_tiles ;; 05:4248 $92 $64 $95 $64
    dw   map00_room02_09_script, map00_room02_09_tiles ;; 05:424c $d1 $64 $d4 $64
    dw   map00_room03_09_script, map00_room03_09_tiles ;; 05:4250 $08 $65 $0b $65
    dw   map00_room04_09_script, map00_room04_09_tiles ;; 05:4254 $4d $65 $53 $65
    dw   map00_room05_09_script, map00_room05_09_tiles ;; 05:4258 $89 $65 $8c $65
    dw   map00_room06_09_script, map00_room06_09_tiles ;; 05:425c $bc $65 $c2 $65
    dw   map00_room07_09_script, map00_room07_09_tiles ;; 05:4260 $fc $65 $ff $65
    dw   map00_room08_09_script, map00_room08_09_tiles ;; 05:4264 $33 $66 $36 $66
    dw   map00_room09_09_script, map00_room09_09_tiles ;; 05:4268 $68 $66 $6b $66
    dw   map00_room0a_09_script, map00_room0a_09_tiles ;; 05:426c $99 $66 $9f $66
    dw   map00_room0b_09_script, map00_room0b_09_tiles ;; 05:4270 $d9 $66 $dc $66
    dw   map00_room0c_09_script, map00_room0c_09_tiles ;; 05:4274 $0c $67 $0f $67
    dw   map00_room0d_09_script, map00_room0d_09_tiles ;; 05:4278 $43 $67 $46 $67
    dw   map00_room0e_09_script, map00_room0e_09_tiles ;; 05:427c $6c $67 $6f $67
    dw   map00_room0f_09_script, map00_room0f_09_tiles ;; 05:4280 $9d $67 $a0 $67
    dw   map00_room00_0a_script, map00_room00_0a_tiles ;; 05:4284 $dc $67 $e2 $67
    dw   map00_room01_0a_script, map00_room01_0a_tiles ;; 05:4288 $16 $68 $19 $68
    dw   map00_room02_0a_script, map00_room02_0a_tiles ;; 05:428c $51 $68 $54 $68
    dw   map00_room03_0a_script, map00_room03_0a_tiles ;; 05:4290 $84 $68 $87 $68
    dw   map00_room04_0a_script, map00_room04_0a_tiles ;; 05:4294 $b7 $68 $ba $68
    dw   map00_room05_0a_script, map00_room05_0a_tiles ;; 05:4298 $ec $68 $ef $68
    dw   map00_room06_0a_script, map00_room06_0a_tiles ;; 05:429c $1d $69 $20 $69
    dw   map00_room07_0a_script, map00_room07_0a_tiles ;; 05:42a0 $52 $69 $55 $69
    dw   map00_room08_0a_script, map00_room08_0a_tiles ;; 05:42a4 $89 $69 $8c $69
    dw   map00_room09_0a_script, map00_room09_0a_tiles ;; 05:42a8 $c6 $69 $c9 $69
    dw   map00_room0a_0a_script, map00_room0a_0a_tiles ;; 05:42ac $ff $69 $05 $6a
    dw   map00_room0b_0a_script, map00_room0b_0a_tiles ;; 05:42b0 $37 $6a $3a $6a
    dw   map00_room0c_0a_script, map00_room0c_0a_tiles ;; 05:42b4 $78 $6a $7b $6a
    dw   map00_room0d_0a_script, map00_room0d_0a_tiles ;; 05:42b8 $ad $6a $b0 $6a
    dw   map00_room0e_0a_script, map00_room0e_0a_tiles ;; 05:42bc $ea $6a $ed $6a
    dw   map00_room0f_0a_script, map00_room0f_0a_tiles ;; 05:42c0 $21 $6b $24 $6b
    dw   map00_room00_0b_script, map00_room00_0b_tiles ;; 05:42c4 $5a $6b $5d $6b
    dw   map00_room01_0b_script, map00_room01_0b_tiles ;; 05:42c8 $8f $6b $92 $6b
    dw   map00_room02_0b_script, map00_room02_0b_tiles ;; 05:42cc $c6 $6b $c9 $6b
    dw   map00_room03_0b_script, map00_room03_0b_tiles ;; 05:42d0 $f7 $6b $fa $6b
    dw   map00_room04_0b_script, map00_room04_0b_tiles ;; 05:42d4 $2c $6c $2f $6c
    dw   map00_room05_0b_script, map00_room05_0b_tiles ;; 05:42d8 $6b $6c $71 $6c
    dw   map00_room06_0b_script, map00_room06_0b_tiles ;; 05:42dc $a5 $6c $a8 $6c
    dw   map00_room07_0b_script, map00_room07_0b_tiles ;; 05:42e0 $de $6c $e1 $6c
    dw   map00_room08_0b_script, map00_room08_0b_tiles ;; 05:42e4 $13 $6d $19 $6d
    dw   map00_room09_0b_script, map00_room09_0b_tiles ;; 05:42e8 $57 $6d $5d $6d
    dw   map00_room0a_0b_script, map00_room0a_0b_tiles ;; 05:42ec $93 $6d $96 $6d
    dw   map00_room0b_0b_script, map00_room0b_0b_tiles ;; 05:42f0 $d0 $6d $d3 $6d
    dw   map00_room0c_0b_script, map00_room0c_0b_tiles ;; 05:42f4 $ff $6d $02 $6e
    dw   map00_room0d_0b_script, map00_room0d_0b_tiles ;; 05:42f8 $38 $6e $3e $6e
    dw   map00_room0e_0b_script, map00_room0e_0b_tiles ;; 05:42fc $72 $6e $75 $6e
    dw   map00_room0f_0b_script, map00_room0f_0b_tiles ;; 05:4300 $af $6e $b2 $6e
    dw   map00_room00_0c_script, map00_room00_0c_tiles ;; 05:4304 $ea $6e $ed $6e
    dw   map00_room01_0c_script, map00_room01_0c_tiles ;; 05:4308 $23 $6f $26 $6f
    dw   map00_room02_0c_script, map00_room02_0c_tiles ;; 05:430c $5a $6f $69 $6f
    dw   map00_room03_0c_script, map00_room03_0c_tiles ;; 05:4310 $a1 $6f $a4 $6f
    dw   map00_room04_0c_script, map00_room04_0c_tiles ;; 05:4314 $d6 $6f $d9 $6f
    dw   map00_room05_0c_script, map00_room05_0c_tiles ;; 05:4318 $11 $70 $14 $70
    dw   map00_room06_0c_script, map00_room06_0c_tiles ;; 05:431c $48 $70 $4b $70
    dw   map00_room07_0c_script, map00_room07_0c_tiles ;; 05:4320 $81 $70 $87 $70
    dw   map00_room08_0c_script, map00_room08_0c_tiles ;; 05:4324 $bf $70 $c2 $70
    dw   map00_room09_0c_script, map00_room09_0c_tiles ;; 05:4328 $fa $70 $fd $70
    dw   map00_room0a_0c_script, map00_room0a_0c_tiles ;; 05:432c $29 $71 $2c $71
    dw   map00_room0b_0c_script, map00_room0b_0c_tiles ;; 05:4330 $60 $71 $63 $71
    dw   map00_room0c_0c_script, map00_room0c_0c_tiles ;; 05:4334 $8b $71 $8e $71
    dw   map00_room0d_0c_script, map00_room0d_0c_tiles ;; 05:4338 $c6 $71 $cf $71
    dw   map00_room0e_0c_script, map00_room0e_0c_tiles ;; 05:433c $0b $72 $0e $72
    dw   map00_room0f_0c_script, map00_room0f_0c_tiles ;; 05:4340 $4e $72 $51 $72
    dw   map00_room00_0d_script, map00_room00_0d_tiles ;; 05:4344 $85 $72 $88 $72
    dw   map00_room01_0d_script, map00_room01_0d_tiles ;; 05:4348 $b6 $72 $b9 $72
    dw   map00_room02_0d_script, map00_room02_0d_tiles ;; 05:434c $e3 $72 $e6 $72
    dw   map00_room03_0d_script, map00_room03_0d_tiles ;; 05:4350 $14 $73 $17 $73
    dw   map00_room04_0d_script, map00_room04_0d_tiles ;; 05:4354 $4f $73 $55 $73
    dw   map00_room05_0d_script, map00_room05_0d_tiles ;; 05:4358 $8f $73 $92 $73
    dw   map00_room06_0d_script, map00_room06_0d_tiles ;; 05:435c $ca $73 $d0 $73
    dw   map00_room07_0d_script, map00_room07_0d_tiles ;; 05:4360 $f8 $73 $fb $73
    dw   map00_room08_0d_script, map00_room08_0d_tiles ;; 05:4364 $37 $74 $3d $74
    dw   map00_room09_0d_script, map00_room09_0d_tiles ;; 05:4368 $7b $74 $7e $74
    dw   map00_room0a_0d_script, map00_room0a_0d_tiles ;; 05:436c $b2 $74 $b5 $74
    dw   map00_room0b_0d_script, map00_room0b_0d_tiles ;; 05:4370 $ed $74 $f0 $74
    dw   map00_room0c_0d_script, map00_room0c_0d_tiles ;; 05:4374 $26 $75 $29 $75
    dw   map00_room0d_0d_script, map00_room0d_0d_tiles ;; 05:4378 $5b $75 $5e $75
    dw   map00_room0e_0d_script, map00_room0e_0d_tiles ;; 05:437c $8c $75 $8f $75
    dw   map00_room0f_0d_script, map00_room0f_0d_tiles ;; 05:4380 $d9 $75 $dc $75
    dw   map00_room00_0e_script, map00_room00_0e_tiles ;; 05:4384 $12 $76 $1b $76
    dw   map00_room01_0e_script, map00_room01_0e_tiles ;; 05:4388 $57 $76 $5a $76
    dw   map00_room02_0e_script, map00_room02_0e_tiles ;; 05:438c $90 $76 $93 $76
    dw   map00_room03_0e_script, map00_room03_0e_tiles ;; 05:4390 $c3 $76 $c9 $76
    dw   map00_room04_0e_script, map00_room04_0e_tiles ;; 05:4394 $fb $76 $fe $76
    dw   map00_room05_0e_script, map00_room05_0e_tiles ;; 05:4398 $36 $77 $39 $77
    dw   map00_room06_0e_script, map00_room06_0e_tiles ;; 05:439c $69 $77 $6c $77
    dw   map00_room07_0e_script, map00_room07_0e_tiles ;; 05:43a0 $98 $77 $9b $77
    dw   map00_room08_0e_script, map00_room08_0e_tiles ;; 05:43a4 $cf $77 $d2 $77
    dw   map00_room09_0e_script, map00_room09_0e_tiles ;; 05:43a8 $04 $78 $0a $78
    dw   map00_room0a_0e_script, map00_room0a_0e_tiles ;; 05:43ac $42 $78 $45 $78
    dw   map00_room0b_0e_script, map00_room0b_0e_tiles ;; 05:43b0 $7d $78 $80 $78
    dw   map00_room0c_0e_script, map00_room0c_0e_tiles ;; 05:43b4 $b6 $78 $b9 $78
    dw   map00_room0d_0e_script, map00_room0d_0e_tiles ;; 05:43b8 $ed $78 $f3 $78
    dw   map00_room0e_0e_script, map00_room0e_0e_tiles ;; 05:43bc $2b $79 $2e $79
    dw   map00_room0f_0e_script, map00_room0f_0e_tiles ;; 05:43c0 $78 $79 $7b $79
    dw   map00_room00_0f_script, map00_room00_0f_tiles ;; 05:43c4 $b7 $79 $ba $79
    dw   map00_room01_0f_script, map00_room01_0f_tiles ;; 05:43c8 $e8 $79 $eb $79
    dw   map00_room02_0f_script, map00_room02_0f_tiles ;; 05:43cc $19 $7a $1c $7a
    dw   map00_room03_0f_script, map00_room03_0f_tiles ;; 05:43d0 $3c $7a $3f $7a
    dw   map00_room04_0f_script, map00_room04_0f_tiles ;; 05:43d4 $67 $7a $6a $7a
    dw   map00_room05_0f_script, map00_room05_0f_tiles ;; 05:43d8 $8c $7a $8f $7a
    dw   map00_room06_0f_script, map00_room06_0f_tiles ;; 05:43dc $b5 $7a $b8 $7a
    dw   map00_room07_0f_script, map00_room07_0f_tiles ;; 05:43e0 $e4 $7a $e7 $7a
    dw   map00_room08_0f_script, map00_room08_0f_tiles ;; 05:43e4 $17 $7b $1a $7b
    dw   map00_room09_0f_script, map00_room09_0f_tiles ;; 05:43e8 $4e $7b $51 $7b
    dw   map00_room0a_0f_script, map00_room0a_0f_tiles ;; 05:43ec $89 $7b $8f $7b
    dw   map00_room0b_0f_script, map00_room0b_0f_tiles ;; 05:43f0 $c3 $7b $c6 $7b
    dw   map00_room0c_0f_script, map00_room0c_0f_tiles ;; 05:43f4 $f2 $7b $f5 $7b
    dw   map00_room0d_0f_script, map00_room0d_0f_tiles ;; 05:43f8 $23 $7c $29 $7c
    dw   map00_room0e_0f_script, map00_room0e_0f_tiles ;; 05:43fc $61 $7c $64 $7c
    dw   map00_room0f_0f_script, map00_room0f_0f_tiles ;; 05:4400 $9e $7c $a1 $7c

map00_room00_00_script:
    SCRIPT_IDX script_0076                             ;; 05:4404 $76 $00
    SCRIPT_AT_POS 3, 3, script_0380                    ;; 05:4406 $33 $80 $03
    db   $ff                                           ;; 05:4409 $ff

map00_room00_00_tiles:
    RLE  $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ;; 05:440a ????
    RLE  $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ;; 05:440e ????
    RLE  $00, $00, $5d, $5d, $5d, $20, $11, $11, $11, $11 ;; 05:4412 ??????
    RLE  $00, $00, $5e, $2e, $5e, $69, $3b, $00, $00, $00 ;; 05:4418 ????????
    RLE  $40, $00, $00, $00, $00, $00, $00, $3b, $00, $00 ;; 05:4420 ??????
    RLE  $53, $00, $3b, $00, $00, $00, $3b, $00, $00, $00 ;; 05:4426 ??????
    RLE  $40, $00, $00, $00, $30, $31, $40, $00, $00, $30 ;; 05:442c ????????
    RLE  $41, $40, $30, $41, $41, $41, $41, $40, $00, $41 ;; 05:4434 ????????

map00_room01_00_script:
    SCRIPT_IDX script_007c                             ;; 05:443c $7c $00
    db   $ff                                           ;; 05:443e $ff

map00_room01_00_tiles:
    RLE  $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ;; 05:443f ????
    RLE  $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ;; 05:4443 ????
    RLE  $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ;; 05:4447 ????
    RLE  $00, $00, $00, $00, $3b, $00, $00, $20, $11, $11 ;; 05:444b ????????
    RLE  $00, $00, $00, $3b, $00, $00, $00, $00, $00, $00 ;; 05:4453 ????
    RLE  $00, $00, $3b, $00, $00, $00, $3b, $00, $00, $00 ;; 05:4457 ??????
    RLE  $40, $30, $40, $00, $00, $3b, $00, $00, $00, $34 ;; 05:445d ????????
    RLE  $41, $41, $41, $40, $30, $40, $00, $00, $34, $42 ;; 05:4465 ????????

map00_room02_00_script:
    SCRIPT_IDX script_0064                             ;; 05:446d $64 $00
    db   $ff                                           ;; 05:446f $ff

map00_room02_00_tiles:
    RLE  $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ;; 05:4470 ????
    RLE  $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ;; 05:4474 ????
    RLE  $11, $11, $11, $11, $11, $11, $00, $00, $00, $00 ;; 05:4478 ????
    RLE  $11, $11, $11, $11, $11, $11, $23, $23, $00, $00 ;; 05:447c ??????
    RLE  $00, $00, $00, $00, $11, $11, $42, $42, $23, $23 ;; 05:4482 ????????
    RLE  $00, $00, $2b, $23, $11, $11, $42, $42, $42, $42 ;; 05:448a ????????
    RLE  $23, $23, $2b, $42, $11, $11, $42, $42, $42, $42 ;; 05:4492 ????????
    RLE  $42, $42, $2b, $42, $11, $11, $42, $42, $42, $42 ;; 05:449a ????????

map00_room03_00_script:
    SCRIPT_IDX script_0064                             ;; 05:44a2 $64 $00
    db   $ff                                           ;; 05:44a4 $ff

map00_room03_00_tiles:
    RLE  $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ;; 05:44a5 ????
    RLE  $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ;; 05:44a9 ????
    RLE  $00, $00, $00, $00, $00, $20, $11, $11, $11, $11 ;; 05:44ad ??????
    RLE  $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ;; 05:44b3 ????
    RLE  $23, $00, $00, $00, $00, $00, $00, $00, $00, $00 ;; 05:44b7 ????
    RLE  $42, $00, $00, $00, $00, $00, $00, $30, $40, $00 ;; 05:44bb ??????
    RLE  $42, $30, $40, $00, $00, $00, $30, $41, $41, $40 ;; 05:44c1 ????????
    RLE  $30, $41, $41, $40, $00, $30, $41, $41, $41, $41 ;; 05:44c9 ????????

map00_room04_00_script:
    SCRIPT_IDX script_0064                             ;; 05:44d1 $64 $00
    db   $ff                                           ;; 05:44d3 $ff

map00_room04_00_tiles:
    RLE  $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ;; 05:44d4 ????
    RLE  $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ;; 05:44d8 ????
    RLE  $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ;; 05:44dc ????
    RLE  $00, $00, $00, $00, $00, $20, $11, $11, $11, $11 ;; 05:44e0 ??????
    RLE  $00, $00, $48, $00, $00, $00, $00, $00, $00, $00 ;; 05:44e6 ??????
    RLE  $00, $00, $00, $00, $48, $00, $00, $00, $00, $00 ;; 05:44ec ??????
    RLE  $30, $40, $00, $00, $00, $00, $30, $40, $00, $00 ;; 05:44f2 ????????
    RLE  $41, $41, $40, $00, $00, $30, $41, $41, $40, $30 ;; 05:44fa ??????????

map00_room05_00_script:
    SCRIPT_IDX script_0064                             ;; 05:4504 $64 $00
    db   $ff                                           ;; 05:4506 $ff

map00_room05_00_tiles:
    RLE  $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ;; 05:4507 ????
    RLE  $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ;; 05:450b ????
    RLE  $11, $11, $11, $11, $11, $22, $00, $00, $00, $30 ;; 05:450f ??????
    RLE  $11, $11, $22, $00, $00, $00, $00, $00, $00, $41 ;; 05:4515 ??????
    RLE  $00, $00, $00, $00, $00, $48, $00, $00, $00, $41 ;; 05:451b ??????
    RLE  $00, $00, $48, $48, $00, $00, $00, $30, $40, $41 ;; 05:4521 ????????
    RLE  $00, $00, $00, $00, $00, $00, $00, $41, $41, $41 ;; 05:4529 ????
    RLE  $31, $40, $00, $00, $00, $30, $40, $41, $41, $41 ;; 05:452d ??????

map00_room06_00_script:
    SCRIPT_IDX script_003d                             ;; 05:4533 $3d $00
    SCRIPT_AT_POS 3, 7, script_0474                    ;; 05:4535 $37 $74 $04
    db   $ff                                           ;; 05:4538 $ff

map00_room06_00_tiles:
    RLE  $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ;; 05:4539 ????
    RLE  $21, $21, $21, $21, $21, $21, $11, $11, $11, $11 ;; 05:453d ????
    RLE  $40, $05, $05, $05, $05, $05, $20, $11, $11, $11 ;; 05:4541 ??????
    RLE  $41, $40, $05, $46, $05, $05, $05, $7b, $21, $21 ;; 05:4547 ????????
    RLE  $41, $41, $05, $05, $05, $05, $05, $05, $05, $05 ;; 05:454f ??????
    RLE  $41, $41, $05, $05, $05, $46, $05, $05, $05, $05 ;; 05:4555 ??????
    RLE  $41, $41, $30, $40, $05, $05, $05, $05, $05, $05 ;; 05:455b ??????
    RLE  $41, $41, $41, $41, $05, $05, $05, $05, $05, $46 ;; 05:4561 ??????

map00_room07_00_script:
    SCRIPT_IDX script_049a                             ;; 05:4567 $9a $04
    SCRIPT_AT_POS 5, 7, script_028b                    ;; 05:4569 $57 $8b $02
    db   $ff                                           ;; 05:456c $ff

map00_room07_00_tiles:
    RLE  $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ;; 05:456d ????
    RLE  $11, $11, $11, $11, $11, $11, $11, $21, $21, $21 ;; 05:4571 ????
    RLE  $11, $11, $11, $11, $11, $21, $22, $05, $05, $05 ;; 05:4575 ??????
    RLE  $21, $21, $21, $21, $22, $05, $05, $05, $05, $05 ;; 05:457b ??????
    RLE  $05, $05, $05, $05, $05, $05, $05, $05, $05, $05 ;; 05:4581 ????
    RLE  $05, $05, $46, $05, $05, $05, $05, $46, $05, $05 ;; 05:4585 ????????
    RLE  $05, $05, $05, $05, $05, $05, $05, $05, $05, $05 ;; 05:458d ????
    RLE  $46, $05, $05, $05, $05, $05, $05, $05, $05, $46 ;; 05:4591 ??????

map00_room08_00_script:
    SCRIPT_IDX script_006d                             ;; 05:4597 $6d $00
    db   $ff                                           ;; 05:4599 $ff

map00_room08_00_tiles:
    RLE  $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ;; 05:459a ????
    RLE  $21, $21, $21, $21, $21, $21, $21, $11, $11, $11 ;; 05:459e ????
    RLE  $05, $05, $05, $30, $40, $30, $40, $20, $11, $11 ;; 05:45a2 ????????
    RLE  $05, $05, $05, $50, $41, $41, $41, $40, $10, $11 ;; 05:45aa ??????
    RLE  $05, $05, $05, $05, $05, $50, $41, $41, $20, $11 ;; 05:45b0 ????????
    RLE  $05, $05, $46, $46, $05, $30, $41, $41, $40, $10 ;; 05:45b8 ??????????
    RLE  $05, $05, $05, $05, $05, $50, $51, $51, $41, $31 ;; 05:45c2 ????????
    RLE  $46, $05, $05, $05, $05, $05, $05, $46, $50, $41 ;; 05:45ca ??????

map00_room09_00_script:
    SCRIPT_IDX script_0070                             ;; 05:45d0 $70 $00
    SCRIPT_AT_POS 3, 6, script_0381                    ;; 05:45d2 $36 $81 $03
    db   $ff                                           ;; 05:45d5 $ff

map00_room09_00_tiles:
    RLE  $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ;; 05:45d6 ????
    RLE  $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ;; 05:45da ????
    RLE  $11, $11, $11, $11, $11, $5d, $5d, $5d, $11, $11 ;; 05:45de ??????
    RLE  $11, $11, $11, $25, $25, $5e, $2e, $5e, $35, $35 ;; 05:45e4 ????????
    RLE  $11, $11, $11, $25, $25, $25, $25, $25, $25, $25 ;; 05:45ec ????
    RLE  $11, $11, $11, $23, $25, $25, $25, $25, $25, $25 ;; 05:45f0 ????
    RLE  $31, $11, $11, $42, $23, $25, $25, $25, $25, $35 ;; 05:45f4 ????????
    RLE  $41, $11, $11, $42, $42, $23, $23, $23, $23, $23 ;; 05:45fc ????????

map00_room0a_00_script:
    SCRIPT_IDX script_0073                             ;; 05:4604 $73 $00
    db   $ff                                           ;; 05:4606 $ff

map00_room0a_00_tiles:
    RLE  $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ;; 05:4607 ????
    RLE  $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ;; 05:460b ????
    RLE  $11, $11, $11, $11, $22, $25, $25, $25, $25, $25 ;; 05:460f ??????
    RLE  $35, $35, $25, $25, $25, $25, $3e, $25, $25, $25 ;; 05:4615 ??????
    RLE  $25, $25, $25, $25, $3e, $25, $25, $25, $25, $25 ;; 05:461b ??????
    RLE  $25, $25, $25, $25, $25, $25, $25, $3d, $25, $25 ;; 05:4621 ??????
    RLE  $35, $35, $35, $25, $25, $25, $25, $25, $25, $35 ;; 05:4627 ????
    RLE  $23, $23, $35, $35, $25, $25, $25, $25, $35, $35 ;; 05:462b ????????

map00_room0b_00_script:
    SCRIPT_IDX script_0070                             ;; 05:4633 $70 $00
    db   $ff                                           ;; 05:4635 $ff

map00_room0b_00_tiles:
    RLE  $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ;; 05:4636 ????
    RLE  $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ;; 05:463a ????
    RLE  $25, $25, $25, $25, $25, $25, $25, $3d, $25, $25 ;; 05:463e ??????
    RLE  $25, $25, $25, $3e, $25, $25, $25, $25, $25, $25 ;; 05:4644 ????
    RLE  $25, $25, $3e, $25, $25, $25, $25, $25, $25, $25 ;; 05:4648 ??????
    RLE  $25, $25, $25, $25, $25, $3d, $25, $25, $25, $25 ;; 05:464e ??????
    RLE  $35, $25, $25, $25, $25, $25, $25, $25, $30, $31 ;; 05:4654 ??????
    RLE  $35, $35, $35, $35, $25, $25, $30, $31, $41, $41 ;; 05:465a ????????

map00_room0c_00_script:
    SCRIPT_IDX script_0073                             ;; 05:4662 $73 $00
    db   $ff                                           ;; 05:4664 $ff

map00_room0c_00_tiles:
    RLE  $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ;; 05:4665 ????
    RLE  $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ;; 05:4669 ????
    RLE  $25, $25, $25, $20, $11, $11, $11, $11, $11, $11 ;; 05:466d ????
    RLE  $25, $25, $25, $25, $20, $11, $11, $11, $11, $11 ;; 05:4671 ??????
    RLE  $25, $25, $3e, $25, $25, $25, $25, $20, $11, $11 ;; 05:4677 ????????
    RLE  $25, $25, $25, $25, $3d, $25, $25, $25, $20, $11 ;; 05:467f ??????
    RLE  $40, $25, $25, $25, $25, $25, $25, $25, $30, $40 ;; 05:4685 ??????
    RLE  $41, $40, $30, $40, $30, $40, $25, $25, $41, $41 ;; 05:468b ??????????

map00_room0d_00_script:
    SCRIPT_IDX script_0079                             ;; 05:4695 $79 $00
    db   $ff                                           ;; 05:4697 $ff

map00_room0d_00_tiles:
    RLE  $11, $11, $11, $11, $00, $00, $00, $00, $00, $50 ;; 05:4698 ??????
    RLE  $11, $11, $11, $11, $00, $00, $00, $00, $00, $00 ;; 05:469e ????
    RLE  $11, $11, $11, $11, $33, $00, $00, $3b, $00, $00 ;; 05:46a2 ????????
    RLE  $11, $11, $11, $12, $50, $33, $00, $00, $00, $00 ;; 05:46aa ??????
    RLE  $11, $11, $11, $11, $02, $50, $23, $23, $23, $23 ;; 05:46b0 ??????
    RLE  $11, $11, $11, $11, $11, $38, $38, $38, $38, $38 ;; 05:46b6 ??????
    RLE  $30, $40, $20, $11, $11, $11, $11, $11, $11, $11 ;; 05:46bc ??????
    RLE  $41, $41, $40, $30, $40, $20, $11, $11, $11, $11 ;; 05:46c2 ????????

map00_room0e_00_script:
    SCRIPT_IDX script_0079                             ;; 05:46ca $79 $00
    db   $ff                                           ;; 05:46cc $ff

map00_room0e_00_tiles:
    RLE  $51, $51, $52, $50, $41, $41, $41, $42, $51, $51 ;; 05:46cd ????????
    RLE  $00, $00, $00, $00, $50, $51, $51, $52, $00, $00 ;; 05:46d5 ????????
    RLE  $00, $00, $3b, $00, $00, $00, $00, $00, $00, $00 ;; 05:46dd ??????
    RLE  $00, $00, $00, $00, $00, $00, $00, $00, $00, $30 ;; 05:46e3 ????
    RLE  $23, $33, $00, $3b, $00, $00, $3b, $00, $30, $51 ;; 05:46e7 ??????????
    RLE  $02, $50, $33, $00, $3b, $3b, $00, $3b, $50, $41 ;; 05:46f1 ??????????
    RLE  $11, $02, $50, $00, $00, $00, $00, $00, $00, $50 ;; 05:46fb ??????
    RLE  $11, $11, $38, $00, $00, $00, $00, $00, $00, $30 ;; 05:4701 ??????

map00_room0f_00_script:
    SCRIPT_IDX script_04a3                             ;; 05:4707 $a3 $04
    SCRIPT_AT_POS 4, 4, script_0270                    ;; 05:4709 $44 $70 $02
    db   $ff                                           ;; 05:470c $ff

map00_room0f_00_tiles:
    RLE  $51, $53, $50, $41, $51, $41, $42, $52, $10, $11 ;; 05:470d ??????????
    RLE  $00, $00, $00, $50, $53, $50, $52, $00, $20, $21 ;; 05:4717 ????????
    RLE  $00, $00, $30, $32, $30, $32, $00, $00, $00, $00 ;; 05:471f ????????
    RLE  $40, $30, $41, $42, $41, $42, $32, $00, $00, $00 ;; 05:4727 ????????
    RLE  $53, $41, $42, $42, $4d, $42, $52, $00, $00, $30 ;; 05:472f ??????????
    RLE  $40, $50, $42, $52, $00, $00, $00, $00, $00, $41 ;; 05:4739 ????????
    RLE  $41, $00, $00, $00, $00, $00, $00, $00, $30, $41 ;; 05:4741 ??????
    RLE  $41, $40, $30, $40, $30, $40, $30, $31, $41, $41 ;; 05:4747 ??????????

map00_room00_01_script:
    SCRIPT_IDX script_0076                             ;; 05:4751 $76 $00
    db   $ff                                           ;; 05:4753 $ff

map00_room00_01_tiles:
    RLE  $41, $42, $52, $50, $51, $41, $41, $42, $00, $50 ;; 05:4754 ??????????
    RLE  $41, $42, $00, $00, $00, $50, $51, $52, $00, $00 ;; 05:475e ????????
    RLE  $51, $52, $00, $00, $00, $00, $00, $00, $00, $00 ;; 05:4766 ??????
    RLE  $00, $00, $3b, $00, $00, $00, $3b, $00, $00, $00 ;; 05:476c ??????
    RLE  $00, $00, $00, $3b, $00, $00, $00, $3b, $00, $00 ;; 05:4772 ??????
    RLE  $64, $64, $33, $00, $3b, $00, $00, $00, $3b, $00 ;; 05:4778 ????????
    RLE  $38, $02, $50, $00, $00, $00, $00, $00, $00, $30 ;; 05:4780 ??????
    RLE  $11, $11, $38, $00, $00, $00, $00, $00, $30, $41 ;; 05:4786 ????????

map00_room01_01_script:
    SCRIPT_IDX script_0079                             ;; 05:478e $79 $00
    db   $ff                                           ;; 05:4790 $ff

map00_room01_01_tiles:
    RLE  $51, $51, $41, $41, $41, $42, $00, $00, $35, $35 ;; 05:4791 ????????
    RLE  $00, $00, $50, $51, $51, $52, $00, $00, $35, $35 ;; 05:4799 ??????????
    RLE  $00, $00, $00, $00, $00, $00, $3b, $00, $00, $35 ;; 05:47a3 ??????
    RLE  $00, $00, $3b, $00, $00, $00, $00, $00, $00, $35 ;; 05:47a9 ??????
    RLE  $00, $00, $00, $00, $00, $30, $40, $00, $00, $35 ;; 05:47af ????????
    RLE  $00, $00, $30, $40, $30, $41, $41, $33, $30, $31 ;; 05:47b7 ??????????
    RLE  $40, $30, $41, $41, $41, $41, $41, $41, $41, $41 ;; 05:47c1 ??????
    RLE  $41, $41, $41, $41, $41, $41, $41, $41, $41, $41 ;; 05:47c7 ????

map00_room02_01_script:
    SCRIPT_IDX script_007c                             ;; 05:47cb $7c $00
    db   $ff                                           ;; 05:47cd $ff

map00_room02_01_tiles:
    RLE  $42, $42, $2b, $42, $11, $11, $42, $42, $42, $42 ;; 05:47ce ????????
    RLE  $42, $42, $2b, $52, $10, $11, $02, $05, $42, $42 ;; 05:47d6 ??????????
    RLE  $42, $52, $05, $15, $11, $11, $11, $38, $02, $42 ;; 05:47e0 ????????
    RLE  $42, $05, $05, $10, $11, $11, $11, $11, $12, $42 ;; 05:47e8 ????????
    RLE  $52, $05, $05, $20, $11, $11, $11, $11, $22, $30 ;; 05:47f0 ????????
    RLE  $40, $05, $05, $05, $20, $21, $21, $22, $05, $41 ;; 05:47f8 ????????
    RLE  $41, $30, $40, $05, $05, $05, $05, $30, $40, $41 ;; 05:4800 ????????
    RLE  $41, $41, $41, $40, $30, $40, $30, $41, $41, $41 ;; 05:4808 ??????

map00_room03_01_script:
    SCRIPT_IDX script_0064                             ;; 05:480e $64 $00
    db   $ff                                           ;; 05:4810 $ff

map00_room03_01_tiles:
    RLE  $42, $41, $42, $42, $00, $41, $41, $41, $41, $41 ;; 05:4811 ????????
    RLE  $42, $41, $42, $42, $00, $50, $51, $51, $41, $41 ;; 05:4819 ??????????
    RLE  $42, $41, $51, $52, $00, $00, $00, $00, $50, $41 ;; 05:4823 ????????
    RLE  $52, $48, $48, $00, $00, $00, $00, $00, $00, $41 ;; 05:482b ??????
    RLE  $40, $48, $00, $00, $00, $00, $00, $00, $00, $41 ;; 05:4831 ??????
    RLE  $41, $00, $00, $00, $00, $00, $00, $00, $30, $41 ;; 05:4837 ??????
    RLE  $41, $30, $40, $00, $00, $00, $30, $40, $41, $41 ;; 05:483d ????????
    RLE  $41, $41, $41, $00, $00, $00, $41, $41, $41, $41 ;; 05:4845 ????

map00_room04_01_script:
    SCRIPT_IDX script_0064                             ;; 05:4849 $64 $00
    db   $ff                                           ;; 05:484b $ff

map00_room04_01_tiles:
    RLE  $41, $41, $41, $00, $00, $50, $51, $51, $51, $51 ;; 05:484c ??????
    RLE  $41, $41, $53, $00, $00, $00, $00, $00, $00, $00 ;; 05:4852 ??????
    RLE  $41, $53, $00, $00, $00, $37, $37, $00, $00, $00 ;; 05:4858 ??????
    RLE  $41, $00, $00, $00, $7f, $7f, $7f, $7f, $7f, $30 ;; 05:485e ??????
    RLE  $53, $7f, $7f, $37, $37, $7f, $00, $00, $00, $41 ;; 05:4864 ????????
    RLE  $40, $00, $7f, $7f, $7f, $00, $00, $00, $00, $41 ;; 05:486c ??????
    RLE  $41, $40, $00, $00, $00, $00, $00, $00, $30, $41 ;; 05:4872 ??????
    RLE  $41, $41, $40, $00, $30, $31, $40, $30, $41, $41 ;; 05:4878 ??????????

map00_room05_01_script:
    SCRIPT_IDX script_04ac                             ;; 05:4882 $ac $04
    SCRIPT_AT_POS 3, 7, script_0286                    ;; 05:4884 $37 $86 $02
    db   $ff                                           ;; 05:4887 $ff

map00_room05_01_tiles:
    RLE  $51, $53, $00, $00, $00, $41, $41, $42, $42, $42 ;; 05:4888 ??????
    RLE  $00, $00, $00, $00, $30, $41, $42, $42, $42, $42 ;; 05:488e ??????
    RLE  $00, $00, $30, $32, $41, $42, $42, $42, $42, $42 ;; 05:4894 ????????
    RLE  $40, $30, $41, $42, $41, $42, $42, $4c, $42, $42 ;; 05:489c ??????????
    RLE  $41, $41, $42, $42, $00, $00, $00, $00, $00, $42 ;; 05:48a6 ????????
    RLE  $41, $41, $42, $42, $33, $00, $00, $00, $34, $42 ;; 05:48ae ????????
    RLE  $41, $42, $42, $42, $41, $64, $2b, $64, $42, $42 ;; 05:48b6 ????????
    RLE  $41, $42, $42, $42, $41, $41, $2b, $41, $42, $42 ;; 05:48be ????????

map00_room06_01_script:
    SCRIPT_IDX script_006d                             ;; 05:48c6 $6d $00
    db   $ff                                           ;; 05:48c8 $ff

map00_room06_01_tiles:
    RLE  $41, $41, $41, $42, $05, $05, $05, $05, $05, $46 ;; 05:48c9 ??????
    RLE  $41, $41, $42, $42, $05, $05, $46, $05, $05, $05 ;; 05:48cf ????????
    RLE  $41, $41, $42, $42, $05, $05, $05, $05, $05, $05 ;; 05:48d7 ??????
    RLE  $41, $41, $42, $42, $32, $30, $32, $05, $05, $05 ;; 05:48dd ????????
    RLE  $41, $42, $42, $42, $42, $41, $42, $32, $05, $05 ;; 05:48e5 ????????
    RLE  $41, $42, $42, $42, $41, $41, $42, $42, $30, $32 ;; 05:48ed ????????
    RLE  $42, $42, $42, $41, $41, $42, $42, $42, $41, $42 ;; 05:48f5 ??????
    RLE  $42, $42, $41, $41, $42, $42, $42, $41, $41, $42 ;; 05:48fb ????????

map00_room07_01_script:
    SCRIPT_IDX script_006d                             ;; 05:4903 $6d $00
    db   $ff                                           ;; 05:4905 $ff

map00_room07_01_tiles:
    RLE  $46, $05, $05, $05, $05, $05, $05, $05, $05, $46 ;; 05:4906 ??????
    RLE  $05, $05, $05, $05, $05, $05, $05, $05, $05, $05 ;; 05:490c ????
    RLE  $05, $05, $05, $46, $05, $05, $05, $05, $05, $05 ;; 05:4910 ????
    RLE  $05, $05, $05, $05, $05, $05, $05, $05, $05, $05 ;; 05:4914 ????
    RLE  $05, $05, $05, $05, $05, $05, $05, $05, $05, $05 ;; 05:4918 ????
    RLE  $05, $05, $05, $05, $05, $05, $05, $46, $05, $05 ;; 05:491c ??????
    RLE  $40, $05, $05, $05, $05, $05, $05, $05, $05, $05 ;; 05:4922 ????
    RLE  $41, $05, $05, $05, $05, $05, $05, $05, $05, $46 ;; 05:4926 ??????

map00_room08_01_script:
    SCRIPT_IDX script_006a                             ;; 05:492c $6a $00
    db   $ff                                           ;; 05:492e $ff

map00_room08_01_tiles:
    RLE  $46, $05, $05, $05, $05, $05, $05, $46, $46, $41 ;; 05:492f ??????
    RLE  $05, $05, $05, $05, $05, $05, $05, $05, $46, $50 ;; 05:4935 ??????
    RLE  $05, $05, $05, $05, $05, $46, $46, $05, $05, $30 ;; 05:493b ????????
    RLE  $05, $05, $46, $05, $05, $05, $05, $05, $05, $50 ;; 05:4943 ??????
    RLE  $05, $05, $46, $05, $05, $05, $05, $05, $05, $30 ;; 05:4949 ??????
    RLE  $05, $05, $05, $05, $05, $46, $46, $05, $05, $50 ;; 05:494f ????????
    RLE  $05, $05, $05, $05, $05, $05, $05, $05, $05, $30 ;; 05:4957 ????
    RLE  $46, $05, $05, $05, $05, $05, $05, $05, $46, $41 ;; 05:495b ??????

map00_room09_01_script:
    SCRIPT_IDX script_007c                             ;; 05:4961 $7c $00
    db   $ff                                           ;; 05:4963 $ff

map00_room09_01_tiles:
    RLE  $41, $11, $11, $42, $42, $42, $42, $42, $42, $42 ;; 05:4964 ??????
    RLE  $41, $11, $11, $02, $42, $42, $42, $42, $42, $42 ;; 05:496a ??????
    RLE  $41, $11, $11, $11, $02, $42, $42, $42, $42, $42 ;; 05:4970 ??????
    RLE  $41, $20, $21, $11, $11, $38, $38, $38, $38, $38 ;; 05:4976 ????????
    RLE  $41, $30, $40, $20, $21, $21, $11, $11, $11, $11 ;; 05:497e ????????
    RLE  $41, $41, $41, $40, $30, $40, $20, $21, $21, $21 ;; 05:4986 ??????
    RLE  $41, $41, $41, $41, $41, $41, $40, $30, $40, $30 ;; 05:498c ??????
    RLE  $41, $41, $41, $41, $41, $41, $41, $41, $41, $41 ;; 05:4992 ????

map00_room0a_01_script:
    SCRIPT_IDX script_0070                             ;; 05:4996 $70 $00
    SCRIPT_AT_POS 6, 6, script_04b0                    ;; 05:4998 $66 $b0 $04
    db   $ff                                           ;; 05:499b $ff

map00_room0a_01_tiles:
    RLE  $42, $42, $23, $35, $25, $25, $25, $25, $35, $35 ;; 05:499c ????????
    RLE  $42, $42, $42, $23, $25, $25, $25, $25, $35, $35 ;; 05:49a4 ??????
    RLE  $42, $42, $42, $42, $25, $3d, $25, $25, $25, $35 ;; 05:49aa ??????
    RLE  $38, $02, $42, $42, $25, $25, $25, $25, $25, $25 ;; 05:49b0 ??????
    RLE  $11, $11, $02, $42, $25, $25, $25, $3e, $25, $25 ;; 05:49b6 ????????
    RLE  $21, $11, $11, $02, $33, $25, $25, $25, $25, $35 ;; 05:49be ????????
    RLE  $40, $20, $11, $11, $41, $64, $7d, $64, $33, $35 ;; 05:49c6 ??????????
    RLE  $41, $40, $10, $11, $41, $41, $2a, $41, $41, $64 ;; 05:49d0 ??????????

map00_room0b_01_script:
    SCRIPT_IDX script_0073                             ;; 05:49da $73 $00
    db   $ff                                           ;; 05:49dc $ff

map00_room0b_01_tiles:
    RLE  $35, $35, $35, $35, $25, $25, $50, $51, $41, $41 ;; 05:49dd ????????
    RLE  $35, $35, $25, $25, $25, $25, $25, $25, $50, $41 ;; 05:49e5 ??????
    RLE  $35, $25, $25, $25, $25, $3e, $25, $25, $25, $41 ;; 05:49eb ??????
    RLE  $25, $25, $25, $3d, $25, $25, $25, $25, $25, $50 ;; 05:49f1 ??????
    RLE  $25, $25, $25, $25, $25, $25, $3e, $25, $25, $30 ;; 05:49f7 ??????
    RLE  $30, $33, $25, $25, $25, $25, $25, $25, $30, $41 ;; 05:49fd ??????
    RLE  $41, $41, $33, $25, $25, $30, $40, $30, $41, $41 ;; 05:4a03 ??????????
    RLE  $41, $41, $41, $40, $30, $41, $41, $41, $41, $41 ;; 05:4a0d ??????

map00_room0c_01_script:
    SCRIPT_IDX script_0070                             ;; 05:4a13 $70 $00
    db   $ff                                           ;; 05:4a15 $ff

map00_room0c_01_tiles:
    RLE  $41, $42, $42, $41, $41, $42, $25, $25, $41, $41 ;; 05:4a16 ??????????
    RLE  $41, $42, $52, $50, $51, $52, $25, $25, $50, $41 ;; 05:4a20 ??????????
    RLE  $41, $52, $25, $25, $25, $25, $25, $25, $25, $41 ;; 05:4a2a ??????
    RLE  $41, $25, $25, $25, $25, $25, $25, $3d, $25, $41 ;; 05:4a30 ??????
    RLE  $41, $25, $25, $25, $3e, $25, $25, $25, $25, $41 ;; 05:4a36 ??????
    RLE  $41, $25, $25, $25, $25, $25, $25, $25, $25, $41 ;; 05:4a3c ??????
    RLE  $41, $40, $25, $3e, $25, $25, $25, $25, $30, $41 ;; 05:4a42 ????????
    RLE  $41, $41, $25, $25, $25, $25, $3d, $25, $41, $41 ;; 05:4a4a ????????

map00_room0d_01_script:
    SCRIPT_IDX script_007c                             ;; 05:4a52 $7c $00
    SCRIPT_AT_POS 3, 2, script_0383                    ;; 05:4a54 $32 $83 $03
    db   $ff                                           ;; 05:4a57 $ff

map00_room0d_01_tiles:
    RLE  $42, $41, $41, $41, $41, $40, $10, $11, $11, $11 ;; 05:4a58 ??????
    RLE  $42, $51, $51, $51, $51, $53, $10, $11, $11, $11 ;; 05:4a5e ??????
    RLE  $52, $5d, $5d, $5d, $49, $49, $10, $11, $11, $11 ;; 05:4a64 ??????
    RLE  $40, $5e, $2e, $5e, $69, $49, $10, $11, $11, $11 ;; 05:4a6a ????????
    RLE  $41, $49, $49, $49, $49, $49, $10, $11, $11, $11 ;; 05:4a72 ??????
    RLE  $41, $49, $49, $49, $49, $49, $10, $11, $11, $11 ;; 05:4a78 ??????
    RLE  $41, $40, $49, $49, $49, $49, $10, $11, $11, $11 ;; 05:4a7e ??????
    RLE  $41, $41, $49, $49, $49, $49, $10, $11, $11, $11 ;; 05:4a84 ??????

map00_room0e_01_script:
    SCRIPT_IDX script_007c                             ;; 05:4a8a $7c $00
    db   $ff                                           ;; 05:4a8c $ff

map00_room0e_01_tiles:
    RLE  $11, $11, $11, $00, $00, $00, $00, $00, $00, $41 ;; 05:4a8d ????
    RLE  $11, $11, $11, $00, $00, $00, $00, $00, $00, $50 ;; 05:4a91 ????
    RLE  $11, $11, $12, $33, $00, $00, $00, $3b, $00, $00 ;; 05:4a95 ????????
    RLE  $11, $11, $12, $50, $23, $33, $00, $00, $00, $00 ;; 05:4a9d ????????
    RLE  $11, $11, $11, $38, $02, $50, $23, $23, $23, $23 ;; 05:4aa5 ??????
    RLE  $11, $11, $11, $11, $11, $38, $38, $38, $38, $38 ;; 05:4aab ??????
    RLE  $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ;; 05:4ab1 ????
    RLE  $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ;; 05:4ab5 ????

map00_room0f_01_script:
    SCRIPT_IDX script_0079                             ;; 05:4ab9 $79 $00
    db   $ff                                           ;; 05:4abb $ff

map00_room0f_01_tiles:
    RLE  $41, $42, $51, $51, $51, $51, $51, $51, $41, $41 ;; 05:4abc ??????
    RLE  $51, $52, $00, $00, $00, $00, $3b, $00, $50, $41 ;; 05:4ac2 ????????
    RLE  $00, $00, $00, $00, $3b, $3b, $00, $00, $00, $50 ;; 05:4aca ??????
    RLE  $00, $00, $00, $3b, $00, $00, $00, $3b, $00, $00 ;; 05:4ad0 ??????
    RLE  $23, $23, $23, $23, $33, $00, $00, $00, $00, $00 ;; 05:4ad6 ??????
    RLE  $38, $38, $38, $02, $50, $23, $23, $23, $23, $23 ;; 05:4adc ??????
    RLE  $11, $11, $11, $11, $38, $38, $38, $38, $38, $38 ;; 05:4ae2 ????
    RLE  $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ;; 05:4ae6 ????

map00_room00_02_script:
    SCRIPT_IDX script_0067                             ;; 05:4aea $67 $00
    db   $ff                                           ;; 05:4aec $ff

map00_room00_02_tiles:
    RLE  $11, $11, $11, $00, $00, $00, $00, $00, $41, $41 ;; 05:4aed ??????
    RLE  $11, $11, $22, $33, $00, $00, $3b, $00, $41, $41 ;; 05:4af3 ??????????
    RLE  $11, $11, $02, $50, $33, $00, $00, $00, $50, $51 ;; 05:4afd ????????
    RLE  $11, $11, $11, $02, $50, $64, $64, $64, $64, $64 ;; 05:4b05 ??????
    RLE  $11, $11, $11, $11, $38, $38, $38, $38, $38, $38 ;; 05:4b0b ????
    RLE  $11, $11, $11, $21, $21, $21, $21, $21, $21, $21 ;; 05:4b0f ????
    RLE  $11, $11, $22, $00, $00, $00, $00, $00, $00, $00 ;; 05:4b13 ??????
    RLE  $11, $12, $00, $00, $48, $00, $48, $00, $30, $31 ;; 05:4b19 ??????????

map00_room01_02_script:
    SCRIPT_IDX script_04a9                             ;; 05:4b23 $a9 $04
    SCRIPT_AT_POS 2, 6, script_0284                    ;; 05:4b25 $26 $84 $02
    db   $ff                                           ;; 05:4b28 $ff

map00_room01_02_tiles:
    RLE  $41, $41, $41, $42, $41, $41, $41, $41, $41, $41 ;; 05:4b29 ????
    RLE  $41, $41, $41, $42, $41, $41, $41, $41, $41, $41 ;; 05:4b2d ????
    RLE  $41, $41, $41, $42, $51, $51, $4c, $51, $41, $41 ;; 05:4b31 ????????
    RLE  $41, $41, $41, $52, $48, $48, $00, $48, $50, $41 ;; 05:4b39 ????????
    RLE  $38, $38, $38, $02, $00, $00, $00, $48, $48, $41 ;; 05:4b41 ??????
    RLE  $21, $21, $21, $22, $00, $00, $00, $00, $48, $41 ;; 05:4b47 ??????
    RLE  $00, $00, $00, $00, $00, $00, $00, $00, $30, $41 ;; 05:4b4d ??????
    RLE  $31, $31, $40, $30, $40, $30, $40, $30, $41, $41 ;; 05:4b53 ??????????

map00_room02_02_script:
    SCRIPT_IDX script_0064                             ;; 05:4b5d $64 $00
    db   $ff                                           ;; 05:4b5f $ff

map00_room02_02_tiles:
    RLE  $42, $42, $42, $42, $51, $51, $51, $51, $51, $51 ;; 05:4b60 ????
    RLE  $42, $52, $00, $00, $00, $00, $7f, $00, $00, $00 ;; 05:4b64 ??????
    RLE  $42, $00, $00, $00, $00, $37, $37, $37, $37, $37 ;; 05:4b6a ??????
    RLE  $42, $7f, $7f, $7f, $7f, $7f, $37, $37, $37, $37 ;; 05:4b70 ??????
    RLE  $42, $00, $00, $00, $00, $7f, $00, $00, $00, $00 ;; 05:4b76 ??????
    RLE  $42, $33, $00, $00, $00, $7f, $00, $00, $00, $00 ;; 05:4b7c ??????
    RLE  $42, $41, $64, $64, $64, $64, $64, $64, $64, $64 ;; 05:4b82 ??????
    RLE  $42, $41, $41, $41, $41, $41, $41, $41, $41, $41 ;; 05:4b88 ????

map00_room03_02_script:
    SCRIPT_IDX script_0064                             ;; 05:4b8c $64 $00
    db   $ff                                           ;; 05:4b8e $ff

map00_room03_02_tiles:
    RLE  $51, $51, $53, $00, $00, $00, $50, $51, $41, $41 ;; 05:4b8f ????????
    RLE  $00, $00, $7f, $00, $00, $00, $7f, $00, $50, $41 ;; 05:4b97 ????????
    RLE  $37, $00, $7f, $7f, $7f, $00, $7f, $00, $00, $41 ;; 05:4b9f ????????
    RLE  $37, $37, $37, $37, $37, $7f, $7f, $00, $00, $50 ;; 05:4ba7 ????????
    RLE  $00, $00, $00, $00, $37, $37, $37, $37, $37, $34 ;; 05:4baf ??????
    RLE  $00, $00, $00, $00, $7f, $00, $00, $00, $34, $42 ;; 05:4bb5 ??????
    RLE  $64, $64, $0b, $64, $64, $64, $64, $64, $42, $42 ;; 05:4bbb ????????
    RLE  $41, $41, $0b, $41, $41, $41, $41, $41, $42, $42 ;; 05:4bc3 ????????

map00_room04_02_script:
    SCRIPT_IDX script_0061                             ;; 05:4bcb $61 $00
    db   $ff                                           ;; 05:4bcd $ff

map00_room04_02_tiles:
    RLE  $42, $41, $42, $00, $50, $51, $51, $41, $41, $41 ;; 05:4bce ????????
    RLE  $42, $41, $42, $00, $00, $00, $00, $50, $51, $51 ;; 05:4bd6 ????????
    RLE  $42, $51, $52, $00, $00, $00, $00, $00, $00, $00 ;; 05:4bde ??????
    RLE  $52, $00, $00, $00, $00, $00, $00, $00, $00, $00 ;; 05:4be4 ????
    RLE  $33, $00, $00, $00, $00, $00, $00, $00, $00, $00 ;; 05:4be8 ????
    RLE  $41, $00, $00, $00, $00, $30, $40, $00, $00, $30 ;; 05:4bec ????????
    RLE  $41, $33, $30, $40, $30, $41, $41, $40, $30, $41 ;; 05:4bf4 ??????????
    RLE  $41, $41, $50, $41, $41, $41, $41, $41, $41, $41 ;; 05:4bfe ??????

map00_room05_02_script:
    SCRIPT_IDX script_0061                             ;; 05:4c04 $61 $00
    db   $ff                                           ;; 05:4c06 $ff

map00_room05_02_tiles:
    RLE  $41, $42, $42, $42, $41, $41, $2b, $41, $42, $42 ;; 05:4c07 ????????
    RLE  $51, $52, $48, $48, $50, $51, $2b, $51, $52, $48 ;; 05:4c0f ??????????
    RLE  $00, $00, $00, $48, $48, $48, $00, $48, $48, $48 ;; 05:4c19 ????
    RLE  $00, $00, $00, $00, $00, $48, $00, $48, $00, $30 ;; 05:4c1d ????????
    RLE  $00, $00, $00, $00, $00, $00, $00, $00, $00, $50 ;; 05:4c25 ????
    RLE  $40, $00, $00, $00, $00, $00, $00, $00, $00, $30 ;; 05:4c29 ??????
    RLE  $41, $40, $30, $40, $00, $00, $30, $40, $30, $41 ;; 05:4c2f ??????????
    RLE  $41, $41, $31, $41, $40, $30, $31, $41, $41, $41 ;; 05:4c39 ????????

map00_room06_02_script:
    SCRIPT_IDX script_003d                             ;; 05:4c41 $3d $00
    SCRIPT_AT_POS 3, 6, script_0384                    ;; 05:4c43 $36 $84 $03
    db   $ff                                           ;; 05:4c46 $ff

map00_room06_02_tiles:
    RLE  $42, $42, $41, $41, $42, $42, $41, $42, $42, $41 ;; 05:4c47 ??????????
    RLE  $42, $42, $41, $41, $42, $42, $41, $42, $52, $41 ;; 05:4c51 ??????????
    RLE  $42, $42, $51, $51, $52, $5d, $5d, $5d, $00, $41 ;; 05:4c5b ????????
    RLE  $42, $42, $00, $00, $00, $5e, $2e, $5e, $69, $41 ;; 05:4c63 ????????
    RLE  $42, $42, $00, $00, $00, $00, $00, $00, $00, $41 ;; 05:4c6b ??????
    RLE  $41, $42, $33, $00, $00, $00, $00, $00, $34, $41 ;; 05:4c71 ????????
    RLE  $41, $42, $41, $64, $64, $2b, $64, $64, $42, $41 ;; 05:4c79 ??????????
    RLE  $41, $42, $41, $41, $41, $2b, $41, $41, $42, $41 ;; 05:4c83 ????????

map00_room07_02_script:
    SCRIPT_IDX script_006a                             ;; 05:4c8b $6a $00
    db   $ff                                           ;; 05:4c8d $ff

map00_room07_02_tiles:
    RLE  $41, $05, $05, $05, $05, $05, $05, $05, $05, $46 ;; 05:4c8e ??????
    RLE  $41, $05, $05, $05, $05, $05, $05, $05, $05, $46 ;; 05:4c94 ??????
    RLE  $41, $05, $05, $05, $05, $05, $46, $05, $05, $05 ;; 05:4c9a ??????
    RLE  $41, $40, $05, $05, $46, $05, $05, $05, $05, $05 ;; 05:4ca0 ????????
    RLE  $41, $41, $05, $05, $05, $05, $05, $46, $05, $05 ;; 05:4ca8 ????????
    RLE  $41, $41, $05, $05, $05, $46, $05, $05, $05, $05 ;; 05:4cb0 ??????
    RLE  $41, $41, $46, $05, $05, $05, $05, $05, $05, $05 ;; 05:4cb6 ??????
    RLE  $41, $41, $46, $46, $46, $46, $46, $46, $46, $46 ;; 05:4cbc ??????

map00_room08_02_script:
    SCRIPT_IDX script_006a                             ;; 05:4cc2 $6a $00
    db   $ff                                           ;; 05:4cc4 $ff

map00_room08_02_tiles:
    RLE  $46, $05, $05, $05, $05, $05, $05, $05, $46, $50 ;; 05:4cc5 ??????
    RLE  $46, $05, $05, $05, $05, $05, $05, $05, $05, $46 ;; 05:4ccb ??????
    RLE  $05, $05, $46, $05, $05, $05, $05, $05, $05, $46 ;; 05:4cd1 ??????
    RLE  $05, $05, $05, $05, $05, $05, $05, $05, $05, $05 ;; 05:4cd7 ????
    RLE  $05, $05, $05, $05, $05, $05, $05, $05, $05, $05 ;; 05:4cdb ????
    RLE  $05, $05, $05, $05, $05, $05, $46, $05, $05, $05 ;; 05:4cdf ????
    RLE  $05, $05, $05, $05, $05, $05, $05, $05, $05, $46 ;; 05:4ce3 ????
    RLE  $46, $05, $05, $05, $05, $05, $05, $05, $46, $46 ;; 05:4ce7 ??????

map00_room09_02_script:
    SCRIPT_IDX script_0497                             ;; 05:4ced $97 $04
    SCRIPT_AT_POS 2, 5, script_0288                    ;; 05:4cef $25 $88 $02
    db   $ff                                           ;; 05:4cf2 $ff

map00_room09_02_tiles:
    RLE  $41, $41, $09, $0a, $55, $55, $55, $09, $0a, $41 ;; 05:4cf3 ????????
    RLE  $50, $51, $09, $0a, $55, $55, $55, $09, $0a, $41 ;; 05:4cfb ????????
    RLE  $46, $46, $09, $0a, $54, $2e, $54, $09, $0a, $41 ;; 05:4d03 ??????????
    RLE  $05, $05, $19, $1a, $05, $05, $05, $19, $1a, $50 ;; 05:4d0d ????????
    RLE  $05, $05, $05, $05, $05, $05, $05, $05, $05, $30 ;; 05:4d15 ????
    RLE  $05, $05, $05, $05, $46, $05, $46, $05, $05, $50 ;; 05:4d19 ????????
    RLE  $46, $46, $05, $05, $05, $05, $05, $05, $05, $30 ;; 05:4d21 ??????
    RLE  $46, $46, $05, $05, $05, $05, $05, $05, $30, $41 ;; 05:4d27 ??????

map00_room0a_02_script:
    SCRIPT_IDX script_0482                             ;; 05:4d2d $82 $04
    db   $ff                                           ;; 05:4d2f $ff

map00_room0a_02_tiles:
    RLE  $41, $42, $11, $12, $41, $41, $2a, $41, $41, $41 ;; 05:4d30 ????????
    RLE  $41, $42, $11, $12, $50, $51, $2a, $51, $51, $51 ;; 05:4d38 ????????
    RLE  $41, $42, $10, $11, $38, $38, $2a, $38, $38, $02 ;; 05:4d40 ??????????
    RLE  $41, $42, $10, $11, $11, $11, $2a, $11, $11, $11 ;; 05:4d4a ??????
    RLE  $41, $52, $10, $11, $22, $00, $00, $00, $00, $35 ;; 05:4d50 ????????
    RLE  $41, $15, $11, $22, $00, $00, $00, $00, $00, $35 ;; 05:4d58 ????????
    RLE  $41, $10, $11, $35, $00, $00, $00, $00, $00, $35 ;; 05:4d60 ????????
    RLE  $41, $10, $11, $35, $00, $00, $00, $00, $00, $35 ;; 05:4d68 ????????

map00_room0b_02_script:
    SCRIPT_IDX script_0073                             ;; 05:4d70 $73 $00
    db   $ff                                           ;; 05:4d72 $ff

map00_room0b_02_tiles:
    RLE  $41, $42, $42, $51, $51, $51, $51, $51, $41, $41 ;; 05:4d73 ????????
    RLE  $41, $42, $52, $25, $25, $25, $25, $25, $50, $51 ;; 05:4d7b ????????
    RLE  $41, $52, $25, $25, $3e, $25, $25, $25, $25, $25 ;; 05:4d83 ????????
    RLE  $41, $25, $25, $25, $25, $25, $25, $25, $25, $25 ;; 05:4d8b ????
    RLE  $41, $25, $25, $3e, $25, $25, $25, $25, $25, $25 ;; 05:4d8f ??????
    RLE  $41, $25, $25, $25, $25, $25, $25, $3d, $25, $25 ;; 05:4d95 ??????
    RLE  $41, $40, $25, $25, $25, $25, $25, $25, $25, $30 ;; 05:4d9b ??????
    RLE  $41, $41, $25, $25, $3e, $25, $25, $25, $30, $41 ;; 05:4da1 ????????

map00_room0c_02_script:
    SCRIPT_IDX script_0070                             ;; 05:4da9 $70 $00
    db   $ff                                           ;; 05:4dab $ff

map00_room0c_02_tiles:
    RLE  $41, $42, $25, $25, $25, $25, $3d, $25, $41, $41 ;; 05:4dac ????????
    RLE  $51, $52, $25, $25, $25, $25, $25, $25, $50, $41 ;; 05:4db4 ??????
    RLE  $25, $25, $25, $3e, $25, $25, $25, $3d, $25, $41 ;; 05:4dba ??????
    RLE  $25, $25, $25, $25, $25, $25, $25, $25, $25, $41 ;; 05:4dc0 ????
    RLE  $25, $3e, $25, $25, $25, $25, $25, $25, $25, $50 ;; 05:4dc4 ??????
    RLE  $25, $25, $25, $25, $25, $3d, $25, $25, $25, $30 ;; 05:4dca ??????
    RLE  $40, $25, $25, $25, $25, $25, $30, $40, $30, $41 ;; 05:4dd0 ????????
    RLE  $41, $40, $30, $40, $30, $31, $41, $41, $41, $41 ;; 05:4dd8 ????????

map00_room0d_02_script:
    SCRIPT_IDX script_0076                             ;; 05:4de0 $76 $00
    db   $ff                                           ;; 05:4de2 $ff

map00_room0d_02_tiles:
    RLE  $42, $42, $49, $49, $49, $49, $10, $11, $11, $11 ;; 05:4de3 ??????
    RLE  $42, $52, $49, $49, $49, $49, $10, $11, $21, $21 ;; 05:4de9 ????????
    RLE  $52, $15, $02, $49, $49, $15, $11, $22, $4e, $49 ;; 05:4df1 ??????????
    RLE  $40, $10, $12, $4e, $15, $11, $12, $49, $49, $49 ;; 05:4dfb ????????
    RLE  $41, $10, $11, $38, $11, $21, $11, $02, $49, $49 ;; 05:4e03 ??????????
    RLE  $41, $20, $21, $21, $22, $49, $20, $22, $49, $49 ;; 05:4e0d ??????????
    RLE  $41, $40, $49, $49, $49, $49, $49, $49, $49, $30 ;; 05:4e17 ??????
    RLE  $41, $41, $40, $30, $31, $31, $31, $40, $30, $41 ;; 05:4e1d ????????

map00_room0e_02_script:
    SCRIPT_IDX script_007c                             ;; 05:4e25 $7c $00
    db   $ff                                           ;; 05:4e27 $ff

map00_room0e_02_tiles:
    RLE  $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ;; 05:4e28 ????
    RLE  $21, $21, $21, $11, $11, $11, $11, $11, $11, $11 ;; 05:4e2c ????
    RLE  $49, $49, $49, $20, $11, $11, $11, $11, $11, $11 ;; 05:4e30 ????
    RLE  $49, $49, $49, $49, $20, $11, $11, $11, $11, $11 ;; 05:4e34 ??????
    RLE  $49, $49, $49, $49, $49, $20, $11, $11, $11, $11 ;; 05:4e3a ??????
    RLE  $49, $49, $49, $49, $49, $49, $10, $11, $11, $11 ;; 05:4e40 ????
    RLE  $31, $40, $49, $49, $49, $49, $10, $11, $11, $11 ;; 05:4e44 ??????
    RLE  $41, $41, $40, $49, $49, $49, $10, $11, $11, $11 ;; 05:4e4a ??????

map00_room0f_02_script:
    SCRIPT_IDX script_0428                             ;; 05:4e50 $28 $04
    SCRIPT_AT_POS 5, 7, script_0474                    ;; 05:4e52 $57 $74 $04
    db   $ff                                           ;; 05:4e55 $ff

map00_room0f_02_tiles:
    RLE  $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ;; 05:4e56 ????
    RLE  $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ;; 05:4e5a ????
    RLE  $11, $11, $11, $21, $21, $21, $21, $11, $11, $11 ;; 05:4e5e ????
    RLE  $11, $11, $12, $24, $24, $24, $24, $10, $11, $11 ;; 05:4e62 ????????
    RLE  $11, $11, $12, $24, $24, $24, $24, $10, $11, $11 ;; 05:4e6a ????????
    RLE  $11, $11, $12, $24, $24, $24, $24, $7b, $11, $11 ;; 05:4e72 ????????
    RLE  $11, $11, $11, $38, $38, $38, $38, $11, $11, $11 ;; 05:4e7a ????
    RLE  $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ;; 05:4e7e ????

map00_room00_03_script:
    SCRIPT_IDX script_0067                             ;; 05:4e82 $67 $00
    db   $ff                                           ;; 05:4e84 $ff

map00_room00_03_tiles:
    RLE  $11, $12, $00, $00, $48, $00, $48, $00, $41, $41 ;; 05:4e85 ??????????
    RLE  $11, $12, $00, $00, $00, $00, $00, $00, $50, $41 ;; 05:4e8f ??????
    RLE  $11, $12, $00, $00, $48, $00, $00, $00, $00, $50 ;; 05:4e95 ????????
    RLE  $11, $12, $00, $00, $00, $00, $48, $00, $00, $00 ;; 05:4e9d ??????
    RLE  $11, $12, $00, $00, $48, $00, $00, $00, $00, $30 ;; 05:4ea3 ????????
    RLE  $11, $12, $00, $00, $00, $00, $00, $00, $30, $41 ;; 05:4eab ??????
    RLE  $11, $12, $00, $00, $00, $30, $40, $30, $41, $41 ;; 05:4eb1 ????????
    RLE  $11, $12, $30, $40, $30, $41, $41, $41, $41, $41 ;; 05:4eb9 ????????

map00_room01_03_script:
    SCRIPT_IDX script_0061                             ;; 05:4ec1 $61 $00
    db   $ff                                           ;; 05:4ec3 $ff

map00_room01_03_tiles:
    RLE  $41, $42, $41, $42, $51, $41, $41, $41, $41, $41 ;; 05:4ec4 ????????
    RLE  $41, $42, $51, $52, $00, $50, $51, $51, $41, $41 ;; 05:4ecc ??????????
    RLE  $51, $52, $00, $00, $00, $00, $00, $00, $50, $41 ;; 05:4ed6 ??????
    RLE  $00, $00, $00, $00, $00, $00, $00, $00, $00, $41 ;; 05:4edc ????
    RLE  $40, $00, $00, $48, $48, $48, $48, $00, $00, $41 ;; 05:4ee0 ????????
    RLE  $41, $00, $00, $00, $00, $00, $00, $00, $00, $41 ;; 05:4ee8 ??????
    RLE  $41, $40, $00, $00, $00, $00, $00, $00, $30, $41 ;; 05:4eee ??????
    RLE  $41, $41, $31, $40, $00, $00, $00, $00, $41, $41 ;; 05:4ef4 ????????

map00_room02_03_script:
    SCRIPT_IDX script_0064                             ;; 05:4efc $64 $00
    SCRIPT_AT_POS 3, 5, script_0382                    ;; 05:4efe $35 $82 $03
    db   $ff                                           ;; 05:4f01 $ff

map00_room02_03_tiles:
    RLE  $42, $42, $41, $41, $41, $41, $41, $41, $41, $41 ;; 05:4f02 ??????
    RLE  $42, $42, $41, $41, $41, $41, $41, $41, $41, $41 ;; 05:4f08 ??????
    RLE  $42, $42, $51, $51, $5d, $5d, $5d, $51, $41, $41 ;; 05:4f0e ????????
    RLE  $42, $42, $53, $37, $5e, $2e, $5e, $69, $50, $41 ;; 05:4f16 ??????????
    RLE  $42, $42, $00, $00, $4f, $00, $4f, $00, $00, $41 ;; 05:4f20 ??????????
    RLE  $42, $42, $00, $00, $00, $00, $00, $00, $00, $41 ;; 05:4f2a ??????
    RLE  $42, $42, $33, $00, $34, $2b, $33, $00, $34, $41 ;; 05:4f30 ??????????
    RLE  $42, $42, $41, $64, $42, $2b, $41, $64, $42, $41 ;; 05:4f3a ??????????

map00_room03_03_script:
    SCRIPT_IDX script_0061                             ;; 05:4f44 $61 $00
    SCRIPT_AT_POS 2, 6, script_04df                    ;; 05:4f46 $26 $df $04
    db   $ff                                           ;; 05:4f49 $ff

map00_room03_03_tiles:
    RLE  $41, $41, $0b, $41, $41, $41, $41, $41, $41, $41 ;; 05:4f4a ??????
    RLE  $41, $41, $0b, $41, $41, $5d, $5d, $5d, $41, $41 ;; 05:4f50 ????????
    RLE  $41, $41, $0b, $41, $00, $5e, $2e, $5e, $41, $41 ;; 05:4f58 ??????????
    RLE  $41, $41, $0b, $41, $00, $4a, $00, $4a, $50, $41 ;; 05:4f62 ??????????
    RLE  $41, $41, $0b, $41, $00, $00, $00, $00, $00, $41 ;; 05:4f6c ????????
    RLE  $41, $41, $0b, $41, $33, $00, $00, $00, $00, $41 ;; 05:4f74 ????????
    RLE  $41, $41, $0b, $41, $41, $64, $0b, $64, $64, $41 ;; 05:4f7c ??????????
    RLE  $41, $41, $0b, $41, $41, $41, $0b, $41, $41, $41 ;; 05:4f86 ??????

map00_room04_03_script:
    SCRIPT_IDX script_04a6                             ;; 05:4f8c $a6 $04
    SCRIPT_AT_POS 3, 8, script_0285                    ;; 05:4f8e $38 $85 $02
    db   $ff                                           ;; 05:4f91 $ff

map00_room04_03_tiles:
    RLE  $41, $41, $41, $42, $5b, $5b, $42, $41, $41, $41 ;; 05:4f92 ??????
    RLE  $41, $41, $41, $42, $5b, $5b, $42, $41, $41, $41 ;; 05:4f98 ??????
    RLE  $41, $41, $41, $42, $5b, $5b, $42, $41, $41, $41 ;; 05:4f9e ??????
    RLE  $41, $41, $41, $42, $5b, $5b, $42, $51, $4c, $51 ;; 05:4fa4 ????????
    RLE  $41, $41, $41, $42, $5b, $5b, $42, $00, $00, $00 ;; 05:4fac ??????
    RLE  $41, $41, $41, $42, $5b, $5b, $42, $33, $00, $00 ;; 05:4fb2 ????????
    RLE  $41, $41, $41, $42, $5b, $5b, $42, $41, $64, $64 ;; 05:4fba ????????
    RLE  $41, $41, $41, $42, $5b, $5b, $42, $41, $41, $41 ;; 05:4fc2 ??????

map00_room05_03_script:
    SCRIPT_IDX script_0061                             ;; 05:4fc8 $61 $00
    db   $ff                                           ;; 05:4fca $ff

map00_room05_03_tiles:
    RLE  $41, $0b, $41, $0b, $41, $41, $0b, $0b, $41, $41 ;; 05:4fcb ??????????
    RLE  $41, $41, $41, $0b, $41, $41, $0b, $41, $41, $41 ;; 05:4fd5 ??????
    RLE  $41, $41, $51, $51, $51, $51, $51, $51, $41, $41 ;; 05:4fdb ??????
    RLE  $51, $53, $00, $00, $00, $00, $00, $00, $50, $41 ;; 05:4fe1 ??????
    RLE  $00, $00, $00, $00, $00, $00, $00, $00, $00, $41 ;; 05:4fe7 ????
    RLE  $00, $00, $00, $00, $00, $00, $00, $00, $34, $41 ;; 05:4feb ??????
    RLE  $64, $64, $2b, $64, $0b, $64, $0b, $64, $42, $41 ;; 05:4ff1 ??????????
    RLE  $41, $41, $2b, $41, $0b, $41, $0b, $41, $42, $41 ;; 05:4ffb ??????????

map00_room06_03_script:
    SCRIPT_IDX script_006a                             ;; 05:5005 $6a $00
    db   $ff                                           ;; 05:5007 $ff

map00_room06_03_tiles:
    RLE  $41, $42, $41, $41, $41, $2b, $41, $41, $42, $41 ;; 05:5008 ????????
    RLE  $41, $42, $51, $41, $41, $2b, $41, $41, $42, $51 ;; 05:5010 ??????????
    RLE  $41, $52, $05, $50, $51, $2b, $51, $51, $52, $05 ;; 05:501a ??????????
    RLE  $41, $05, $05, $05, $05, $05, $05, $05, $05, $05 ;; 05:5024 ????
    RLE  $41, $05, $05, $05, $05, $05, $05, $05, $05, $05 ;; 05:5028 ????
    RLE  $41, $33, $05, $05, $05, $05, $05, $05, $05, $05 ;; 05:502c ??????
    RLE  $41, $41, $33, $05, $05, $05, $05, $05, $30, $31 ;; 05:5032 ????????
    RLE  $41, $41, $41, $31, $31, $31, $31, $31, $41, $41 ;; 05:503a ??????

map00_room07_03_script:
    SCRIPT_IDX script_03e8                             ;; 05:5040 $e8 $03
    SCRIPT_AT_POS 2, 5, script_0282                    ;; 05:5042 $25 $82 $02
    db   $ff                                           ;; 05:5045 $ff

map00_room07_03_tiles:
    RLE  $41, $41, $46, $46, $46, $46, $46, $46, $46, $46 ;; 05:5046 ??????
    RLE  $41, $53, $05, $05, $05, $05, $05, $05, $46, $46 ;; 05:504c ??????
    RLE  $05, $05, $05, $05, $05, $05, $05, $05, $05, $46 ;; 05:5052 ????
    RLE  $05, $05, $05, $05, $05, $05, $05, $05, $05, $05 ;; 05:5056 ????
    RLE  $05, $05, $05, $05, $05, $05, $05, $05, $05, $05 ;; 05:505a ????
    RLE  $05, $05, $05, $05, $05, $05, $05, $05, $05, $05 ;; 05:505e ????
    RLE  $31, $33, $05, $05, $05, $05, $05, $05, $05, $05 ;; 05:5062 ??????
    RLE  $41, $41, $31, $31, $31, $31, $31, $31, $31, $31 ;; 05:5068 ??????

map00_room08_03_script:
    SCRIPT_IDX script_006d                             ;; 05:506e $6d $00
    db   $ff                                           ;; 05:5070 $ff

map00_room08_03_tiles:
    RLE  $46, $05, $05, $05, $05, $05, $05, $05, $46, $46 ;; 05:5071 ??????
    RLE  $46, $05, $05, $05, $05, $05, $05, $05, $05, $05 ;; 05:5077 ????
    RLE  $46, $05, $05, $05, $05, $05, $05, $05, $05, $05 ;; 05:507b ????
    RLE  $05, $05, $05, $46, $05, $05, $46, $05, $05, $05 ;; 05:507f ??????
    RLE  $05, $05, $05, $46, $05, $05, $46, $05, $05, $05 ;; 05:5085 ??????
    RLE  $05, $05, $05, $05, $05, $05, $05, $05, $05, $05 ;; 05:508b ????
    RLE  $05, $05, $05, $05, $05, $05, $05, $05, $05, $05 ;; 05:508f ????
    RLE  $33, $05, $05, $05, $05, $05, $05, $05, $46, $46 ;; 05:5093 ??????

map00_room09_03_script:
    SCRIPT_IDX script_006a                             ;; 05:5099 $6a $00
    db   $ff                                           ;; 05:509b $ff

map00_room09_03_tiles:
    RLE  $46, $46, $05, $05, $05, $05, $05, $05, $50, $41 ;; 05:509c ??????
    RLE  $05, $05, $05, $05, $05, $05, $05, $05, $05, $50 ;; 05:50a2 ????
    RLE  $05, $05, $05, $46, $05, $05, $05, $05, $05, $30 ;; 05:50a6 ??????
    RLE  $05, $05, $46, $05, $05, $05, $05, $05, $05, $50 ;; 05:50ac ??????
    RLE  $05, $05, $05, $05, $05, $05, $46, $05, $05, $30 ;; 05:50b2 ??????
    RLE  $05, $05, $05, $05, $05, $46, $05, $05, $05, $41 ;; 05:50b8 ??????
    RLE  $05, $05, $05, $05, $05, $05, $05, $05, $30, $41 ;; 05:50be ??????
    RLE  $46, $05, $05, $05, $05, $05, $30, $31, $41, $41 ;; 05:50c4 ????????

map00_room0a_03_script:
    SCRIPT_IDX script_0067                             ;; 05:50cc $67 $00
    db   $ff                                           ;; 05:50ce $ff

map00_room0a_03_tiles:
    RLE  $41, $11, $11, $35, $00, $00, $00, $00, $00, $35 ;; 05:50cf ????????
    RLE  $53, $11, $11, $23, $00, $00, $00, $00, $00, $35 ;; 05:50d7 ????????
    RLE  $40, $11, $11, $42, $00, $00, $00, $00, $00, $35 ;; 05:50df ????????
    RLE  $41, $11, $12, $42, $00, $00, $00, $00, $00, $35 ;; 05:50e7 ????????
    RLE  $41, $11, $12, $42, $00, $00, $00, $00, $00, $35 ;; 05:50ef ????????
    RLE  $41, $20, $11, $02, $23, $00, $00, $00, $00, $30 ;; 05:50f7 ????????
    RLE  $41, $40, $10, $11, $42, $00, $00, $00, $30, $41 ;; 05:50ff ????????
    RLE  $41, $53, $10, $11, $42, $23, $00, $30, $41, $41 ;; 05:5107 ??????????

map00_room0b_03_script:
    SCRIPT_IDX script_0070                             ;; 05:5111 $70 $00
    db   $ff                                           ;; 05:5113 $ff

map00_room0b_03_tiles:
    RLE  $41, $42, $25, $25, $35, $25, $25, $25, $41, $41 ;; 05:5114 ????????
    RLE  $41, $52, $25, $25, $25, $25, $25, $25, $50, $51 ;; 05:511c ??????
    RLE  $41, $25, $25, $25, $35, $35, $25, $35, $25, $25 ;; 05:5122 ????????
    RLE  $41, $25, $25, $25, $25, $25, $25, $25, $25, $25 ;; 05:512a ????
    RLE  $41, $25, $35, $25, $25, $35, $35, $25, $25, $25 ;; 05:512e ????????
    RLE  $41, $25, $25, $25, $25, $25, $25, $25, $25, $25 ;; 05:5136 ????
    RLE  $41, $40, $25, $25, $25, $25, $30, $40, $30, $31 ;; 05:513a ????????
    RLE  $41, $41, $40, $30, $40, $30, $41, $41, $41, $41 ;; 05:5142 ????????

map00_room0c_03_script:
    SCRIPT_IDX script_0073                             ;; 05:514a $73 $00
    db   $ff                                           ;; 05:514c $ff

map00_room0c_03_tiles:
    RLE  $42, $51, $51, $51, $51, $51, $51, $41, $41, $41 ;; 05:514d ????
    RLE  $52, $25, $25, $25, $25, $25, $25, $50, $41, $41 ;; 05:5151 ??????
    RLE  $25, $25, $25, $25, $25, $25, $25, $25, $41, $41 ;; 05:5157 ??????
    RLE  $25, $25, $25, $25, $25, $3d, $25, $25, $41, $41 ;; 05:515d ????????
    RLE  $25, $25, $3e, $25, $25, $25, $3d, $25, $50, $51 ;; 05:5165 ????????
    RLE  $25, $25, $25, $25, $25, $25, $25, $25, $25, $25 ;; 05:516d ????
    RLE  $40, $25, $25, $3e, $25, $25, $25, $25, $25, $35 ;; 05:5171 ????????
    RLE  $41, $40, $25, $25, $25, $25, $25, $25, $35, $35 ;; 05:5179 ??????

map00_room0d_03_script:
    SCRIPT_IDX script_0070                             ;; 05:517f $70 $00
    SCRIPT_AT_POS 2, 6, script_0289                    ;; 05:5181 $26 $89 $02
    db   $ff                                           ;; 05:5184 $ff

map00_room0d_03_tiles:
    RLE  $41, $42, $41, $41, $42, $41, $41, $41, $41, $41 ;; 05:5185 ????????
    RLE  $41, $42, $41, $41, $42, $41, $41, $41, $41, $41 ;; 05:518d ????????
    RLE  $41, $42, $41, $41, $42, $51, $4c, $51, $41, $41 ;; 05:5195 ??????????
    RLE  $41, $42, $51, $51, $52, $25, $25, $25, $50, $41 ;; 05:519f ????????
    RLE  $51, $52, $25, $25, $25, $25, $25, $25, $25, $41 ;; 05:51a7 ??????
    RLE  $25, $25, $25, $35, $25, $25, $35, $25, $25, $50 ;; 05:51ad ????????
    RLE  $35, $25, $25, $25, $25, $25, $25, $25, $25, $30 ;; 05:51b5 ??????
    RLE  $35, $35, $25, $25, $25, $25, $25, $25, $25, $41 ;; 05:51bb ??????

map00_room0e_03_script:
    SCRIPT_IDX script_0076                             ;; 05:51c1 $76 $00
    db   $ff                                           ;; 05:51c3 $ff

map00_room0e_03_tiles:
    RLE  $42, $42, $42, $49, $49, $49, $10, $11, $11, $11 ;; 05:51c4 ????
    RLE  $42, $42, $52, $49, $49, $49, $10, $11, $11, $11 ;; 05:51c8 ??????
    RLE  $42, $52, $49, $49, $49, $49, $20, $21, $21, $21 ;; 05:51ce ??????
    RLE  $52, $49, $49, $49, $49, $49, $1b, $49, $49, $49 ;; 05:51d4 ??????
    RLE  $40, $49, $49, $49, $1b, $49, $1b, $49, $49, $49 ;; 05:51da ??????
    RLE  $41, $30, $40, $49, $49, $49, $49, $49, $49, $49 ;; 05:51e0 ??????
    RLE  $41, $41, $41, $40, $49, $49, $49, $49, $30, $40 ;; 05:51e6 ??????
    RLE  $41, $41, $41, $41, $40, $30, $40, $30, $41, $41 ;; 05:51ec ????????

map00_room0f_03_script:
    SCRIPT_IDX script_007c                             ;; 05:51f4 $7c $00
    db   $ff                                           ;; 05:51f6 $ff

map00_room0f_03_tiles:
    RLE  $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ;; 05:51f7 ????
    RLE  $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ;; 05:51fb ????
    RLE  $21, $21, $21, $11, $11, $11, $11, $11, $11, $11 ;; 05:51ff ????
    RLE  $49, $49, $49, $20, $21, $21, $11, $11, $11, $11 ;; 05:5203 ??????
    RLE  $49, $49, $49, $49, $49, $49, $20, $11, $11, $11 ;; 05:5209 ????
    RLE  $49, $49, $49, $1b, $1b, $49, $49, $20, $11, $11 ;; 05:520d ????????
    RLE  $30, $40, $49, $49, $49, $49, $49, $49, $10, $11 ;; 05:5215 ??????
    RLE  $41, $41, $40, $30, $40, $49, $49, $49, $10, $11 ;; 05:521b ????????

map00_room00_04_script:
    SCRIPT_IDX script_0067                             ;; 05:5223 $67 $00
    db   $ff                                           ;; 05:5225 $ff

map00_room00_04_tiles:
    RLE  $11, $12, $41, $41, $42, $51, $51, $51, $41, $41 ;; 05:5226 ????????
    RLE  $11, $12, $50, $51, $52, $00, $00, $00, $50, $41 ;; 05:522e ????????
    RLE  $11, $12, $00, $00, $00, $00, $00, $00, $00, $41 ;; 05:5236 ??????
    RLE  $11, $12, $00, $00, $00, $00, $00, $48, $00, $50 ;; 05:523c ????????
    RLE  $11, $12, $00, $00, $00, $48, $00, $00, $00, $00 ;; 05:5244 ??????
    RLE  $11, $12, $00, $00, $00, $00, $00, $48, $00, $00 ;; 05:524a ????????
    RLE  $11, $12, $00, $30, $40, $00, $00, $00, $00, $30 ;; 05:5252 ????????
    RLE  $11, $12, $30, $41, $41, $40, $30, $40, $30, $41 ;; 05:525a ??????????

map00_room01_04_script:
    SCRIPT_IDX script_0061                             ;; 05:5264 $61 $00
    db   $ff                                           ;; 05:5266 $ff

map00_room01_04_tiles:
    RLE  $41, $42, $51, $53, $00, $00, $00, $00, $50, $41 ;; 05:5267 ????????
    RLE  $41, $52, $00, $00, $00, $00, $00, $00, $00, $41 ;; 05:526f ??????
    RLE  $41, $00, $00, $00, $00, $00, $00, $00, $00, $41 ;; 05:5275 ??????
    RLE  $53, $00, $00, $06, $07, $07, $08, $00, $00, $50 ;; 05:527b ??????????
    RLE  $00, $00, $00, $26, $27, $27, $28, $00, $00, $00 ;; 05:5285 ??????
    RLE  $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ;; 05:528b ????
    RLE  $40, $00, $00, $00, $00, $00, $00, $00, $00, $30 ;; 05:528f ??????
    RLE  $41, $31, $40, $00, $30, $31, $40, $00, $30, $41 ;; 05:5295 ??????????

map00_room02_04_script:
    SCRIPT_IDX script_0061                             ;; 05:529f $61 $00
    db   $ff                                           ;; 05:52a1 $ff

map00_room02_04_tiles:
    RLE  $42, $42, $41, $41, $42, $2b, $41, $41, $42, $41 ;; 05:52a2 ??????????
    RLE  $42, $42, $41, $41, $42, $2b, $41, $41, $42, $41 ;; 05:52ac ??????????
    RLE  $42, $42, $41, $41, $42, $2b, $41, $41, $42, $41 ;; 05:52b6 ??????????
    RLE  $52, $00, $50, $51, $52, $00, $50, $51, $52, $41 ;; 05:52c0 ??????????
    RLE  $00, $00, $00, $00, $00, $00, $00, $00, $00, $50 ;; 05:52ca ????
    RLE  $00, $00, $00, $00, $00, $00, $00, $00, $00, $30 ;; 05:52ce ????
    RLE  $40, $00, $00, $00, $00, $00, $00, $00, $00, $41 ;; 05:52d2 ??????
    RLE  $41, $31, $40, $30, $31, $40, $30, $40, $30, $41 ;; 05:52d8 ??????????

map00_room03_04_script:
    SCRIPT_IDX script_0061                             ;; 05:52e2 $61 $00
    db   $ff                                           ;; 05:52e4 $ff

map00_room03_04_tiles:
    RLE  $41, $41, $0b, $41, $41, $41, $0b, $41, $41, $41 ;; 05:52e5 ??????
    RLE  $41, $41, $0b, $41, $41, $41, $0b, $51, $51, $51 ;; 05:52eb ??????
    RLE  $41, $41, $0b, $41, $41, $41, $0b, $33, $00, $34 ;; 05:52f1 ????????
    RLE  $41, $41, $0b, $41, $41, $41, $0b, $41, $64, $42 ;; 05:52f9 ????????
    RLE  $41, $41, $0b, $51, $51, $51, $0b, $41, $41, $42 ;; 05:5301 ????????
    RLE  $41, $41, $0b, $33, $00, $34, $0b, $41, $41, $42 ;; 05:5309 ??????????
    RLE  $41, $41, $0b, $41, $64, $42, $0b, $41, $41, $42 ;; 05:5313 ??????????
    RLE  $41, $41, $0b, $41, $41, $42, $0b, $41, $41, $42 ;; 05:531d ??????????

map00_room04_04_script:
    SCRIPT_IDX script_0061                             ;; 05:5327 $61 $00
    db   $ff                                           ;; 05:5329 $ff

map00_room04_04_tiles:
    RLE  $41, $41, $41, $42, $5b, $5b, $42, $41, $41, $41 ;; 05:532a ??????
    RLE  $41, $41, $41, $42, $5b, $5b, $42, $41, $41, $41 ;; 05:5330 ??????
    RLE  $41, $41, $41, $42, $5b, $5b, $42, $41, $41, $41 ;; 05:5336 ??????
    RLE  $41, $51, $51, $42, $5b, $5b, $42, $51, $51, $51 ;; 05:533c ????????
    RLE  $53, $00, $00, $29, $29, $29, $29, $00, $00, $00 ;; 05:5344 ??????
    RLE  $33, $00, $00, $42, $5b, $5b, $42, $33, $00, $00 ;; 05:534a ??????????
    RLE  $41, $2b, $64, $42, $5b, $5b, $42, $41, $64, $64 ;; 05:5354 ??????????
    RLE  $41, $2b, $41, $42, $5b, $5b, $42, $41, $41, $41 ;; 05:535e ????????

map00_room05_04_script:
    SCRIPT_IDX script_0061                             ;; 05:5366 $61 $00
    db   $ff                                           ;; 05:5368 $ff

map00_room05_04_tiles:
    RLE  $41, $41, $2b, $41, $0b, $41, $0b, $41, $41, $41 ;; 05:5369 ????????
    RLE  $41, $41, $2b, $41, $0b, $41, $0b, $41, $41, $41 ;; 05:5371 ????????
    RLE  $41, $41, $2b, $41, $41, $41, $0b, $41, $41, $41 ;; 05:5379 ??????
    RLE  $51, $51, $2b, $51, $41, $41, $0b, $41, $0b, $41 ;; 05:537f ??????????
    RLE  $00, $00, $00, $00, $41, $41, $0b, $41, $0b, $41 ;; 05:5389 ????????
    RLE  $00, $00, $00, $34, $41, $41, $0b, $0b, $0b, $41 ;; 05:5391 ??????
    RLE  $64, $64, $64, $42, $41, $41, $41, $0b, $41, $41 ;; 05:5397 ??????
    RLE  $41, $41, $41, $42, $41, $41, $41, $0b, $41, $41 ;; 05:539d ??????

map00_room06_04_script:
    SCRIPT_IDX script_003d                             ;; 05:53a3 $3d $00
    SCRIPT_AT_POS 3, 7, script_0272                    ;; 05:53a5 $37 $72 $02
    db   $ff                                           ;; 05:53a8 $ff

map00_room06_04_tiles:
    RLE  $41, $42, $5b, $5b, $5b, $5b, $42, $41, $41, $41 ;; 05:53a9 ......
    RLE  $41, $42, $5b, $5b, $5b, $5b, $42, $41, $41, $41 ;; 05:53af ......
    RLE  $41, $42, $5b, $5b, $5b, $5b, $5d, $5d, $5d, $51 ;; 05:53b5 ......
    RLE  $41, $42, $5b, $5b, $5b, $5b, $5e, $2e, $5e, $37 ;; 05:53bb ........
    RLE  $41, $42, $5b, $5b, $5b, $5b, $33, $00, $00, $34 ;; 05:53c3 ........
    RLE  $41, $42, $5b, $5b, $5b, $5b, $41, $64, $0b, $42 ;; 05:53cb ........
    RLE  $41, $42, $5b, $5b, $5b, $5b, $41, $41, $0b, $42 ;; 05:53d3 ........
    RLE  $41, $42, $5b, $5b, $5b, $5b, $41, $41, $0b, $42 ;; 05:53db ........

map00_room07_04_script:
    SCRIPT_IDX script_0040                             ;; 05:53e3 $40 $00
    db   $ff                                           ;; 05:53e5 $ff

map00_room07_04_tiles:
    RLE  $41, $41, $51, $51, $51, $51, $51, $41, $41, $41 ;; 05:53e6 ......
    RLE  $41, $53, $00, $00, $00, $00, $00, $50, $41, $41 ;; 05:53ec ........
    RLE  $41, $33, $00, $00, $00, $00, $00, $34, $41, $41 ;; 05:53f4 ........
    RLE  $41, $41, $64, $0b, $64, $64, $0b, $42, $41, $41 ;; 05:53fc ..........
    RLE  $41, $51, $51, $0b, $41, $53, $00, $00, $50, $41 ;; 05:5406 ..........
    RLE  $53, $00, $00, $00, $50, $33, $00, $00, $34, $41 ;; 05:5410 ........
    RLE  $33, $00, $00, $00, $34, $41, $64, $0b, $42, $41 ;; 05:5418 ........
    RLE  $41, $64, $0b, $64, $42, $41, $41, $0b, $42, $41 ;; 05:5420 ..........

map00_room08_04_script:
    SCRIPT_IDX script_006a                             ;; 05:542a $6a $00
    db   $ff                                           ;; 05:542c $ff

map00_room08_04_tiles:
    RLE  $53, $05, $05, $05, $05, $05, $05, $05, $46, $46 ;; 05:542d ??????
    RLE  $40, $05, $05, $05, $05, $05, $05, $05, $05, $05 ;; 05:5433 ????
    RLE  $41, $40, $05, $05, $46, $46, $05, $05, $05, $05 ;; 05:5437 ????????
    RLE  $41, $53, $05, $05, $05, $05, $05, $05, $05, $05 ;; 05:543f ??????
    RLE  $41, $40, $05, $05, $05, $05, $46, $46, $05, $05 ;; 05:5445 ????????
    RLE  $41, $53, $05, $05, $05, $05, $05, $05, $05, $05 ;; 05:544d ??????
    RLE  $41, $40, $05, $05, $05, $05, $30, $40, $05, $05 ;; 05:5453 ????????
    RLE  $41, $41, $40, $30, $40, $30, $41, $41, $40, $30 ;; 05:545b ??????????

map00_room09_04_script:
    SCRIPT_IDX script_006d                             ;; 05:5465 $6d $00
    db   $ff                                           ;; 05:5467 $ff

map00_room09_04_tiles:
    RLE  $46, $05, $05, $05, $05, $05, $50, $51, $41, $41 ;; 05:5468 ????????
    RLE  $05, $05, $05, $05, $05, $05, $05, $05, $50, $41 ;; 05:5470 ??????
    RLE  $05, $05, $46, $05, $05, $46, $05, $05, $30, $41 ;; 05:5476 ??????????
    RLE  $05, $05, $05, $05, $05, $05, $05, $05, $50, $41 ;; 05:5480 ??????
    RLE  $05, $05, $46, $05, $05, $46, $05, $05, $05, $50 ;; 05:5486 ????????
    RLE  $05, $05, $05, $05, $05, $05, $05, $05, $05, $30 ;; 05:548e ????
    RLE  $05, $05, $30, $40, $05, $05, $05, $05, $30, $41 ;; 05:5492 ????????
    RLE  $40, $30, $41, $41, $40, $30, $40, $30, $41, $41 ;; 05:549a ??????????

map00_room0a_04_script:
    SCRIPT_IDX script_0067                             ;; 05:54a4 $67 $00
    db   $ff                                           ;; 05:54a6 $ff

map00_room0a_04_tiles:
    RLE  $41, $40, $11, $11, $42, $42, $00, $41, $41, $41 ;; 05:54a7 ????????
    RLE  $41, $53, $11, $11, $42, $42, $7f, $50, $41, $41 ;; 05:54af ??????????
    RLE  $41, $40, $11, $11, $02, $42, $7f, $7f, $41, $41 ;; 05:54b9 ??????????
    RLE  $41, $41, $11, $11, $12, $42, $7f, $7f, $50, $51 ;; 05:54c3 ??????????
    RLE  $41, $41, $40, $11, $11, $02, $33, $7f, $00, $00 ;; 05:54cd ??????????
    RLE  $41, $41, $53, $11, $11, $11, $41, $33, $00, $00 ;; 05:54d7 ????????
    RLE  $51, $53, $23, $11, $11, $11, $41, $41, $2b, $23 ;; 05:54df ????????
    RLE  $23, $23, $42, $11, $11, $11, $41, $41, $2b, $42 ;; 05:54e7 ????????

map00_room0b_04_script:
    SCRIPT_IDX script_0064                             ;; 05:54ef $64 $00
    db   $ff                                           ;; 05:54f1 $ff

map00_room0b_04_tiles:
    RLE  $41, $42, $42, $51, $51, $41, $41, $41, $41, $41 ;; 05:54f2 ????????
    RLE  $41, $42, $52, $35, $35, $50, $51, $51, $51, $41 ;; 05:54fa ????????
    RLE  $41, $42, $35, $35, $35, $35, $35, $35, $50, $41 ;; 05:5502 ??????
    RLE  $51, $52, $00, $00, $00, $00, $00, $00, $00, $41 ;; 05:5508 ??????
    RLE  $00, $00, $00, $00, $00, $00, $00, $00, $00, $41 ;; 05:550e ????
    RLE  $00, $00, $00, $00, $00, $00, $00, $00, $30, $41 ;; 05:5512 ??????
    RLE  $23, $23, $33, $00, $00, $00, $30, $31, $41, $41 ;; 05:5518 ????????
    RLE  $42, $42, $41, $00, $00, $00, $41, $41, $41, $41 ;; 05:5520 ??????

map00_room0c_04_script:
    SCRIPT_IDX script_0070                             ;; 05:5526 $70 $00
    db   $ff                                           ;; 05:5528 $ff

map00_room0c_04_tiles:
    RLE  $41, $42, $25, $25, $25, $25, $25, $25, $35, $35 ;; 05:5529 ??????
    RLE  $41, $52, $25, $25, $25, $25, $3d, $25, $25, $35 ;; 05:552f ????????
    RLE  $41, $25, $25, $25, $3e, $25, $25, $25, $25, $25 ;; 05:5537 ??????
    RLE  $41, $25, $25, $25, $25, $25, $25, $25, $3d, $25 ;; 05:553d ??????
    RLE  $41, $40, $25, $3e, $25, $25, $25, $25, $25, $25 ;; 05:5543 ??????
    RLE  $41, $41, $25, $25, $25, $25, $25, $25, $25, $25 ;; 05:5549 ??????
    RLE  $41, $41, $40, $25, $25, $30, $31, $31, $40, $25 ;; 05:554f ??????????
    RLE  $41, $41, $41, $31, $31, $41, $41, $41, $41, $31 ;; 05:5559 ??????

map00_room0d_04_script:
    SCRIPT_IDX script_0073                             ;; 05:555f $73 $00
    db   $ff                                           ;; 05:5561 $ff

map00_room0d_04_tiles:
    RLE  $35, $35, $25, $25, $25, $25, $25, $25, $25, $41 ;; 05:5562 ??????
    RLE  $35, $25, $25, $25, $25, $3d, $25, $25, $25, $50 ;; 05:5568 ??????
    RLE  $25, $25, $3e, $25, $25, $25, $3d, $25, $25, $30 ;; 05:556e ????????
    RLE  $25, $25, $25, $25, $25, $25, $25, $25, $25, $41 ;; 05:5576 ????
    RLE  $25, $3e, $25, $25, $25, $25, $25, $30, $40, $41 ;; 05:557a ????????
    RLE  $25, $25, $25, $3d, $25, $25, $25, $41, $41, $41 ;; 05:5582 ????
    RLE  $25, $25, $25, $25, $25, $25, $30, $41, $41, $41 ;; 05:5586 ????
    RLE  $31, $31, $40, $30, $40, $30, $41, $41, $41, $41 ;; 05:558a ????????

map00_room0e_04_script:
    SCRIPT_IDX script_03e5                             ;; 05:5592 $e5 $03
    db   $ff                                           ;; 05:5594 $ff

map00_room0e_04_tiles:
    RLE  $41, $42, $41, $41, $41, $41, $41, $41, $41, $41 ;; 05:5595 ??????
    RLE  $41, $42, $51, $51, $51, $51, $51, $51, $41, $41 ;; 05:559b ??????
    RLE  $41, $52, $00, $4a, $4a, $4a, $4a, $00, $50, $41 ;; 05:55a1 ????????
    RLE  $41, $00, $4a, $06, $07, $07, $08, $4a, $00, $41 ;; 05:55a9 ??????????
    RLE  $41, $00, $4a, $16, $17, $17, $18, $4a, $00, $41 ;; 05:55b3 ??????????
    RLE  $41, $00, $4a, $26, $27, $27, $28, $4a, $00, $41 ;; 05:55bd ??????????
    RLE  $41, $40, $00, $4a, $4a, $4a, $4a, $00, $25, $41 ;; 05:55c7 ????????
    RLE  $41, $41, $31, $40, $00, $00, $30, $31, $31, $41 ;; 05:55cf ??????????

map00_room0f_04_script:
    SCRIPT_IDX script_0076                             ;; 05:55d9 $76 $00
    db   $ff                                           ;; 05:55db $ff

map00_room0f_04_tiles:
    RLE  $41, $42, $41, $41, $42, $49, $49, $49, $10, $11 ;; 05:55dc ????????
    RLE  $41, $42, $51, $51, $52, $49, $49, $49, $10, $11 ;; 05:55e4 ????????
    RLE  $41, $52, $49, $49, $49, $49, $49, $49, $10, $11 ;; 05:55ec ??????
    RLE  $41, $49, $49, $1b, $49, $49, $49, $15, $11, $11 ;; 05:55f2 ????????
    RLE  $41, $49, $49, $49, $1b, $1b, $15, $11, $11, $11 ;; 05:55fa ??????
    RLE  $41, $49, $49, $49, $49, $49, $10, $11, $11, $11 ;; 05:5600 ??????
    RLE  $41, $40, $49, $49, $49, $49, $10, $11, $11, $11 ;; 05:5606 ??????
    RLE  $41, $41, $31, $40, $49, $49, $10, $11, $11, $11 ;; 05:560c ????????

map00_room00_05_script:
    SCRIPT_IDX script_0067                             ;; 05:5614 $67 $00
    db   $ff                                           ;; 05:5616 $ff

map00_room00_05_tiles:
    RLE  $11, $12, $50, $41, $41, $42, $51, $51, $41, $41 ;; 05:5617 ??????????
    RLE  $11, $11, $02, $50, $51, $52, $00, $00, $50, $41 ;; 05:5621 ??????????
    RLE  $11, $11, $11, $38, $02, $00, $00, $00, $00, $50 ;; 05:562b ??????
    RLE  $11, $11, $11, $11, $12, $00, $00, $48, $00, $00 ;; 05:5631 ????????
    RLE  $11, $11, $11, $11, $22, $00, $00, $00, $00, $00 ;; 05:5639 ??????
    RLE  $11, $11, $11, $22, $00, $00, $00, $00, $00, $30 ;; 05:563f ??????
    RLE  $11, $11, $12, $00, $00, $00, $00, $00, $30, $41 ;; 05:5645 ????????
    RLE  $11, $11, $12, $00, $00, $30, $31, $31, $41, $41 ;; 05:564d ??????????

map00_room01_05_script:
    SCRIPT_IDX script_0061                             ;; 05:5657 $61 $00
    db   $ff                                           ;; 05:5659 $ff

map00_room01_05_tiles:
    RLE  $41, $41, $41, $00, $41, $41, $41, $00, $41, $41 ;; 05:565a ??????
    RLE  $41, $41, $41, $00, $50, $51, $53, $00, $50, $41 ;; 05:5660 ????????
    RLE  $51, $51, $53, $00, $00, $00, $00, $00, $00, $50 ;; 05:5668 ??????
    RLE  $00, $00, $00, $00, $00, $00, $00, $00, $00, $30 ;; 05:566e ????
    RLE  $00, $00, $00, $48, $00, $00, $00, $48, $00, $41 ;; 05:5672 ??????
    RLE  $40, $00, $00, $00, $00, $00, $00, $00, $00, $41 ;; 05:5678 ??????
    RLE  $41, $00, $00, $00, $00, $30, $40, $00, $00, $50 ;; 05:567e ????????
    RLE  $41, $40, $00, $30, $31, $41, $41, $00, $00, $30 ;; 05:5686 ??????????

map00_room02_05_script:
    SCRIPT_IDX script_0064                             ;; 05:5690 $64 $00
    db   $ff                                           ;; 05:5692 $ff

map00_room02_05_tiles:
    RLE  $41, $41, $41, $41, $41, $41, $41, $41, $41, $41 ;; 05:5693 ????
    RLE  $41, $41, $51, $51, $51, $51, $51, $51, $51, $51 ;; 05:5697 ??????
    RLE  $41, $41, $00, $00, $00, $00, $00, $00, $00, $00 ;; 05:569d ??????
    RLE  $41, $41, $00, $00, $00, $00, $00, $00, $00, $00 ;; 05:56a3 ??????
    RLE  $41, $41, $33, $00, $00, $00, $00, $00, $00, $00 ;; 05:56a9 ??????
    RLE  $41, $41, $41, $64, $2b, $64, $64, $64, $64, $64 ;; 05:56af ??????
    RLE  $41, $41, $41, $41, $2b, $41, $41, $41, $41, $41 ;; 05:56b5 ??????
    RLE  $41, $41, $41, $41, $2b, $41, $41, $41, $41, $41 ;; 05:56bb ??????

map00_room03_05_script:
    SCRIPT_IDX script_0064                             ;; 05:56c1 $64 $00
    db   $ff                                           ;; 05:56c3 $ff

map00_room03_05_tiles:
    RLE  $41, $41, $0b, $41, $41, $41, $0b, $41, $41, $41 ;; 05:56c4 ??????
    RLE  $51, $51, $0b, $51, $41, $41, $0b, $41, $41, $41 ;; 05:56ca ????????
    RLE  $00, $00, $00, $00, $50, $51, $0b, $51, $51, $41 ;; 05:56d2 ????????
    RLE  $00, $00, $00, $00, $00, $00, $00, $00, $00, $41 ;; 05:56da ????
    RLE  $00, $00, $00, $00, $00, $00, $00, $00, $00, $41 ;; 05:56de ????
    RLE  $64, $64, $33, $00, $00, $00, $00, $00, $34, $41 ;; 05:56e2 ????????
    RLE  $41, $41, $41, $64, $64, $64, $64, $64, $42, $41 ;; 05:56ea ??????
    RLE  $41, $41, $41, $41, $41, $41, $41, $41, $42, $41 ;; 05:56f0 ??????

map00_room04_05_script:
    SCRIPT_IDX script_0046                             ;; 05:56f6 $46 $00
    db   $ff                                           ;; 05:56f8 $ff

map00_room04_05_tiles:
    RLE  $41, $2b, $51, $42, $5b, $5b, $42, $51, $51, $51 ;; 05:56f9 ????????
    RLE  $63, $00, $24, $03, $5b, $5b, $17, $17, $17, $17 ;; 05:5701 ????????
    RLE  $61, $00, $24, $26, $27, $17, $17, $17, $17, $17 ;; 05:5709 ????????
    RLE  $63, $00, $00, $24, $24, $16, $17, $17, $17, $17 ;; 05:5711 ????????
    RLE  $61, $24, $00, $24, $24, $17, $17, $17, $17, $17 ;; 05:5719 ????????
    RLE  $41, $61, $00, $24, $24, $17, $17, $17, $17, $17 ;; 05:5721 ????????
    RLE  $41, $63, $00, $24, $24, $17, $17, $17, $17, $27 ;; 05:5729 ????????
    RLE  $41, $24, $00, $24, $24, $17, $17, $17, $18, $37 ;; 05:5731 ????????

map00_room05_05_script:
    SCRIPT_IDX script_003d                             ;; 05:5739 $3d $00
    SCRIPT_AT_POS 2, 4, script_0385                    ;; 05:573b $24 $85 $03
    db   $ff                                           ;; 05:573e $ff

map00_room05_05_tiles:
    RLE  $51, $51, $41, $41, $41, $41, $41, $0b, $41, $41 ;; 05:573f ????????
    RLE  $17, $04, $50, $5d, $5d, $5d, $51, $0b, $41, $41 ;; 05:5747 ????????
    RLE  $17, $18, $00, $5e, $2e, $5e, $69, $00, $41, $41 ;; 05:574f ??????????
    RLE  $17, $18, $00, $00, $00, $00, $00, $00, $50, $51 ;; 05:5759 ??????
    RLE  $17, $18, $00, $00, $00, $00, $00, $00, $06, $07 ;; 05:575f ??????
    RLE  $17, $17, $07, $07, $07, $07, $07, $07, $17, $17 ;; 05:5765 ??????
    RLE  $27, $27, $27, $27, $27, $27, $27, $27, $27, $27 ;; 05:576b ????
    RLE  $37, $37, $37, $37, $37, $37, $37, $37, $37, $37 ;; 05:576f ????

map00_room06_05_script:
    SCRIPT_IDX script_003d                             ;; 05:5773 $3d $00
    db   $ff                                           ;; 05:5775 $ff

map00_room06_05_tiles:
    RLE  $41, $42, $5b, $5b, $5b, $5b, $42, $41, $0b, $41 ;; 05:5776 ........
    RLE  $41, $42, $5b, $5b, $5b, $5b, $42, $41, $0b, $41 ;; 05:577e ........
    RLE  $41, $42, $5b, $5b, $5b, $5b, $42, $51, $0b, $51 ;; 05:5786 ........
    RLE  $41, $16, $5b, $5b, $5b, $5b, $18, $00, $00, $00 ;; 05:578e ......
    RLE  $07, $17, $17, $17, $17, $17, $18, $00, $00, $00 ;; 05:5794 ......
    RLE  $17, $17, $17, $17, $17, $27, $27, $17, $17, $17 ;; 05:579a ......
    RLE  $27, $27, $27, $27, $14, $00, $00, $00, $00, $00 ;; 05:57a0 ......
    RLE  $37, $37, $37, $37, $37, $00, $37, $37, $37, $37 ;; 05:57a6 ......

map00_room07_05_script:
    SCRIPT_IDX script_0040                             ;; 05:57ac $40 $00
    db   $ff                                           ;; 05:57ae $ff

map00_room07_05_tiles:
    RLE  $41, $41, $0b, $41, $41, $41, $51, $0b, $51, $51 ;; 05:57af ........
    RLE  $41, $41, $0b, $41, $41, $41, $53, $00, $00, $00 ;; 05:57b7 ......
    RLE  $51, $51, $0b, $51, $51, $41, $33, $00, $00, $00 ;; 05:57bd ........
    RLE  $00, $00, $00, $00, $00, $00, $41, $0b, $64, $64 ;; 05:57c5 ......
    RLE  $00, $00, $00, $00, $00, $00, $41, $0b, $51, $41 ;; 05:57cb ......
    RLE  $17, $17, $17, $17, $17, $04, $50, $0b, $41, $41 ;; 05:57d1 ........
    RLE  $00, $00, $00, $00, $00, $17, $00, $00, $00, $30 ;; 05:57d9 ......
    RLE  $37, $37, $00, $00, $00, $17, $00, $00, $00, $41 ;; 05:57df ......

map00_room08_05_script:
    SCRIPT_IDX script_0040                             ;; 05:57e5 $40 $00
    db   $ff                                           ;; 05:57e7 $ff

map00_room08_05_tiles:
    RLE  $51, $51, $51, $51, $41, $41, $41, $41, $41, $41 ;; 05:57e8 ....
    RLE  $00, $00, $00, $00, $50, $41, $41, $51, $51, $51 ;; 05:57ec ......
    RLE  $00, $00, $00, $00, $34, $41, $53, $00, $00, $00 ;; 05:57f2 ......
    RLE  $64, $64, $0b, $64, $42, $41, $33, $00, $00, $00 ;; 05:57f8 ........
    RLE  $41, $41, $0b, $51, $42, $51, $41, $0b, $64, $64 ;; 05:5800 ..........
    RLE  $41, $53, $00, $00, $00, $00, $50, $0b, $51, $41 ;; 05:580a ........
    RLE  $41, $33, $00, $00, $00, $00, $00, $00, $34, $41 ;; 05:5812 ......
    RLE  $41, $41, $64, $64, $0b, $64, $64, $64, $42, $41 ;; 05:5818 ........

map00_room09_05_script:
    SCRIPT_IDX script_0040                             ;; 05:5820 $40 $00
    SCRIPT_AT_POS 4, 6, script_039b                    ;; 05:5822 $46 $9b $03
    db   $ff                                           ;; 05:5825 $ff

map00_room09_05_tiles:
    RLE  $41, $41, $41, $51, $51, $51, $51, $51, $41, $41 ;; 05:5826 ......
    RLE  $51, $51, $53, $00, $00, $00, $00, $00, $50, $41 ;; 05:582c ........
    RLE  $00, $00, $00, $00, $00, $00, $00, $00, $34, $41 ;; 05:5834 ......
    RLE  $00, $00, $00, $34, $0b, $64, $64, $64, $42, $41 ;; 05:583a ......
    RLE  $64, $64, $64, $42, $0b, $51, $4c, $41, $42, $41 ;; 05:5840 ........
    RLE  $41, $41, $41, $52, $00, $00, $00, $50, $42, $41 ;; 05:5848 ......
    RLE  $41, $41, $41, $33, $00, $00, $00, $34, $42, $41 ;; 05:584e ......
    RLE  $41, $41, $41, $41, $64, $64, $64, $42, $42, $41 ;; 05:5854 ......

map00_room0a_05_script:
    SCRIPT_IDX script_0067                             ;; 05:585a $67 $00
    SCRIPT_AT_POS 5, 7, script_0474                    ;; 05:585c $57 $74 $04
    db   $ff                                           ;; 05:585f $ff

map00_room0a_05_tiles:
    RLE  $42, $42, $42, $10, $11, $12, $41, $41, $2b, $42 ;; 05:5860 ????????
    RLE  $42, $42, $52, $10, $11, $12, $50, $41, $2b, $42 ;; 05:5868 ??????????
    RLE  $52, $15, $38, $11, $11, $11, $02, $50, $2b, $42 ;; 05:5872 ????????
    RLE  $37, $10, $11, $11, $11, $11, $11, $02, $00, $37 ;; 05:587a ????????
    RLE  $37, $10, $11, $11, $11, $11, $11, $12, $00, $37 ;; 05:5882 ????????
    RLE  $37, $20, $11, $11, $11, $11, $11, $7b, $00, $37 ;; 05:588a ????????
    RLE  $37, $37, $20, $21, $21, $11, $21, $22, $00, $37 ;; 05:5892 ??????????
    RLE  $37, $37, $37, $37, $37, $17, $37, $37, $37, $37 ;; 05:589c ??????

map00_room0b_05_script:
    SCRIPT_IDX script_0064                             ;; 05:58a2 $64 $00
    db   $ff                                           ;; 05:58a4 $ff

map00_room0b_05_tiles:
    RLE  $41, $41, $53, $00, $00, $00, $41, $41, $41, $41 ;; 05:58a5 ??????
    RLE  $41, $41, $00, $00, $00, $00, $41, $41, $41, $41 ;; 05:58ab ??????
    RLE  $41, $41, $00, $00, $00, $00, $50, $41, $41, $41 ;; 05:58b1 ??????
    RLE  $37, $50, $00, $00, $00, $00, $00, $50, $41, $41 ;; 05:58b7 ????????
    RLE  $37, $37, $40, $00, $00, $00, $00, $00, $41, $41 ;; 05:58bf ????????
    RLE  $37, $37, $41, $40, $00, $00, $00, $00, $41, $41 ;; 05:58c7 ????????
    RLE  $37, $37, $41, $41, $00, $00, $00, $00, $41, $41 ;; 05:58cf ????????
    RLE  $37, $37, $41, $41, $00, $00, $00, $00, $41, $41 ;; 05:58d7 ????????

map00_room0c_05_script:
    SCRIPT_IDX script_049d                             ;; 05:58df $9d $04
    SCRIPT_AT_POS 3, 4, script_028a                    ;; 05:58e1 $34 $8a $02
    SCRIPT_AT_POS 3, 5, script_028a                    ;; 05:58e4 $35 $8a $02
    db   $ff                                           ;; 05:58e7 $ff

map00_room0c_05_tiles:
    RLE  $55, $0a, $55, $55, $55, $55, $55, $55, $09, $55 ;; 05:58e8 ??????
    RLE  $55, $0a, $55, $55, $79, $79, $55, $55, $09, $55 ;; 05:58ee ??????????
    RLE  $55, $0a, $55, $55, $1f, $1f, $55, $55, $09, $55 ;; 05:58f8 ??????????
    RLE  $55, $0a, $54, $54, $6a, $6a, $54, $54, $09, $55 ;; 05:5902 ??????????
    RLE  $54, $1a, $00, $00, $00, $00, $00, $00, $19, $54 ;; 05:590c ??????
    RLE  $64, $33, $00, $00, $00, $00, $00, $00, $34, $64 ;; 05:5912 ??????
    RLE  $41, $41, $64, $33, $00, $00, $30, $64, $42, $41 ;; 05:5918 ??????????
    RLE  $41, $41, $41, $41, $2b, $2b, $41, $41, $42, $41 ;; 05:5922 ????????

map00_room0d_05_script:
    SCRIPT_IDX script_0076                             ;; 05:592a $76 $00
    db   $ff                                           ;; 05:592c $ff

map00_room0d_05_tiles:
    RLE  $41, $42, $41, $41, $41, $41, $41, $41, $41, $41 ;; 05:592d ??????
    RLE  $41, $42, $51, $51, $51, $51, $51, $51, $51, $51 ;; 05:5933 ??????
    RLE  $41, $52, $00, $00, $00, $00, $00, $00, $49, $49 ;; 05:5939 ??????
    RLE  $41, $00, $00, $1b, $00, $49, $49, $49, $49, $49 ;; 05:593f ????????
    RLE  $41, $00, $00, $00, $1b, $1b, $03, $17, $17, $17 ;; 05:5947 ??????
    RLE  $41, $00, $00, $00, $49, $1b, $17, $17, $17, $17 ;; 05:594d ??????
    RLE  $41, $40, $00, $00, $00, $49, $17, $17, $30, $40 ;; 05:5953 ????????
    RLE  $41, $41, $40, $30, $40, $49, $17, $17, $41, $41 ;; 05:595b ??????????

map00_room0e_05_script:
    SCRIPT_IDX script_0076                             ;; 05:5965 $76 $00
    db   $ff                                           ;; 05:5967 $ff

map00_room0e_05_tiles:
    RLE  $41, $41, $41, $41, $00, $00, $41, $41, $41, $41 ;; 05:5968 ??????
    RLE  $51, $51, $51, $53, $00, $00, $41, $41, $41, $41 ;; 05:596e ??????
    RLE  $00, $00, $00, $00, $00, $00, $50, $51, $41, $41 ;; 05:5974 ??????
    RLE  $00, $00, $00, $49, $49, $49, $49, $1b, $50, $41 ;; 05:597a ??????
    RLE  $17, $17, $17, $17, $17, $04, $49, $49, $1b, $41 ;; 05:5980 ????????
    RLE  $17, $17, $17, $17, $17, $17, $49, $49, $49, $50 ;; 05:5988 ????
    RLE  $30, $40, $00, $4e, $17, $17, $00, $49, $49, $30 ;; 05:598c ??????????
    RLE  $41, $41, $00, $00, $17, $17, $00, $00, $00, $41 ;; 05:5996 ????????

map00_room0f_05_script:
    SCRIPT_IDX script_007c                             ;; 05:599e $7c $00
    db   $ff                                           ;; 05:59a0 $ff

map00_room0f_05_tiles:
    RLE  $42, $51, $51, $53, $49, $49, $10, $11, $11, $11 ;; 05:59a1 ????????
    RLE  $52, $4e, $49, $49, $49, $49, $10, $11, $11, $11 ;; 05:59a9 ??????
    RLE  $40, $15, $38, $02, $49, $15, $11, $11, $11, $11 ;; 05:59af ????????
    RLE  $53, $10, $11, $11, $38, $11, $11, $11, $11, $11 ;; 05:59b7 ????????
    RLE  $40, $20, $11, $11, $21, $22, $10, $11, $11, $11 ;; 05:59bf ????????
    RLE  $41, $49, $20, $22, $4e, $15, $11, $11, $11, $11 ;; 05:59c7 ????????
    RLE  $41, $49, $49, $49, $49, $10, $11, $11, $11, $11 ;; 05:59cf ??????
    RLE  $41, $40, $49, $49, $49, $10, $11, $11, $11, $11 ;; 05:59d5 ??????

map00_room00_06_script:
    SCRIPT_IDX script_0067                             ;; 05:59db $67 $00
    db   $ff                                           ;; 05:59dd $ff

map00_room00_06_tiles:
    RLE  $11, $11, $12, $00, $00, $50, $51, $41, $41, $41 ;; 05:59de ????????
    RLE  $11, $11, $12, $00, $00, $00, $00, $50, $51, $41 ;; 05:59e6 ????????
    RLE  $11, $11, $12, $00, $48, $00, $00, $00, $00, $50 ;; 05:59ee ????????
    RLE  $11, $11, $12, $00, $00, $00, $00, $00, $00, $00 ;; 05:59f6 ??????
    RLE  $11, $11, $12, $00, $00, $48, $00, $00, $00, $00 ;; 05:59fc ????????
    RLE  $11, $11, $11, $02, $00, $00, $00, $00, $00, $30 ;; 05:5a04 ??????
    RLE  $11, $11, $11, $11, $38, $02, $00, $00, $00, $41 ;; 05:5a0a ??????
    RLE  $11, $11, $11, $11, $11, $12, $30, $40, $30, $41 ;; 05:5a10 ????????

map00_room01_06_script:
    SCRIPT_IDX script_0061                             ;; 05:5a18 $61 $00
    db   $ff                                           ;; 05:5a1a $ff

map00_room01_06_tiles:
    RLE  $41, $41, $00, $50, $51, $51, $53, $00, $00, $41 ;; 05:5a1b ??????????
    RLE  $41, $53, $00, $00, $00, $00, $00, $00, $00, $41 ;; 05:5a25 ??????
    RLE  $53, $00, $00, $00, $00, $00, $00, $00, $00, $41 ;; 05:5a2b ??????
    RLE  $00, $00, $00, $00, $00, $00, $48, $48, $48, $50 ;; 05:5a31 ????
    RLE  $00, $00, $00, $00, $00, $48, $48, $00, $00, $00 ;; 05:5a35 ??????
    RLE  $00, $00, $00, $00, $48, $48, $00, $00, $00, $00 ;; 05:5a3b ??????
    RLE  $40, $00, $00, $48, $30, $40, $00, $00, $00, $30 ;; 05:5a41 ????????
    RLE  $41, $40, $00, $30, $41, $41, $00, $00, $00, $41 ;; 05:5a49 ????????

map00_room02_06_script:
    SCRIPT_IDX script_0061                             ;; 05:5a51 $61 $00
    db   $ff                                           ;; 05:5a53 $ff

map00_room02_06_tiles:
    RLE  $41, $41, $41, $41, $2b, $41, $41, $41, $41, $41 ;; 05:5a54 ??????
    RLE  $41, $41, $41, $41, $2b, $51, $51, $51, $41, $41 ;; 05:5a5a ??????
    RLE  $41, $41, $41, $53, $00, $48, $48, $48, $50, $41 ;; 05:5a60 ??????
    RLE  $51, $51, $53, $00, $00, $00, $00, $48, $48, $41 ;; 05:5a66 ????????
    RLE  $00, $00, $00, $00, $00, $00, $00, $00, $48, $41 ;; 05:5a6e ??????
    RLE  $00, $00, $00, $00, $00, $00, $00, $00, $00, $50 ;; 05:5a74 ????
    RLE  $40, $00, $00, $00, $00, $30, $40, $00, $00, $30 ;; 05:5a78 ????????
    RLE  $41, $40, $30, $40, $30, $41, $41, $40, $30, $41 ;; 05:5a80 ??????????

map00_room03_06_script:
    SCRIPT_IDX script_0223                             ;; 05:5a8a $23 $02
    db   $ff                                           ;; 05:5a8c $ff

map00_room03_06_tiles:
    RLE  $41, $42, $41, $41, $41, $41, $41, $41, $42, $51 ;; 05:5a8d ??????
    RLE  $41, $42, $51, $51, $51, $51, $51, $51, $75, $24 ;; 05:5a93 ??????
    RLE  $41, $52, $24, $7f, $7f, $7f, $24, $24, $24, $24 ;; 05:5a99 ??????
    RLE  $41, $24, $7f, $7f, $7f, $7f, $7f, $7f, $24, $24 ;; 05:5a9f ??????
    RLE  $41, $24, $24, $00, $00, $7f, $7f, $7f, $00, $00 ;; 05:5aa5 ????????
    RLE  $41, $24, $24, $00, $7f, $7f, $7f, $24, $24, $24 ;; 05:5aad ??????
    RLE  $41, $61, $00, $00, $24, $7f, $7f, $7f, $7f, $24 ;; 05:5ab3 ????????
    RLE  $41, $41, $00, $24, $24, $06, $07, $07, $07, $07 ;; 05:5abb ????????

map00_room04_06_script:
    SCRIPT_IDX script_0067                             ;; 05:5ac3 $67 $00
    db   $ff                                           ;; 05:5ac5 $ff

map00_room04_06_tiles:
    RLE  $63, $24, $00, $24, $24, $16, $17, $17, $18, $37 ;; 05:5ac6 ??????????
    RLE  $24, $24, $00, $24, $24, $16, $17, $17, $18, $37 ;; 05:5ad0 ??????????
    RLE  $24, $24, $00, $24, $24, $16, $17, $17, $18, $37 ;; 05:5ada ??????????
    RLE  $24, $00, $00, $24, $24, $16, $17, $17, $18, $37 ;; 05:5ae4 ??????????
    RLE  $00, $00, $24, $24, $24, $16, $17, $17, $18, $51 ;; 05:5aee ????????
    RLE  $24, $24, $24, $24, $24, $16, $17, $27, $27, $27 ;; 05:5af6 ??????
    RLE  $24, $24, $24, $24, $24, $16, $18, $00, $00, $00 ;; 05:5afc ??????
    RLE  $07, $07, $07, $07, $07, $17, $18, $00, $00, $37 ;; 05:5b02 ????????

map00_room05_06_script:
    SCRIPT_IDX script_003d                             ;; 05:5b0a $3d $00
    db   $ff                                           ;; 05:5b0c $ff

map00_room05_06_tiles:
    RLE  $37, $37, $37, $37, $37, $37, $37, $37, $37, $37 ;; 05:5b0d ....
    RLE  $37, $37, $51, $51, $51, $51, $51, $51, $37, $37 ;; 05:5b11 ......
    RLE  $37, $51, $69, $00, $00, $00, $00, $00, $51, $37 ;; 05:5b17 ........
    RLE  $37, $6e, $00, $00, $00, $00, $00, $00, $00, $51 ;; 05:5b1f ......
    RLE  $51, $69, $00, $00, $00, $00, $00, $00, $00, $00 ;; 05:5b25 ......
    RLE  $17, $17, $17, $04, $00, $00, $00, $00, $00, $37 ;; 05:5b2b ......
    RLE  $00, $00, $00, $17, $00, $00, $00, $00, $37, $37 ;; 05:5b31 ......
    RLE  $37, $00, $00, $17, $37, $37, $37, $37, $37, $37 ;; 05:5b37 ......

map00_room06_06_script:
    SCRIPT_IDX script_0043                             ;; 05:5b3d $43 $00
    db   $ff                                           ;; 05:5b3f $ff

map00_room06_06_tiles:
    RLE  $37, $37, $37, $37, $37, $6e, $37, $37, $37, $37 ;; 05:5b40 ......
    RLE  $37, $51, $51, $51, $51, $69, $51, $51, $51, $37 ;; 05:5b46 ......
    RLE  $37, $6e, $00, $00, $00, $00, $00, $00, $00, $51 ;; 05:5b4c ......
    RLE  $51, $69, $37, $00, $00, $00, $37, $37, $00, $00 ;; 05:5b52 ........
    RLE  $00, $00, $00, $00, $37, $00, $00, $00, $00, $37 ;; 05:5b5a ......
    RLE  $37, $00, $37, $00, $00, $00, $37, $37, $00, $37 ;; 05:5b60 ........
    RLE  $37, $00, $00, $00, $00, $00, $00, $00, $00, $37 ;; 05:5b68 ......
    RLE  $37, $37, $37, $37, $37, $37, $37, $37, $37, $37 ;; 05:5b6e ....

map00_room07_06_script:
    SCRIPT_IDX script_0043                             ;; 05:5b72 $43 $00
    db   $ff                                           ;; 05:5b74 $ff

map00_room07_06_tiles:
    RLE  $37, $37, $6e, $00, $00, $17, $00, $00, $00, $41 ;; 05:5b75 ........
    RLE  $37, $34, $69, $00, $00, $17, $00, $00, $00, $50 ;; 05:5b7d ........
    RLE  $51, $52, $00, $00, $00, $17, $00, $00, $00, $00 ;; 05:5b85 ......
    RLE  $00, $00, $00, $00, $00, $17, $00, $00, $00, $00 ;; 05:5b8b ......
    RLE  $37, $00, $00, $00, $00, $13, $17, $17, $17, $17 ;; 05:5b91 ......
    RLE  $37, $37, $00, $00, $00, $00, $00, $00, $00, $36 ;; 05:5b97 ......
    RLE  $37, $37, $00, $00, $00, $00, $00, $00, $00, $36 ;; 05:5b9d ......
    RLE  $37, $37, $00, $00, $36, $36, $36, $36, $36, $36 ;; 05:5ba3 ......

map00_room08_06_script:
    SCRIPT_IDX script_0040                             ;; 05:5ba9 $40 $00
    db   $ff                                           ;; 05:5bab $ff

map00_room08_06_tiles:
    RLE  $41, $41, $41, $41, $0b, $41, $41, $41, $41, $41 ;; 05:5bac ......
    RLE  $51, $51, $51, $51, $0b, $51, $41, $41, $41, $41 ;; 05:5bb2 ......
    RLE  $00, $00, $00, $00, $00, $00, $50, $41, $41, $41 ;; 05:5bb8 ....
    RLE  $00, $00, $00, $00, $00, $00, $00, $50, $51, $51 ;; 05:5bbc ......
    RLE  $17, $17, $17, $17, $2a, $17, $17, $17, $17, $17 ;; 05:5bc2 ......
    RLE  $36, $36, $00, $00, $00, $00, $00, $00, $00, $00 ;; 05:5bc8 ......
    RLE  $36, $36, $36, $00, $00, $00, $00, $00, $00, $00 ;; 05:5bce ....
    RLE  $36, $36, $36, $36, $36, $36, $36, $36, $36, $36 ;; 05:5bd2 ....

map00_room09_06_script:
    SCRIPT_IDX script_0043                             ;; 05:5bd6 $43 $00
    SCRIPT_AT_POS 1, 6, script_039c                    ;; 05:5bd8 $16 $9c $03
    db   $ff                                           ;; 05:5bdb $ff

map00_room09_06_tiles:
    RLE  $41, $42, $41, $41, $42, $41, $41, $41, $41, $41 ;; 05:5bdc ........
    RLE  $41, $42, $41, $41, $42, $51, $4c, $51, $51, $51 ;; 05:5be4 ........
    RLE  $41, $42, $51, $51, $52, $00, $00, $00, $00, $00 ;; 05:5bec ........
    RLE  $51, $52, $00, $00, $00, $00, $00, $00, $00, $00 ;; 05:5bf4 ......
    RLE  $17, $17, $17, $17, $17, $17, $17, $17, $17, $17 ;; 05:5bfa ....
    RLE  $00, $00, $00, $00, $17, $00, $00, $00, $00, $00 ;; 05:5bfe ......
    RLE  $00, $00, $00, $00, $29, $00, $00, $00, $00, $00 ;; 05:5c04 ......
    RLE  $36, $36, $36, $36, $17, $00, $00, $36, $36, $36 ;; 05:5c0a ......

map00_room0a_06_script:
    SCRIPT_IDX script_0040                             ;; 05:5c10 $40 $00
    db   $ff                                           ;; 05:5c12 $ff

map00_room0a_06_tiles:
    RLE  $41, $41, $41, $41, $42, $17, $36, $36, $36, $36 ;; 05:5c13 ......
    RLE  $51, $51, $51, $51, $52, $17, $36, $36, $36, $36 ;; 05:5c19 ......
    RLE  $00, $00, $00, $00, $00, $29, $00, $00, $00, $00 ;; 05:5c1f ......
    RLE  $00, $00, $00, $00, $00, $17, $00, $00, $00, $00 ;; 05:5c25 ......
    RLE  $17, $17, $17, $17, $17, $17, $00, $00, $00, $00 ;; 05:5c2b ....
    RLE  $00, $00, $00, $00, $00, $17, $36, $36, $36, $36 ;; 05:5c2f ......
    RLE  $00, $00, $00, $00, $00, $17, $36, $36, $36, $36 ;; 05:5c35 ......
    RLE  $36, $00, $00, $00, $00, $17, $36, $36, $36, $36 ;; 05:5c3b ......

map00_room0b_06_script:
    SCRIPT_IDX script_0040                             ;; 05:5c41 $40 $00
    db   $ff                                           ;; 05:5c43 $ff

map00_room0b_06_tiles:
    RLE  $36, $36, $50, $41, $00, $00, $00, $00, $41, $41 ;; 05:5c44 ........
    RLE  $36, $36, $36, $50, $00, $00, $00, $00, $41, $41 ;; 05:5c4c ......
    RLE  $00, $00, $36, $36, $33, $00, $00, $00, $50, $51 ;; 05:5c52 ........
    RLE  $00, $00, $00, $36, $41, $00, $00, $00, $00, $35 ;; 05:5c5a ......
    RLE  $00, $00, $00, $00, $41, $00, $00, $00, $00, $00 ;; 05:5c60 ......
    RLE  $36, $00, $00, $00, $41, $33, $00, $00, $00, $00 ;; 05:5c66 ......
    RLE  $36, $36, $00, $00, $50, $41, $64, $64, $64, $64 ;; 05:5c6c ........
    RLE  $36, $36, $36, $00, $00, $41, $41, $41, $41, $41 ;; 05:5c74 ......

map00_room0c_06_script:
    SCRIPT_IDX script_0064                             ;; 05:5c7a $64 $00
    db   $ff                                           ;; 05:5c7c $ff

map00_room0c_06_tiles:
    RLE  $41, $41, $41, $41, $2b, $2b, $41, $41, $42, $41 ;; 05:5c7d ????????
    RLE  $41, $41, $41, $41, $2b, $2b, $41, $41, $42, $41 ;; 05:5c85 ????????
    RLE  $51, $41, $41, $41, $2b, $2b, $41, $41, $42, $41 ;; 05:5c8d ????????
    RLE  $35, $50, $51, $51, $2b, $2b, $51, $51, $52, $41 ;; 05:5c95 ??????????
    RLE  $00, $00, $00, $00, $00, $00, $00, $00, $00, $51 ;; 05:5c9f ????
    RLE  $00, $00, $00, $00, $00, $00, $00, $00, $34, $03 ;; 05:5ca3 ??????
    RLE  $64, $64, $64, $64, $64, $64, $64, $64, $42, $17 ;; 05:5ca9 ??????
    RLE  $41, $41, $41, $41, $41, $41, $41, $41, $42, $17 ;; 05:5caf ??????

map00_room0d_06_script:
    SCRIPT_IDX script_003d                             ;; 05:5cb5 $3d $00
    SCRIPT_AT_POS 4, 5, script_0474                    ;; 05:5cb7 $45 $74 $04
    db   $ff                                           ;; 05:5cba $ff

map00_room0d_06_tiles:
    RLE  $41, $42, $42, $41, $42, $49, $17, $17, $41, $41 ;; 05:5cbb ??????????
    RLE  $41, $42, $42, $51, $52, $49, $17, $17, $50, $51 ;; 05:5cc5 ??????????
    RLE  $41, $42, $52, $1b, $49, $49, $17, $17, $00, $00 ;; 05:5ccf ??????????
    RLE  $41, $42, $1b, $00, $49, $49, $17, $17, $00, $00 ;; 05:5cd9 ??????????
    RLE  $51, $52, $1b, $49, $49, $7b, $17, $17, $00, $00 ;; 05:5ce3 ??????????
    RLE  $17, $17, $17, $17, $17, $17, $17, $17, $00, $00 ;; 05:5ced ??????
    RLE  $17, $17, $17, $17, $17, $17, $17, $14, $30, $40 ;; 05:5cf3 ??????
    RLE  $17, $30, $40, $30, $31, $31, $40, $30, $41, $41 ;; 05:5cf9 ??????????

map00_room0e_06_script:
    SCRIPT_IDX script_0076                             ;; 05:5d03 $76 $00
    db   $ff                                           ;; 05:5d05 $ff

map00_room0e_06_tiles:
    RLE  $41, $41, $00, $00, $17, $17, $00, $00, $00, $41 ;; 05:5d06 ????????
    RLE  $51, $53, $00, $49, $17, $17, $00, $00, $00, $41 ;; 05:5d0e ????????
    RLE  $00, $00, $49, $1b, $17, $17, $00, $00, $1b, $50 ;; 05:5d16 ??????????
    RLE  $00, $00, $1b, $49, $17, $17, $00, $00, $00, $49 ;; 05:5d20 ????????
    RLE  $00, $00, $1b, $49, $17, $17, $1b, $00, $49, $49 ;; 05:5d28 ??????????
    RLE  $00, $00, $49, $49, $17, $17, $4e, $00, $00, $30 ;; 05:5d32 ??????????
    RLE  $30, $40, $00, $49, $17, $17, $30, $40, $30, $41 ;; 05:5d3c ??????????
    RLE  $41, $41, $00, $00, $17, $17, $41, $41, $41, $41 ;; 05:5d46 ????????

map00_room0f_06_script:
    SCRIPT_IDX script_007c                             ;; 05:5d4e $7c $00
    db   $ff                                           ;; 05:5d50 $ff

map00_room0f_06_tiles:
    RLE  $41, $41, $49, $49, $49, $10, $11, $11, $11, $11 ;; 05:5d51 ??????
    RLE  $41, $53, $49, $49, $49, $10, $11, $11, $11, $11 ;; 05:5d57 ??????
    RLE  $53, $49, $49, $49, $15, $11, $11, $11, $11, $11 ;; 05:5d5d ??????
    RLE  $49, $49, $1b, $49, $10, $11, $11, $11, $11, $11 ;; 05:5d63 ????????
    RLE  $49, $49, $49, $49, $10, $11, $11, $11, $11, $11 ;; 05:5d6b ??????
    RLE  $40, $49, $49, $49, $20, $11, $11, $11, $11, $11 ;; 05:5d71 ??????
    RLE  $41, $49, $49, $49, $1b, $20, $11, $11, $11, $11 ;; 05:5d77 ??????
    RLE  $41, $40, $30, $40, $1b, $1b, $10, $11, $11, $11 ;; 05:5d7d ????????

map00_room00_07_script:
    SCRIPT_IDX script_003d                             ;; 05:5d85 $3d $00
    db   $ff                                           ;; 05:5d87 $ff

map00_room00_07_tiles:
    RLE  $11, $11, $11, $11, $11, $11, $41, $41, $41, $41 ;; 05:5d88 ????
    RLE  $11, $11, $11, $11, $11, $11, $51, $51, $41, $41 ;; 05:5d8c ??????
    RLE  $11, $11, $11, $11, $00, $00, $00, $00, $00, $41 ;; 05:5d92 ??????
    RLE  $11, $11, $11, $11, $00, $37, $00, $37, $00, $41 ;; 05:5d98 ????????
    RLE  $11, $11, $11, $11, $00, $00, $00, $00, $00, $41 ;; 05:5da0 ??????
    RLE  $11, $11, $11, $11, $33, $00, $00, $00, $00, $41 ;; 05:5da6 ??????
    RLE  $11, $11, $11, $11, $41, $64, $64, $0b, $64, $41 ;; 05:5dac ????????
    RLE  $11, $11, $11, $11, $41, $41, $41, $0b, $41, $41 ;; 05:5db4 ??????

map00_room01_07_script:
    SCRIPT_IDX script_0064                             ;; 05:5dba $64 $00
    db   $ff                                           ;; 05:5dbc $ff

map00_room01_07_tiles:
    RLE  $41, $41, $00, $41, $41, $42, $00, $00, $00, $41 ;; 05:5dbd ????????
    RLE  $41, $41, $00, $50, $51, $52, $00, $00, $00, $41 ;; 05:5dc5 ????????
    RLE  $41, $53, $00, $00, $00, $00, $00, $00, $00, $50 ;; 05:5dcd ??????
    RLE  $41, $00, $00, $00, $48, $00, $00, $00, $00, $24 ;; 05:5dd3 ??????
    RLE  $53, $00, $00, $00, $00, $00, $00, $00, $24, $24 ;; 05:5dd9 ??????
    RLE  $40, $00, $00, $00, $00, $48, $00, $00, $00, $30 ;; 05:5ddf ??????
    RLE  $41, $40, $30, $40, $00, $00, $00, $00, $30, $41 ;; 05:5de5 ????????
    RLE  $41, $41, $41, $41, $40, $30, $40, $30, $41, $41 ;; 05:5ded ????????

map00_room02_07_script:
    SCRIPT_IDX script_03e5                             ;; 05:5df5 $e5 $03
    db   $ff                                           ;; 05:5df7 $ff

map00_room02_07_tiles:
    RLE  $42, $42, $51, $51, $51, $51, $51, $51, $41, $41 ;; 05:5df8 ??????
    RLE  $42, $75, $24, $24, $24, $24, $24, $62, $41, $41 ;; 05:5dfe ????????
    RLE  $75, $24, $24, $24, $24, $24, $24, $24, $62, $41 ;; 05:5e06 ??????
    RLE  $24, $24, $4a, $4a, $4a, $4a, $4a, $24, $24, $41 ;; 05:5e0c ????????
    RLE  $24, $4a, $4a, $06, $07, $08, $4a, $4a, $24, $62 ;; 05:5e14 ??????????
    RLE  $61, $4a, $4a, $26, $27, $28, $4a, $4a, $24, $60 ;; 05:5e1e ??????????
    RLE  $41, $61, $4a, $4a, $4a, $4a, $60, $61, $60, $41 ;; 05:5e28 ????????
    RLE  $41, $41, $61, $60, $61, $60, $41, $41, $41, $41 ;; 05:5e30 ????????

map00_room03_07_script:
    SCRIPT_IDX script_0061                             ;; 05:5e38 $61 $00
    db   $ff                                           ;; 05:5e3a $ff

map00_room03_07_tiles:
    RLE  $41, $41, $00, $24, $24, $16, $17, $17, $17, $17 ;; 05:5e3b ????????
    RLE  $41, $63, $00, $00, $24, $26, $27, $27, $27, $27 ;; 05:5e43 ????????
    RLE  $41, $24, $24, $00, $24, $36, $36, $36, $36, $36 ;; 05:5e4b ????????
    RLE  $41, $24, $24, $00, $24, $24, $24, $36, $36, $36 ;; 05:5e53 ??????
    RLE  $41, $24, $24, $00, $00, $00, $00, $00, $00, $34 ;; 05:5e59 ??????
    RLE  $41, $24, $24, $24, $24, $60, $40, $00, $00, $42 ;; 05:5e5f ????????
    RLE  $41, $61, $60, $61, $60, $41, $41, $00, $00, $43 ;; 05:5e67 ??????????
    RLE  $41, $41, $41, $41, $41, $41, $41, $00, $00, $0c ;; 05:5e71 ??????

map00_room04_07_script:
    SCRIPT_IDX script_0223                             ;; 05:5e77 $23 $02
    db   $ff                                           ;; 05:5e79 $ff

map00_room04_07_tiles:
    RLE  $17, $17, $17, $17, $17, $17, $18, $00, $00, $37 ;; 05:5e7a ??????
    RLE  $27, $27, $27, $27, $27, $27, $28, $00, $00, $37 ;; 05:5e80 ??????
    RLE  $36, $36, $36, $36, $36, $36, $00, $00, $00, $37 ;; 05:5e86 ????
    RLE  $36, $36, $36, $36, $00, $00, $00, $00, $00, $37 ;; 05:5e8a ??????
    RLE  $33, $36, $36, $00, $00, $00, $00, $00, $37, $37 ;; 05:5e90 ????????
    RLE  $41, $00, $00, $00, $00, $00, $00, $37, $37, $37 ;; 05:5e98 ????
    RLE  $44, $00, $00, $00, $00, $00, $30, $40, $30, $40 ;; 05:5e9c ????????
    RLE  $0c, $00, $00, $30, $40, $30, $41, $41, $41, $41 ;; 05:5ea4 ????????

map00_room05_07_script:
    SCRIPT_IDX script_003d                             ;; 05:5eac $3d $00
    db   $ff                                           ;; 05:5eae $ff

map00_room05_07_tiles:
    RLE  $37, $00, $00, $17, $37, $37, $37, $37, $37, $37 ;; 05:5eaf ??????
    RLE  $37, $00, $00, $13, $17, $17, $17, $17, $17, $17 ;; 05:5eb5 ??????
    RLE  $37, $00, $00, $00, $00, $00, $00, $00, $00, $00 ;; 05:5ebb ????
    RLE  $37, $37, $00, $00, $00, $00, $00, $00, $00, $00 ;; 05:5ebf ??????
    RLE  $37, $37, $00, $00, $00, $00, $00, $00, $00, $00 ;; 05:5ec5 ??????
    RLE  $37, $37, $37, $00, $00, $00, $00, $00, $00, $00 ;; 05:5ecb ????
    RLE  $37, $37, $37, $37, $06, $07, $07, $07, $07, $07 ;; 05:5ecf ??????
    RLE  $37, $37, $37, $37, $16, $17, $17, $17, $17, $17 ;; 05:5ed5 ??????

map00_room06_07_script:
    SCRIPT_IDX script_0193                             ;; 05:5edb $93 $01
    db   $ff                                           ;; 05:5edd $ff

map00_room06_07_tiles:
    RLE  $37, $37, $37, $37, $37, $37, $37, $37, $37, $37 ;; 05:5ede ????
    RLE  $17, $17, $04, $00, $00, $00, $00, $37, $37, $37 ;; 05:5ee2 ??????
    RLE  $00, $4e, $17, $00, $00, $37, $37, $37, $37, $37 ;; 05:5ee8 ????????
    RLE  $00, $00, $17, $00, $00, $00, $00, $37, $37, $37 ;; 05:5ef0 ??????
    RLE  $00, $00, $17, $00, $00, $37, $37, $37, $37, $37 ;; 05:5ef6 ????????
    RLE  $00, $00, $17, $00, $4e, $37, $37, $37, $37, $37 ;; 05:5efe ????????
    RLE  $07, $07, $17, $07, $07, $07, $07, $07, $07, $07 ;; 05:5f06 ??????
    RLE  $17, $17, $17, $17, $17, $17, $17, $17, $17, $17 ;; 05:5f0c ????

map00_room07_07_script:
    SCRIPT_IDX script_0043                             ;; 05:5f10 $43 $00
    db   $ff                                           ;; 05:5f12 $ff

map00_room07_07_tiles:
    RLE  $37, $37, $00, $00, $36, $36, $36, $36, $36, $36 ;; 05:5f13 ......
    RLE  $37, $00, $00, $00, $00, $00, $00, $00, $00, $36 ;; 05:5f19 ......
    RLE  $37, $00, $00, $00, $36, $00, $36, $36, $00, $00 ;; 05:5f1f ........
    RLE  $37, $00, $00, $00, $00, $00, $00, $00, $00, $36 ;; 05:5f27 ......
    RLE  $37, $00, $36, $36, $00, $36, $00, $00, $00, $36 ;; 05:5f2d ........
    RLE  $37, $00, $00, $00, $00, $00, $00, $00, $00, $36 ;; 05:5f35 ......
    RLE  $07, $07, $07, $08, $00, $00, $00, $00, $00, $36 ;; 05:5f3b ......
    RLE  $17, $17, $17, $18, $36, $00, $36, $00, $36, $36 ;; 05:5f41 ........

map00_room08_07_script:
    SCRIPT_IDX script_0485                             ;; 05:5f49 $85 $04
    SCRIPT_AT_POS 1, 4, script_0271                    ;; 05:5f4b $14 $71 $02
    db   $ff                                           ;; 05:5f4e $ff

map00_room08_07_tiles:
    RLE  $4f, $24, $24, $24, $7c, $24, $24, $24, $24, $4f ;; 05:5f4f ......
    RLE  $4f, $4f, $4f, $4f, $70, $4f, $4f, $4f, $4f, $4f ;; 05:5f55 ......
    RLE  $00, $00, $00, $00, $00, $00, $00, $00, $00, $36 ;; 05:5f5b ....
    RLE  $36, $00, $00, $00, $00, $00, $00, $00, $00, $36 ;; 05:5f5f ......
    RLE  $36, $06, $07, $08, $00, $00, $00, $00, $00, $00 ;; 05:5f65 ......
    RLE  $36, $26, $17, $17, $08, $00, $00, $00, $00, $00 ;; 05:5f6b ........
    RLE  $36, $36, $26, $27, $28, $00, $00, $00, $36, $36 ;; 05:5f73 ........
    RLE  $36, $36, $36, $36, $36, $00, $36, $36, $36, $36 ;; 05:5f7b ......

map00_room09_07_script:
    SCRIPT_IDX script_0043                             ;; 05:5f81 $43 $00
    db   $ff                                           ;; 05:5f83 $ff

map00_room09_07_tiles:
    RLE  $36, $36, $36, $36, $17, $00, $00, $36, $36, $36 ;; 05:5f84 ......
    RLE  $36, $36, $36, $36, $17, $00, $00, $00, $00, $00 ;; 05:5f8a ......
    RLE  $36, $00, $00, $00, $17, $00, $00, $00, $00, $00 ;; 05:5f90 ......
    RLE  $36, $00, $00, $00, $17, $00, $00, $00, $00, $00 ;; 05:5f96 ......
    RLE  $00, $00, $00, $00, $13, $17, $17, $17, $17, $17 ;; 05:5f9c ......
    RLE  $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ;; 05:5fa2 ....
    RLE  $36, $00, $00, $00, $00, $00, $00, $00, $00, $00 ;; 05:5fa6 ....
    RLE  $36, $36, $36, $36, $36, $36, $36, $00, $36, $36 ;; 05:5faa ......

map00_room0a_07_script:
    SCRIPT_IDX script_0043                             ;; 05:5fb0 $43 $00
    db   $ff                                           ;; 05:5fb2 $ff

map00_room0a_07_tiles:
    RLE  $36, $00, $00, $00, $00, $17, $36, $36, $36, $36 ;; 05:5fb3 ......
    RLE  $00, $00, $00, $00, $00, $17, $00, $00, $00, $36 ;; 05:5fb9 ......
    RLE  $00, $00, $00, $00, $00, $29, $00, $00, $00, $36 ;; 05:5fbf ......
    RLE  $00, $00, $00, $00, $00, $17, $00, $00, $00, $36 ;; 05:5fc5 ......
    RLE  $17, $17, $17, $17, $17, $14, $00, $00, $00, $36 ;; 05:5fcb ......
    RLE  $00, $00, $00, $00, $00, $36, $00, $00, $00, $00 ;; 05:5fd1 ......
    RLE  $00, $00, $00, $00, $00, $36, $00, $00, $00, $00 ;; 05:5fd7 ......
    RLE  $36, $36, $00, $00, $36, $36, $36, $36, $36, $36 ;; 05:5fdd ......

map00_room0b_07_script:
    SCRIPT_IDX script_0043                             ;; 05:5fe3 $43 $00
    db   $ff                                           ;; 05:5fe5 $ff

map00_room0b_07_tiles:
    RLE  $36, $36, $36, $00, $00, $41, $41, $41, $41, $41 ;; 05:5fe6 ......
    RLE  $36, $36, $36, $00, $00, $50, $51, $51, $51, $51 ;; 05:5fec ......
    RLE  $36, $36, $36, $00, $00, $00, $00, $00, $00, $00 ;; 05:5ff2 ....
    RLE  $36, $36, $36, $36, $00, $00, $00, $00, $00, $00 ;; 05:5ff6 ....
    RLE  $36, $36, $36, $36, $36, $36, $36, $36, $00, $00 ;; 05:5ffa ......
    RLE  $00, $00, $00, $00, $36, $36, $36, $36, $36, $36 ;; 05:6000 ....
    RLE  $00, $00, $00, $00, $00, $36, $36, $36, $36, $36 ;; 05:6004 ......
    RLE  $36, $36, $36, $00, $00, $36, $36, $36, $36, $36 ;; 05:600a ......

map00_room0c_07_script:
    SCRIPT_IDX script_0043                             ;; 05:6010 $43 $00
    SCRIPT_AT_POS 3, 4, script_03a1                    ;; 05:6012 $34 $a1 $03
    db   $ff                                           ;; 05:6015 $ff

map00_room0c_07_tiles:
    RLE  $41, $41, $41, $41, $41, $41, $41, $41, $42, $17 ;; 05:6016 ......
    RLE  $51, $51, $51, $51, $51, $51, $51, $51, $52, $17 ;; 05:601c ......
    RLE  $00, $00, $00, $5d, $5d, $5d, $36, $36, $36, $17 ;; 05:6022 ....
    RLE  $00, $00, $00, $5e, $2e, $5e, $69, $00, $00, $17 ;; 05:6026 ........
    RLE  $00, $00, $00, $00, $00, $00, $00, $00, $00, $29 ;; 05:602e ....
    RLE  $36, $36, $00, $00, $00, $00, $00, $00, $36, $17 ;; 05:6032 ......
    RLE  $36, $36, $36, $36, $36, $36, $36, $36, $36, $17 ;; 05:6038 ....
    RLE  $36, $36, $03, $17, $17, $17, $17, $17, $17, $17 ;; 05:603c ......

map00_room0d_07_script:
    SCRIPT_IDX script_004c                             ;; 05:6042 $4c $00
    db   $ff                                           ;; 05:6044 $ff

map00_room0d_07_tiles:
    RLE  $17, $62, $51, $51, $51, $51, $51, $51, $41, $41 ;; 05:6045 ......
    RLE  $17, $24, $24, $24, $45, $45, $45, $45, $62, $41 ;; 05:604b ......
    RLE  $17, $24, $24, $24, $24, $24, $45, $45, $45, $41 ;; 05:6051 ......
    RLE  $17, $24, $24, $24, $24, $24, $24, $24, $45, $41 ;; 05:6057 ......
    RLE  $29, $24, $24, $45, $45, $45, $45, $24, $24, $41 ;; 05:605d ........
    RLE  $17, $45, $45, $45, $45, $45, $24, $24, $24, $41 ;; 05:6065 ......
    RLE  $17, $24, $45, $45, $24, $24, $24, $24, $60, $41 ;; 05:606b ........
    RLE  $17, $24, $24, $24, $24, $24, $24, $24, $41, $41 ;; 05:6073 ......

map00_room0e_07_script:
    SCRIPT_IDX script_0076                             ;; 05:6079 $76 $00
    db   $ff                                           ;; 05:607b $ff

map00_room0e_07_tiles:
    RLE  $41, $41, $49, $49, $17, $17, $41, $41, $41, $41 ;; 05:607c ????????
    RLE  $41, $41, $00, $49, $17, $17, $50, $51, $53, $50 ;; 05:6084 ??????????
    RLE  $41, $53, $00, $49, $17, $17, $17, $17, $17, $17 ;; 05:608e ??????
    RLE  $41, $40, $00, $00, $13, $17, $17, $17, $17, $17 ;; 05:6094 ????????
    RLE  $41, $53, $00, $00, $00, $1b, $1b, $00, $00, $00 ;; 05:609c ??????
    RLE  $41, $40, $00, $00, $00, $00, $1b, $00, $00, $00 ;; 05:60a2 ??????
    RLE  $41, $41, $40, $30, $40, $00, $00, $00, $00, $30 ;; 05:60a8 ????????
    RLE  $41, $41, $41, $41, $41, $40, $30, $40, $30, $41 ;; 05:60b0 ????????

map00_room0f_07_script:
    SCRIPT_IDX script_007c                             ;; 05:60b8 $7c $00
    db   $ff                                           ;; 05:60ba $ff

map00_room0f_07_tiles:
    RLE  $41, $42, $41, $52, $1b, $1b, $10, $11, $11, $11 ;; 05:60bb ????????
    RLE  $51, $52, $1b, $1b, $1b, $15, $11, $11, $11, $11 ;; 05:60c3 ??????
    RLE  $38, $38, $38, $38, $38, $11, $11, $11, $11, $11 ;; 05:60c9 ??????
    RLE  $21, $21, $21, $21, $21, $11, $11, $11, $11, $11 ;; 05:60cf ??????
    RLE  $00, $00, $1b, $1b, $1b, $20, $11, $11, $11, $11 ;; 05:60d5 ??????
    RLE  $00, $00, $00, $00, $1b, $1b, $10, $11, $11, $11 ;; 05:60db ??????
    RLE  $40, $00, $00, $00, $00, $00, $10, $11, $11, $11 ;; 05:60e1 ??????
    RLE  $41, $40, $00, $00, $00, $00, $10, $11, $11, $11 ;; 05:60e7 ??????

map00_room00_08_script:
    SCRIPT_IDX script_0046                             ;; 05:60ed $46 $00
    SCRIPT_AT_POS 4, 5, script_0474                    ;; 05:60ef $45 $74 $04
    db   $ff                                           ;; 05:60f2 $ff

map00_room00_08_tiles:
    RLE  $11, $11, $11, $11, $41, $41, $41, $0b, $41, $41 ;; 05:60f3 ??????
    RLE  $11, $11, $11, $11, $41, $41, $41, $0b, $41, $41 ;; 05:60f9 ??????
    RLE  $11, $11, $11, $11, $41, $41, $41, $0b, $51, $41 ;; 05:60ff ??????
    RLE  $11, $11, $11, $11, $51, $51, $53, $00, $00, $41 ;; 05:6105 ????????
    RLE  $11, $11, $11, $11, $11, $7b, $00, $00, $00, $41 ;; 05:610d ??????
    RLE  $11, $11, $11, $11, $11, $12, $00, $00, $00, $50 ;; 05:6113 ??????
    RLE  $11, $11, $11, $11, $11, $22, $00, $00, $00, $47 ;; 05:6119 ??????
    RLE  $11, $11, $11, $11, $12, $00, $00, $00, $00, $47 ;; 05:611f ??????

map00_room01_08_script:
    SCRIPT_IDX script_0479                             ;; 05:6125 $79 $04
    SCRIPT_AT_POS 3, 4, script_0280                    ;; 05:6127 $34 $80 $02
    SCRIPT_AT_POS 3, 5, script_0280                    ;; 05:612a $35 $80 $02
    db   $ff                                           ;; 05:612d $ff

map00_room01_08_tiles:
    RLE  $09, $55, $0a, $55, $55, $55, $55, $09, $55, $0a ;; 05:612e ????????
    RLE  $09, $55, $0a, $55, $79, $79, $55, $09, $55, $0a ;; 05:6136 ??????????
    RLE  $09, $55, $0a, $55, $1f, $1f, $55, $09, $55, $0a ;; 05:6140 ??????????
    RLE  $09, $55, $0a, $54, $6a, $6a, $54, $09, $55, $0a ;; 05:614a ??????????
    RLE  $19, $54, $1a, $00, $00, $00, $00, $19, $54, $1a ;; 05:6154 ????????
    RLE  $64, $64, $64, $64, $2b, $2b, $64, $64, $64, $64 ;; 05:615c ??????
    RLE  $47, $05, $05, $05, $05, $05, $05, $05, $05, $47 ;; 05:6162 ??????
    RLE  $47, $05, $47, $05, $47, $47, $05, $47, $05, $47 ;; 05:6168 ??????????

map00_room02_08_script:
    SCRIPT_IDX script_005e                             ;; 05:6172 $5e $00
    db   $ff                                           ;; 05:6174 $ff

map00_room02_08_tiles:
    RLE  $41, $42, $42, $51, $51, $51, $51, $51, $51, $51 ;; 05:6175 ??????
    RLE  $41, $42, $52, $00, $00, $00, $00, $00, $00, $00 ;; 05:617b ??????
    RLE  $41, $52, $00, $00, $05, $05, $05, $05, $00, $00 ;; 05:6181 ????????
    RLE  $41, $40, $05, $05, $05, $05, $05, $05, $05, $00 ;; 05:6189 ??????
    RLE  $41, $53, $05, $47, $05, $47, $05, $47, $05, $30 ;; 05:618f ??????????
    RLE  $41, $05, $05, $05, $05, $05, $05, $05, $05, $41 ;; 05:6199 ??????
    RLE  $41, $40, $05, $05, $05, $05, $05, $05, $30, $41 ;; 05:619f ??????
    RLE  $41, $41, $31, $31, $40, $05, $05, $30, $31, $41 ;; 05:61a5 ??????????

map00_room03_08_script:
    SCRIPT_IDX script_03d6                             ;; 05:61af $d6 $03
    db   $ff                                           ;; 05:61b1 $ff

map00_room03_08_tiles:
    RLE  $51, $51, $41, $41, $41, $42, $52, $00, $00, $0c ;; 05:61b2 ????????
    RLE  $00, $00, $50, $41, $41, $42, $00, $00, $00, $0c ;; 05:61ba ????????
    RLE  $00, $00, $00, $41, $41, $42, $00, $00, $00, $0c ;; 05:61c2 ??????
    RLE  $00, $00, $00, $50, $41, $52, $00, $00, $00, $0c ;; 05:61c8 ??????
    RLE  $64, $33, $00, $00, $00, $00, $00, $00, $34, $0c ;; 05:61ce ??????
    RLE  $41, $41, $00, $00, $00, $00, $00, $34, $42, $0c ;; 05:61d4 ????????
    RLE  $51, $41, $33, $00, $00, $00, $34, $42, $43, $0c ;; 05:61dc ????????
    RLE  $0c, $44, $41, $64, $64, $64, $42, $43, $0c, $0c ;; 05:61e4 ????????

map00_room04_08_script:
    SCRIPT_IDX script_00a6                             ;; 05:61ec $a6 $00
    db   $ff                                           ;; 05:61ee $ff

map00_room04_08_tiles:
    RLE  $0c, $00, $00, $41, $41, $42, $42, $41, $41, $41 ;; 05:61ef ????????
    RLE  $0c, $00, $00, $41, $41, $42, $52, $00, $00, $00 ;; 05:61f7 ????????
    RLE  $0c, $00, $00, $50, $51, $52, $00, $00, $00, $00 ;; 05:61ff ????????
    RLE  $0c, $00, $00, $00, $00, $00, $00, $00, $34, $23 ;; 05:6207 ??????
    RLE  $0c, $33, $00, $00, $00, $00, $00, $34, $42, $43 ;; 05:620d ????????
    RLE  $0c, $41, $64, $64, $64, $64, $64, $42, $43, $0c ;; 05:6215 ????????
    RLE  $0c, $44, $41, $41, $41, $41, $41, $43, $0c, $0c ;; 05:621d ????????
    RLE  $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0c ;; 05:6225 ????

map00_room05_08_script:
    SCRIPT_IDX script_0058                             ;; 05:6229 $58 $00
    db   $ff                                           ;; 05:622b $ff

map00_room05_08_tiles:
    RLE  $37, $37, $37, $37, $16, $17, $17, $17, $17, $17 ;; 05:622c ??????
    RLE  $00, $00, $00, $00, $16, $17, $27, $27, $27, $27 ;; 05:6232 ??????
    RLE  $00, $00, $00, $00, $16, $18, $4e, $24, $24, $24 ;; 05:6238 ??????
    RLE  $37, $00, $00, $00, $16, $18, $24, $24, $24, $24 ;; 05:623e ??????
    RLE  $37, $00, $00, $00, $16, $18, $24, $24, $06, $07 ;; 05:6244 ????????
    RLE  $37, $00, $00, $4e, $16, $18, $24, $24, $16, $17 ;; 05:624c ??????????
    RLE  $37, $37, $00, $37, $16, $17, $07, $07, $17, $17 ;; 05:6256 ??????????
    RLE  $37, $37, $00, $37, $16, $17, $17, $17, $17, $17 ;; 05:6260 ????????

map00_room06_08_script:
    SCRIPT_IDX script_003d                             ;; 05:6268 $3d $00
    db   $ff                                           ;; 05:626a $ff

map00_room06_08_tiles:
    RLE  $17, $17, $17, $17, $17, $17, $17, $17, $17, $17 ;; 05:626b ????
    RLE  $27, $27, $27, $27, $17, $17, $17, $17, $17, $17 ;; 05:626f ????
    RLE  $24, $24, $24, $24, $16, $17, $17, $17, $17, $17 ;; 05:6273 ??????
    RLE  $24, $24, $24, $24, $16, $17, $17, $17, $17, $17 ;; 05:6279 ??????
    RLE  $07, $07, $07, $07, $17, $17, $17, $17, $17, $17 ;; 05:627f ????
    RLE  $17, $17, $17, $17, $17, $17, $17, $27, $17, $17 ;; 05:6283 ??????
    RLE  $17, $17, $17, $17, $17, $17, $18, $24, $16, $17 ;; 05:6289 ??????
    RLE  $17, $17, $17, $17, $17, $17, $18, $24, $16, $17 ;; 05:628f ??????

map00_room07_08_script:
    SCRIPT_IDX script_0043                             ;; 05:6295 $43 $00
    db   $ff                                           ;; 05:6297 $ff

map00_room07_08_tiles:
    RLE  $17, $17, $17, $18, $36, $00, $36, $00, $36, $36 ;; 05:6298 ????????
    RLE  $17, $17, $17, $18, $00, $00, $00, $00, $36, $36 ;; 05:62a0 ??????
    RLE  $17, $17, $17, $18, $00, $00, $00, $00, $36, $36 ;; 05:62a6 ??????
    RLE  $17, $17, $17, $18, $00, $00, $00, $00, $36, $36 ;; 05:62ac ??????
    RLE  $17, $17, $17, $18, $00, $00, $00, $00, $00, $00 ;; 05:62b2 ????
    RLE  $17, $17, $17, $18, $00, $00, $00, $00, $00, $00 ;; 05:62b6 ????
    RLE  $17, $17, $17, $17, $07, $07, $07, $07, $07, $07 ;; 05:62ba ????
    RLE  $17, $17, $17, $17, $17, $17, $17, $17, $17, $17 ;; 05:62be ????

map00_room08_08_script:
    SCRIPT_IDX script_0043                             ;; 05:62c2 $43 $00
    db   $ff                                           ;; 05:62c4 $ff

map00_room08_08_tiles:
    RLE  $36, $36, $36, $36, $36, $00, $36, $36, $36, $36 ;; 05:62c5 ......
    RLE  $36, $36, $36, $36, $36, $00, $36, $36, $36, $36 ;; 05:62cb ......
    RLE  $36, $36, $00, $00, $00, $00, $00, $00, $36, $36 ;; 05:62d1 ......
    RLE  $36, $36, $00, $00, $00, $00, $00, $00, $00, $00 ;; 05:62d7 ......
    RLE  $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ;; 05:62dd ....
    RLE  $00, $00, $00, $00, $00, $00, $00, $00, $36, $36 ;; 05:62e1 ......
    RLE  $07, $07, $07, $08, $36, $36, $36, $36, $36, $36 ;; 05:62e7 ....
    RLE  $17, $17, $17, $18, $36, $36, $36, $36, $36, $36 ;; 05:62eb ....

map00_room09_08_script:
    SCRIPT_IDX script_00f5                             ;; 05:62ef $f5 $00
    db   $ff                                           ;; 05:62f1 $ff

map00_room09_08_tiles:
    RLE  $36, $36, $36, $36, $36, $36, $36, $00, $36, $36 ;; 05:62f2 ......
    RLE  $36, $00, $00, $00, $00, $00, $00, $00, $00, $00 ;; 05:62f8 ....
    RLE  $36, $00, $36, $00, $00, $00, $00, $36, $00, $36 ;; 05:62fc ........
    RLE  $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ;; 05:6304 ....
    RLE  $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ;; 05:6308 ....
    RLE  $36, $00, $36, $00, $00, $00, $00, $36, $00, $36 ;; 05:630c ........
    RLE  $36, $00, $00, $00, $00, $00, $00, $00, $00, $00 ;; 05:6314 ....
    RLE  $36, $36, $36, $36, $36, $36, $36, $36, $36, $36 ;; 05:6318 ....

map00_room0a_08_script:
    SCRIPT_IDX script_0043                             ;; 05:631c $43 $00
    db   $ff                                           ;; 05:631e $ff

map00_room0a_08_tiles:
    RLE  $36, $36, $00, $00, $36, $36, $36, $36, $36, $36 ;; 05:631f ......
    RLE  $00, $00, $00, $00, $00, $00, $00, $00, $00, $36 ;; 05:6325 ....
    RLE  $36, $00, $36, $00, $00, $00, $36, $36, $00, $00 ;; 05:6329 ........
    RLE  $00, $00, $00, $00, $36, $00, $00, $00, $00, $36 ;; 05:6331 ......
    RLE  $00, $00, $00, $00, $36, $00, $00, $00, $00, $36 ;; 05:6337 ......
    RLE  $36, $00, $36, $00, $00, $00, $36, $36, $00, $36 ;; 05:633d ........
    RLE  $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ;; 05:6345 ....
    RLE  $36, $36, $36, $36, $36, $36, $36, $36, $36, $36 ;; 05:6349 ....

map00_room0b_08_script:
    SCRIPT_IDX script_0043                             ;; 05:634d $43 $00
    db   $ff                                           ;; 05:634f $ff

map00_room0b_08_tiles:
    RLE  $36, $36, $36, $00, $00, $36, $36, $36, $36, $36 ;; 05:6350 ......
    RLE  $36, $36, $36, $00, $00, $36, $36, $36, $36, $36 ;; 05:6356 ......
    RLE  $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ;; 05:635c ....
    RLE  $36, $36, $36, $00, $00, $36, $36, $36, $36, $36 ;; 05:6360 ......
    RLE  $36, $36, $36, $00, $00, $36, $36, $36, $36, $36 ;; 05:6366 ......
    RLE  $36, $36, $36, $00, $00, $36, $36, $36, $36, $36 ;; 05:636c ......
    RLE  $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ;; 05:6372 ....
    RLE  $36, $36, $36, $00, $00, $36, $36, $36, $36, $36 ;; 05:6376 ......

map00_room0c_08_script:
    SCRIPT_IDX script_004c                             ;; 05:637c $4c $00
    db   $ff                                           ;; 05:637e $ff

map00_room0c_08_tiles:
    RLE  $36, $36, $17, $17, $17, $17, $17, $17, $17, $17 ;; 05:637f ......
    RLE  $36, $36, $17, $24, $24, $24, $24, $24, $24, $24 ;; 05:6385 ......
    RLE  $00, $00, $17, $24, $24, $45, $45, $24, $24, $24 ;; 05:638b ........
    RLE  $36, $00, $17, $24, $45, $45, $45, $24, $24, $24 ;; 05:6393 ......
    RLE  $36, $00, $17, $24, $45, $45, $24, $24, $24, $24 ;; 05:6399 ........
    RLE  $36, $00, $17, $24, $24, $24, $24, $24, $24, $24 ;; 05:63a1 ......
    RLE  $00, $00, $17, $24, $24, $24, $24, $24, $24, $60 ;; 05:63a7 ......
    RLE  $36, $00, $17, $60, $31, $31, $61, $24, $60, $41 ;; 05:63ad ..........

map00_room0d_08_script:
    SCRIPT_IDX script_004c                             ;; 05:63b7 $4c $00
    db   $ff                                           ;; 05:63b9 $ff

map00_room0d_08_tiles:
    RLE  $14, $24, $24, $24, $24, $24, $24, $24, $41, $41 ;; 05:63ba ......
    RLE  $24, $24, $24, $24, $24, $24, $24, $24, $41, $41 ;; 05:63c0 ......
    RLE  $24, $24, $24, $24, $45, $45, $24, $24, $62, $41 ;; 05:63c6 ........
    RLE  $24, $24, $45, $45, $45, $45, $45, $24, $24, $41 ;; 05:63ce ........
    RLE  $24, $24, $45, $45, $45, $45, $45, $24, $24, $41 ;; 05:63d6 ........
    RLE  $24, $24, $24, $45, $45, $24, $24, $24, $24, $41 ;; 05:63de ......
    RLE  $61, $24, $24, $24, $24, $24, $24, $24, $60, $41 ;; 05:63e4 ......
    RLE  $41, $24, $24, $24, $60, $31, $31, $31, $41, $41 ;; 05:63ea ......

map00_room0e_08_script:
    SCRIPT_IDX script_048b                             ;; 05:63f0 $8b $04
    SCRIPT_AT_POS 1, 5, script_0275                    ;; 05:63f2 $15 $75 $02
    db   $ff                                           ;; 05:63f5 $ff

map00_room0e_08_tiles:
    RLE  $42, $42, $41, $41, $41, $41, $41, $41, $41, $41 ;; 05:63f6 ......
    RLE  $42, $42, $51, $51, $51, $4d, $51, $41, $41, $41 ;; 05:63fc ......
    RLE  $42, $75, $24, $24, $24, $24, $24, $62, $41, $41 ;; 05:6402 ........
    RLE  $75, $24, $24, $45, $24, $24, $24, $24, $41, $41 ;; 05:640a ........
    RLE  $61, $24, $24, $45, $24, $45, $24, $24, $62, $41 ;; 05:6412 ..........
    RLE  $41, $24, $24, $24, $24, $45, $45, $24, $24, $41 ;; 05:641c ........
    RLE  $41, $24, $24, $24, $24, $24, $24, $24, $24, $41 ;; 05:6424 ......
    RLE  $41, $61, $24, $24, $24, $24, $24, $24, $60, $41 ;; 05:642a ......

map00_room0f_08_script:
    SCRIPT_IDX script_007c                             ;; 05:6430 $7c $00
    db   $ff                                           ;; 05:6432 $ff

map00_room0f_08_tiles:
    RLE  $42, $42, $00, $00, $00, $00, $10, $11, $11, $11 ;; 05:6433 ??????
    RLE  $42, $52, $00, $00, $00, $00, $10, $11, $11, $11 ;; 05:6439 ??????
    RLE  $52, $00, $00, $00, $00, $00, $10, $11, $11, $11 ;; 05:643f ??????
    RLE  $40, $00, $00, $00, $00, $1b, $10, $11, $11, $11 ;; 05:6445 ??????
    RLE  $41, $00, $00, $00, $1b, $00, $10, $11, $11, $11 ;; 05:644b ??????
    RLE  $41, $00, $1b, $00, $00, $00, $10, $11, $11, $11 ;; 05:6451 ??????
    RLE  $41, $00, $00, $00, $00, $00, $10, $11, $11, $11 ;; 05:6457 ??????
    RLE  $41, $00, $00, $00, $00, $00, $10, $11, $11, $11 ;; 05:645d ??????

map00_room00_09_script:
    SCRIPT_IDX script_0046                             ;; 05:6463 $46 $00
    db   $ff                                           ;; 05:6465 $ff

map00_room00_09_tiles:
    RLE  $11, $11, $11, $11, $12, $05, $05, $05, $05, $47 ;; 05:6466 ??????
    RLE  $11, $11, $11, $11, $12, $05, $05, $05, $05, $05 ;; 05:646c ??????
    RLE  $11, $11, $11, $11, $12, $05, $05, $05, $05, $47 ;; 05:6472 ??????
    RLE  $11, $11, $11, $11, $22, $05, $05, $05, $05, $47 ;; 05:6478 ??????
    RLE  $11, $11, $11, $12, $05, $05, $05, $05, $05, $47 ;; 05:647e ??????
    RLE  $11, $11, $11, $12, $05, $05, $05, $05, $05, $05 ;; 05:6484 ????
    RLE  $11, $11, $11, $12, $05, $05, $05, $05, $47, $47 ;; 05:6488 ??????
    RLE  $11, $11, $11, $12, $47, $47, $47, $47, $47, $47 ;; 05:648e ????

map00_room01_09_script:
    SCRIPT_IDX script_005b                             ;; 05:6492 $5b $00
    db   $ff                                           ;; 05:6494 $ff

map00_room01_09_tiles:
    RLE  $47, $05, $47, $05, $47, $47, $05, $47, $05, $47 ;; 05:6495 ??????????
    RLE  $05, $05, $47, $05, $05, $05, $05, $47, $05, $47 ;; 05:649f ????????
    RLE  $47, $05, $05, $05, $47, $47, $05, $05, $05, $47 ;; 05:64a7 ??????
    RLE  $47, $05, $47, $05, $05, $05, $05, $47, $05, $05 ;; 05:64ad ????????
    RLE  $47, $05, $47, $05, $05, $05, $05, $47, $05, $05 ;; 05:64b5 ????????
    RLE  $05, $05, $47, $05, $47, $47, $05, $47, $05, $47 ;; 05:64bd ??????????
    RLE  $47, $05, $05, $05, $05, $05, $05, $05, $05, $47 ;; 05:64c7 ??????
    RLE  $47, $47, $47, $47, $47, $47, $47, $47, $47, $47 ;; 05:64cd ????

map00_room02_09_script:
    SCRIPT_IDX script_005b                             ;; 05:64d1 $5b $00
    db   $ff                                           ;; 05:64d3 $ff

map00_room02_09_tiles:
    RLE  $41, $42, $42, $51, $52, $05, $05, $41, $41, $41 ;; 05:64d4 ????????
    RLE  $41, $42, $52, $05, $05, $05, $05, $41, $41, $41 ;; 05:64dc ??????
    RLE  $51, $52, $05, $05, $05, $05, $05, $50, $51, $51 ;; 05:64e2 ????????
    RLE  $05, $05, $05, $05, $05, $05, $05, $05, $05, $05 ;; 05:64ea ????
    RLE  $05, $05, $05, $05, $05, $05, $05, $05, $05, $30 ;; 05:64ee ????
    RLE  $31, $40, $05, $05, $05, $05, $05, $05, $05, $41 ;; 05:64f2 ??????
    RLE  $41, $41, $05, $05, $05, $05, $05, $05, $05, $41 ;; 05:64f8 ??????
    RLE  $41, $41, $40, $05, $05, $30, $40, $05, $05, $41 ;; 05:64fe ??????????

map00_room03_09_script:
    SCRIPT_IDX script_005b                             ;; 05:6508 $5b $00
    db   $ff                                           ;; 05:650a $ff

map00_room03_09_tiles:
    RLE  $41, $42, $41, $42, $51, $51, $51, $51, $41, $41 ;; 05:650b ????????
    RLE  $41, $42, $51, $52, $47, $47, $47, $47, $50, $41 ;; 05:6513 ????????
    RLE  $51, $52, $05, $05, $05, $05, $05, $05, $47, $41 ;; 05:651b ??????
    RLE  $05, $05, $05, $06, $07, $07, $08, $05, $47, $41 ;; 05:6521 ????????
    RLE  $40, $05, $47, $26, $27, $27, $28, $05, $05, $41 ;; 05:6529 ??????????
    RLE  $41, $05, $47, $05, $05, $47, $47, $05, $05, $41 ;; 05:6533 ??????????
    RLE  $41, $05, $05, $05, $05, $05, $05, $05, $30, $41 ;; 05:653d ??????
    RLE  $41, $40, $30, $40, $05, $30, $40, $30, $41, $41 ;; 05:6543 ??????????

map00_room04_09_script:
    SCRIPT_IDX script_0476                             ;; 05:654d $76 $04
    SCRIPT_AT_POS 1, 4, script_027f                    ;; 05:654f $14 $7f $02
    db   $ff                                           ;; 05:6552 $ff

map00_room04_09_tiles:
    RLE  $41, $42, $4f, $37, $7c, $37, $37, $4f, $41, $41 ;; 05:6553 ??????????
    RLE  $41, $52, $4f, $4f, $70, $4f, $4f, $4f, $50, $41 ;; 05:655d ????????
    RLE  $41, $00, $00, $00, $00, $00, $00, $00, $00, $41 ;; 05:6565 ??????
    RLE  $41, $00, $00, $00, $00, $00, $00, $00, $00, $41 ;; 05:656b ??????
    RLE  $41, $00, $00, $00, $00, $00, $00, $00, $00, $41 ;; 05:6571 ??????
    RLE  $41, $40, $00, $00, $00, $00, $00, $00, $30, $41 ;; 05:6577 ??????
    RLE  $41, $41, $40, $00, $00, $00, $30, $31, $41, $41 ;; 05:657d ????????
    RLE  $41, $41, $41, $00, $00, $00, $41, $41, $41, $41 ;; 05:6585 ????

map00_room05_09_script:
    SCRIPT_IDX script_0046                             ;; 05:6589 $46 $00
    db   $ff                                           ;; 05:658b $ff

map00_room05_09_tiles:
    RLE  $36, $36, $00, $36, $16, $17, $17, $17, $17, $17 ;; 05:658c ????????
    RLE  $36, $36, $00, $36, $16, $17, $17, $17, $17, $17 ;; 05:6594 ????????
    RLE  $36, $00, $00, $00, $16, $17, $17, $17, $17, $17 ;; 05:659c ??????
    RLE  $36, $00, $00, $00, $26, $27, $27, $27, $27, $27 ;; 05:65a2 ??????
    RLE  $36, $00, $00, $00, $36, $36, $00, $00, $00, $00 ;; 05:65a8 ??????
    RLE  $36, $00, $00, $00, $00, $00, $00, $00, $00, $00 ;; 05:65ae ????
    RLE  $36, $00, $00, $00, $00, $00, $00, $00, $00, $00 ;; 05:65b2 ????
    RLE  $36, $36, $36, $36, $36, $36, $00, $00, $36, $36 ;; 05:65b6 ??????

map00_room06_09_script:
    SCRIPT_IDX script_003d                             ;; 05:65bc $3d $00
    SCRIPT_AT_POS 0, 7, script_027c                    ;; 05:65be $07 $7c $02
    db   $ff                                           ;; 05:65c1 $ff

map00_room06_09_tiles:
    RLE  $17, $17, $17, $17, $17, $17, $18, $70, $26, $27 ;; 05:65c2 ??????
    RLE  $17, $17, $17, $17, $17, $17, $18, $00, $00, $00 ;; 05:65c8 ????
    RLE  $17, $17, $17, $17, $17, $17, $28, $00, $24, $24 ;; 05:65cc ??????
    RLE  $27, $27, $27, $27, $17, $18, $00, $00, $24, $06 ;; 05:65d2 ????????
    RLE  $00, $00, $00, $00, $16, $18, $00, $24, $24, $16 ;; 05:65da ????????
    RLE  $00, $00, $00, $00, $16, $18, $00, $24, $06, $17 ;; 05:65e2 ????????
    RLE  $00, $00, $00, $00, $16, $18, $00, $24, $26, $17 ;; 05:65ea ????????
    RLE  $36, $36, $00, $00, $16, $18, $00, $24, $24, $16 ;; 05:65f2 ??????????

map00_room07_09_script:
    SCRIPT_IDX script_00a6                             ;; 05:65fc $a6 $00
    db   $ff                                           ;; 05:65fe $ff

map00_room07_09_tiles:
    RLE  $27, $27, $27, $27, $17, $17, $17, $27, $27, $27 ;; 05:65ff ????
    RLE  $00, $00, $00, $00, $16, $17, $18, $4e, $24, $24 ;; 05:6603 ????????
    RLE  $24, $06, $07, $07, $17, $17, $17, $07, $07, $07 ;; 05:660b ??????
    RLE  $07, $17, $17, $17, $17, $17, $17, $17, $17, $17 ;; 05:6611 ????
    RLE  $17, $17, $17, $17, $17, $17, $27, $17, $17, $27 ;; 05:6615 ??????
    RLE  $17, $17, $17, $17, $17, $18, $4e, $16, $18, $24 ;; 05:661b ????????
    RLE  $17, $17, $17, $17, $17, $28, $24, $16, $17, $07 ;; 05:6623 ????????
    RLE  $17, $17, $17, $17, $18, $24, $24, $16, $17, $17 ;; 05:662b ????????

map00_room08_09_script:
    SCRIPT_IDX script_00a6                             ;; 05:6633 $a6 $00
    db   $ff                                           ;; 05:6635 $ff

map00_room08_09_tiles:
    RLE  $27, $27, $41, $41, $51, $51, $51, $51, $51, $51 ;; 05:6636 ??????
    RLE  $24, $24, $41, $53, $00, $00, $00, $00, $00, $00 ;; 05:663c ??????
    RLE  $08, $24, $62, $33, $00, $00, $00, $00, $00, $00 ;; 05:6642 ??????
    RLE  $18, $24, $24, $41, $64, $0b, $33, $00, $00, $00 ;; 05:6648 ????????
    RLE  $28, $24, $24, $62, $51, $0b, $41, $64, $64, $64 ;; 05:6650 ????????
    RLE  $24, $24, $24, $24, $24, $24, $62, $51, $51, $51 ;; 05:6658 ????
    RLE  $07, $07, $07, $07, $07, $07, $08, $4e, $00, $00 ;; 05:665c ??????
    RLE  $17, $17, $17, $17, $17, $17, $18, $00, $00, $37 ;; 05:6662 ??????

map00_room09_09_script:
    SCRIPT_IDX script_0058                             ;; 05:6668 $58 $00
    db   $ff                                           ;; 05:666a $ff

map00_room09_09_tiles:
    RLE  $51, $51, $51, $51, $51, $51, $41, $41, $41, $41 ;; 05:666b ????
    RLE  $00, $00, $00, $00, $00, $00, $50, $41, $41, $41 ;; 05:666f ????
    RLE  $00, $00, $00, $00, $00, $4e, $34, $51, $51, $51 ;; 05:6673 ??????
    RLE  $00, $00, $34, $64, $64, $64, $42, $69, $00, $37 ;; 05:6679 ????????
    RLE  $64, $64, $42, $51, $51, $51, $52, $00, $00, $37 ;; 05:6681 ????????
    RLE  $51, $51, $52, $00, $00, $00, $00, $00, $00, $37 ;; 05:6689 ??????
    RLE  $00, $00, $00, $00, $00, $00, $00, $00, $37, $37 ;; 05:668f ??????
    RLE  $37, $37, $37, $37, $37, $37, $37, $37, $37, $37 ;; 05:6695 ????

map00_room0a_09_script:
    SCRIPT_IDX script_0488                             ;; 05:6699 $88 $04
    SCRIPT_AT_POS 2, 5, script_0276                    ;; 05:669b $25 $76 $02
    db   $ff                                           ;; 05:669e $ff

map00_room0a_09_tiles:
    RLE  $41, $42, $09, $0a, $55, $55, $55, $09, $0a, $37 ;; 05:669f ????????
    RLE  $41, $42, $09, $0a, $55, $55, $55, $09, $0a, $37 ;; 05:66a7 ????????
    RLE  $51, $52, $09, $0a, $54, $2e, $54, $09, $0a, $37 ;; 05:66af ??????????
    RLE  $37, $24, $19, $1a, $24, $00, $24, $19, $1a, $37 ;; 05:66b9 ??????????
    RLE  $37, $24, $24, $24, $24, $00, $24, $24, $24, $37 ;; 05:66c3 ??????
    RLE  $37, $24, $24, $24, $24, $00, $00, $00, $24, $37 ;; 05:66c9 ??????
    RLE  $37, $37, $24, $24, $24, $24, $24, $00, $00, $00 ;; 05:66cf ??????
    RLE  $37, $37, $37, $37, $37, $37, $37, $37, $37, $37 ;; 05:66d5 ????

map00_room0b_09_script:
    SCRIPT_IDX script_004c                             ;; 05:66d9 $4c $00
    db   $ff                                           ;; 05:66db $ff

map00_room0b_09_tiles:
    RLE  $36, $36, $36, $00, $00, $36, $36, $36, $36, $36 ;; 05:66dc ??????
    RLE  $36, $36, $36, $00, $00, $00, $00, $00, $00, $00 ;; 05:66e2 ????
    RLE  $36, $36, $36, $36, $03, $17, $17, $17, $17, $17 ;; 05:66e6 ??????
    RLE  $36, $36, $00, $00, $17, $24, $24, $45, $45, $45 ;; 05:66ec ????????
    RLE  $36, $00, $00, $00, $17, $24, $24, $24, $45, $45 ;; 05:66f4 ??????
    RLE  $36, $00, $00, $00, $29, $24, $24, $24, $24, $24 ;; 05:66fa ??????
    RLE  $00, $00, $00, $00, $17, $24, $24, $24, $24, $24 ;; 05:6700 ??????
    RLE  $36, $36, $36, $36, $17, $60, $31, $31, $31, $31 ;; 05:6706 ??????

map00_room0c_09_script:
    SCRIPT_IDX script_004c                             ;; 05:670c $4c $00
    db   $ff                                           ;; 05:670e $ff

map00_room0c_09_tiles:
    RLE  $36, $00, $17, $62, $51, $51, $63, $24, $62, $41 ;; 05:670f ..........
    RLE  $00, $00, $17, $45, $45, $45, $24, $24, $24, $62 ;; 05:6719 ......
    RLE  $17, $17, $14, $45, $45, $24, $24, $24, $24, $24 ;; 05:671f ........
    RLE  $45, $45, $45, $45, $24, $24, $24, $24, $24, $24 ;; 05:6727 ....
    RLE  $45, $45, $24, $24, $24, $24, $24, $24, $24, $24 ;; 05:672b ......
    RLE  $24, $24, $24, $24, $24, $24, $24, $24, $24, $24 ;; 05:6731 ....
    RLE  $24, $24, $24, $24, $60, $31, $31, $61, $24, $24 ;; 05:6735 ........
    RLE  $31, $31, $31, $31, $41, $41, $41, $41, $31, $31 ;; 05:673d ......

map00_room0d_09_script:
    SCRIPT_IDX script_0049                             ;; 05:6743 $49 $00
    db   $ff                                           ;; 05:6745 $ff

map00_room0d_09_tiles:
    RLE  $41, $24, $24, $24, $41, $41, $41, $41, $41, $41 ;; 05:6746 ....
    RLE  $63, $24, $24, $24, $62, $51, $51, $51, $51, $51 ;; 05:674a ......
    RLE  $24, $24, $24, $24, $24, $24, $24, $24, $24, $24 ;; 05:6750 ....
    RLE  $24, $24, $24, $24, $45, $45, $45, $24, $24, $24 ;; 05:6754 ....
    RLE  $24, $24, $24, $45, $45, $45, $45, $24, $24, $24 ;; 05:6758 ....
    RLE  $24, $24, $24, $45, $45, $45, $24, $24, $24, $24 ;; 05:675c ....
    RLE  $24, $24, $24, $24, $24, $24, $24, $24, $24, $24 ;; 05:6760 ....
    RLE  $31, $31, $31, $61, $60, $61, $24, $24, $60, $31 ;; 05:6764 ........

map00_room0e_09_script:
    SCRIPT_IDX script_0049                             ;; 05:676c $49 $00
    db   $ff                                           ;; 05:676e $ff

map00_room0e_09_tiles:
    RLE  $41, $63, $24, $24, $24, $24, $24, $24, $62, $41 ;; 05:676f ......
    RLE  $63, $24, $24, $24, $24, $24, $24, $24, $24, $41 ;; 05:6775 ......
    RLE  $24, $24, $24, $45, $45, $24, $24, $24, $24, $41 ;; 05:677b ......
    RLE  $24, $24, $24, $24, $45, $45, $45, $24, $24, $41 ;; 05:6781 ......
    RLE  $24, $24, $24, $45, $45, $24, $24, $24, $24, $41 ;; 05:6787 ......
    RLE  $24, $24, $24, $24, $24, $24, $24, $24, $24, $41 ;; 05:678d ....
    RLE  $24, $24, $24, $24, $24, $24, $24, $24, $60, $41 ;; 05:6791 ......
    RLE  $61, $60, $31, $31, $31, $31, $31, $31, $41, $41 ;; 05:6797 ......

map00_room0f_09_script:
    SCRIPT_IDX script_007c                             ;; 05:679d $7c $00
    db   $ff                                           ;; 05:679f $ff

map00_room0f_09_tiles:
    RLE  $42, $00, $00, $00, $00, $00, $10, $11, $11, $11 ;; 05:67a0 ??????
    RLE  $52, $00, $00, $00, $00, $00, $10, $11, $11, $11 ;; 05:67a6 ??????
    RLE  $40, $00, $00, $1b, $00, $00, $20, $11, $11, $11 ;; 05:67ac ????????
    RLE  $41, $40, $00, $00, $00, $00, $00, $10, $11, $11 ;; 05:67b4 ????????
    RLE  $41, $41, $00, $00, $00, $1b, $00, $10, $11, $11 ;; 05:67bc ????????
    RLE  $41, $41, $00, $00, $1b, $00, $00, $10, $11, $11 ;; 05:67c4 ??????????
    RLE  $41, $41, $40, $00, $00, $00, $00, $10, $11, $11 ;; 05:67ce ????????
    RLE  $41, $41, $41, $00, $00, $00, $00, $10, $11, $11 ;; 05:67d6 ??????

map00_room00_0a_script:
    SCRIPT_IDX script_0046                             ;; 05:67dc $46 $00
    SCRIPT_AT_POS 2, 7, script_0386                    ;; 05:67de $27 $86 $03
    db   $ff                                           ;; 05:67e1 $ff

map00_room00_0a_tiles:
    RLE  $11, $11, $11, $12, $41, $41, $41, $41, $41, $41 ;; 05:67e2 ????
    RLE  $11, $11, $11, $12, $50, $51, $5d, $5d, $5d, $41 ;; 05:67e6 ??????
    RLE  $11, $11, $11, $12, $47, $47, $5e, $2e, $5e, $41 ;; 05:67ec ????????
    RLE  $11, $11, $11, $12, $00, $00, $00, $00, $30, $41 ;; 05:67f4 ??????
    RLE  $11, $11, $11, $12, $05, $05, $47, $00, $50, $41 ;; 05:67fa ????????
    RLE  $11, $11, $11, $12, $05, $05, $47, $05, $05, $50 ;; 05:6802 ????????
    RLE  $11, $11, $11, $11, $02, $05, $05, $05, $05, $30 ;; 05:680a ??????
    RLE  $11, $11, $11, $11, $12, $05, $05, $05, $05, $41 ;; 05:6810 ??????

map00_room01_0a_script:
    SCRIPT_IDX script_005e                             ;; 05:6816 $5e $00
    db   $ff                                           ;; 05:6818 $ff

map00_room01_0a_tiles:
    RLE  $41, $42, $42, $41, $41, $42, $42, $52, $50, $41 ;; 05:6819 ??????????
    RLE  $41, $42, $52, $50, $41, $42, $52, $05, $05, $50 ;; 05:6823 ??????????
    RLE  $41, $52, $05, $05, $50, $52, $05, $05, $05, $05 ;; 05:682d ????????
    RLE  $41, $05, $05, $05, $05, $05, $05, $05, $05, $05 ;; 05:6835 ????
    RLE  $41, $05, $05, $05, $05, $05, $05, $05, $05, $05 ;; 05:6839 ????
    RLE  $41, $05, $05, $05, $05, $05, $05, $05, $05, $05 ;; 05:683d ????
    RLE  $41, $40, $05, $05, $05, $30, $40, $05, $05, $05 ;; 05:6841 ??????
    RLE  $41, $41, $05, $05, $30, $41, $41, $40, $30, $31 ;; 05:6847 ??????????

map00_room02_0a_script:
    SCRIPT_IDX script_005b                             ;; 05:6851 $5b $00
    db   $ff                                           ;; 05:6853 $ff

map00_room02_0a_tiles:
    RLE  $42, $51, $52, $05, $05, $41, $42, $05, $05, $41 ;; 05:6854 ??????????
    RLE  $52, $05, $05, $05, $05, $50, $52, $05, $05, $50 ;; 05:685e ????????
    RLE  $05, $05, $05, $05, $05, $05, $05, $05, $05, $05 ;; 05:6866 ????
    RLE  $05, $05, $05, $05, $05, $05, $05, $05, $05, $05 ;; 05:686a ????
    RLE  $05, $05, $05, $05, $05, $05, $05, $05, $05, $05 ;; 05:686e ????
    RLE  $05, $05, $05, $05, $05, $05, $05, $05, $05, $05 ;; 05:6872 ????
    RLE  $05, $05, $05, $05, $05, $05, $05, $05, $05, $30 ;; 05:6876 ????
    RLE  $31, $40, $05, $05, $30, $40, $30, $40, $30, $41 ;; 05:687a ??????????

map00_room03_0a_script:
    SCRIPT_IDX script_005b                             ;; 05:6884 $5b $00
    db   $ff                                           ;; 05:6886 $ff

map00_room03_0a_tiles:
    RLE  $41, $41, $41, $42, $05, $41, $41, $41, $41, $41 ;; 05:6887 ??????
    RLE  $51, $51, $51, $52, $05, $41, $41, $41, $41, $41 ;; 05:688d ??????
    RLE  $05, $05, $05, $05, $05, $50, $51, $51, $41, $41 ;; 05:6893 ????????
    RLE  $05, $05, $05, $05, $05, $05, $05, $05, $50, $41 ;; 05:689b ??????
    RLE  $05, $05, $05, $05, $05, $05, $05, $05, $05, $41 ;; 05:68a1 ????
    RLE  $05, $05, $05, $05, $05, $05, $05, $05, $05, $41 ;; 05:68a5 ????
    RLE  $40, $05, $05, $05, $05, $05, $05, $05, $05, $41 ;; 05:68a9 ??????
    RLE  $41, $31, $31, $40, $05, $05, $05, $05, $05, $41 ;; 05:68af ????????

map00_room04_0a_script:
    SCRIPT_IDX script_0058                             ;; 05:68b7 $58 $00
    db   $ff                                           ;; 05:68b9 $ff

map00_room04_0a_tiles:
    RLE  $42, $42, $42, $00, $00, $00, $50, $51, $51, $51 ;; 05:68ba ????
    RLE  $42, $42, $52, $00, $00, $00, $00, $36, $36, $36 ;; 05:68be ??????
    RLE  $42, $52, $00, $00, $00, $00, $00, $00, $00, $36 ;; 05:68c4 ??????
    RLE  $42, $00, $00, $00, $00, $00, $00, $00, $00, $36 ;; 05:68ca ??????
    RLE  $52, $00, $00, $00, $03, $17, $17, $17, $17, $17 ;; 05:68d0 ??????
    RLE  $40, $00, $00, $00, $17, $00, $00, $00, $00, $00 ;; 05:68d6 ??????
    RLE  $41, $00, $00, $36, $17, $00, $00, $00, $00, $00 ;; 05:68dc ????????
    RLE  $41, $00, $00, $36, $17, $00, $00, $00, $30, $31 ;; 05:68e4 ????????

map00_room05_0a_script:
    SCRIPT_IDX script_0058                             ;; 05:68ec $58 $00
    db   $ff                                           ;; 05:68ee $ff

map00_room05_0a_tiles:
    RLE  $36, $36, $36, $36, $36, $36, $00, $00, $36, $36 ;; 05:68ef ??????
    RLE  $36, $00, $00, $00, $00, $00, $00, $00, $00, $00 ;; 05:68f5 ????
    RLE  $36, $00, $00, $00, $00, $00, $00, $00, $00, $00 ;; 05:68f9 ????
    RLE  $36, $00, $00, $00, $00, $03, $17, $17, $17, $17 ;; 05:68fd ??????
    RLE  $17, $17, $17, $2a, $17, $14, $00, $00, $00, $30 ;; 05:6903 ??????
    RLE  $00, $00, $00, $00, $00, $00, $00, $00, $00, $41 ;; 05:6909 ????
    RLE  $00, $00, $00, $00, $00, $00, $00, $00, $30, $41 ;; 05:690d ??????
    RLE  $31, $40, $30, $40, $30, $31, $40, $30, $41, $41 ;; 05:6913 ??????????

map00_room06_0a_script:
    SCRIPT_IDX script_00a6                             ;; 05:691d $a6 $00
    db   $ff                                           ;; 05:691f $ff

map00_room06_0a_tiles:
    RLE  $36, $36, $00, $00, $16, $18, $00, $24, $24, $26 ;; 05:6920 ??????????
    RLE  $00, $00, $00, $00, $16, $18, $00, $00, $24, $24 ;; 05:692a ????????
    RLE  $00, $00, $00, $00, $16, $17, $08, $00, $00, $00 ;; 05:6932 ??????
    RLE  $17, $17, $17, $17, $17, $17, $17, $07, $07, $07 ;; 05:6938 ????
    RLE  $40, $00, $00, $00, $26, $27, $27, $27, $27, $27 ;; 05:693c ??????
    RLE  $41, $00, $00, $00, $00, $00, $00, $00, $00, $00 ;; 05:6942 ????
    RLE  $41, $40, $00, $00, $00, $00, $00, $00, $00, $00 ;; 05:6946 ??????
    RLE  $41, $41, $37, $37, $37, $37, $37, $37, $37, $37 ;; 05:694c ??????

map00_room07_0a_script:
    SCRIPT_IDX script_0046                             ;; 05:6952 $46 $00
    db   $ff                                           ;; 05:6954 $ff

map00_room07_0a_tiles:
    RLE  $27, $17, $17, $17, $28, $24, $24, $16, $17, $17 ;; 05:6955 ????????
    RLE  $24, $26, $27, $28, $24, $24, $24, $16, $17, $17 ;; 05:695d ????????
    RLE  $00, $00, $24, $24, $24, $24, $06, $17, $17, $17 ;; 05:6965 ??????
    RLE  $07, $07, $07, $07, $07, $07, $17, $17, $27, $27 ;; 05:696b ??????
    RLE  $27, $27, $27, $27, $27, $27, $27, $28, $00, $00 ;; 05:6971 ??????
    RLE  $00, $00, $00, $00, $00, $7f, $7f, $7f, $00, $00 ;; 05:6977 ??????
    RLE  $00, $00, $00, $00, $7f, $7f, $7f, $7f, $7f, $37 ;; 05:697d ??????
    RLE  $37, $37, $00, $37, $37, $37, $37, $37, $37, $37 ;; 05:6983 ??????

map00_room08_0a_script:
    SCRIPT_IDX script_00a6                             ;; 05:6989 $a6 $00
    db   $ff                                           ;; 05:698b $ff

map00_room08_0a_tiles:
    RLE  $17, $17, $17, $17, $17, $17, $18, $00, $00, $37 ;; 05:698c ??????
    RLE  $17, $17, $17, $17, $17, $17, $18, $00, $00, $37 ;; 05:6992 ??????
    RLE  $17, $17, $17, $17, $17, $17, $18, $00, $00, $37 ;; 05:6998 ??????
    RLE  $27, $27, $17, $17, $27, $27, $28, $00, $00, $37 ;; 05:699e ??????????
    RLE  $00, $00, $16, $17, $00, $4e, $00, $00, $00, $37 ;; 05:69a8 ????????
    RLE  $00, $4e, $26, $17, $00, $00, $00, $00, $00, $37 ;; 05:69b0 ????????
    RLE  $37, $37, $00, $17, $17, $17, $17, $17, $17, $17 ;; 05:69b8 ??????
    RLE  $37, $37, $00, $17, $30, $31, $31, $31, $31, $31 ;; 05:69be ????????

map00_room09_0a_script:
    SCRIPT_IDX script_0052                             ;; 05:69c6 $52 $00
    db   $ff                                           ;; 05:69c8 $ff

map00_room09_0a_tiles:
    RLE  $36, $36, $36, $36, $36, $36, $36, $36, $36, $36 ;; 05:69c9 ????
    RLE  $36, $03, $17, $17, $17, $17, $17, $17, $17, $17 ;; 05:69cd ??????
    RLE  $36, $17, $00, $00, $00, $00, $00, $00, $00, $00 ;; 05:69d3 ??????
    RLE  $36, $17, $00, $00, $36, $36, $36, $00, $00, $00 ;; 05:69d9 ??????
    RLE  $36, $17, $00, $00, $00, $00, $00, $00, $36, $36 ;; 05:69df ??????
    RLE  $36, $17, $00, $00, $00, $36, $36, $00, $36, $36 ;; 05:69e5 ????????
    RLE  $17, $14, $30, $40, $00, $00, $00, $00, $36, $36 ;; 05:69ed ????????
    RLE  $40, $30, $41, $41, $31, $40, $00, $00, $36, $36 ;; 05:69f5 ??????????

map00_room0a_0a_script:
    SCRIPT_IDX script_004f                             ;; 05:69ff $4f $00
    SCRIPT_AT_POS 4, 7, script_0387                    ;; 05:6a01 $47 $87 $03
    db   $ff                                           ;; 05:6a04 $ff

map00_room0a_0a_tiles:
    RLE  $36, $36, $36, $36, $36, $36, $36, $36, $36, $36 ;; 05:6a05 ????
    RLE  $17, $17, $17, $04, $00, $00, $00, $36, $36, $36 ;; 05:6a09 ????
    RLE  $00, $00, $00, $17, $00, $00, $00, $00, $36, $36 ;; 05:6a0d ??????
    RLE  $00, $00, $00, $17, $00, $00, $5d, $5d, $5d, $36 ;; 05:6a13 ??????
    RLE  $36, $36, $00, $17, $00, $00, $5e, $2e, $5e, $36 ;; 05:6a19 ??????????
    RLE  $36, $36, $00, $29, $00, $00, $00, $00, $36, $36 ;; 05:6a23 ????????
    RLE  $36, $36, $00, $13, $17, $17, $17, $17, $17, $17 ;; 05:6a2b ??????
    RLE  $36, $36, $00, $36, $36, $36, $36, $36, $36, $36 ;; 05:6a31 ??????

map00_room0b_0a_script:
    SCRIPT_IDX script_004c                             ;; 05:6a37 $4c $00
    db   $ff                                           ;; 05:6a39 $ff

map00_room0b_0a_tiles:
    RLE  $42, $51, $51, $51, $17, $41, $51, $51, $51, $41 ;; 05:6a3a ??????
    RLE  $52, $00, $00, $4e, $17, $41, $00, $00, $00, $41 ;; 05:6a40 ????????
    RLE  $33, $00, $00, $34, $17, $62, $33, $00, $00, $41 ;; 05:6a48 ??????????
    RLE  $41, $2b, $64, $42, $17, $24, $41, $2b, $64, $41 ;; 05:6a52 ??????????
    RLE  $50, $2b, $41, $52, $17, $24, $62, $2b, $51, $41 ;; 05:6a5c ??????????
    RLE  $37, $00, $00, $00, $17, $4e, $24, $24, $24, $41 ;; 05:6a66 ??????
    RLE  $17, $2a, $17, $17, $17, $24, $24, $24, $24, $41 ;; 05:6a6c ??????
    RLE  $37, $00, $00, $00, $17, $24, $24, $24, $24, $41 ;; 05:6a72 ??????

map00_room0c_0a_script:
    SCRIPT_IDX script_0049                             ;; 05:6a78 $49 $00
    db   $ff                                           ;; 05:6a7a $ff

map00_room0c_0a_tiles:
    RLE  $41, $42, $51, $51, $51, $51, $51, $51, $41, $41 ;; 05:6a7b ??????
    RLE  $41, $75, $24, $24, $24, $45, $45, $45, $62, $41 ;; 05:6a81 ??????
    RLE  $41, $24, $24, $45, $45, $45, $45, $45, $45, $41 ;; 05:6a87 ??????
    RLE  $41, $24, $24, $24, $45, $45, $24, $24, $24, $62 ;; 05:6a8d ??????
    RLE  $41, $45, $45, $45, $45, $24, $24, $24, $24, $24 ;; 05:6a93 ??????
    RLE  $41, $24, $24, $45, $45, $45, $45, $24, $24, $24 ;; 05:6a99 ??????
    RLE  $41, $61, $24, $24, $24, $45, $45, $45, $45, $60 ;; 05:6a9f ??????
    RLE  $41, $41, $31, $61, $24, $24, $24, $24, $60, $41 ;; 05:6aa5 ????????

map00_room0d_0a_script:
    SCRIPT_IDX script_00d6                             ;; 05:6aad $d6 $00
    db   $ff                                           ;; 05:6aaf $ff

map00_room0d_0a_tiles:
    RLE  $42, $42, $51, $51, $51, $75, $24, $24, $62, $41 ;; 05:6ab0 ????????
    RLE  $42, $75, $24, $24, $24, $24, $24, $24, $24, $41 ;; 05:6ab8 ??????
    RLE  $42, $24, $24, $24, $45, $45, $24, $24, $24, $41 ;; 05:6abe ??????
    RLE  $75, $24, $24, $45, $24, $24, $45, $24, $24, $62 ;; 05:6ac4 ??????????
    RLE  $24, $24, $24, $45, $24, $24, $24, $24, $24, $60 ;; 05:6ace ??????
    RLE  $24, $24, $24, $24, $45, $45, $24, $24, $24, $41 ;; 05:6ad4 ??????
    RLE  $61, $24, $24, $24, $24, $24, $24, $24, $60, $41 ;; 05:6ada ??????
    RLE  $41, $61, $60, $31, $61, $60, $61, $60, $41, $41 ;; 05:6ae0 ??????????

map00_room0e_0a_script:
    SCRIPT_IDX script_0079                             ;; 05:6aea $79 $00
    db   $ff                                           ;; 05:6aec $ff

map00_room0e_0a_tiles:
    RLE  $41, $42, $42, $51, $51, $51, $41, $41, $41, $41 ;; 05:6aed ??????
    RLE  $41, $42, $52, $00, $00, $00, $50, $51, $51, $51 ;; 05:6af3 ??????
    RLE  $41, $52, $00, $00, $00, $00, $3b, $00, $00, $00 ;; 05:6af9 ??????
    RLE  $41, $40, $00, $3b, $00, $3b, $00, $00, $00, $00 ;; 05:6aff ????????
    RLE  $41, $53, $00, $00, $00, $3b, $00, $00, $00, $30 ;; 05:6b07 ??????
    RLE  $53, $00, $3b, $00, $00, $00, $3b, $00, $3b, $41 ;; 05:6b0d ????????
    RLE  $40, $00, $00, $00, $00, $00, $00, $3b, $00, $50 ;; 05:6b15 ??????
    RLE  $41, $31, $40, $00, $00, $00, $00, $00, $00, $30 ;; 05:6b1b ??????

map00_room0f_0a_script:
    SCRIPT_IDX script_007c                             ;; 05:6b21 $7c $00
    db   $ff                                           ;; 05:6b23 $ff

map00_room0f_0a_tiles:
    RLE  $41, $41, $42, $00, $00, $00, $00, $10, $11, $11 ;; 05:6b24 ????????
    RLE  $51, $51, $52, $00, $00, $00, $00, $10, $11, $11 ;; 05:6b2c ????????
    RLE  $00, $00, $00, $00, $00, $00, $15, $11, $11, $11 ;; 05:6b34 ????
    RLE  $00, $00, $00, $1b, $00, $00, $10, $11, $11, $11 ;; 05:6b38 ??????
    RLE  $40, $00, $00, $00, $00, $00, $10, $11, $11, $11 ;; 05:6b3e ??????
    RLE  $41, $00, $00, $00, $1b, $00, $10, $11, $11, $11 ;; 05:6b44 ??????
    RLE  $41, $40, $00, $00, $00, $00, $20, $11, $11, $11 ;; 05:6b4a ??????
    RLE  $41, $41, $31, $40, $30, $31, $40, $10, $11, $11 ;; 05:6b50 ??????????

map00_room00_0b_script:
    SCRIPT_IDX script_0046                             ;; 05:6b5a $46 $00
    db   $ff                                           ;; 05:6b5c $ff

map00_room00_0b_tiles:
    RLE  $11, $11, $11, $11, $12, $05, $05, $05, $05, $41 ;; 05:6b5d ??????
    RLE  $11, $11, $11, $11, $12, $05, $05, $05, $05, $41 ;; 05:6b63 ??????
    RLE  $11, $11, $11, $11, $22, $05, $05, $47, $05, $50 ;; 05:6b69 ????????
    RLE  $11, $11, $11, $12, $05, $05, $05, $05, $05, $05 ;; 05:6b71 ????
    RLE  $11, $11, $11, $12, $05, $47, $05, $05, $05, $05 ;; 05:6b75 ??????
    RLE  $11, $11, $11, $12, $05, $05, $05, $47, $05, $05 ;; 05:6b7b ??????
    RLE  $11, $11, $11, $12, $05, $05, $05, $05, $05, $30 ;; 05:6b81 ??????
    RLE  $11, $11, $11, $12, $30, $40, $30, $40, $30, $41 ;; 05:6b87 ????????

map00_room01_0b_script:
    SCRIPT_IDX script_005b                             ;; 05:6b8f $5b $00
    db   $ff                                           ;; 05:6b91 $ff

map00_room01_0b_tiles:
    RLE  $41, $42, $05, $05, $41, $41, $41, $41, $41, $41 ;; 05:6b92 ??????
    RLE  $41, $42, $05, $05, $50, $51, $51, $51, $53, $50 ;; 05:6b98 ????????
    RLE  $51, $52, $05, $05, $05, $05, $05, $05, $05, $05 ;; 05:6ba0 ??????
    RLE  $05, $05, $05, $47, $47, $05, $05, $47, $05, $05 ;; 05:6ba6 ????????
    RLE  $05, $05, $05, $05, $05, $05, $05, $05, $05, $05 ;; 05:6bae ????
    RLE  $05, $05, $05, $05, $05, $05, $05, $05, $05, $05 ;; 05:6bb2 ????
    RLE  $40, $30, $40, $05, $05, $05, $05, $05, $30, $31 ;; 05:6bb6 ????????
    RLE  $41, $41, $41, $40, $05, $05, $30, $31, $41, $41 ;; 05:6bbe ????????

map00_room02_0b_script:
    SCRIPT_IDX script_005e                             ;; 05:6bc6 $5e $00
    db   $ff                                           ;; 05:6bc8 $ff

map00_room02_0b_tiles:
    RLE  $42, $52, $05, $05, $50, $51, $51, $51, $41, $41 ;; 05:6bc9 ????????
    RLE  $52, $05, $05, $05, $05, $05, $05, $05, $50, $41 ;; 05:6bd1 ??????
    RLE  $05, $05, $05, $05, $05, $05, $05, $05, $05, $41 ;; 05:6bd7 ????
    RLE  $05, $05, $05, $05, $05, $05, $05, $05, $05, $50 ;; 05:6bdb ????
    RLE  $05, $05, $05, $05, $05, $05, $05, $05, $05, $05 ;; 05:6bdf ????
    RLE  $05, $05, $30, $40, $30, $40, $05, $05, $05, $05 ;; 05:6be3 ????????
    RLE  $40, $30, $41, $41, $41, $41, $40, $30, $40, $30 ;; 05:6beb ????????
    RLE  $41, $41, $41, $41, $41, $41, $41, $41, $41, $41 ;; 05:6bf3 ????

map00_room03_0b_script:
    SCRIPT_IDX script_005b                             ;; 05:6bf7 $5b $00
    db   $ff                                           ;; 05:6bf9 $ff

map00_room03_0b_tiles:
    RLE  $42, $42, $51, $52, $05, $05, $05, $05, $05, $41 ;; 05:6bfa ????????
    RLE  $42, $52, $05, $05, $05, $05, $05, $05, $05, $50 ;; 05:6c02 ??????
    RLE  $42, $05, $05, $05, $05, $47, $47, $05, $05, $05 ;; 05:6c08 ??????
    RLE  $52, $05, $05, $05, $47, $47, $47, $05, $05, $05 ;; 05:6c0e ????
    RLE  $05, $05, $05, $05, $47, $47, $05, $05, $05, $30 ;; 05:6c12 ??????
    RLE  $05, $05, $05, $05, $05, $05, $05, $05, $05, $41 ;; 05:6c18 ????
    RLE  $40, $30, $40, $05, $05, $05, $05, $05, $30, $41 ;; 05:6c1c ????????
    RLE  $41, $41, $41, $40, $05, $30, $31, $31, $41, $41 ;; 05:6c24 ????????

map00_room04_0b_script:
    SCRIPT_IDX script_0058                             ;; 05:6c2c $58 $00
    db   $ff                                           ;; 05:6c2e $ff

map00_room04_0b_tiles:
    RLE  $42, $00, $00, $36, $17, $00, $00, $00, $50, $41 ;; 05:6c2f ????????
    RLE  $52, $00, $00, $00, $17, $00, $00, $00, $00, $41 ;; 05:6c37 ??????
    RLE  $05, $00, $00, $00, $17, $00, $00, $00, $00, $41 ;; 05:6c3d ??????
    RLE  $05, $05, $00, $00, $13, $17, $04, $00, $00, $41 ;; 05:6c43 ??????????
    RLE  $40, $00, $00, $00, $00, $00, $29, $00, $00, $50 ;; 05:6c4d ????????
    RLE  $41, $00, $00, $00, $00, $00, $13, $17, $17, $17 ;; 05:6c55 ??????
    RLE  $41, $40, $30, $40, $00, $00, $30, $40, $30, $31 ;; 05:6c5b ??????????
    RLE  $41, $41, $41, $41, $40, $30, $41, $41, $41, $41 ;; 05:6c65 ??????

map00_room05_0b_script:
    SCRIPT_IDX script_0058                             ;; 05:6c6b $58 $00
    SCRIPT_AT_POS 2, 4, script_0388                    ;; 05:6c6d $24 $88 $03
    db   $ff                                           ;; 05:6c70 $ff

map00_room05_0b_tiles:
    RLE  $41, $42, $42, $51, $51, $51, $41, $51, $51, $51 ;; 05:6c71 ??????
    RLE  $41, $42, $42, $5d, $5d, $5d, $51, $37, $37, $37 ;; 05:6c77 ??????
    RLE  $41, $42, $52, $5e, $2e, $5e, $69, $51, $51, $51 ;; 05:6c7d ????????
    RLE  $41, $42, $00, $00, $00, $00, $00, $00, $00, $00 ;; 05:6c85 ??????
    RLE  $51, $52, $00, $00, $00, $00, $00, $00, $00, $37 ;; 05:6c8b ??????
    RLE  $17, $17, $17, $17, $17, $04, $00, $00, $00, $37 ;; 05:6c91 ??????
    RLE  $31, $40, $00, $00, $00, $29, $00, $00, $00, $37 ;; 05:6c97 ??????
    RLE  $41, $41, $00, $00, $00, $17, $37, $37, $00, $37 ;; 05:6c9d ????????

map00_room06_0b_script:
    SCRIPT_IDX script_0058                             ;; 05:6ca5 $58 $00
    db   $ff                                           ;; 05:6ca7 $ff

map00_room06_0b_tiles:
    RLE  $51, $53, $37, $37, $37, $37, $37, $37, $37, $37 ;; 05:6ca8 ??????
    RLE  $37, $37, $37, $37, $37, $37, $51, $51, $51, $51 ;; 05:6cae ????
    RLE  $51, $51, $33, $37, $37, $37, $6e, $00, $00, $00 ;; 05:6cb2 ??????
    RLE  $00, $00, $50, $37, $37, $37, $6e, $00, $37, $37 ;; 05:6cb8 ????????
    RLE  $37, $00, $00, $37, $37, $37, $6e, $00, $37, $37 ;; 05:6cc0 ????????
    RLE  $37, $6e, $00, $51, $51, $51, $69, $00, $51, $51 ;; 05:6cc8 ????????
    RLE  $37, $6e, $00, $00, $00, $00, $00, $00, $00, $00 ;; 05:6cd0 ??????
    RLE  $37, $6e, $00, $37, $37, $37, $00, $00, $37, $37 ;; 05:6cd6 ????????

map00_room07_0b_script:
    SCRIPT_IDX script_0058                             ;; 05:6cde $58 $00
    db   $ff                                           ;; 05:6ce0 $ff

map00_room07_0b_tiles:
    RLE  $37, $37, $6e, $33, $37, $37, $37, $37, $37, $37 ;; 05:6ce1 ??????
    RLE  $51, $51, $69, $50, $51, $51, $51, $33, $37, $37 ;; 05:6ce7 ????????
    RLE  $00, $00, $00, $00, $37, $37, $37, $50, $51, $51 ;; 05:6cef ??????
    RLE  $37, $37, $00, $00, $00, $37, $37, $00, $00, $00 ;; 05:6cf5 ??????
    RLE  $37, $37, $6e, $00, $00, $37, $37, $00, $00, $00 ;; 05:6cfb ????????
    RLE  $51, $51, $69, $00, $00, $37, $37, $37, $00, $00 ;; 05:6d03 ????????
    RLE  $00, $00, $00, $00, $37, $37, $37, $37, $37, $37 ;; 05:6d0b ????
    RLE  $37, $37, $37, $37, $37, $37, $37, $37, $37, $37 ;; 05:6d0f ????

map00_room08_0b_script:
    SCRIPT_IDX script_003d                             ;; 05:6d13 $3d $00
    SCRIPT_AT_POS 1, 6, script_027a                    ;; 05:6d15 $16 $7a $02
    db   $ff                                           ;; 05:6d18 $ff

map00_room08_0b_tiles:
    RLE  $37, $37, $6e, $17, $41, $41, $1c, $41, $41, $41 ;; 05:6d19 ????????
    RLE  $37, $34, $69, $17, $50, $51, $4c, $51, $41, $41 ;; 05:6d21 ??????????
    RLE  $51, $52, $00, $17, $00, $00, $00, $00, $50, $41 ;; 05:6d2b ????????
    RLE  $00, $00, $00, $17, $00, $00, $00, $00, $00, $41 ;; 05:6d33 ??????
    RLE  $00, $00, $00, $13, $17, $17, $04, $00, $00, $41 ;; 05:6d39 ????????
    RLE  $00, $00, $00, $00, $00, $00, $17, $00, $00, $41 ;; 05:6d41 ??????
    RLE  $37, $37, $00, $00, $00, $00, $17, $00, $00, $41 ;; 05:6d47 ????????
    RLE  $37, $37, $6e, $00, $00, $00, $17, $00, $00, $41 ;; 05:6d4f ????????

map00_room09_0b_script:
    SCRIPT_IDX script_0491                             ;; 05:6d57 $91 $04
    SCRIPT_AT_POS 2, 2, script_0279                    ;; 05:6d59 $22 $79 $02
    db   $ff                                           ;; 05:6d5c $ff

map00_room09_0b_tiles:
    RLE  $41, $42, $41, $41, $41, $42, $00, $00, $37, $37 ;; 05:6d5d ????????
    RLE  $41, $42, $41, $41, $41, $42, $00, $00, $00, $37 ;; 05:6d65 ??????
    RLE  $41, $42, $4c, $51, $51, $52, $00, $00, $00, $00 ;; 05:6d6b ????????
    RLE  $41, $52, $49, $49, $49, $49, $00, $00, $00, $37 ;; 05:6d73 ??????
    RLE  $41, $49, $49, $49, $00, $00, $00, $00, $00, $37 ;; 05:6d79 ??????
    RLE  $41, $49, $00, $00, $00, $00, $00, $00, $00, $37 ;; 05:6d7f ??????
    RLE  $41, $40, $00, $00, $00, $00, $00, $00, $00, $30 ;; 05:6d85 ??????
    RLE  $41, $41, $31, $31, $31, $40, $30, $40, $30, $41 ;; 05:6d8b ????????

map00_room0a_0b_script:
    SCRIPT_IDX script_0052                             ;; 05:6d93 $52 $00
    db   $ff                                           ;; 05:6d95 $ff

map00_room0a_0b_tiles:
    RLE  $37, $37, $00, $37, $37, $37, $37, $37, $37, $37 ;; 05:6d96 ??????
    RLE  $37, $37, $00, $7f, $7f, $37, $00, $00, $00, $37 ;; 05:6d9c ????????
    RLE  $00, $00, $00, $37, $7f, $37, $00, $00, $00, $37 ;; 05:6da4 ??????
    RLE  $37, $37, $37, $37, $7f, $7f, $00, $00, $00, $37 ;; 05:6daa ??????
    RLE  $37, $7f, $7f, $7f, $37, $37, $37, $7f, $37, $37 ;; 05:6db0 ??????
    RLE  $37, $7f, $7f, $00, $00, $37, $7f, $7f, $37, $37 ;; 05:6db6 ??????????
    RLE  $40, $7f, $7f, $00, $00, $7f, $7f, $37, $37, $37 ;; 05:6dc0 ????????
    RLE  $41, $31, $40, $00, $00, $37, $37, $37, $37, $37 ;; 05:6dc8 ????????

map00_room0b_0b_script:
    SCRIPT_IDX script_0049                             ;; 05:6dd0 $49 $00
    db   $ff                                           ;; 05:6dd2 $ff

map00_room0b_0b_tiles:
    RLE  $37, $00, $00, $00, $17, $24, $24, $24, $24, $41 ;; 05:6dd3 ??????
    RLE  $37, $00, $00, $00, $17, $24, $24, $24, $24, $62 ;; 05:6dd9 ??????
    RLE  $37, $00, $00, $00, $17, $24, $24, $24, $24, $24 ;; 05:6ddf ??????
    RLE  $37, $00, $00, $00, $17, $24, $24, $24, $24, $24 ;; 05:6de5 ??????
    RLE  $37, $00, $00, $00, $13, $17, $17, $17, $17, $17 ;; 05:6deb ??????
    RLE  $37, $00, $00, $00, $00, $00, $00, $00, $00, $00 ;; 05:6df1 ????
    RLE  $37, $37, $00, $00, $00, $00, $00, $00, $00, $00 ;; 05:6df5 ??????
    RLE  $37, $37, $37, $37, $37, $37, $37, $37, $37, $37 ;; 05:6dfb ????

map00_room0c_0b_script:
    SCRIPT_IDX script_0049                             ;; 05:6dff $49 $00
    db   $ff                                           ;; 05:6e01 $ff

map00_room0c_0b_tiles:
    RLE  $42, $51, $51, $75, $24, $24, $24, $24, $62, $41 ;; 05:6e02 ????????
    RLE  $75, $24, $24, $24, $24, $24, $24, $24, $24, $41 ;; 05:6e0a ??????
    RLE  $24, $24, $45, $45, $24, $24, $24, $45, $45, $41 ;; 05:6e10 ????????
    RLE  $24, $24, $24, $24, $24, $24, $45, $45, $45, $41 ;; 05:6e18 ????
    RLE  $17, $17, $17, $17, $17, $17, $17, $17, $04, $41 ;; 05:6e1c ??????
    RLE  $00, $00, $00, $00, $00, $00, $00, $00, $17, $51 ;; 05:6e22 ??????
    RLE  $00, $00, $00, $00, $00, $00, $00, $00, $17, $07 ;; 05:6e28 ??????
    RLE  $37, $37, $00, $00, $37, $37, $00, $00, $17, $6c ;; 05:6e2e ??????????

map00_room0d_0b_script:
    SCRIPT_IDX script_0079                             ;; 05:6e38 $79 $00
    SCRIPT_AT_POS 2, 4, script_0389                    ;; 05:6e3a $24 $89 $03
    db   $ff                                           ;; 05:6e3d $ff

map00_room0d_0b_tiles:
    RLE  $41, $41, $41, $41, $41, $41, $41, $41, $41, $41 ;; 05:6e3e ????
    RLE  $41, $41, $51, $5d, $5d, $5d, $51, $51, $51, $51 ;; 05:6e42 ??????
    RLE  $41, $41, $36, $5e, $2e, $5e, $69, $00, $00, $00 ;; 05:6e48 ????????
    RLE  $41, $41, $36, $36, $00, $00, $00, $00, $00, $00 ;; 05:6e50 ??????
    RLE  $41, $41, $00, $00, $00, $00, $36, $36, $00, $00 ;; 05:6e56 ????????
    RLE  $51, $53, $00, $00, $00, $00, $00, $00, $00, $00 ;; 05:6e5e ??????
    RLE  $07, $07, $07, $07, $07, $07, $07, $07, $07, $07 ;; 05:6e64 ????
    RLE  $6d, $6c, $6d, $6c, $6d, $6c, $6d, $6c, $6d, $6c ;; 05:6e68 ??????????

map00_room0e_0b_script:
    SCRIPT_IDX script_0079                             ;; 05:6e72 $79 $00
    db   $ff                                           ;; 05:6e74 $ff

map00_room0e_0b_tiles:
    RLE  $41, $41, $53, $00, $00, $00, $00, $00, $00, $41 ;; 05:6e75 ??????
    RLE  $51, $53, $00, $00, $00, $00, $00, $00, $3b, $50 ;; 05:6e7b ??????
    RLE  $00, $00, $00, $00, $00, $00, $00, $3b, $00, $00 ;; 05:6e81 ??????
    RLE  $00, $00, $3b, $00, $00, $3b, $00, $3b, $00, $00 ;; 05:6e87 ??????????
    RLE  $00, $00, $00, $30, $40, $00, $3b, $00, $00, $30 ;; 05:6e91 ????????
    RLE  $00, $00, $30, $41, $41, $00, $00, $00, $00, $41 ;; 05:6e99 ????????
    RLE  $07, $08, $41, $41, $41, $00, $00, $00, $00, $41 ;; 05:6ea1 ??????
    RLE  $6c, $18, $41, $41, $41, $40, $00, $00, $30, $41 ;; 05:6ea7 ????????

map00_room0f_0b_script:
    SCRIPT_IDX script_007c                             ;; 05:6eaf $7c $00
    db   $ff                                           ;; 05:6eb1 $ff

map00_room0f_0b_tiles:
    RLE  $41, $42, $51, $51, $51, $51, $53, $10, $11, $11 ;; 05:6eb2 ????????
    RLE  $51, $52, $00, $00, $00, $00, $00, $10, $11, $11 ;; 05:6eba ????????
    RLE  $00, $00, $00, $00, $00, $00, $00, $10, $11, $11 ;; 05:6ec2 ??????
    RLE  $00, $00, $3b, $00, $00, $00, $00, $10, $11, $11 ;; 05:6ec8 ????????
    RLE  $40, $00, $00, $00, $00, $00, $15, $11, $11, $11 ;; 05:6ed0 ??????
    RLE  $53, $00, $00, $00, $3b, $00, $10, $11, $11, $11 ;; 05:6ed6 ??????
    RLE  $40, $00, $00, $00, $00, $00, $10, $11, $11, $11 ;; 05:6edc ??????
    RLE  $41, $40, $30, $40, $30, $40, $10, $11, $11, $11 ;; 05:6ee2 ????????

map00_room00_0c_script:
    SCRIPT_IDX script_005b                             ;; 05:6eea $5b $00
    db   $ff                                           ;; 05:6eec $ff

map00_room00_0c_tiles:
    RLE  $11, $11, $11, $12, $50, $51, $52, $50, $41, $41 ;; 05:6eed ????????
    RLE  $11, $11, $11, $12, $47, $47, $47, $47, $50, $51 ;; 05:6ef5 ??????
    RLE  $11, $11, $11, $12, $47, $05, $05, $05, $05, $05 ;; 05:6efb ??????
    RLE  $11, $11, $11, $22, $05, $05, $05, $05, $05, $05 ;; 05:6f01 ????
    RLE  $11, $11, $12, $05, $05, $05, $05, $05, $05, $30 ;; 05:6f05 ??????
    RLE  $11, $11, $12, $05, $05, $05, $05, $05, $47, $41 ;; 05:6f0b ????????
    RLE  $11, $11, $12, $05, $05, $05, $05, $05, $47, $41 ;; 05:6f13 ????????
    RLE  $11, $11, $12, $05, $05, $05, $05, $47, $30, $41 ;; 05:6f1b ????????

map00_room01_0c_script:
    SCRIPT_IDX script_005e                             ;; 05:6f23 $5e $00
    db   $ff                                           ;; 05:6f25 $ff

map00_room01_0c_tiles:
    RLE  $41, $42, $51, $52, $05, $05, $50, $51, $41, $41 ;; 05:6f26 ??????????
    RLE  $51, $52, $05, $05, $05, $05, $05, $05, $50, $41 ;; 05:6f30 ??????
    RLE  $05, $05, $05, $05, $05, $05, $05, $05, $05, $50 ;; 05:6f36 ????
    RLE  $05, $05, $05, $05, $05, $05, $05, $05, $05, $05 ;; 05:6f3a ????
    RLE  $40, $05, $05, $05, $05, $05, $05, $05, $05, $30 ;; 05:6f3e ??????
    RLE  $41, $05, $05, $05, $05, $05, $05, $05, $30, $41 ;; 05:6f44 ??????
    RLE  $41, $40, $05, $05, $05, $05, $05, $05, $50, $41 ;; 05:6f4a ??????
    RLE  $41, $41, $40, $30, $40, $30, $40, $05, $30, $41 ;; 05:6f50 ??????????

map00_room02_0c_script:
    SCRIPT_IDX script_047c                             ;; 05:6f5a $7c $04
    SCRIPT_AT_POS 1, 7, script_0281                    ;; 05:6f5c $17 $81 $02
    SCRIPT_AT_POS 3, 4, script_040c                    ;; 05:6f5f $34 $0c $04
    SCRIPT_AT_POS 3, 6, script_040d                    ;; 05:6f62 $36 $0d $04
    SCRIPT_AT_POS 3, 8, script_040e                    ;; 05:6f65 $38 $0e $04
    db   $ff                                           ;; 05:6f68 $ff

map00_room02_0c_tiles:
    RLE  $47, $47, $47, $47, $47, $41, $41, $41, $41, $41 ;; 05:6f69 ??????
    RLE  $47, $47, $00, $00, $00, $50, $51, $51, $41, $51 ;; 05:6f6f ????????
    RLE  $47, $00, $00, $00, $00, $00, $00, $00, $00, $47 ;; 05:6f77 ??????
    RLE  $00, $00, $00, $00, $70, $47, $70, $47, $70, $47 ;; 05:6f7d ????????
    RLE  $47, $06, $07, $08, $00, $00, $00, $00, $00, $47 ;; 05:6f85 ????????
    RLE  $47, $26, $27, $17, $07, $08, $00, $00, $00, $47 ;; 05:6f8d ????????
    RLE  $47, $47, $47, $26, $27, $28, $00, $00, $00, $47 ;; 05:6f95 ??????
    RLE  $47, $47, $47, $47, $47, $47, $00, $00, $47, $47 ;; 05:6f9b ??????

map00_room03_0c_script:
    SCRIPT_IDX script_005e                             ;; 05:6fa1 $5e $00
    db   $ff                                           ;; 05:6fa3 $ff

map00_room03_0c_tiles:
    RLE  $41, $42, $51, $52, $05, $50, $51, $51, $41, $41 ;; 05:6fa4 ??????????
    RLE  $41, $52, $05, $05, $05, $05, $05, $05, $50, $41 ;; 05:6fae ??????
    RLE  $41, $05, $05, $05, $05, $05, $05, $05, $30, $41 ;; 05:6fb4 ??????
    RLE  $41, $05, $05, $05, $05, $05, $05, $05, $50, $51 ;; 05:6fba ??????
    RLE  $41, $05, $05, $05, $05, $05, $05, $05, $05, $05 ;; 05:6fc0 ????
    RLE  $41, $05, $05, $05, $05, $05, $05, $05, $05, $05 ;; 05:6fc4 ????
    RLE  $41, $40, $05, $05, $05, $05, $05, $05, $05, $30 ;; 05:6fc8 ??????
    RLE  $41, $41, $05, $05, $05, $05, $30, $40, $30, $41 ;; 05:6fce ????????

map00_room04_0c_script:
    SCRIPT_IDX script_005e                             ;; 05:6fd6 $5e $00
    db   $ff                                           ;; 05:6fd8 $ff

map00_room04_0c_tiles:
    RLE  $42, $42, $51, $51, $51, $41, $41, $41, $41, $41 ;; 05:6fd9 ??????
    RLE  $42, $52, $47, $47, $47, $50, $51, $51, $41, $41 ;; 05:6fdf ????????
    RLE  $42, $05, $05, $05, $06, $07, $07, $08, $50, $41 ;; 05:6fe7 ????????
    RLE  $52, $05, $05, $05, $26, $27, $17, $17, $08, $41 ;; 05:6fef ????????
    RLE  $05, $05, $05, $05, $05, $05, $26, $27, $28, $41 ;; 05:6ff7 ??????
    RLE  $05, $05, $05, $05, $05, $05, $47, $47, $47, $41 ;; 05:6ffd ????
    RLE  $31, $40, $05, $05, $05, $05, $30, $40, $30, $41 ;; 05:7001 ????????
    RLE  $41, $41, $40, $30, $40, $30, $41, $41, $41, $41 ;; 05:7009 ????????

map00_room05_0c_script:
    SCRIPT_IDX script_0058                             ;; 05:7011 $58 $00
    db   $ff                                           ;; 05:7013 $ff

map00_room05_0c_tiles:
    RLE  $41, $53, $00, $00, $00, $17, $37, $37, $6e, $37 ;; 05:7014 ????????
    RLE  $41, $00, $00, $00, $00, $17, $51, $51, $69, $51 ;; 05:701c ????????
    RLE  $41, $00, $00, $00, $00, $17, $00, $00, $00, $00 ;; 05:7024 ??????
    RLE  $41, $00, $00, $00, $00, $17, $00, $00, $00, $00 ;; 05:702a ??????
    RLE  $41, $00, $00, $00, $00, $13, $17, $17, $17, $17 ;; 05:7030 ??????
    RLE  $41, $40, $00, $00, $00, $00, $00, $00, $00, $00 ;; 05:7036 ??????
    RLE  $41, $41, $31, $40, $00, $00, $00, $00, $00, $00 ;; 05:703c ??????
    RLE  $41, $41, $41, $41, $31, $31, $31, $31, $40, $30 ;; 05:7042 ??????

map00_room06_0c_script:
    SCRIPT_IDX script_0058                             ;; 05:7048 $58 $00
    db   $ff                                           ;; 05:704a $ff

map00_room06_0c_tiles:
    RLE  $37, $6e, $00, $37, $37, $37, $6e, $00, $37, $37 ;; 05:704b ????????
    RLE  $51, $69, $00, $51, $51, $51, $69, $00, $37, $37 ;; 05:7053 ????????
    RLE  $00, $00, $00, $00, $00, $00, $00, $00, $40, $37 ;; 05:705b ??????
    RLE  $00, $00, $00, $00, $00, $00, $00, $00, $50, $51 ;; 05:7061 ??????
    RLE  $17, $2a, $17, $17, $17, $04, $00, $00, $00, $00 ;; 05:7067 ??????
    RLE  $00, $00, $00, $00, $00, $17, $00, $00, $00, $00 ;; 05:706d ??????
    RLE  $00, $00, $00, $00, $15, $11, $38, $38, $38, $38 ;; 05:7073 ??????
    RLE  $40, $30, $31, $40, $10, $11, $11, $11, $11, $11 ;; 05:7079 ????????

map00_room07_0c_script:
    SCRIPT_IDX script_0058                             ;; 05:7081 $58 $00
    SCRIPT_AT_POS 2, 4, script_038a                    ;; 05:7083 $24 $8a $03
    db   $ff                                           ;; 05:7086 $ff

map00_room07_0c_tiles:
    RLE  $37, $37, $37, $37, $37, $37, $37, $37, $37, $37 ;; 05:7087 ????
    RLE  $37, $37, $34, $5d, $5d, $5d, $51, $37, $37, $37 ;; 05:708b ??????
    RLE  $37, $34, $52, $5e, $2e, $5e, $69, $33, $37, $37 ;; 05:7091 ??????????
    RLE  $51, $52, $7f, $7f, $00, $00, $00, $50, $51, $51 ;; 05:709b ????????
    RLE  $00, $7f, $7f, $00, $00, $00, $00, $00, $00, $00 ;; 05:70a3 ??????
    RLE  $00, $7f, $00, $00, $00, $00, $00, $00, $00, $00 ;; 05:70a9 ??????
    RLE  $38, $02, $00, $00, $00, $00, $00, $30, $40, $30 ;; 05:70af ????????
    RLE  $11, $11, $02, $00, $30, $40, $30, $41, $41, $41 ;; 05:70b7 ????????

map00_room08_0c_script:
    SCRIPT_IDX script_0055                             ;; 05:70bf $55 $00
    db   $ff                                           ;; 05:70c1 $ff

map00_room08_0c_tiles:
    RLE  $37, $37, $6e, $00, $00, $00, $17, $00, $00, $41 ;; 05:70c2 ????????
    RLE  $37, $37, $6e, $00, $00, $00, $17, $00, $00, $50 ;; 05:70ca ????????
    RLE  $37, $34, $69, $00, $00, $00, $17, $00, $00, $00 ;; 05:70d2 ??????
    RLE  $51, $52, $00, $00, $00, $00, $17, $00, $00, $00 ;; 05:70d8 ??????
    RLE  $00, $00, $00, $00, $00, $00, $17, $00, $00, $00 ;; 05:70de ????
    RLE  $00, $00, $00, $00, $00, $00, $17, $00, $00, $00 ;; 05:70e2 ????
    RLE  $40, $00, $00, $30, $40, $00, $17, $00, $00, $37 ;; 05:70e6 ??????????
    RLE  $41, $40, $30, $41, $41, $40, $17, $00, $00, $37 ;; 05:70f0 ??????????

map00_room09_0c_script:
    SCRIPT_IDX script_004f                             ;; 05:70fa $4f $00
    db   $ff                                           ;; 05:70fc $ff

map00_room09_0c_tiles:
    RLE  $41, $42, $51, $51, $51, $41, $41, $41, $41, $41 ;; 05:70fd ??????
    RLE  $51, $52, $00, $00, $00, $50, $41, $41, $41, $41 ;; 05:7103 ??????
    RLE  $00, $00, $00, $00, $00, $00, $50, $51, $51, $51 ;; 05:7109 ????
    RLE  $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ;; 05:710d ????
    RLE  $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ;; 05:7111 ????
    RLE  $00, $00, $00, $00, $00, $00, $00, $00, $00, $37 ;; 05:7115 ????
    RLE  $37, $37, $00, $37, $37, $37, $00, $00, $37, $37 ;; 05:7119 ????????
    RLE  $37, $37, $00, $37, $37, $37, $00, $00, $37, $37 ;; 05:7121 ????????

map00_room0a_0c_script:
    SCRIPT_IDX script_0052                             ;; 05:7129 $52 $00
    db   $ff                                           ;; 05:712b $ff

map00_room0a_0c_tiles:
    RLE  $41, $42, $42, $00, $00, $37, $37, $37, $37, $37 ;; 05:712c ????????
    RLE  $41, $42, $52, $7f, $7f, $7f, $7f, $00, $00, $00 ;; 05:7134 ??????
    RLE  $51, $52, $7f, $7f, $7f, $37, $37, $37, $37, $37 ;; 05:713a ??????
    RLE  $00, $00, $00, $00, $7f, $37, $37, $37, $37, $37 ;; 05:7140 ??????
    RLE  $00, $00, $00, $00, $00, $37, $37, $37, $37, $37 ;; 05:7146 ??????
    RLE  $37, $00, $00, $00, $00, $00, $00, $00, $00, $00 ;; 05:714c ????
    RLE  $37, $37, $00, $37, $00, $37, $37, $37, $37, $37 ;; 05:7150 ????????
    RLE  $37, $37, $00, $37, $00, $37, $37, $37, $37, $37 ;; 05:7158 ????????

map00_room0b_0c_script:
    SCRIPT_IDX script_004f                             ;; 05:7160 $4f $00
    db   $ff                                           ;; 05:7162 $ff

map00_room0b_0c_tiles:
    RLE  $37, $37, $37, $37, $37, $37, $37, $37, $37, $37 ;; 05:7163 ????
    RLE  $00, $00, $00, $00, $00, $00, $00, $00, $00, $37 ;; 05:7167 ????
    RLE  $37, $37, $37, $37, $37, $37, $00, $00, $00, $37 ;; 05:716b ????
    RLE  $37, $37, $37, $37, $37, $37, $37, $37, $7f, $00 ;; 05:716f ??????
    RLE  $37, $37, $37, $37, $37, $37, $37, $37, $00, $00 ;; 05:7175 ??????
    RLE  $00, $00, $00, $00, $00, $00, $37, $37, $37, $37 ;; 05:717b ????
    RLE  $37, $37, $37, $37, $00, $00, $37, $37, $37, $37 ;; 05:717f ??????
    RLE  $37, $37, $37, $37, $00, $00, $37, $37, $37, $37 ;; 05:7185 ??????

map00_room0c_0c_script:
    SCRIPT_IDX script_0052                             ;; 05:718b $52 $00
    db   $ff                                           ;; 05:718d $ff

map00_room0c_0c_tiles:
    RLE  $37, $37, $00, $00, $37, $37, $00, $00, $16, $09 ;; 05:718e ??????????
    RLE  $37, $00, $00, $00, $00, $00, $00, $00, $16, $09 ;; 05:7198 ??????
    RLE  $37, $00, $00, $00, $00, $00, $00, $00, $16, $09 ;; 05:719e ??????
    RLE  $00, $00, $00, $00, $00, $00, $00, $00, $16, $09 ;; 05:71a4 ??????
    RLE  $00, $00, $00, $00, $00, $00, $00, $00, $16, $09 ;; 05:71aa ??????
    RLE  $37, $00, $00, $00, $00, $00, $00, $00, $16, $19 ;; 05:71b0 ??????
    RLE  $37, $37, $00, $00, $00, $00, $00, $37, $16, $23 ;; 05:71b6 ????????
    RLE  $37, $37, $00, $00, $37, $37, $37, $37, $16, $17 ;; 05:71be ????????

map00_room0d_0c_script:
    SCRIPT_IDX script_048e                             ;; 05:71c6 $8e $04
    SCRIPT_AT_POS 4, 4, script_0277                    ;; 05:71c8 $44 $77 $02
    SCRIPT_AT_POS 4, 5, script_0277                    ;; 05:71cb $45 $77 $02
    db   $ff                                           ;; 05:71ce $ff

map00_room0d_0c_tiles:
    RLE  $55, $0a, $55, $55, $55, $55, $55, $55, $09, $55 ;; 05:71cf ??????
    RLE  $55, $0a, $55, $55, $55, $55, $55, $55, $09, $55 ;; 05:71d5 ??????
    RLE  $55, $0a, $55, $55, $79, $79, $55, $55, $09, $55 ;; 05:71db ??????????
    RLE  $55, $0a, $55, $55, $1f, $1f, $55, $55, $09, $55 ;; 05:71e5 ??????????
    RLE  $55, $0a, $55, $55, $6a, $6a, $55, $55, $09, $55 ;; 05:71ef ??????????
    RLE  $54, $1a, $00, $00, $00, $00, $00, $00, $19, $54 ;; 05:71f9 ??????
    RLE  $23, $23, $23, $23, $56, $57, $23, $23, $23, $23 ;; 05:71ff ??????
    RLE  $17, $17, $17, $17, $56, $57, $17, $17, $17, $17 ;; 05:7205 ??????

map00_room0e_0c_script:
    SCRIPT_IDX script_0079                             ;; 05:720b $79 $00
    db   $ff                                           ;; 05:720d $ff

map00_room0e_0c_tiles:
    RLE  $0a, $18, $41, $41, $51, $53, $00, $00, $50, $41 ;; 05:720e ??????????
    RLE  $0a, $18, $50, $53, $00, $00, $00, $00, $00, $41 ;; 05:7218 ????????
    RLE  $0a, $18, $00, $00, $00, $00, $00, $00, $00, $50 ;; 05:7220 ??????
    RLE  $0a, $18, $00, $00, $3b, $00, $00, $3b, $3b, $00 ;; 05:7226 ??????????
    RLE  $0a, $18, $00, $00, $00, $00, $3b, $00, $00, $00 ;; 05:7230 ??????
    RLE  $1a, $18, $00, $30, $40, $3b, $00, $00, $00, $00 ;; 05:7236 ????????
    RLE  $23, $18, $30, $41, $41, $40, $30, $40, $00, $00 ;; 05:723e ??????????
    RLE  $17, $18, $41, $41, $41, $41, $41, $41, $40, $30 ;; 05:7248 ??????

map00_room0f_0c_script:
    SCRIPT_IDX script_007c                             ;; 05:724e $7c $00
    db   $ff                                           ;; 05:7250 $ff

map00_room0f_0c_tiles:
    RLE  $41, $42, $42, $51, $51, $52, $10, $11, $11, $11 ;; 05:7251 ????????
    RLE  $41, $42, $52, $00, $00, $00, $10, $11, $11, $11 ;; 05:7259 ??????
    RLE  $51, $52, $00, $3b, $00, $00, $10, $11, $11, $11 ;; 05:725f ????????
    RLE  $00, $00, $00, $00, $00, $00, $10, $11, $11, $11 ;; 05:7267 ????
    RLE  $00, $00, $00, $00, $00, $15, $11, $11, $11, $11 ;; 05:726b ??????
    RLE  $00, $00, $3b, $00, $00, $10, $11, $11, $11, $11 ;; 05:7271 ????????
    RLE  $00, $00, $00, $00, $00, $10, $11, $11, $11, $11 ;; 05:7279 ??????
    RLE  $40, $00, $00, $00, $00, $10, $11, $11, $11, $11 ;; 05:727f ??????

map00_room00_0d_script:
    SCRIPT_IDX script_005e                             ;; 05:7285 $5e $00
    db   $ff                                           ;; 05:7287 $ff

map00_room00_0d_tiles:
    RLE  $11, $11, $12, $05, $05, $05, $05, $47, $50, $51 ;; 05:7288 ????????
    RLE  $11, $11, $12, $05, $05, $05, $05, $05, $47, $47 ;; 05:7290 ????????
    RLE  $11, $11, $12, $05, $05, $05, $05, $05, $05, $05 ;; 05:7298 ??????
    RLE  $11, $11, $11, $02, $05, $05, $05, $05, $05, $05 ;; 05:729e ????
    RLE  $11, $11, $11, $11, $02, $05, $05, $05, $05, $05 ;; 05:72a2 ??????
    RLE  $11, $11, $11, $11, $11, $38, $38, $38, $38, $38 ;; 05:72a8 ??????
    RLE  $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ;; 05:72ae ????
    RLE  $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ;; 05:72b2 ????

map00_room01_0d_script:
    SCRIPT_IDX script_0046                             ;; 05:72b6 $46 $00
    db   $ff                                           ;; 05:72b8 $ff

map00_room01_0d_tiles:
    RLE  $51, $51, $52, $50, $51, $51, $52, $05, $50, $51 ;; 05:72b9 ??????????
    RLE  $47, $47, $05, $05, $05, $05, $05, $05, $05, $05 ;; 05:72c3 ??????
    RLE  $05, $05, $05, $05, $05, $05, $05, $05, $05, $05 ;; 05:72c9 ????
    RLE  $05, $05, $05, $05, $05, $05, $05, $05, $05, $05 ;; 05:72cd ????
    RLE  $05, $05, $05, $15, $38, $38, $02, $05, $05, $05 ;; 05:72d1 ??????
    RLE  $38, $38, $38, $11, $11, $11, $11, $38, $38, $38 ;; 05:72d7 ????
    RLE  $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ;; 05:72db ????
    RLE  $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ;; 05:72df ????

map00_room02_0d_script:
    SCRIPT_IDX script_005b                             ;; 05:72e3 $5b $00
    db   $ff                                           ;; 05:72e5 $ff

map00_room02_0d_tiles:
    RLE  $51, $51, $51, $51, $51, $53, $05, $05, $50, $41 ;; 05:72e6 ????????
    RLE  $05, $05, $05, $05, $05, $05, $05, $05, $05, $50 ;; 05:72ee ????
    RLE  $05, $05, $05, $05, $05, $05, $05, $05, $05, $05 ;; 05:72f2 ????
    RLE  $05, $05, $05, $05, $05, $05, $05, $05, $05, $05 ;; 05:72f6 ????
    RLE  $05, $05, $05, $05, $05, $05, $05, $05, $05, $05 ;; 05:72fa ????
    RLE  $38, $02, $05, $05, $05, $05, $05, $05, $05, $05 ;; 05:72fe ??????
    RLE  $11, $11, $02, $05, $05, $05, $05, $05, $05, $05 ;; 05:7304 ??????
    RLE  $11, $11, $12, $30, $31, $40, $05, $30, $40, $30 ;; 05:730a ??????????

map00_room03_0d_script:
    SCRIPT_IDX script_005e                             ;; 05:7314 $5e $00
    db   $ff                                           ;; 05:7316 $ff

map00_room03_0d_tiles:
    RLE  $42, $52, $05, $05, $05, $05, $50, $51, $41, $41 ;; 05:7317 ????????
    RLE  $52, $05, $05, $05, $05, $05, $05, $05, $50, $41 ;; 05:731f ??????
    RLE  $05, $05, $05, $30, $40, $05, $05, $05, $05, $50 ;; 05:7325 ??????
    RLE  $05, $05, $30, $41, $41, $31, $40, $05, $05, $05 ;; 05:732b ????????
    RLE  $05, $05, $50, $51, $51, $51, $53, $05, $05, $05 ;; 05:7333 ??????
    RLE  $05, $05, $05, $05, $05, $05, $05, $05, $05, $05 ;; 05:7339 ????
    RLE  $31, $40, $05, $05, $05, $05, $30, $40, $05, $30 ;; 05:733d ????????
    RLE  $41, $41, $40, $30, $40, $30, $41, $41, $31, $41 ;; 05:7345 ??????????

map00_room04_0d_script:
    SCRIPT_IDX script_005e                             ;; 05:734f $5e $00
    SCRIPT_AT_POS 2, 5, script_038b                    ;; 05:7351 $25 $8b $03
    db   $ff                                           ;; 05:7354 $ff

map00_room04_0d_tiles:
    RLE  $41, $42, $41, $41, $41, $41, $41, $41, $41, $41 ;; 05:7355 ??????
    RLE  $41, $42, $51, $51, $5d, $5d, $5d, $51, $41, $41 ;; 05:735b ????????
    RLE  $51, $52, $47, $47, $5e, $2e, $5e, $69, $50, $41 ;; 05:7363 ??????????
    RLE  $05, $05, $05, $00, $00, $00, $00, $00, $00, $50 ;; 05:736d ????
    RLE  $05, $05, $05, $05, $47, $00, $47, $00, $00, $30 ;; 05:7371 ????????
    RLE  $05, $05, $05, $00, $00, $00, $00, $00, $00, $41 ;; 05:7379 ????
    RLE  $40, $00, $00, $00, $00, $30, $40, $00, $00, $41 ;; 05:737d ????????
    RLE  $41, $40, $30, $40, $30, $41, $41, $40, $30, $41 ;; 05:7385 ??????????

map00_room05_0d_script:
    SCRIPT_IDX script_007c                             ;; 05:738f $7c $00
    db   $ff                                           ;; 05:7391 $ff

map00_room05_0d_tiles:
    RLE  $42, $42, $51, $51, $51, $51, $51, $51, $51, $51 ;; 05:7392 ??????
    RLE  $42, $52, $47, $47, $47, $47, $47, $47, $47, $47 ;; 05:7398 ??????
    RLE  $42, $47, $47, $05, $05, $05, $05, $05, $05, $05 ;; 05:739e ??????
    RLE  $52, $47, $05, $05, $47, $47, $47, $47, $47, $47 ;; 05:73a4 ??????
    RLE  $40, $47, $05, $47, $47, $15, $38, $38, $38, $38 ;; 05:73aa ????????
    RLE  $53, $47, $05, $47, $15, $11, $11, $11, $11, $11 ;; 05:73b2 ????????
    RLE  $40, $47, $05, $47, $10, $11, $11, $11, $11, $11 ;; 05:73ba ????????
    RLE  $41, $47, $05, $47, $10, $11, $11, $11, $11, $11 ;; 05:73c2 ????????

map00_room06_0d_script:
    SCRIPT_IDX script_007c                             ;; 05:73ca $7c $00
    SCRIPT_AT_POS 1, 4, script_0474                    ;; 05:73cc $14 $74 $04
    db   $ff                                           ;; 05:73cf $ff

map00_room06_0d_tiles:
    RLE  $51, $51, $51, $53, $10, $11, $11, $11, $11, $11 ;; 05:73d0 ??????
    RLE  $47, $47, $05, $05, $7b, $11, $11, $11, $11, $11 ;; 05:73d6 ????????
    RLE  $05, $05, $05, $47, $10, $11, $11, $11, $11, $11 ;; 05:73de ??????
    RLE  $47, $47, $47, $15, $11, $11, $11, $11, $11, $11 ;; 05:73e4 ????
    RLE  $38, $38, $38, $11, $11, $11, $11, $11, $11, $11 ;; 05:73e8 ????
    RLE  $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ;; 05:73ec ????
    RLE  $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ;; 05:73f0 ????
    RLE  $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ;; 05:73f4 ????

map00_room07_0d_script:
    SCRIPT_IDX script_0046                             ;; 05:73f8 $46 $00
    db   $ff                                           ;; 05:73fa $ff

map00_room07_0d_tiles:
    RLE  $11, $11, $12, $00, $50, $41, $41, $41, $41, $41 ;; 05:73fb ????????
    RLE  $11, $11, $12, $00, $00, $50, $53, $50, $41, $41 ;; 05:7403 ??????????
    RLE  $11, $11, $12, $00, $00, $00, $00, $00, $50, $41 ;; 05:740d ????????
    RLE  $11, $11, $12, $00, $00, $00, $00, $00, $30, $41 ;; 05:7415 ????????
    RLE  $11, $11, $12, $00, $00, $00, $00, $00, $50, $41 ;; 05:741d ????????
    RLE  $11, $11, $11, $02, $00, $00, $00, $00, $00, $50 ;; 05:7425 ??????
    RLE  $11, $11, $11, $12, $00, $00, $00, $00, $00, $30 ;; 05:742b ??????
    RLE  $11, $11, $11, $12, $00, $00, $00, $00, $30, $41 ;; 05:7431 ??????

map00_room08_0d_script:
    SCRIPT_IDX script_003d                             ;; 05:7437 $3d $00
    SCRIPT_AT_POS 3, 3, script_027b                    ;; 05:7439 $33 $7b $02
    db   $ff                                           ;; 05:743c $ff

map00_room08_0d_tiles:
    RLE  $41, $42, $41, $41, $41, $42, $17, $00, $00, $37 ;; 05:743d ????????
    RLE  $41, $42, $41, $41, $41, $42, $17, $00, $00, $37 ;; 05:7445 ????????
    RLE  $41, $42, $41, $1c, $41, $42, $17, $00, $00, $37 ;; 05:744d ??????????
    RLE  $41, $42, $51, $4c, $51, $52, $17, $00, $00, $00 ;; 05:7457 ????????
    RLE  $41, $52, $00, $00, $00, $00, $17, $00, $00, $00 ;; 05:745f ??????
    RLE  $41, $00, $00, $00, $00, $00, $13, $17, $17, $17 ;; 05:7465 ??????
    RLE  $41, $40, $00, $00, $00, $00, $00, $00, $30, $31 ;; 05:746b ??????
    RLE  $41, $41, $00, $30, $31, $31, $40, $00, $41, $41 ;; 05:7471 ??????????

map00_room09_0d_script:
    SCRIPT_IDX script_0052                             ;; 05:747b $52 $00
    db   $ff                                           ;; 05:747d $ff

map00_room09_0d_tiles:
    RLE  $37, $37, $00, $37, $37, $37, $00, $00, $37, $37 ;; 05:747e ????????
    RLE  $37, $00, $00, $00, $00, $00, $00, $00, $00, $37 ;; 05:7486 ??????
    RLE  $37, $00, $00, $00, $00, $00, $00, $00, $00, $37 ;; 05:748c ??????
    RLE  $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ;; 05:7492 ????
    RLE  $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ;; 05:7496 ????
    RLE  $17, $17, $17, $17, $04, $00, $00, $00, $00, $30 ;; 05:749a ??????
    RLE  $31, $40, $00, $4e, $17, $00, $30, $31, $31, $41 ;; 05:74a0 ??????????
    RLE  $41, $41, $00, $00, $17, $00, $41, $41, $41, $41 ;; 05:74aa ????????

map00_room0a_0d_script:
    SCRIPT_IDX script_004f                             ;; 05:74b2 $4f $00
    db   $ff                                           ;; 05:74b4 $ff

map00_room0a_0d_tiles:
    RLE  $37, $37, $00, $37, $00, $37, $37, $37, $37, $37 ;; 05:74b5 ????????
    RLE  $37, $37, $00, $00, $00, $00, $00, $00, $37, $37 ;; 05:74bd ??????
    RLE  $37, $00, $00, $00, $00, $00, $00, $00, $00, $00 ;; 05:74c3 ????
    RLE  $00, $00, $37, $00, $37, $00, $37, $00, $37, $00 ;; 05:74c7 ??????????
    RLE  $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ;; 05:74d1 ????
    RLE  $40, $00, $37, $00, $37, $00, $37, $00, $37, $00 ;; 05:74d5 ??????????
    RLE  $41, $00, $00, $00, $00, $00, $00, $00, $00, $00 ;; 05:74df ????
    RLE  $41, $40, $30, $40, $00, $00, $37, $37, $00, $37 ;; 05:74e3 ??????????

map00_room0b_0d_script:
    SCRIPT_IDX script_0052                             ;; 05:74ed $52 $00
    db   $ff                                           ;; 05:74ef $ff

map00_room0b_0d_tiles:
    RLE  $37, $37, $37, $37, $00, $00, $37, $37, $37, $37 ;; 05:74f0 ??????
    RLE  $37, $37, $37, $37, $00, $00, $37, $37, $37, $37 ;; 05:74f6 ??????
    RLE  $00, $00, $37, $37, $00, $00, $37, $37, $37, $37 ;; 05:74fc ????????
    RLE  $00, $00, $00, $37, $00, $00, $7f, $7f, $00, $00 ;; 05:7504 ????????
    RLE  $00, $00, $00, $37, $00, $00, $7f, $7f, $00, $00 ;; 05:750c ????????
    RLE  $00, $00, $00, $37, $37, $00, $00, $37, $37, $37 ;; 05:7514 ??????
    RLE  $00, $00, $00, $00, $37, $00, $00, $37, $37, $37 ;; 05:751a ??????
    RLE  $37, $00, $00, $00, $37, $00, $00, $37, $37, $37 ;; 05:7520 ??????

map00_room0c_0d_script:
    SCRIPT_IDX script_004f                             ;; 05:7526 $4f $00
    db   $ff                                           ;; 05:7528 $ff

map00_room0c_0d_tiles:
    RLE  $37, $37, $00, $00, $37, $37, $37, $37, $26, $27 ;; 05:7529 ????????
    RLE  $37, $37, $00, $00, $37, $37, $37, $37, $37, $37 ;; 05:7531 ??????
    RLE  $37, $37, $00, $00, $37, $37, $37, $37, $37, $37 ;; 05:7537 ??????
    RLE  $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ;; 05:753d ????
    RLE  $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ;; 05:7541 ????
    RLE  $37, $37, $00, $00, $37, $37, $37, $37, $37, $37 ;; 05:7545 ??????
    RLE  $37, $37, $00, $00, $37, $37, $37, $37, $37, $30 ;; 05:754b ????????
    RLE  $37, $37, $00, $00, $37, $37, $37, $37, $30, $41 ;; 05:7553 ????????

map00_room0d_0d_script:
    SCRIPT_IDX script_0052                             ;; 05:755b $52 $00
    db   $ff                                           ;; 05:755d $ff

map00_room0d_0d_tiles:
    RLE  $27, $27, $27, $27, $56, $57, $27, $27, $27, $27 ;; 05:755e ??????
    RLE  $37, $37, $37, $37, $00, $00, $37, $37, $37, $37 ;; 05:7564 ??????
    RLE  $37, $37, $37, $37, $00, $00, $37, $37, $37, $37 ;; 05:756a ??????
    RLE  $00, $00, $00, $00, $00, $00, $00, $00, $00, $37 ;; 05:7570 ????
    RLE  $00, $00, $00, $00, $00, $00, $00, $00, $00, $37 ;; 05:7574 ????
    RLE  $37, $00, $00, $00, $00, $00, $00, $00, $00, $37 ;; 05:7578 ??????
    RLE  $37, $37, $00, $00, $00, $37, $37, $37, $37, $30 ;; 05:757e ??????
    RLE  $31, $31, $40, $00, $30, $31, $31, $31, $31, $41 ;; 05:7584 ????????

map00_room0e_0d_script:
    SCRIPT_IDX script_0079                             ;; 05:758c $79 $00
    db   $ff                                           ;; 05:758e $ff

map00_room0e_0d_tiles:
    RLE  $17, $17, $41, $41, $41, $42, $51, $51, $41, $41 ;; 05:758f ????????
    RLE  $40, $17, $50, $51, $51, $52, $49, $49, $50, $41 ;; 05:7597 ??????????
    RLE  $53, $17, $00, $00, $00, $00, $00, $49, $49, $41 ;; 05:75a1 ????????
    RLE  $40, $13, $17, $2a, $17, $04, $00, $00, $49, $41 ;; 05:75a9 ??????????
    RLE  $41, $40, $00, $00, $00, $17, $3b, $00, $49, $50 ;; 05:75b3 ????????
    RLE  $51, $53, $49, $00, $00, $17, $00, $3b, $49, $30 ;; 05:75bb ??????????
    RLE  $31, $40, $49, $49, $00, $17, $00, $49, $30, $41 ;; 05:75c5 ??????????
    RLE  $41, $41, $40, $49, $00, $17, $00, $49, $41, $41 ;; 05:75cf ??????????

map00_room0f_0d_script:
    SCRIPT_IDX script_007c                             ;; 05:75d9 $7c $00
    db   $ff                                           ;; 05:75db $ff

map00_room0f_0d_tiles:
    RLE  $42, $00, $00, $00, $00, $10, $11, $11, $11, $11 ;; 05:75dc ??????
    RLE  $52, $00, $00, $00, $00, $20, $11, $11, $11, $11 ;; 05:75e2 ??????
    RLE  $40, $00, $00, $3b, $00, $00, $10, $11, $11, $11 ;; 05:75e8 ????????
    RLE  $41, $3b, $3b, $00, $00, $00, $10, $11, $11, $11 ;; 05:75f0 ??????
    RLE  $41, $40, $00, $3b, $00, $3b, $10, $11, $11, $11 ;; 05:75f6 ????????
    RLE  $41, $53, $00, $00, $3b, $00, $10, $11, $11, $11 ;; 05:75fe ????????
    RLE  $53, $49, $49, $00, $00, $00, $10, $11, $11, $11 ;; 05:7606 ??????
    RLE  $40, $49, $49, $49, $00, $00, $10, $11, $11, $11 ;; 05:760c ??????

map00_room00_0e_script:
    SCRIPT_IDX script_003d                             ;; 05:7612 $3d $00
    SCRIPT_AT_POS 2, 7, script_028c                    ;; 05:7614 $27 $8c $02
    SCRIPT_AT_POS 5, 6, script_028d                    ;; 05:7617 $56 $8d $02
    db   $ff                                           ;; 05:761a $ff

map00_room00_0e_tiles:
    RLE  $11, $11, $11, $11, $11, $11, $11, $21, $21, $21 ;; 05:761b ????
    RLE  $11, $11, $11, $11, $11, $11, $22, $00, $00, $00 ;; 05:761f ????
    RLE  $11, $11, $11, $11, $21, $22, $00, $4b, $30, $32 ;; 05:7623 ????????
    RLE  $11, $11, $11, $22, $47, $30, $32, $30, $41, $42 ;; 05:762b ????????
    RLE  $11, $11, $12, $47, $30, $42, $42, $41, $42, $42 ;; 05:7633 ??????????
    RLE  $11, $11, $12, $47, $50, $42, $4c, $41, $42, $42 ;; 05:763d ??????????
    RLE  $11, $11, $12, $00, $00, $00, $00, $50, $42, $41 ;; 05:7647 ????????
    RLE  $11, $11, $12, $00, $00, $00, $00, $30, $41, $41 ;; 05:764f ????????

map00_room01_0e_script:
    SCRIPT_IDX script_0079                             ;; 05:7657 $79 $00
    db   $ff                                           ;; 05:7659 $ff

map00_room01_0e_tiles:
    RLE  $21, $21, $11, $11, $11, $11, $11, $11, $11, $11 ;; 05:765a ??????
    RLE  $00, $00, $20, $11, $11, $11, $11, $11, $11, $11 ;; 05:7660 ??????
    RLE  $00, $00, $00, $10, $11, $11, $11, $11, $11, $11 ;; 05:7666 ????
    RLE  $32, $00, $00, $20, $11, $11, $11, $11, $11, $11 ;; 05:766a ??????
    RLE  $42, $32, $00, $00, $20, $21, $11, $11, $11, $11 ;; 05:7670 ????????
    RLE  $42, $52, $00, $00, $00, $00, $20, $11, $11, $11 ;; 05:7678 ??????
    RLE  $41, $32, $47, $47, $00, $00, $00, $10, $11, $11 ;; 05:767e ????????
    RLE  $41, $42, $32, $30, $32, $00, $00, $10, $11, $11 ;; 05:7686 ??????????

map00_room02_0e_script:
    SCRIPT_IDX script_0046                             ;; 05:7690 $46 $00
    db   $ff                                           ;; 05:7692 $ff

map00_room02_0e_tiles:
    RLE  $11, $11, $12, $50, $51, $53, $05, $50, $51, $41 ;; 05:7693 ??????????
    RLE  $11, $11, $12, $05, $05, $05, $05, $47, $47, $50 ;; 05:769d ????????
    RLE  $11, $11, $12, $05, $05, $05, $05, $05, $47, $47 ;; 05:76a5 ????????
    RLE  $11, $11, $11, $02, $05, $05, $05, $05, $05, $47 ;; 05:76ad ??????
    RLE  $11, $11, $11, $11, $38, $38, $38, $38, $38, $38 ;; 05:76b3 ????
    RLE  $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ;; 05:76b7 ????
    RLE  $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ;; 05:76bb ????
    RLE  $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ;; 05:76bf ????

map00_room03_0e_script:
    SCRIPT_IDX script_04a0                             ;; 05:76c3 $a0 $04
    SCRIPT_AT_POS 3, 6, script_039f                    ;; 05:76c5 $36 $9f $03
    db   $ff                                           ;; 05:76c8 $ff

map00_room03_0e_tiles:
    RLE  $41, $41, $41, $41, $41, $41, $41, $41, $41, $41 ;; 05:76c9 ????
    RLE  $51, $51, $41, $41, $41, $41, $41, $41, $41, $41 ;; 05:76cd ??????
    RLE  $47, $47, $50, $41, $41, $41, $41, $41, $41, $41 ;; 05:76d3 ??????
    RLE  $47, $47, $47, $50, $51, $51, $4c, $41, $41, $41 ;; 05:76d9 ??????
    RLE  $38, $02, $47, $47, $47, $47, $05, $50, $41, $41 ;; 05:76df ????????
    RLE  $11, $11, $38, $02, $05, $05, $05, $05, $50, $51 ;; 05:76e7 ????????
    RLE  $11, $11, $11, $12, $05, $05, $05, $05, $05, $47 ;; 05:76ef ??????
    RLE  $11, $11, $11, $12, $05, $05, $05, $05, $47, $47 ;; 05:76f5 ??????

map00_room04_0e_script:
    SCRIPT_IDX script_0076                             ;; 05:76fb $76 $00
    db   $ff                                           ;; 05:76fd $ff

map00_room04_0e_tiles:
    RLE  $41, $42, $42, $41, $41, $41, $41, $41, $41, $41 ;; 05:76fe ??????
    RLE  $41, $42, $42, $51, $51, $51, $51, $51, $51, $51 ;; 05:7704 ??????
    RLE  $41, $42, $52, $05, $05, $05, $05, $05, $05, $05 ;; 05:770a ??????
    RLE  $41, $42, $05, $05, $47, $47, $05, $47, $47, $05 ;; 05:7710 ??????????
    RLE  $41, $42, $05, $05, $05, $05, $05, $05, $05, $05 ;; 05:771a ??????
    RLE  $51, $52, $05, $05, $47, $47, $05, $47, $47, $05 ;; 05:7720 ??????????
    RLE  $47, $47, $05, $05, $05, $05, $05, $05, $05, $05 ;; 05:772a ??????
    RLE  $47, $47, $47, $47, $47, $47, $05, $47, $05, $47 ;; 05:7730 ??????

map00_room05_0e_script:
    SCRIPT_IDX script_007c                             ;; 05:7736 $7c $00
    db   $ff                                           ;; 05:7738 $ff

map00_room05_0e_tiles:
    RLE  $41, $47, $05, $47, $10, $11, $11, $11, $11, $11 ;; 05:7739 ????????
    RLE  $53, $05, $05, $05, $10, $11, $11, $11, $11, $11 ;; 05:7741 ??????
    RLE  $05, $05, $05, $05, $20, $11, $11, $11, $11, $11 ;; 05:7747 ??????
    RLE  $05, $05, $47, $47, $05, $20, $21, $21, $21, $21 ;; 05:774d ????????
    RLE  $05, $05, $05, $05, $05, $05, $05, $05, $05, $05 ;; 05:7755 ????
    RLE  $05, $05, $47, $47, $47, $05, $47, $05, $05, $05 ;; 05:7759 ??????
    RLE  $05, $05, $05, $05, $05, $05, $05, $05, $05, $05 ;; 05:775f ????
    RLE  $47, $05, $05, $05, $05, $05, $05, $05, $05, $47 ;; 05:7763 ??????

map00_room06_0e_script:
    SCRIPT_IDX script_007c                             ;; 05:7769 $7c $00
    db   $ff                                           ;; 05:776b $ff

map00_room06_0e_tiles:
    RLE  $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ;; 05:776c ????
    RLE  $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ;; 05:7770 ????
    RLE  $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ;; 05:7774 ????
    RLE  $21, $21, $11, $11, $11, $11, $11, $11, $11, $11 ;; 05:7778 ??????
    RLE  $05, $05, $20, $21, $21, $21, $21, $11, $11, $11 ;; 05:777e ??????
    RLE  $05, $05, $47, $47, $05, $05, $05, $20, $11, $11 ;; 05:7784 ????????
    RLE  $05, $05, $05, $05, $05, $05, $05, $05, $10, $11 ;; 05:778c ??????
    RLE  $47, $05, $05, $05, $05, $05, $05, $05, $10, $11 ;; 05:7792 ??????

map00_room07_0e_script:
    SCRIPT_IDX script_0055                             ;; 05:7798 $55 $00
    db   $ff                                           ;; 05:779a $ff

map00_room07_0e_tiles:
    RLE  $11, $11, $11, $12, $00, $00, $00, $00, $50, $41 ;; 05:779b ??????
    RLE  $11, $11, $11, $12, $00, $00, $00, $00, $30, $41 ;; 05:77a1 ??????
    RLE  $11, $11, $11, $22, $00, $00, $00, $00, $50, $41 ;; 05:77a7 ??????
    RLE  $11, $11, $12, $00, $00, $00, $00, $00, $00, $50 ;; 05:77ad ??????
    RLE  $11, $11, $12, $00, $00, $00, $00, $00, $00, $00 ;; 05:77b3 ??????
    RLE  $11, $11, $12, $00, $00, $00, $00, $00, $00, $00 ;; 05:77b9 ??????
    RLE  $11, $11, $12, $00, $00, $00, $30, $40, $30, $31 ;; 05:77bf ????????
    RLE  $11, $11, $12, $00, $00, $30, $41, $41, $41, $41 ;; 05:77c7 ????????

map00_room08_0e_script:
    SCRIPT_IDX script_0223                             ;; 05:77cf $23 $02
    db   $ff                                           ;; 05:77d1 $ff

map00_room08_0e_tiles:
    RLE  $37, $37, $00, $37, $37, $37, $37, $00, $37, $37 ;; 05:77d2 ????????
    RLE  $37, $37, $00, $37, $37, $37, $37, $00, $00, $37 ;; 05:77da ????????
    RLE  $37, $37, $00, $00, $00, $00, $00, $00, $00, $37 ;; 05:77e2 ??????
    RLE  $37, $37, $7f, $37, $37, $37, $00, $00, $00, $37 ;; 05:77e8 ??????
    RLE  $00, $00, $7f, $37, $37, $37, $00, $00, $00, $37 ;; 05:77ee ??????
    RLE  $00, $00, $7f, $37, $37, $37, $00, $00, $00, $37 ;; 05:77f4 ??????
    RLE  $37, $37, $37, $37, $37, $37, $00, $00, $00, $37 ;; 05:77fa ????
    RLE  $37, $37, $37, $37, $37, $37, $37, $00, $37, $37 ;; 05:77fe ??????

map00_room09_0e_script:
    SCRIPT_IDX script_0494                             ;; 05:7804 $94 $04
    SCRIPT_AT_POS 1, 8, script_0278                    ;; 05:7806 $18 $78 $02
    db   $ff                                           ;; 05:7809 $ff

map00_room09_0e_tiles:
    RLE  $41, $42, $00, $00, $17, $00, $41, $41, $41, $41 ;; 05:780a ????????
    RLE  $41, $52, $00, $00, $17, $00, $50, $51, $4c, $41 ;; 05:7812 ??????????
    RLE  $41, $00, $00, $00, $17, $00, $00, $00, $00, $50 ;; 05:781c ??????
    RLE  $41, $00, $00, $00, $17, $00, $00, $00, $00, $00 ;; 05:7822 ??????
    RLE  $41, $00, $00, $00, $17, $00, $00, $00, $00, $00 ;; 05:7828 ??????
    RLE  $41, $00, $00, $00, $13, $17, $17, $17, $17, $17 ;; 05:782e ??????
    RLE  $41, $40, $00, $00, $00, $00, $00, $00, $00, $00 ;; 05:7834 ??????
    RLE  $41, $41, $31, $31, $40, $00, $30, $31, $31, $31 ;; 05:783a ????????

map00_room0a_0e_script:
    SCRIPT_IDX script_0055                             ;; 05:7842 $55 $00
    db   $ff                                           ;; 05:7844 $ff

map00_room0a_0e_tiles:
    RLE  $41, $41, $42, $42, $00, $00, $37, $37, $00, $37 ;; 05:7845 ??????????
    RLE  $41, $41, $42, $52, $00, $00, $00, $05, $05, $05 ;; 05:784f ??????
    RLE  $51, $51, $52, $00, $00, $00, $05, $05, $15, $38 ;; 05:7855 ????????
    RLE  $00, $00, $00, $00, $05, $05, $05, $05, $10, $11 ;; 05:785d ??????
    RLE  $00, $00, $00, $05, $05, $4e, $05, $15, $11, $11 ;; 05:7863 ????????
    RLE  $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ;; 05:786b ????
    RLE  $00, $00, $05, $05, $05, $05, $20, $11, $11, $11 ;; 05:786f ??????
    RLE  $31, $31, $31, $31, $40, $05, $05, $10, $11, $11 ;; 05:7875 ????????

map00_room0b_0e_script:
    SCRIPT_IDX script_0055                             ;; 05:787d $55 $00
    db   $ff                                           ;; 05:787f $ff

map00_room0b_0e_tiles:
    RLE  $37, $00, $00, $00, $37, $00, $00, $37, $37, $37 ;; 05:7880 ??????
    RLE  $00, $00, $00, $00, $00, $00, $00, $7f, $7f, $37 ;; 05:7886 ??????
    RLE  $38, $02, $00, $00, $00, $7f, $7f, $7f, $7f, $37 ;; 05:788c ??????
    RLE  $11, $12, $7f, $37, $37, $7f, $7f, $7f, $00, $00 ;; 05:7892 ????????
    RLE  $11, $12, $05, $05, $05, $37, $37, $00, $00, $00 ;; 05:789a ??????
    RLE  $11, $11, $02, $05, $05, $05, $05, $00, $00, $30 ;; 05:78a0 ????????
    RLE  $11, $11, $12, $05, $05, $05, $05, $05, $05, $41 ;; 05:78a8 ??????
    RLE  $11, $11, $12, $05, $05, $05, $05, $05, $30, $41 ;; 05:78ae ????????

map00_room0c_0e_script:
    SCRIPT_IDX script_0052                             ;; 05:78b6 $52 $00
    db   $ff                                           ;; 05:78b8 $ff

map00_room0c_0e_tiles:
    RLE  $37, $37, $00, $00, $37, $37, $37, $37, $41, $41 ;; 05:78b9 ????????
    RLE  $37, $37, $00, $00, $00, $00, $00, $00, $50, $41 ;; 05:78c1 ??????
    RLE  $37, $37, $00, $00, $00, $00, $00, $00, $00, $41 ;; 05:78c7 ??????
    RLE  $00, $00, $00, $00, $00, $00, $00, $00, $00, $50 ;; 05:78cd ????
    RLE  $00, $00, $00, $00, $00, $00, $05, $05, $15, $38 ;; 05:78d1 ??????
    RLE  $40, $00, $00, $00, $05, $05, $05, $05, $10, $11 ;; 05:78d7 ??????
    RLE  $41, $40, $05, $05, $05, $05, $05, $05, $10, $11 ;; 05:78dd ??????
    RLE  $41, $41, $40, $30, $31, $40, $05, $05, $10, $11 ;; 05:78e3 ??????????

map00_room0d_0e_script:
    SCRIPT_IDX script_0055                             ;; 05:78ed $55 $00
    SCRIPT_AT_POS 4, 4, script_0474                    ;; 05:78ef $44 $74 $04
    db   $ff                                           ;; 05:78f2 $ff

map00_room0d_0e_tiles:
    RLE  $41, $42, $42, $2b, $41, $41, $41, $41, $41, $41 ;; 05:78f3 ??????
    RLE  $41, $42, $42, $2b, $51, $51, $51, $51, $41, $41 ;; 05:78f9 ????????
    RLE  $41, $42, $52, $05, $05, $05, $05, $05, $50, $41 ;; 05:7901 ????????
    RLE  $51, $52, $15, $38, $02, $05, $05, $05, $05, $41 ;; 05:7909 ????????
    RLE  $38, $38, $11, $11, $7b, $05, $05, $05, $05, $50 ;; 05:7911 ????????
    RLE  $11, $11, $11, $11, $22, $05, $05, $30, $40, $30 ;; 05:7919 ????????
    RLE  $11, $11, $11, $12, $30, $40, $30, $41, $41, $41 ;; 05:7921 ??????
    RLE  $11, $11, $11, $12, $41, $41, $41, $41, $41, $41 ;; 05:7927 ????

map00_room0e_0e_script:
    SCRIPT_IDX script_0076                             ;; 05:792b $76 $00
    db   $ff                                           ;; 05:792d $ff

map00_room0e_0e_tiles:
    RLE  $41, $42, $42, $49, $00, $17, $00, $49, $50, $51 ;; 05:792e ??????????
    RLE  $41, $42, $52, $49, $00, $17, $00, $3b, $49, $49 ;; 05:7938 ??????????
    RLE  $41, $52, $3b, $49, $00, $17, $3b, $00, $00, $49 ;; 05:7942 ??????????
    RLE  $41, $40, $49, $3b, $00, $17, $00, $00, $00, $49 ;; 05:794c ????????
    RLE  $41, $53, $49, $3b, $00, $17, $00, $3b, $49, $30 ;; 05:7954 ??????????
    RLE  $53, $49, $49, $00, $3b, $17, $00, $00, $49, $41 ;; 05:795e ??????????
    RLE  $40, $49, $00, $00, $00, $17, $00, $49, $49, $50 ;; 05:7968 ????????
    RLE  $41, $40, $00, $00, $00, $17, $00, $49, $49, $30 ;; 05:7970 ????????

map00_room0f_0e_script:
    SCRIPT_IDX script_007c                             ;; 05:7978 $7c $00
    db   $ff                                           ;; 05:797a $ff

map00_room0f_0e_tiles:
    RLE  $53, $49, $49, $49, $00, $00, $10, $11, $11, $11 ;; 05:797b ??????
    RLE  $49, $49, $49, $49, $00, $00, $10, $11, $11, $11 ;; 05:7981 ??????
    RLE  $49, $49, $3b, $00, $00, $00, $20, $11, $11, $11 ;; 05:7987 ??????
    RLE  $49, $49, $00, $00, $00, $00, $00, $10, $11, $11 ;; 05:798d ????????
    RLE  $40, $49, $49, $49, $00, $3b, $00, $10, $11, $11 ;; 05:7995 ????????
    RLE  $41, $40, $49, $49, $3b, $00, $00, $10, $11, $11 ;; 05:799d ??????????
    RLE  $41, $53, $49, $49, $00, $00, $00, $10, $11, $11 ;; 05:79a7 ????????
    RLE  $41, $49, $49, $00, $00, $00, $00, $10, $11, $11 ;; 05:79af ????????

map00_room00_0f_script:
    SCRIPT_IDX script_007c                             ;; 05:79b7 $7c $00
    db   $ff                                           ;; 05:79b9 $ff

map00_room00_0f_tiles:
    RLE  $11, $11, $12, $00, $00, $00, $00, $50, $41, $42 ;; 05:79ba ????????
    RLE  $11, $11, $12, $00, $00, $00, $00, $47, $50, $42 ;; 05:79c2 ????????
    RLE  $11, $11, $11, $02, $00, $00, $00, $00, $47, $47 ;; 05:79ca ??????
    RLE  $11, $11, $11, $11, $02, $00, $00, $00, $00, $00 ;; 05:79d0 ??????
    RLE  $11, $11, $11, $11, $11, $02, $00, $00, $00, $00 ;; 05:79d6 ??????
    RLE  $11, $11, $11, $11, $11, $11, $38, $38, $38, $38 ;; 05:79dc ????
    RLE  $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ;; 05:79e0 ????
    RLE  $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ;; 05:79e4 ????

map00_room01_0f_script:
    SCRIPT_IDX script_007c                             ;; 05:79e8 $7c $00
    db   $ff                                           ;; 05:79ea $ff

map00_room01_0f_tiles:
    RLE  $42, $42, $42, $42, $52, $00, $00, $10, $11, $11 ;; 05:79eb ????????
    RLE  $42, $42, $52, $47, $00, $00, $00, $10, $11, $11 ;; 05:79f3 ????????
    RLE  $47, $47, $00, $00, $00, $00, $00, $10, $11, $11 ;; 05:79fb ????????
    RLE  $00, $00, $00, $00, $00, $00, $15, $11, $11, $11 ;; 05:7a03 ????
    RLE  $00, $00, $00, $15, $38, $38, $11, $11, $11, $11 ;; 05:7a07 ??????
    RLE  $38, $38, $38, $11, $11, $11, $11, $11, $11, $11 ;; 05:7a0d ????
    RLE  $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ;; 05:7a11 ????
    RLE  $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ;; 05:7a15 ????

map00_room02_0f_script:
    SCRIPT_IDX script_003d                             ;; 05:7a19 $3d $00
    db   $ff                                           ;; 05:7a1b $ff

map00_room02_0f_tiles:
    RLE  $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ;; 05:7a1c ????
    RLE  $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ;; 05:7a20 ????
    RLE  $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ;; 05:7a24 ????
    RLE  $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ;; 05:7a28 ????
    RLE  $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ;; 05:7a2c ????
    RLE  $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ;; 05:7a30 ????
    RLE  $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ;; 05:7a34 ????
    RLE  $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ;; 05:7a38 ????

map00_room03_0f_script:
    SCRIPT_IDX script_007c                             ;; 05:7a3c $7c $00
    db   $ff                                           ;; 05:7a3e $ff

map00_room03_0f_tiles:
    RLE  $11, $11, $11, $12, $05, $05, $05, $05, $47, $47 ;; 05:7a3f ??????
    RLE  $11, $11, $11, $12, $05, $05, $05, $05, $05, $47 ;; 05:7a45 ??????
    RLE  $11, $11, $11, $11, $02, $05, $05, $05, $05, $05 ;; 05:7a4b ??????
    RLE  $11, $11, $11, $11, $11, $02, $05, $05, $05, $05 ;; 05:7a51 ??????
    RLE  $11, $11, $11, $11, $11, $11, $38, $38, $38, $38 ;; 05:7a57 ????
    RLE  $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ;; 05:7a5b ????
    RLE  $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ;; 05:7a5f ????
    RLE  $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ;; 05:7a63 ????

map00_room04_0f_script:
    SCRIPT_IDX script_007c                             ;; 05:7a67 $7c $00
    db   $ff                                           ;; 05:7a69 $ff

map00_room04_0f_tiles:
    RLE  $47, $47, $47, $47, $47, $47, $05, $47, $05, $47 ;; 05:7a6a ??????
    RLE  $47, $05, $05, $05, $05, $05, $05, $05, $05, $05 ;; 05:7a70 ????
    RLE  $05, $05, $05, $05, $05, $05, $05, $05, $05, $47 ;; 05:7a74 ????
    RLE  $05, $05, $05, $05, $05, $05, $05, $05, $05, $05 ;; 05:7a78 ????
    RLE  $38, $38, $38, $38, $38, $38, $38, $38, $38, $38 ;; 05:7a7c ????
    RLE  $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ;; 05:7a80 ????
    RLE  $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ;; 05:7a84 ????
    RLE  $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ;; 05:7a88 ????

map00_room05_0f_script:
    SCRIPT_IDX script_007c                             ;; 05:7a8c $7c $00
    db   $ff                                           ;; 05:7a8e $ff

map00_room05_0f_tiles:
    RLE  $47, $05, $05, $05, $05, $05, $05, $05, $47, $47 ;; 05:7a8f ??????
    RLE  $05, $05, $05, $05, $05, $05, $05, $05, $05, $05 ;; 05:7a95 ????
    RLE  $47, $05, $05, $47, $05, $05, $47, $05, $05, $05 ;; 05:7a99 ????????
    RLE  $05, $05, $05, $05, $05, $05, $05, $05, $05, $05 ;; 05:7aa1 ????
    RLE  $38, $38, $38, $38, $38, $38, $38, $38, $38, $38 ;; 05:7aa5 ????
    RLE  $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ;; 05:7aa9 ????
    RLE  $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ;; 05:7aad ????
    RLE  $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ;; 05:7ab1 ????

map00_room06_0f_script:
    SCRIPT_IDX script_007c                             ;; 05:7ab5 $7c $00
    db   $ff                                           ;; 05:7ab7 $ff

map00_room06_0f_tiles:
    RLE  $47, $05, $05, $05, $05, $05, $05, $05, $10, $11 ;; 05:7ab8 ??????
    RLE  $05, $05, $05, $47, $05, $05, $05, $05, $10, $11 ;; 05:7abe ??????
    RLE  $05, $05, $47, $05, $05, $05, $05, $15, $11, $11 ;; 05:7ac4 ????????
    RLE  $05, $05, $05, $05, $05, $15, $38, $11, $11, $11 ;; 05:7acc ??????
    RLE  $38, $38, $38, $38, $38, $11, $11, $11, $11, $11 ;; 05:7ad2 ??????
    RLE  $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ;; 05:7ad8 ????
    RLE  $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ;; 05:7adc ????
    RLE  $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ;; 05:7ae0 ????

map00_room07_0f_script:
    SCRIPT_IDX script_0046                             ;; 05:7ae4 $46 $00
    db   $ff                                           ;; 05:7ae6 $ff

map00_room07_0f_tiles:
    RLE  $11, $11, $12, $00, $00, $50, $51, $51, $41, $41 ;; 05:7ae7 ??????????
    RLE  $11, $11, $12, $00, $00, $00, $00, $00, $50, $41 ;; 05:7af1 ????????
    RLE  $11, $11, $12, $00, $00, $00, $00, $00, $00, $41 ;; 05:7af9 ??????
    RLE  $11, $11, $11, $02, $00, $00, $00, $00, $00, $50 ;; 05:7aff ??????
    RLE  $11, $11, $11, $11, $38, $02, $00, $00, $00, $00 ;; 05:7b05 ??????
    RLE  $11, $11, $11, $11, $11, $11, $02, $00, $00, $00 ;; 05:7b0b ????
    RLE  $11, $11, $11, $11, $11, $11, $11, $38, $38, $38 ;; 05:7b0f ????
    RLE  $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ;; 05:7b13 ????

map00_room08_0f_script:
    SCRIPT_IDX script_0055                             ;; 05:7b17 $55 $00
    db   $ff                                           ;; 05:7b19 $ff

map00_room08_0f_tiles:
    RLE  $41, $41, $42, $42, $41, $41, $41, $00, $41, $41 ;; 05:7b1a ????????
    RLE  $41, $41, $42, $42, $51, $51, $53, $00, $50, $41 ;; 05:7b22 ??????????
    RLE  $41, $41, $42, $52, $00, $00, $00, $00, $00, $41 ;; 05:7b2c ????????
    RLE  $51, $51, $52, $00, $00, $00, $00, $00, $00, $50 ;; 05:7b34 ??????
    RLE  $00, $00, $00, $00, $00, $00, $00, $00, $15, $38 ;; 05:7b3a ??????
    RLE  $00, $00, $00, $00, $00, $00, $00, $15, $11, $11 ;; 05:7b40 ??????
    RLE  $38, $38, $38, $38, $38, $38, $38, $11, $11, $11 ;; 05:7b46 ????
    RLE  $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ;; 05:7b4a ????

map00_room09_0f_script:
    SCRIPT_IDX script_0055                             ;; 05:7b4e $55 $00
    db   $ff                                           ;; 05:7b50 $ff

map00_room09_0f_tiles:
    RLE  $41, $42, $42, $41, $42, $00, $41, $41, $41, $41 ;; 05:7b51 ????????
    RLE  $41, $42, $42, $51, $52, $00, $50, $51, $41, $41 ;; 05:7b59 ??????????
    RLE  $41, $42, $52, $00, $00, $00, $00, $00, $50, $51 ;; 05:7b63 ????????
    RLE  $51, $52, $05, $05, $05, $00, $00, $00, $00, $00 ;; 05:7b6b ??????
    RLE  $38, $02, $05, $05, $05, $05, $05, $05, $05, $05 ;; 05:7b71 ??????
    RLE  $11, $11, $38, $38, $02, $05, $05, $05, $05, $05 ;; 05:7b77 ????????
    RLE  $11, $11, $11, $11, $11, $38, $38, $38, $38, $38 ;; 05:7b7f ??????
    RLE  $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ;; 05:7b85 ????

map00_room0a_0f_script:
    SCRIPT_IDX script_0055                             ;; 05:7b89 $55 $00
    SCRIPT_AT_POS 2, 2, script_038d                    ;; 05:7b8b $22 $8d $03
    db   $ff                                           ;; 05:7b8e $ff

map00_room0a_0f_tiles:
    RLE  $41, $41, $41, $41, $42, $05, $05, $10, $11, $11 ;; 05:7b8f ????????
    RLE  $41, $5d, $5d, $5d, $52, $05, $05, $10, $11, $11 ;; 05:7b97 ????????
    RLE  $51, $5e, $2e, $5e, $69, $05, $05, $10, $11, $11 ;; 05:7b9f ??????????
    RLE  $00, $00, $00, $00, $05, $05, $05, $10, $11, $11 ;; 05:7ba9 ??????
    RLE  $05, $05, $05, $05, $05, $05, $15, $11, $11, $11 ;; 05:7baf ????
    RLE  $05, $05, $05, $05, $05, $15, $11, $11, $11, $11 ;; 05:7bb3 ??????
    RLE  $38, $38, $38, $38, $38, $11, $11, $11, $11, $11 ;; 05:7bb9 ??????
    RLE  $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ;; 05:7bbf ????

map00_room0b_0f_script:
    SCRIPT_IDX script_0055                             ;; 05:7bc3 $55 $00
    db   $ff                                           ;; 05:7bc5 $ff

map00_room0b_0f_tiles:
    RLE  $11, $11, $12, $05, $05, $05, $05, $05, $41, $41 ;; 05:7bc6 ????????
    RLE  $11, $11, $12, $05, $05, $05, $05, $05, $50, $51 ;; 05:7bce ????????
    RLE  $11, $11, $11, $02, $05, $05, $05, $05, $05, $05 ;; 05:7bd6 ????
    RLE  $11, $11, $11, $11, $02, $05, $05, $05, $05, $05 ;; 05:7bda ??????
    RLE  $11, $11, $11, $11, $11, $02, $05, $05, $05, $05 ;; 05:7be0 ??????
    RLE  $11, $11, $11, $11, $11, $11, $38, $38, $38, $38 ;; 05:7be6 ????
    RLE  $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ;; 05:7bea ????
    RLE  $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ;; 05:7bee ????

map00_room0c_0f_script:
    SCRIPT_IDX script_0055                             ;; 05:7bf2 $55 $00
    db   $ff                                           ;; 05:7bf4 $ff

map00_room0c_0f_tiles:
    RLE  $41, $41, $42, $41, $41, $52, $05, $05, $10, $11 ;; 05:7bf5 ??????????
    RLE  $51, $51, $52, $05, $05, $05, $05, $05, $10, $11 ;; 05:7bff ????????
    RLE  $05, $05, $05, $05, $05, $05, $05, $15, $11, $11 ;; 05:7c07 ??????
    RLE  $05, $05, $05, $05, $05, $05, $15, $11, $11, $11 ;; 05:7c0d ????
    RLE  $05, $05, $05, $15, $38, $38, $11, $11, $11, $11 ;; 05:7c11 ??????
    RLE  $38, $38, $38, $11, $11, $11, $11, $11, $11, $11 ;; 05:7c17 ????
    RLE  $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ;; 05:7c1b ????
    RLE  $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ;; 05:7c1f ????

map00_room0d_0f_script:
    SCRIPT_IDX script_0079                             ;; 05:7c23 $79 $00
    SCRIPT_AT_POS 2, 5, script_038c                    ;; 05:7c25 $25 $8c $03
    db   $ff                                           ;; 05:7c28 $ff

map00_room0d_0f_tiles:
    RLE  $11, $11, $11, $12, $50, $41, $41, $41, $41, $41 ;; 05:7c29 ??????
    RLE  $11, $11, $11, $22, $5d, $5d, $5d, $51, $41, $41 ;; 05:7c2f ??????
    RLE  $11, $11, $22, $00, $5e, $2e, $5e, $69, $50, $51 ;; 05:7c35 ??????????
    RLE  $11, $12, $00, $00, $00, $00, $00, $00, $00, $00 ;; 05:7c3f ??????
    RLE  $11, $12, $33, $00, $00, $00, $00, $3b, $00, $00 ;; 05:7c45 ????????
    RLE  $11, $12, $50, $33, $00, $3b, $00, $00, $00, $00 ;; 05:7c4d ????????
    RLE  $11, $11, $02, $50, $00, $00, $00, $00, $00, $00 ;; 05:7c55 ??????
    RLE  $11, $11, $11, $38, $00, $00, $00, $00, $00, $30 ;; 05:7c5b ??????

map00_room0e_0f_script:
    SCRIPT_IDX script_0079                             ;; 05:7c61 $79 $00
    db   $ff                                           ;; 05:7c63 $ff

map00_room0e_0f_tiles:
    RLE  $42, $42, $00, $00, $00, $17, $00, $49, $49, $50 ;; 05:7c64 ????????
    RLE  $42, $52, $00, $00, $00, $17, $00, $00, $49, $49 ;; 05:7c6c ????????
    RLE  $52, $00, $3b, $00, $00, $17, $00, $00, $00, $00 ;; 05:7c74 ????????
    RLE  $00, $00, $3b, $00, $00, $13, $17, $17, $17, $17 ;; 05:7c7c ????????
    RLE  $00, $00, $00, $3b, $00, $00, $00, $00, $00, $00 ;; 05:7c84 ????
    RLE  $00, $00, $00, $00, $3b, $00, $3b, $00, $00, $00 ;; 05:7c88 ??????
    RLE  $30, $40, $30, $40, $00, $00, $00, $00, $30, $40 ;; 05:7c8e ????????
    RLE  $41, $41, $41, $41, $40, $30, $40, $30, $41, $41 ;; 05:7c96 ????????

map00_room0f_0f_script:
    SCRIPT_IDX script_0079                             ;; 05:7c9e $79 $00
    db   $ff                                           ;; 05:7ca0 $ff

map00_room0f_0f_tiles:
    RLE  $53, $49, $00, $00, $00, $00, $00, $10, $11, $11 ;; 05:7ca1 ????????
    RLE  $49, $00, $00, $3b, $00, $00, $00, $10, $11, $11 ;; 05:7ca9 ????????
    RLE  $00, $00, $00, $00, $00, $00, $15, $11, $11, $11 ;; 05:7cb1 ????
    RLE  $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ;; 05:7cb5 ????
    RLE  $00, $00, $00, $00, $00, $3b, $20, $11, $11, $11 ;; 05:7cb9 ??????
    RLE  $00, $00, $00, $3b, $00, $00, $00, $10, $11, $11 ;; 05:7cbf ??????
    RLE  $30, $40, $00, $00, $00, $00, $00, $20, $11, $11 ;; 05:7cc5 ????????
    RLE  $41, $41, $40, $30, $31, $40, $30, $40, $10, $11 ;; 05:7ccd ??????????
