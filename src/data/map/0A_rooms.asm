;; Disassembled with BadBoy Disassembler: https://github.com/daid/BadBoy



mapRoomPointers_0a:
    db   $01, $04, $08, $07                            ;; 06:6f65 ????
    dw   map0a_room_tile_template                      ;; 06:6f69 $63 $70
    ;;Door tile info
    db   $25, $35, $20, $30, $14, $03, $52, $53        ;; 06:6f6b ????????
    db   $24, $34, $21, $31, $12, $13, $42, $43        ;; 06:6f73 ????????
    db   $15, $45, $10, $40, $01, $04, $51, $54        ;; 06:6f7b ????????
    ;;Room data pointers
    dw   map0a_room00_00_script, map0a_room00_00_tiles ;; 06:6f83 $8f $70 $92 $70
    dw   map0a_room01_00_script, map0a_room01_00_tiles ;; 06:6f87 $b2 $70 $b5 $70
    dw   map0a_room02_00_script, map0a_room02_00_tiles ;; 06:6f8b $df $70 $e5 $70
    dw   map0a_room03_00_script, map0a_room03_00_tiles ;; 06:6f8f $fb $70 $fe $70
    dw   map0a_room04_00_script, map0a_room04_00_tiles ;; 06:6f93 $0c $71 $12 $71
    dw   map0a_room05_00_script, map0a_room05_00_tiles ;; 06:6f97 $3e $71 $44 $71
    dw   map0a_room06_00_script, map0a_room06_00_tiles ;; 06:6f9b $5c $71 $5f $71
    dw   map0a_room00_01_script, map0a_room00_01_tiles ;; 06:6f9f $6d $71 $76 $71
    dw   map0a_room01_01_script, map0a_room01_01_tiles ;; 06:6fa3 $b2 $71 $b5 $71
    dw   map0a_room02_01_script, map0a_room02_01_tiles ;; 06:6fa7 $bb $71 $be $71
    dw   map0a_room03_01_script, map0a_room03_01_tiles ;; 06:6fab $c4 $71 $c7 $71
    dw   map0a_room04_01_script, map0a_room04_01_tiles ;; 06:6faf $dd $71 $e9 $71
    dw   map0a_room05_01_script, map0a_room05_01_tiles ;; 06:6fb3 $0f $72 $15 $72
    dw   map0a_room06_01_script, map0a_room06_01_tiles ;; 06:6fb7 $35 $72 $38 $72
    dw   map0a_room00_02_script, map0a_room00_02_tiles ;; 06:6fbb $5e $72 $61 $72
    dw   map0a_room01_02_script, map0a_room01_02_tiles ;; 06:6fbf $87 $72 $8a $72
    dw   map0a_room02_02_script, map0a_room02_02_tiles ;; 06:6fc3 $9c $72 $9f $72
    dw   map0a_room03_02_script, map0a_room03_02_tiles ;; 06:6fc7 $c5 $72 $c8 $72
    dw   map0a_room04_02_script, map0a_room04_02_tiles ;; 06:6fcb $06 $73 $09 $73
    dw   map0a_room05_02_script, map0a_room05_02_tiles ;; 06:6fcf $2f $73 $32 $73
    dw   map0a_room06_02_script, map0a_room06_02_tiles ;; 06:6fd3 $38 $73 $3e $73
    dw   map0a_room00_03_script, map0a_room00_03_tiles ;; 06:6fd7 $64 $73 $67 $73
    dw   map0a_room01_03_script, map0a_room01_03_tiles ;; 06:6fdb $75 $73 $7b $73
    dw   map0a_room02_03_script, map0a_room02_03_tiles ;; 06:6fdf $8f $73 $92 $73
    dw   map0a_room03_03_script, map0a_room03_03_tiles ;; 06:6fe3 $cc $73 $cf $73
    dw   map0a_room04_03_script, map0a_room04_03_tiles ;; 06:6fe7 $ed $73 $f0 $73
    dw   map0a_room05_03_script, map0a_room05_03_tiles ;; 06:6feb $26 $74 $2c $74
    dw   map0a_room06_03_script, map0a_room06_03_tiles ;; 06:6fef $56 $74 $59 $74
    dw   map0a_room00_04_script, map0a_room00_04_tiles ;; 06:6ff3 $77 $74 $80 $74
    dw   map0a_room01_04_script, map0a_room01_04_tiles ;; 06:6ff7 $a2 $74 $a8 $74
    dw   map0a_room02_04_script, map0a_room02_04_tiles ;; 06:6ffb $d4 $74 $d7 $74
    dw   map0a_room03_04_script, map0a_room03_04_tiles ;; 06:6fff $1d $75 $20 $75
    dw   map0a_room04_04_script, map0a_room04_04_tiles ;; 06:7003 $6e $75 $71 $75
    dw   map0a_room05_04_script, map0a_room05_04_tiles ;; 06:7007 $a9 $75 $ac $75
    dw   map0a_room06_04_script, map0a_room06_04_tiles ;; 06:700b $b2 $75 $b5 $75
    dw   map0a_room00_05_script, map0a_room00_05_tiles ;; 06:700f $bf $75 $c5 $75
    dw   map0a_room01_05_script, map0a_room01_05_tiles ;; 06:7013 $e9 $75 $ec $75
    dw   map0a_room02_05_script, map0a_room02_05_tiles ;; 06:7017 $14 $76 $17 $76
    dw   map0a_room03_05_script, map0a_room03_05_tiles ;; 06:701b $3f $76 $42 $76
    dw   map0a_room04_05_script, map0a_room04_05_tiles ;; 06:701f $88 $76 $8b $76
    dw   map0a_room05_05_script, map0a_room05_05_tiles ;; 06:7023 $bf $76 $c5 $76
    dw   map0a_room06_05_script, map0a_room06_05_tiles ;; 06:7027 $d7 $76 $da $76
    dw   map0a_room00_06_script, map0a_room00_06_tiles ;; 06:702b $e0 $76 $e3 $76
    dw   map0a_room01_06_script, map0a_room01_06_tiles ;; 06:702f $e9 $76 $ec $76
    dw   map0a_room02_06_script, map0a_room02_06_tiles ;; 06:7033 $0a $77 $0d $77
    dw   map0a_room03_06_script, map0a_room03_06_tiles ;; 06:7037 $5d $77 $60 $77
    dw   map0a_room04_06_script, map0a_room04_06_tiles ;; 06:703b $8e $77 $91 $77
    dw   map0a_room05_06_script, map0a_room05_06_tiles ;; 06:703f $b5 $77 $b8 $77
    dw   map0a_room06_06_script, map0a_room06_06_tiles ;; 06:7043 $d2 $77 $d8 $77
    dw   map0a_room00_07_script, map0a_room00_07_tiles ;; 06:7047 $f0 $77 $f6 $77
    dw   map0a_room01_07_script, map0a_room01_07_tiles ;; 06:704b $46 $78 $49 $78
    dw   map0a_room02_07_script, map0a_room02_07_tiles ;; 06:704f $7b $78 $7e $78
    dw   map0a_room03_07_script, map0a_room03_07_tiles ;; 06:7053 $d2 $78 $d5 $78
    dw   map0a_room04_07_script, map0a_room04_07_tiles ;; 06:7057 $0f $79 $12 $79
    dw   map0a_room05_07_script, map0a_room05_07_tiles ;; 06:705b $58 $79 $5b $79
    dw   map0a_room06_07_script, map0a_room06_07_tiles ;; 06:705f $77 $79 $7a $79

map0a_room_tile_template:
    db   $16, $01, $01, $01, $14, $03, $04, $04, $04, $05 ;; 06:7063 ??????????
    db   $10,                $80,                $80, $15 ;; 06:706d ????
    db   $10,                $80,                $80, $15 ;; 06:7071 ????
    db   $20,                $80,                $80, $25 ;; 06:7075 ????
    db   $30,                $80,                $80, $35 ;; 06:7079 ????
    db   $40,                $80,                $80, $45 ;; 06:707d ????
    db   $40,                $80,                $80, $45 ;; 06:7081 ????
    db   $50, $51, $51, $51, $52, $53, $54, $54, $54, $55 ;; 06:7085 ??????????

map0a_room00_00_script:
    SCRIPT_IDX script_00b2                             ;; 06:708f $b2 $00
    db   $ff                                           ;; 06:7091 $ff

map0a_room00_00_tiles:
    db   $00, $02, $02, $00                            ;; 06:7092 ????
    db   $09, $25                                      ;; 06:7096 ??
    db   $09, $34                                      ;; 06:7098 ??
    db   $09, $35                                      ;; 06:709a ??
    db   $09, $44                                      ;; 06:709c ??
    db   $09, $45                                      ;; 06:709e ??
    db   $09, $46                                      ;; 06:70a0 ??
    db   $09, $55                                      ;; 06:70a2 ??
    db   $09, $56                                      ;; 06:70a4 ??
    db   $09, $57                                      ;; 06:70a6 ??
    db   $09, $58                                      ;; 06:70a8 ??
    db   $09, $66                                      ;; 06:70aa ??
    db   $09, $67                                      ;; 06:70ac ??
    db   $09, $68                                      ;; 06:70ae ??
    db   $ff, $ff                                      ;; 06:70b0 ??

map0a_room01_00_script:
    SCRIPT_IDX script_00bb                             ;; 06:70b2 $bb $00
    db   $ff                                           ;; 06:70b4 $ff

map0a_room01_00_tiles:
    db   $01, $00, $02, $02                            ;; 06:70b5 ????
    db   $16, $12                                      ;; 06:70b9 ??
    db   $01, $13                                      ;; 06:70bb ??
    db   $05, $14                                      ;; 06:70bd ??
    db   $10, $22                                      ;; 06:70bf ??
    db   $07, $23                                      ;; 06:70c1 ??
    db   $15, $24                                      ;; 06:70c3 ??
    db   $29, $32                                      ;; 06:70c5 ??
    db   $29, $33                                      ;; 06:70c7 ??
    db   $29, $34                                      ;; 06:70c9 ??
    db   $40, $42                                      ;; 06:70cb ??
    db   $07, $43                                      ;; 06:70cd ??
    db   $45, $44                                      ;; 06:70cf ??
    db   $40, $52                                      ;; 06:70d1 ??
    db   $07, $53                                      ;; 06:70d3 ??
    db   $45, $54                                      ;; 06:70d5 ??
    db   $50, $62                                      ;; 06:70d7 ??
    db   $51, $63                                      ;; 06:70d9 ??
    db   $55, $64                                      ;; 06:70db ??
    db   $ff, $ff                                      ;; 06:70dd ??

map0a_room02_00_script:
    SCRIPT_IDX script_0073                             ;; 06:70df $73 $00
    SCRIPT_AT_POS 1, 8, script_0372                    ;; 06:70e1 $18 $72 $03
    db   $ff                                           ;; 06:70e4 $ff

map0a_room02_00_tiles:
    db   $02, $01, $02, $02                            ;; 06:70e5 ????
    db   $57, $15                                      ;; 06:70e9 ??
    db   $02, $18                                      ;; 06:70eb ??
    db   $5e, $22                                      ;; 06:70ed ??
    db   $57, $25                                      ;; 06:70ef ??
    db   $57, $35                                      ;; 06:70f1 ??
    db   $57, $45                                      ;; 06:70f3 ??
    db   $57, $55                                      ;; 06:70f5 ??
    db   $59, $65                                      ;; 06:70f7 ??
    db   $ff, $ff                                      ;; 06:70f9 ??

map0a_room03_00_script:
    SCRIPT_IDX script_0082                             ;; 06:70fb $82 $00
    db   $ff                                           ;; 06:70fd $ff

map0a_room03_00_tiles:
    db   $89, $02, $02, $89                            ;; 06:70fe ????
    db   $4f, $22                                      ;; 06:7102 ??
    db   $4f, $27                                      ;; 06:7104 ??
    db   $4f, $52                                      ;; 06:7106 ??
    db   $4f, $57                                      ;; 06:7108 ??
    db   $ff, $ff                                      ;; 06:710a ??

map0a_room04_00_script:
    SCRIPT_IDX script_0082                             ;; 06:710c $82 $00
    SCRIPT_AT_POS 1, 8, script_0362                    ;; 06:710e $18 $62 $03
    db   $ff                                           ;; 06:7111 $ff

map0a_room04_00_tiles:
    db   $02, $01, $02, $02                            ;; 06:7112 ????
    db   $16, $14                                      ;; 06:7116 ??
    db   $04, $15                                      ;; 06:7118 ??
    db   $05, $16                                      ;; 06:711a ??
    db   $11, $18                                      ;; 06:711c ??
    db   $10, $24                                      ;; 06:711e ??
    db   $09, $25                                      ;; 06:7120 ??
    db   $15, $26                                      ;; 06:7122 ??
    db   $10, $34                                      ;; 06:7124 ??
    db   $09, $35                                      ;; 06:7126 ??
    db   $15, $36                                      ;; 06:7128 ??
    db   $29, $44                                      ;; 06:712a ??
    db   $29, $45                                      ;; 06:712c ??
    db   $29, $46                                      ;; 06:712e ??
    db   $40, $54                                      ;; 06:7130 ??
    db   $09, $55                                      ;; 06:7132 ??
    db   $45, $56                                      ;; 06:7134 ??
    db   $50, $64                                      ;; 06:7136 ??
    db   $54, $65                                      ;; 06:7138 ??
    db   $55, $66                                      ;; 06:713a ??
    db   $ff, $ff                                      ;; 06:713c ??

map0a_room05_00_script:
    SCRIPT_IDX script_0082                             ;; 06:713e $82 $00
    SCRIPT_AT_POS 1, 1, script_0364                    ;; 06:7140 $11 $64 $03
    db   $ff                                           ;; 06:7143 $ff

map0a_room05_00_tiles:
    db   $00, $02, $02, $02                            ;; 06:7144 ????
    db   $11, $11                                      ;; 06:7148 ??
    db   $4f, $12                                      ;; 06:714a ??
    db   $4f, $22                                      ;; 06:714c ??
    db   $09, $35                                      ;; 06:714e ??
    db   $09, $36                                      ;; 06:7150 ??
    db   $09, $45                                      ;; 06:7152 ??
    db   $09, $46                                      ;; 06:7154 ??
    db   $4f, $52                                      ;; 06:7156 ??
    db   $4f, $62                                      ;; 06:7158 ??
    db   $ff, $ff                                      ;; 06:715a ??

map0a_room06_00_script:
    SCRIPT_IDX script_0139                             ;; 06:715c $39 $01
    db   $ff                                           ;; 06:715e $ff

map0a_room06_00_tiles:
    db   $02, $00, $02, $02                            ;; 06:715f ????
    db   $2c, $43                                      ;; 06:7163 ??
    db   $2c, $46                                      ;; 06:7165 ??
    db   $2c, $63                                      ;; 06:7167 ??
    db   $2c, $66                                      ;; 06:7169 ??
    db   $ff, $ff                                      ;; 06:716b ??

map0a_room00_01_script:
    SCRIPT_IDX script_00b5                             ;; 06:716d $b5 $00
    SCRIPT_AT_POS 6, 7, script_0508                    ;; 06:716f $67 $08 $05
    SCRIPT_AT_POS 3, 7, script_0507                    ;; 06:7172 $37 $07 $05
    db   $ff                                           ;; 06:7175 $ff

map0a_room00_01_tiles:
    db   $02, $02, $00, $09                            ;; 06:7176 ????
    db   $57, $11                                      ;; 06:717a ??
    db   $58, $12                                      ;; 06:717c ??
    db   $58, $13                                      ;; 06:717e ??
    db   $58, $14                                      ;; 06:7180 ??
    db   $58, $15                                      ;; 06:7182 ??
    db   $58, $16                                      ;; 06:7184 ??
    db   $58, $17                                      ;; 06:7186 ??
    db   $58, $18                                      ;; 06:7188 ??
    db   $57, $21                                      ;; 06:718a ??
    db   $56, $28                                      ;; 06:718c ??
    db   $57, $31                                      ;; 06:718e ??
    db   $5e, $33                                      ;; 06:7190 ??
    db   $5e, $35                                      ;; 06:7192 ??
    db   $4e, $37                                      ;; 06:7194 ??
    db   $56, $38                                      ;; 06:7196 ??
    db   $57, $41                                      ;; 06:7198 ??
    db   $5e, $47                                      ;; 06:719a ??
    db   $56, $48                                      ;; 06:719c ??
    db   $59, $51                                      ;; 06:719e ??
    db   $59, $52                                      ;; 06:71a0 ??
    db   $59, $53                                      ;; 06:71a2 ??
    db   $59, $54                                      ;; 06:71a4 ??
    db   $59, $55                                      ;; 06:71a6 ??
    db   $59, $56                                      ;; 06:71a8 ??
    db   $59, $57                                      ;; 06:71aa ??
    db   $56, $58                                      ;; 06:71ac ??
    db   $4e, $67                                      ;; 06:71ae ??
    db   $ff, $ff                                      ;; 06:71b0 ??

map0a_room01_01_script:
    dw   $ffff                                         ;; 06:71b2 $ff $ff
    db   $ff                                           ;; 06:71b4 $ff

map0a_room01_01_tiles:
    db   $00, $00, $00, $00                            ;; 06:71b5 ????
    db   $ff, $ff                                      ;; 06:71b9 ??

map0a_room02_01_script:
    dw   $ffff                                         ;; 06:71bb $ff $ff
    db   $ff                                           ;; 06:71bd $ff

map0a_room02_01_tiles:
    db   $00, $00, $00, $00                            ;; 06:71be ????
    db   $ff, $ff                                      ;; 06:71c2 ??

map0a_room03_01_script:
    SCRIPT_IDX script_007f                             ;; 06:71c4 $7f $00
    db   $ff                                           ;; 06:71c6 $ff

map0a_room03_01_tiles:
    db   $05, $02, $00, $02                            ;; 06:71c7 ????
    db   $5c, $16                                      ;; 06:71cb ??
    db   $5c, $26                                      ;; 06:71cd ??
    db   $5c, $33                                      ;; 06:71cf ??
    db   $5c, $34                                      ;; 06:71d1 ??
    db   $5c, $35                                      ;; 06:71d3 ??
    db   $5c, $36                                      ;; 06:71d5 ??
    db   $5c, $44                                      ;; 06:71d7 ??
    db   $5c, $54                                      ;; 06:71d9 ??
    db   $ff, $ff                                      ;; 06:71db ??

map0a_room04_01_script:
    SCRIPT_IDX script_007f                             ;; 06:71dd $7f $00
    SCRIPT_AT_POS 6, 8, script_0367                    ;; 06:71df $68 $67 $03
    SCRIPT_AT_POS 1, 5, script_04f0                    ;; 06:71e2 $15 $f0 $04
    SCRIPT_AT_POS 6, 5, script_04f1                    ;; 06:71e5 $65 $f1 $04
    db   $ff                                           ;; 06:71e8 $ff

map0a_room04_01_tiles:
    db   $02, $01, $02, $02                            ;; 06:71e9 ????
    db   $59, $14                                      ;; 06:71ed ??
    db   $4e, $15                                      ;; 06:71ef ??
    db   $2c, $16                                      ;; 06:71f1 ??
    db   $58, $24                                      ;; 06:71f3 ??
    db   $58, $25                                      ;; 06:71f5 ??
    db   $2c, $26                                      ;; 06:71f7 ??
    db   $58, $34                                      ;; 06:71f9 ??
    db   $58, $35                                      ;; 06:71fb ??
    db   $58, $44                                      ;; 06:71fd ??
    db   $58, $45                                      ;; 06:71ff ??
    db   $58, $54                                      ;; 06:7201 ??
    db   $58, $55                                      ;; 06:7203 ??
    db   $2c, $56                                      ;; 06:7205 ??
    db   $58, $64                                      ;; 06:7207 ??
    db   $4e, $65                                      ;; 06:7209 ??
    db   $2c, $66                                      ;; 06:720b ??
    db   $ff, $ff                                      ;; 06:720d ??

map0a_room05_01_script:
    SCRIPT_IDX script_03e5                             ;; 06:720f $e5 $03
    SCRIPT_AT_POS 1, 8, script_0366                    ;; 06:7211 $18 $66 $03
    db   $ff                                           ;; 06:7214 $ff

map0a_room05_01_tiles:
    db   $02, $02, $02, $02                            ;; 06:7215 ????
    db   $11, $18                                      ;; 06:7219 ??
    db   $09, $24                                      ;; 06:721b ??
    db   $09, $25                                      ;; 06:721d ??
    db   $09, $33                                      ;; 06:721f ??
    db   $47, $34                                      ;; 06:7221 ??
    db   $47, $35                                      ;; 06:7223 ??
    db   $09, $36                                      ;; 06:7225 ??
    db   $09, $43                                      ;; 06:7227 ??
    db   $09, $44                                      ;; 06:7229 ??
    db   $09, $45                                      ;; 06:722b ??
    db   $09, $46                                      ;; 06:722d ??
    db   $09, $54                                      ;; 06:722f ??
    db   $09, $55                                      ;; 06:7231 ??
    db   $ff, $ff                                      ;; 06:7233 ??

map0a_room06_01_script:
    SCRIPT_IDX script_0410                             ;; 06:7235 $10 $04
    db   $ff                                           ;; 06:7237 $ff

map0a_room06_01_tiles:
    db   $02, $02, $00, $02                            ;; 06:7238 ????
    db   $47, $23                                      ;; 06:723c ??
    db   $57, $24                                      ;; 06:723e ??
    db   $57, $25                                      ;; 06:7240 ??
    db   $47, $26                                      ;; 06:7242 ??
    db   $47, $32                                      ;; 06:7244 ??
    db   $47, $33                                      ;; 06:7246 ??
    db   $47, $36                                      ;; 06:7248 ??
    db   $47, $37                                      ;; 06:724a ??
    db   $47, $42                                      ;; 06:724c ??
    db   $47, $43                                      ;; 06:724e ??
    db   $47, $46                                      ;; 06:7250 ??
    db   $47, $47                                      ;; 06:7252 ??
    db   $47, $53                                      ;; 06:7254 ??
    db   $47, $54                                      ;; 06:7256 ??
    db   $47, $55                                      ;; 06:7258 ??
    db   $47, $56                                      ;; 06:725a ??
    db   $ff, $ff                                      ;; 06:725c ??

map0a_room00_02_script:
    SCRIPT_IDX script_0070                             ;; 06:725e $70 $00
    db   $ff                                           ;; 06:7260 $ff

map0a_room00_02_tiles:
    db   $01, $02, $01, $02                            ;; 06:7261 ????
    db   $4f, $13                                      ;; 06:7265 ??
    db   $4f, $16                                      ;; 06:7267 ??
    db   $56, $22                                      ;; 06:7269 ??
    db   $58, $24                                      ;; 06:726b ??
    db   $56, $25                                      ;; 06:726d ??
    db   $4f, $33                                      ;; 06:726f ??
    db   $4f, $34                                      ;; 06:7271 ??
    db   $4f, $35                                      ;; 06:7273 ??
    db   $4f, $36                                      ;; 06:7275 ??
    db   $4f, $43                                      ;; 06:7277 ??
    db   $4f, $46                                      ;; 06:7279 ??
    db   $56, $54                                      ;; 06:727b ??
    db   $59, $55                                      ;; 06:727d ??
    db   $57, $57                                      ;; 06:727f ??
    db   $4f, $63                                      ;; 06:7281 ??
    db   $4f, $66                                      ;; 06:7283 ??
    db   $ff, $ff                                      ;; 06:7285 ??

map0a_room01_02_script:
    SCRIPT_IDX script_0097                             ;; 06:7287 $97 $00
    db   $ff                                           ;; 06:7289 $ff

map0a_room01_02_tiles:
    db   $00, $01, $02, $02                            ;; 06:728a ????
    db   $5c, $17                                      ;; 06:728e ??
    db   $5c, $28                                      ;; 06:7290 ??
    db   $5c, $37                                      ;; 06:7292 ??
    db   $5c, $47                                      ;; 06:7294 ??
    db   $5c, $58                                      ;; 06:7296 ??
    db   $5c, $67                                      ;; 06:7298 ??
    db   $ff, $ff                                      ;; 06:729a ??

map0a_room02_02_script:
    SCRIPT_IDX script_00bb                             ;; 06:729c $bb $00
    db   $ff                                           ;; 06:729e $ff

map0a_room02_02_tiles:
    db   $00, $00, $02, $00                            ;; 06:729f ????
    db   $1b, $29                                      ;; 06:72a3 ??
    db   $4f, $37                                      ;; 06:72a5 ??
    db   $56, $38                                      ;; 06:72a7 ??
    db   $58, $39                                      ;; 06:72a9 ??
    db   $4f, $47                                      ;; 06:72ab ??
    db   $59, $48                                      ;; 06:72ad ??
    db   $59, $49                                      ;; 06:72af ??
    db   $4f, $54                                      ;; 06:72b1 ??
    db   $4f, $55                                      ;; 06:72b3 ??
    db   $3b, $59                                      ;; 06:72b5 ??
    db   $57, $64                                      ;; 06:72b7 ??
    db   $59, $65                                      ;; 06:72b9 ??
    db   $48, $73                                      ;; 06:72bb ??
    db   $57, $74                                      ;; 06:72bd ??
    db   $56, $75                                      ;; 06:72bf ??
    db   $4a, $76                                      ;; 06:72c1 ??
    db   $ff, $ff                                      ;; 06:72c3 ??

map0a_room03_02_script:
    SCRIPT_IDX script_00b5                             ;; 06:72c5 $b5 $00
    db   $ff                                           ;; 06:72c7 $ff

map0a_room03_02_tiles:
    db   $00, $00, $02, $02                            ;; 06:72c8 ????
    db   $17, $20                                      ;; 06:72cc ??
    db   $44, $21                                      ;; 06:72ce ??
    db   $44, $22                                      ;; 06:72d0 ??
    db   $44, $27                                      ;; 06:72d2 ??
    db   $44, $28                                      ;; 06:72d4 ??
    db   $1b, $29                                      ;; 06:72d6 ??
    db   $58, $30                                      ;; 06:72d8 ??
    db   $58, $31                                      ;; 06:72da ??
    db   $58, $32                                      ;; 06:72dc ??
    db   $59, $33                                      ;; 06:72de ??
    db   $57, $34                                      ;; 06:72e0 ??
    db   $59, $35                                      ;; 06:72e2 ??
    db   $57, $36                                      ;; 06:72e4 ??
    db   $56, $37                                      ;; 06:72e6 ??
    db   $58, $38                                      ;; 06:72e8 ??
    db   $58, $39                                      ;; 06:72ea ??
    db   $59, $40                                      ;; 06:72ec ??
    db   $59, $41                                      ;; 06:72ee ??
    db   $59, $42                                      ;; 06:72f0 ??
    db   $56, $43                                      ;; 06:72f2 ??
    db   $59, $44                                      ;; 06:72f4 ??
    db   $56, $45                                      ;; 06:72f6 ??
    db   $59, $46                                      ;; 06:72f8 ??
    db   $59, $47                                      ;; 06:72fa ??
    db   $59, $48                                      ;; 06:72fc ??
    db   $59, $49                                      ;; 06:72fe ??
    db   $37, $50                                      ;; 06:7300 ??
    db   $3b, $59                                      ;; 06:7302 ??
    db   $ff, $ff                                      ;; 06:7304 ??

map0a_room04_02_script:
    SCRIPT_IDX script_00b5                             ;; 06:7306 $b5 $00
    db   $ff                                           ;; 06:7308 $ff

map0a_room04_02_tiles:
    db   $02, $00, $02, $00                            ;; 06:7309 ????
    db   $17, $20                                      ;; 06:730d ??
    db   $58, $30                                      ;; 06:730f ??
    db   $58, $31                                      ;; 06:7311 ??
    db   $4f, $32                                      ;; 06:7313 ??
    db   $59, $40                                      ;; 06:7315 ??
    db   $57, $41                                      ;; 06:7317 ??
    db   $4f, $42                                      ;; 06:7319 ??
    db   $37, $50                                      ;; 06:731b ??
    db   $4f, $54                                      ;; 06:731d ??
    db   $4f, $55                                      ;; 06:731f ??
    db   $58, $64                                      ;; 06:7321 ??
    db   $57, $65                                      ;; 06:7323 ??
    db   $48, $73                                      ;; 06:7325 ??
    db   $56, $74                                      ;; 06:7327 ??
    db   $57, $75                                      ;; 06:7329 ??
    db   $4a, $76                                      ;; 06:732b ??
    db   $ff, $ff                                      ;; 06:732d ??

map0a_room05_02_script:
    dw   $ffff                                         ;; 06:732f $ff $ff
    db   $ff                                           ;; 06:7331 $ff

map0a_room05_02_tiles:
    db   $00, $00, $00, $00                            ;; 06:7332 ????
    db   $ff, $ff                                      ;; 06:7336 ??

map0a_room06_02_script:
    SCRIPT_IDX script_00bb                             ;; 06:7338 $bb $00
    SCRIPT_AT_POS 1, 8, script_0373                    ;; 06:733a $18 $73 $03
    db   $ff                                           ;; 06:733d $ff

map0a_room06_02_tiles:
    db   $02, $02, $02, $01                            ;; 06:733e ????
    db   $07, $12                                      ;; 06:7342 ??
    db   $5e, $14                                      ;; 06:7344 ??
    db   $11, $18                                      ;; 06:7346 ??
    db   $07, $22                                      ;; 06:7348 ??
    db   $07, $32                                      ;; 06:734a ??
    db   $07, $33                                      ;; 06:734c ??
    db   $07, $34                                      ;; 06:734e ??
    db   $07, $35                                      ;; 06:7350 ??
    db   $07, $45                                      ;; 06:7352 ??
    db   $07, $46                                      ;; 06:7354 ??
    db   $07, $47                                      ;; 06:7356 ??
    db   $07, $48                                      ;; 06:7358 ??
    db   $5e, $53                                      ;; 06:735a ??
    db   $07, $56                                      ;; 06:735c ??
    db   $07, $66                                      ;; 06:735e ??
    db   $5e, $68                                      ;; 06:7360 ??
    db   $ff, $ff                                      ;; 06:7362 ??

map0a_room00_03_script:
    SCRIPT_IDX script_008e                             ;; 06:7364 $8e $00
    db   $ff                                           ;; 06:7366 $ff

map0a_room00_03_tiles:
    db   $00, $02, $02, $00                            ;; 06:7367 ????
    db   $4f, $26                                      ;; 06:736b ??
    db   $4f, $37                                      ;; 06:736d ??
    db   $4f, $47                                      ;; 06:736f ??
    db   $4f, $58                                      ;; 06:7371 ??
    db   $ff, $ff                                      ;; 06:7373 ??

map0a_room01_03_script:
    SCRIPT_IDX script_008b                             ;; 06:7375 $8b $00
    SCRIPT_AT_POS 6, 8, script_0299                    ;; 06:7377 $68 $99 $02
    db   $ff                                           ;; 06:737a $ff

map0a_room01_03_tiles:
    db   $02, $00, $02, $02                            ;; 06:737b ????
    db   $3b, $56                                      ;; 06:737f ??
    db   $37, $57                                      ;; 06:7381 ??
    db   $45, $66                                      ;; 06:7383 ??
    db   $40, $67                                      ;; 06:7385 ??
    db   $11, $68                                      ;; 06:7387 ??
    db   $55, $76                                      ;; 06:7389 ??
    db   $50, $77                                      ;; 06:738b ??
    db   $ff, $ff                                      ;; 06:738d ??

map0a_room02_03_script:
    SCRIPT_IDX script_00bb                             ;; 06:738f $bb $00
    db   $ff                                           ;; 06:7391 $ff

map0a_room02_03_tiles:
    db   $02, $02, $00, $00                            ;; 06:7392 ????
    db   $08, $03                                      ;; 06:7396 ??
    db   $57, $04                                      ;; 06:7398 ??
    db   $56, $05                                      ;; 06:739a ??
    db   $0a, $06                                      ;; 06:739c ??
    db   $58, $14                                      ;; 06:739e ??
    db   $56, $15                                      ;; 06:73a0 ??
    db   $0b, $23                                      ;; 06:73a2 ??
    db   $0b, $24                                      ;; 06:73a4 ??
    db   $0b, $25                                      ;; 06:73a6 ??
    db   $0b, $26                                      ;; 06:73a8 ??
    db   $29, $33                                      ;; 06:73aa ??
    db   $0b, $36                                      ;; 06:73ac ??
    db   $0b, $43                                      ;; 06:73ae ??
    db   $29, $46                                      ;; 06:73b0 ??
    db   $0b, $53                                      ;; 06:73b2 ??
    db   $0b, $54                                      ;; 06:73b4 ??
    db   $0b, $55                                      ;; 06:73b6 ??
    db   $0b, $56                                      ;; 06:73b8 ??
    db   $0b, $63                                      ;; 06:73ba ??
    db   $59, $64                                      ;; 06:73bc ??
    db   $57, $65                                      ;; 06:73be ??
    db   $0b, $66                                      ;; 06:73c0 ??
    db   $48, $73                                      ;; 06:73c2 ??
    db   $56, $74                                      ;; 06:73c4 ??
    db   $57, $75                                      ;; 06:73c6 ??
    db   $4a, $76                                      ;; 06:73c8 ??
    db   $ff, $ff                                      ;; 06:73ca ??

map0a_room03_03_script:
    SCRIPT_IDX script_03e5                             ;; 06:73cc $e5 $03
    db   $ff                                           ;; 06:73ce $ff

map0a_room03_03_tiles:
    db   $02, $02, $02, $01                            ;; 06:73cf ????
    db   $44, $33                                      ;; 06:73d3 ??
    db   $44, $34                                      ;; 06:73d5 ??
    db   $44, $35                                      ;; 06:73d7 ??
    db   $44, $36                                      ;; 06:73d9 ??
    db   $44, $43                                      ;; 06:73db ??
    db   $09, $44                                      ;; 06:73dd ??
    db   $09, $45                                      ;; 06:73df ??
    db   $44, $46                                      ;; 06:73e1 ??
    db   $44, $53                                      ;; 06:73e3 ??
    db   $09, $54                                      ;; 06:73e5 ??
    db   $09, $55                                      ;; 06:73e7 ??
    db   $44, $56                                      ;; 06:73e9 ??
    db   $ff, $ff                                      ;; 06:73eb ??

map0a_room04_03_script:
    SCRIPT_IDX script_00bb                             ;; 06:73ed $bb $00
    db   $ff                                           ;; 06:73ef $ff

map0a_room04_03_tiles:
    db   $02, $02, $00, $00                            ;; 06:73f0 ????
    db   $08, $03                                      ;; 06:73f4 ??
    db   $56, $04                                      ;; 06:73f6 ??
    db   $57, $05                                      ;; 06:73f8 ??
    db   $0a, $06                                      ;; 06:73fa ??
    db   $56, $14                                      ;; 06:73fc ??
    db   $59, $15                                      ;; 06:73fe ??
    db   $09, $24                                      ;; 06:7400 ??
    db   $09, $25                                      ;; 06:7402 ??
    db   $09, $33                                      ;; 06:7404 ??
    db   $09, $34                                      ;; 06:7406 ??
    db   $09, $35                                      ;; 06:7408 ??
    db   $09, $36                                      ;; 06:740a ??
    db   $09, $43                                      ;; 06:740c ??
    db   $09, $44                                      ;; 06:740e ??
    db   $09, $45                                      ;; 06:7410 ??
    db   $09, $46                                      ;; 06:7412 ??
    db   $09, $54                                      ;; 06:7414 ??
    db   $09, $55                                      ;; 06:7416 ??
    db   $58, $64                                      ;; 06:7418 ??
    db   $57, $65                                      ;; 06:741a ??
    db   $48, $73                                      ;; 06:741c ??
    db   $56, $74                                      ;; 06:741e ??
    db   $57, $75                                      ;; 06:7420 ??
    db   $4a, $76                                      ;; 06:7422 ??
    db   $ff, $ff                                      ;; 06:7424 ??

map0a_room05_03_script:
    SCRIPT_IDX script_00b5                             ;; 06:7426 $b5 $00
    SCRIPT_AT_POS 1, 8, script_0358                    ;; 06:7428 $18 $58 $03
    db   $ff                                           ;; 06:742b $ff

map0a_room05_03_tiles:
    db   $00, $02, $02, $02                            ;; 06:742c ????
    db   $5e, $11                                      ;; 06:7430 ??
    db   $11, $18                                      ;; 06:7432 ??
    db   $09, $23                                      ;; 06:7434 ??
    db   $09, $24                                      ;; 06:7436 ??
    db   $09, $25                                      ;; 06:7438 ??
    db   $09, $26                                      ;; 06:743a ??
    db   $09, $27                                      ;; 06:743c ??
    db   $09, $28                                      ;; 06:743e ??
    db   $09, $33                                      ;; 06:7440 ??
    db   $5e, $35                                      ;; 06:7442 ??
    db   $09, $36                                      ;; 06:7444 ??
    db   $09, $41                                      ;; 06:7446 ??
    db   $09, $42                                      ;; 06:7448 ??
    db   $09, $43                                      ;; 06:744a ??
    db   $09, $46                                      ;; 06:744c ??
    db   $09, $56                                      ;; 06:744e ??
    db   $09, $66                                      ;; 06:7450 ??
    db   $5e, $68                                      ;; 06:7452 ??
    db   $ff, $ff                                      ;; 06:7454 ??

map0a_room06_03_script:
    SCRIPT_IDX script_00b2                             ;; 06:7456 $b2 $00
    db   $ff                                           ;; 06:7458 $ff

map0a_room06_03_tiles:
    db   $02, $00, $01, $01                            ;; 06:7459 ????
    db   $4a, $34                                      ;; 06:745d ??
    db   $54, $35                                      ;; 06:745f ??
    db   $54, $36                                      ;; 06:7461 ??
    db   $54, $37                                      ;; 06:7463 ??
    db   $54, $38                                      ;; 06:7465 ??
    db   $55, $39                                      ;; 06:7467 ??
    db   $0a, $44                                      ;; 06:7469 ??
    db   $04, $45                                      ;; 06:746b ??
    db   $04, $46                                      ;; 06:746d ??
    db   $04, $47                                      ;; 06:746f ??
    db   $04, $48                                      ;; 06:7471 ??
    db   $05, $49                                      ;; 06:7473 ??
    db   $ff, $ff                                      ;; 06:7475 ??

map0a_room00_04_script:
    SCRIPT_IDX script_008e                             ;; 06:7477 $8e $00
    SCRIPT_AT_POS 4, 7, script_050c                    ;; 06:7479 $47 $0c $05
    SCRIPT_AT_POS 4, 2, script_050c                    ;; 06:747c $42 $0c $05
    db   $ff                                           ;; 06:747f $ff

map0a_room00_04_tiles:
    db   $02, $02, $00, $89                            ;; 06:7480 ????
    db   $0c, $31                                      ;; 06:7484 ??
    db   $0c, $33                                      ;; 06:7486 ??
    db   $09, $34                                      ;; 06:7488 ??
    db   $09, $35                                      ;; 06:748a ??
    db   $0c, $36                                      ;; 06:748c ??
    db   $0c, $38                                      ;; 06:748e ??
    db   $1c, $41                                      ;; 06:7490 ??
    db   $3f, $42                                      ;; 06:7492 ??
    db   $1c, $43                                      ;; 06:7494 ??
    db   $09, $44                                      ;; 06:7496 ??
    db   $09, $45                                      ;; 06:7498 ??
    db   $1c, $46                                      ;; 06:749a ??
    db   $3f, $47                                      ;; 06:749c ??
    db   $1c, $48                                      ;; 06:749e ??
    db   $ff, $ff                                      ;; 06:74a0 ??

map0a_room01_04_script:
    SCRIPT_IDX script_00b2                             ;; 06:74a2 $b2 $00
    SCRIPT_AT_POS 1, 8, script_037c                    ;; 06:74a4 $18 $7c $03
    db   $ff                                           ;; 06:74a7 $ff

map0a_room01_04_tiles:
    db   $00, $02, $02, $02                            ;; 06:74a8 ????
    db   $0b, $13                                      ;; 06:74ac ??
    db   $5e, $14                                      ;; 06:74ae ??
    db   $11, $18                                      ;; 06:74b0 ??
    db   $0b, $23                                      ;; 06:74b2 ??
    db   $0b, $26                                      ;; 06:74b4 ??
    db   $0b, $27                                      ;; 06:74b6 ??
    db   $0b, $28                                      ;; 06:74b8 ??
    db   $0b, $33                                      ;; 06:74ba ??
    db   $0b, $34                                      ;; 06:74bc ??
    db   $0b, $35                                      ;; 06:74be ??
    db   $0b, $36                                      ;; 06:74c0 ??
    db   $5e, $42                                      ;; 06:74c2 ??
    db   $0b, $45                                      ;; 06:74c4 ??
    db   $0b, $55                                      ;; 06:74c6 ??
    db   $0b, $56                                      ;; 06:74c8 ??
    db   $5e, $57                                      ;; 06:74ca ??
    db   $0b, $66                                      ;; 06:74cc ??
    db   $0b, $67                                      ;; 06:74ce ??
    db   $0b, $68                                      ;; 06:74d0 ??
    db   $ff, $ff                                      ;; 06:74d2 ??

map0a_room02_04_script:
    SCRIPT_IDX script_03dc                             ;; 06:74d4 $dc $03
    db   $ff                                           ;; 06:74d6 $ff

map0a_room02_04_tiles:
    db   $00, $02, $00, $02                            ;; 06:74d7 ????
    db   $08, $03                                      ;; 06:74db ??
    db   $56, $04                                      ;; 06:74dd ??
    db   $57, $05                                      ;; 06:74df ??
    db   $0a, $06                                      ;; 06:74e1 ??
    db   $56, $14                                      ;; 06:74e3 ??
    db   $57, $15                                      ;; 06:74e5 ??
    db   $5e, $21                                      ;; 06:74e7 ??
    db   $59, $23                                      ;; 06:74e9 ??
    db   $56, $24                                      ;; 06:74eb ??
    db   $59, $25                                      ;; 06:74ed ??
    db   $57, $26                                      ;; 06:74ef ??
    db   $1b, $29                                      ;; 06:74f1 ??
    db   $56, $33                                      ;; 06:74f3 ??
    db   $0c, $34                                      ;; 06:74f5 ??
    db   $0c, $35                                      ;; 06:74f7 ??
    db   $59, $36                                      ;; 06:74f9 ??
    db   $59, $37                                      ;; 06:74fb ??
    db   $59, $38                                      ;; 06:74fd ??
    db   $59, $39                                      ;; 06:74ff ??
    db   $56, $43                                      ;; 06:7501 ??
    db   $1c, $44                                      ;; 06:7503 ??
    db   $1c, $45                                      ;; 06:7505 ??
    db   $57, $46                                      ;; 06:7507 ??
    db   $58, $47                                      ;; 06:7509 ??
    db   $58, $48                                      ;; 06:750b ??
    db   $58, $49                                      ;; 06:750d ??
    db   $5e, $51                                      ;; 06:750f ??
    db   $56, $53                                      ;; 06:7511 ??
    db   $58, $54                                      ;; 06:7513 ??
    db   $58, $55                                      ;; 06:7515 ??
    db   $58, $56                                      ;; 06:7517 ??
    db   $3b, $59                                      ;; 06:7519 ??
    db   $ff, $ff                                      ;; 06:751b ??

map0a_room03_04_script:
    SCRIPT_IDX script_0070                             ;; 06:751d $70 $00
    db   $ff                                           ;; 06:751f $ff

map0a_room03_04_tiles:
    db   $00, $00, $05, $02                            ;; 06:7520 ????
    db   $17, $20                                      ;; 06:7524 ??
    db   $16, $22                                      ;; 06:7526 ??
    db   $01, $23                                      ;; 06:7528 ??
    db   $2b, $24                                      ;; 06:752a ??
    db   $04, $25                                      ;; 06:752c ??
    db   $04, $26                                      ;; 06:752e ??
    db   $05, $27                                      ;; 06:7530 ??
    db   $1b, $29                                      ;; 06:7532 ??
    db   $59, $30                                      ;; 06:7534 ??
    db   $56, $31                                      ;; 06:7536 ??
    db   $10, $32                                      ;; 06:7538 ??
    db   $07, $33                                      ;; 06:753a ??
    db   $2b, $34                                      ;; 06:753c ??
    db   $07, $35                                      ;; 06:753e ??
    db   $07, $36                                      ;; 06:7540 ??
    db   $15, $37                                      ;; 06:7542 ??
    db   $59, $38                                      ;; 06:7544 ??
    db   $59, $39                                      ;; 06:7546 ??
    db   $58, $40                                      ;; 06:7548 ??
    db   $58, $41                                      ;; 06:754a ??
    db   $40, $42                                      ;; 06:754c ??
    db   $07, $43                                      ;; 06:754e ??
    db   $2b, $44                                      ;; 06:7550 ??
    db   $07, $45                                      ;; 06:7552 ??
    db   $07, $46                                      ;; 06:7554 ??
    db   $45, $47                                      ;; 06:7556 ??
    db   $57, $48                                      ;; 06:7558 ??
    db   $58, $49                                      ;; 06:755a ??
    db   $37, $50                                      ;; 06:755c ??
    db   $50, $52                                      ;; 06:755e ??
    db   $51, $53                                      ;; 06:7560 ??
    db   $2b, $54                                      ;; 06:7562 ??
    db   $54, $55                                      ;; 06:7564 ??
    db   $54, $56                                      ;; 06:7566 ??
    db   $55, $57                                      ;; 06:7568 ??
    db   $3b, $59                                      ;; 06:756a ??
    db   $ff, $ff                                      ;; 06:756c ??

map0a_room04_04_script:
    SCRIPT_IDX script_00b5                             ;; 06:756e $b5 $00
    db   $ff                                           ;; 06:7570 $ff

map0a_room04_04_tiles:
    db   $02, $00, $00, $02                            ;; 06:7571 ????
    db   $08, $03                                      ;; 06:7575 ??
    db   $56, $04                                      ;; 06:7577 ??
    db   $57, $05                                      ;; 06:7579 ??
    db   $0a, $06                                      ;; 06:757b ??
    db   $5e, $13                                      ;; 06:757d ??
    db   $56, $14                                      ;; 06:757f ??
    db   $57, $15                                      ;; 06:7581 ??
    db   $17, $20                                      ;; 06:7583 ??
    db   $56, $24                                      ;; 06:7585 ??
    db   $57, $25                                      ;; 06:7587 ??
    db   $59, $30                                      ;; 06:7589 ??
    db   $56, $31                                      ;; 06:758b ??
    db   $4f, $32                                      ;; 06:758d ??
    db   $56, $34                                      ;; 06:758f ??
    db   $57, $35                                      ;; 06:7591 ??
    db   $58, $40                                      ;; 06:7593 ??
    db   $58, $41                                      ;; 06:7595 ??
    db   $4f, $42                                      ;; 06:7597 ??
    db   $56, $44                                      ;; 06:7599 ??
    db   $57, $45                                      ;; 06:759b ??
    db   $37, $50                                      ;; 06:759d ??
    db   $56, $54                                      ;; 06:759f ??
    db   $57, $55                                      ;; 06:75a1 ??
    db   $56, $64                                      ;; 06:75a3 ??
    db   $59, $65                                      ;; 06:75a5 ??
    db   $ff, $ff                                      ;; 06:75a7 ??

map0a_room05_04_script:
    dw   $ffff                                         ;; 06:75a9 $ff $ff
    db   $ff                                           ;; 06:75ab $ff

map0a_room05_04_tiles:
    db   $00, $00, $00, $00                            ;; 06:75ac ????
    db   $ff, $ff                                      ;; 06:75b0 ??

map0a_room06_04_script:
    SCRIPT_IDX script_00bb                             ;; 06:75b2 $bb $00
    db   $ff                                           ;; 06:75b4 $ff

map0a_room06_04_tiles:
    db   $02, $02, $01, $02                            ;; 06:75b5 ????
    db   $41, $14                                      ;; 06:75b9 ??
    db   $41, $15                                      ;; 06:75bb ??
    db   $ff, $ff                                      ;; 06:75bd ??

map0a_room00_05_script:
    SCRIPT_IDX script_008b                             ;; 06:75bf $8b $00
    SCRIPT_AT_POS 6, 8, script_029a                    ;; 06:75c1 $68 $9a $02
    db   $ff                                           ;; 06:75c4 $ff

map0a_room00_05_tiles:
    db   $02, $02, $01, $02                            ;; 06:75c5 ????
    db   $4a, $43                                      ;; 06:75c9 ??
    db   $54, $44                                      ;; 06:75cb ??
    db   $54, $45                                      ;; 06:75cd ??
    db   $54, $46                                      ;; 06:75cf ??
    db   $54, $47                                      ;; 06:75d1 ??
    db   $54, $48                                      ;; 06:75d3 ??
    db   $55, $49                                      ;; 06:75d5 ??
    db   $0a, $53                                      ;; 06:75d7 ??
    db   $04, $54                                      ;; 06:75d9 ??
    db   $04, $55                                      ;; 06:75db ??
    db   $04, $56                                      ;; 06:75dd ??
    db   $04, $57                                      ;; 06:75df ??
    db   $04, $58                                      ;; 06:75e1 ??
    db   $05, $59                                      ;; 06:75e3 ??
    db   $11, $68                                      ;; 06:75e5 ??
    db   $ff, $ff                                      ;; 06:75e7 ??

map0a_room01_05_script:
    SCRIPT_IDX script_003d                             ;; 06:75e9 $3d $00
    db   $ff                                           ;; 06:75eb $ff

map0a_room01_05_tiles:
    db   $00, $02, $02, $00                            ;; 06:75ec ????
    db   $2c, $25                                      ;; 06:75f0 ??
    db   $1b, $29                                      ;; 06:75f2 ??
    db   $2c, $34                                      ;; 06:75f4 ??
    db   $65, $35                                      ;; 06:75f6 ??
    db   $60, $36                                      ;; 06:75f8 ??
    db   $60, $37                                      ;; 06:75fa ??
    db   $60, $38                                      ;; 06:75fc ??
    db   $60, $39                                      ;; 06:75fe ??
    db   $2c, $44                                      ;; 06:7600 ??
    db   $63, $45                                      ;; 06:7602 ??
    db   $2c, $46                                      ;; 06:7604 ??
    db   $3b, $49                                      ;; 06:7606 ??
    db   $63, $55                                      ;; 06:7608 ??
    db   $63, $65                                      ;; 06:760a ??
    db   $48, $74                                      ;; 06:760c ??
    db   $63, $75                                      ;; 06:760e ??
    db   $4a, $76                                      ;; 06:7610 ??
    db   $ff, $ff                                      ;; 06:7612 ??

map0a_room02_05_script:
    SCRIPT_IDX script_008b                             ;; 06:7614 $8b $00
    db   $ff                                           ;; 06:7616 $ff

map0a_room02_05_tiles:
    db   $00, $00, $02, $02                            ;; 06:7617 ????
    db   $19, $11                                      ;; 06:761b ??
    db   $19, $12                                      ;; 06:761d ??
    db   $17, $20                                      ;; 06:761f ??
    db   $19, $21                                      ;; 06:7621 ??
    db   $1b, $29                                      ;; 06:7623 ??
    db   $60, $30                                      ;; 06:7625 ??
    db   $60, $31                                      ;; 06:7627 ??
    db   $60, $32                                      ;; 06:7629 ??
    db   $60, $33                                      ;; 06:762b ??
    db   $60, $34                                      ;; 06:762d ??
    db   $60, $35                                      ;; 06:762f ??
    db   $60, $36                                      ;; 06:7631 ??
    db   $60, $37                                      ;; 06:7633 ??
    db   $60, $38                                      ;; 06:7635 ??
    db   $60, $39                                      ;; 06:7637 ??
    db   $37, $40                                      ;; 06:7639 ??
    db   $3b, $49                                      ;; 06:763b ??
    db   $ff, $ff                                      ;; 06:763d ??

map0a_room03_05_script:
    SCRIPT_IDX script_03f1                             ;; 06:763f $f1 $03
    db   $ff                                           ;; 06:7641 $ff

map0a_room03_05_tiles:
    db   $00, $00, $02, $00                            ;; 06:7642 ????
    db   $17, $20                                      ;; 06:7646 ??
    db   $1b, $29                                      ;; 06:7648 ??
    db   $60, $30                                      ;; 06:764a ??
    db   $60, $31                                      ;; 06:764c ??
    db   $60, $32                                      ;; 06:764e ??
    db   $60, $33                                      ;; 06:7650 ??
    db   $60, $34                                      ;; 06:7652 ??
    db   $60, $35                                      ;; 06:7654 ??
    db   $60, $36                                      ;; 06:7656 ??
    db   $60, $37                                      ;; 06:7658 ??
    db   $60, $38                                      ;; 06:765a ??
    db   $60, $39                                      ;; 06:765c ??
    db   $37, $40                                      ;; 06:765e ??
    db   $16, $41                                      ;; 06:7660 ??
    db   $01, $42                                      ;; 06:7662 ??
    db   $01, $43                                      ;; 06:7664 ??
    db   $05, $44                                      ;; 06:7666 ??
    db   $63, $45                                      ;; 06:7668 ??
    db   $1a, $47                                      ;; 06:766a ??
    db   $3b, $49                                      ;; 06:766c ??
    db   $10, $51                                      ;; 06:766e ??
    db   $07, $52                                      ;; 06:7670 ??
    db   $07, $53                                      ;; 06:7672 ??
    db   $15, $54                                      ;; 06:7674 ??
    db   $63, $55                                      ;; 06:7676 ??
    db   $50, $61                                      ;; 06:7678 ??
    db   $51, $62                                      ;; 06:767a ??
    db   $54, $63                                      ;; 06:767c ??
    db   $55, $64                                      ;; 06:767e ??
    db   $63, $65                                      ;; 06:7680 ??
    db   $48, $74                                      ;; 06:7682 ??
    db   $63, $75                                      ;; 06:7684 ??
    db   $ff, $ff                                      ;; 06:7686 ??

map0a_room04_05_script:
    SCRIPT_IDX script_008b                             ;; 06:7688 $8b $00
    db   $ff                                           ;; 06:768a $ff

map0a_room04_05_tiles:
    db   $02, $00, $02, $00                            ;; 06:768b ????
    db   $17, $20                                      ;; 06:768f ??
    db   $4f, $24                                      ;; 06:7691 ??
    db   $4f, $25                                      ;; 06:7693 ??
    db   $4f, $26                                      ;; 06:7695 ??
    db   $1b, $29                                      ;; 06:7697 ??
    db   $60, $30                                      ;; 06:7699 ??
    db   $60, $31                                      ;; 06:769b ??
    db   $60, $32                                      ;; 06:769d ??
    db   $60, $33                                      ;; 06:769f ??
    db   $60, $34                                      ;; 06:76a1 ??
    db   $60, $35                                      ;; 06:76a3 ??
    db   $60, $36                                      ;; 06:76a5 ??
    db   $60, $37                                      ;; 06:76a7 ??
    db   $60, $38                                      ;; 06:76a9 ??
    db   $60, $39                                      ;; 06:76ab ??
    db   $37, $40                                      ;; 06:76ad ??
    db   $62, $45                                      ;; 06:76af ??
    db   $3b, $49                                      ;; 06:76b1 ??
    db   $62, $55                                      ;; 06:76b3 ??
    db   $62, $65                                      ;; 06:76b5 ??
    db   $48, $74                                      ;; 06:76b7 ??
    db   $62, $75                                      ;; 06:76b9 ??
    db   $4a, $76                                      ;; 06:76bb ??
    db   $ff, $ff                                      ;; 06:76bd ??

map0a_room05_05_script:
    SCRIPT_IDX script_0151                             ;; 06:76bf $51 $01
    SCRIPT_AT_POS 1, 8, script_0298                    ;; 06:76c1 $18 $98 $02
    db   $ff                                           ;; 06:76c4 $ff

map0a_room05_05_tiles:
    db   $02, $00, $02, $02                            ;; 06:76c5 ????
    db   $11, $18                                      ;; 06:76c9 ??
    db   $17, $20                                      ;; 06:76cb ??
    db   $5f, $21                                      ;; 06:76cd ??
    db   $60, $30                                      ;; 06:76cf ??
    db   $37, $40                                      ;; 06:76d1 ??
    db   $5f, $41                                      ;; 06:76d3 ??
    db   $ff, $ff                                      ;; 06:76d5 ??

map0a_room06_05_script:
    dw   $ffff                                         ;; 06:76d7 $ff $ff
    db   $ff                                           ;; 06:76d9 $ff

map0a_room06_05_tiles:
    db   $00, $00, $00, $00                            ;; 06:76da ????
    db   $ff, $ff                                      ;; 06:76de ??

map0a_room00_06_script:
    dw   $ffff                                         ;; 06:76e0 $ff $ff
    db   $ff                                           ;; 06:76e2 $ff

map0a_room00_06_tiles:
    db   $00, $00, $00, $00                            ;; 06:76e3 ????
    db   $ff, $ff                                      ;; 06:76e7 ??

map0a_room01_06_script:
    SCRIPT_IDX script_008b                             ;; 06:76e9 $8b $00
    db   $ff                                           ;; 06:76eb $ff

map0a_room01_06_tiles:
    db   $00, $02, $00, $02                            ;; 06:76ec ????
    db   $08, $04                                      ;; 06:76f0 ??
    db   $63, $05                                      ;; 06:76f2 ??
    db   $0a, $06                                      ;; 06:76f4 ??
    db   $63, $15                                      ;; 06:76f6 ??
    db   $63, $25                                      ;; 06:76f8 ??
    db   $1b, $29                                      ;; 06:76fa ??
    db   $69, $35                                      ;; 06:76fc ??
    db   $61, $36                                      ;; 06:76fe ??
    db   $61, $37                                      ;; 06:7700 ??
    db   $61, $38                                      ;; 06:7702 ??
    db   $61, $39                                      ;; 06:7704 ??
    db   $3b, $49                                      ;; 06:7706 ??
    db   $ff, $ff                                      ;; 06:7708 ??

map0a_room02_06_script:
    SCRIPT_IDX script_03f4                             ;; 06:770a $f4 $03
    db   $ff                                           ;; 06:770c $ff

map0a_room02_06_tiles:
    db   $00, $00, $02, $00                            ;; 06:770d ????
    db   $17, $20                                      ;; 06:7711 ??
    db   $1a, $23                                      ;; 06:7713 ??
    db   $1b, $29                                      ;; 06:7715 ??
    db   $61, $30                                      ;; 06:7717 ??
    db   $61, $31                                      ;; 06:7719 ??
    db   $61, $32                                      ;; 06:771b ??
    db   $61, $33                                      ;; 06:771d ??
    db   $61, $34                                      ;; 06:771f ??
    db   $61, $35                                      ;; 06:7721 ??
    db   $61, $36                                      ;; 06:7723 ??
    db   $61, $37                                      ;; 06:7725 ??
    db   $61, $38                                      ;; 06:7727 ??
    db   $61, $39                                      ;; 06:7729 ??
    db   $37, $40                                      ;; 06:772b ??
    db   $16, $41                                      ;; 06:772d ??
    db   $04, $42                                      ;; 06:772f ??
    db   $04, $43                                      ;; 06:7731 ??
    db   $04, $44                                      ;; 06:7733 ??
    db   $05, $45                                      ;; 06:7735 ??
    db   $63, $46                                      ;; 06:7737 ??
    db   $3b, $49                                      ;; 06:7739 ??
    db   $10, $51                                      ;; 06:773b ??
    db   $07, $52                                      ;; 06:773d ??
    db   $07, $53                                      ;; 06:773f ??
    db   $07, $54                                      ;; 06:7741 ??
    db   $15, $55                                      ;; 06:7743 ??
    db   $63, $56                                      ;; 06:7745 ??
    db   $50, $61                                      ;; 06:7747 ??
    db   $51, $62                                      ;; 06:7749 ??
    db   $51, $63                                      ;; 06:774b ??
    db   $54, $64                                      ;; 06:774d ??
    db   $55, $65                                      ;; 06:774f ??
    db   $63, $66                                      ;; 06:7751 ??
    db   $51, $74                                      ;; 06:7753 ??
    db   $48, $75                                      ;; 06:7755 ??
    db   $63, $76                                      ;; 06:7757 ??
    db   $4a, $77                                      ;; 06:7759 ??
    db   $ff, $ff                                      ;; 06:775b ??

map0a_room03_06_script:
    SCRIPT_IDX script_008b                             ;; 06:775d $8b $00
    db   $ff                                           ;; 06:775f $ff

map0a_room03_06_tiles:
    db   $02, $00, $00, $00                            ;; 06:7760 ????
    db   $08, $04                                      ;; 06:7764 ??
    db   $63, $05                                      ;; 06:7766 ??
    db   $0a, $06                                      ;; 06:7768 ??
    db   $63, $15                                      ;; 06:776a ??
    db   $17, $20                                      ;; 06:776c ??
    db   $63, $25                                      ;; 06:776e ??
    db   $61, $30                                      ;; 06:7770 ??
    db   $61, $31                                      ;; 06:7772 ??
    db   $61, $32                                      ;; 06:7774 ??
    db   $61, $33                                      ;; 06:7776 ??
    db   $61, $34                                      ;; 06:7778 ??
    db   $63, $35                                      ;; 06:777a ??
    db   $2c, $36                                      ;; 06:777c ??
    db   $37, $40                                      ;; 06:777e ??
    db   $63, $45                                      ;; 06:7780 ??
    db   $63, $55                                      ;; 06:7782 ??
    db   $63, $65                                      ;; 06:7784 ??
    db   $48, $74                                      ;; 06:7786 ??
    db   $63, $75                                      ;; 06:7788 ??
    db   $4a, $76                                      ;; 06:778a ??
    db   $ff, $ff                                      ;; 06:778c ??

map0a_room04_06_script:
    SCRIPT_IDX script_003d                             ;; 06:778e $3d $00
    db   $ff                                           ;; 06:7790 $ff

map0a_room04_06_tiles:
    db   $02, $02, $00, $00                            ;; 06:7791 ????
    db   $08, $04                                      ;; 06:7795 ??
    db   $62, $05                                      ;; 06:7797 ??
    db   $0a, $06                                      ;; 06:7799 ??
    db   $62, $15                                      ;; 06:779b ??
    db   $41, $16                                      ;; 06:779d ??
    db   $41, $17                                      ;; 06:779f ??
    db   $62, $25                                      ;; 06:77a1 ??
    db   $41, $28                                      ;; 06:77a3 ??
    db   $62, $35                                      ;; 06:77a5 ??
    db   $62, $45                                      ;; 06:77a7 ??
    db   $62, $55                                      ;; 06:77a9 ??
    db   $62, $65                                      ;; 06:77ab ??
    db   $48, $74                                      ;; 06:77ad ??
    db   $62, $75                                      ;; 06:77af ??
    db   $4a, $76                                      ;; 06:77b1 ??
    db   $ff, $ff                                      ;; 06:77b3 ??

map0a_room05_06_script:
    SCRIPT_IDX script_0112                             ;; 06:77b5 $12 $01
    db   $ff                                           ;; 06:77b7 $ff

map0a_room05_06_tiles:
    db   $00, $02, $02, $02                            ;; 06:77b8 ????
    db   $0f, $11                                      ;; 06:77bc ??
    db   $0f, $13                                      ;; 06:77be ??
    db   $2a, $18                                      ;; 06:77c0 ??
    db   $1f, $21                                      ;; 06:77c2 ??
    db   $1f, $23                                      ;; 06:77c4 ??
    db   $0d, $36                                      ;; 06:77c6 ??
    db   $0d, $45                                      ;; 06:77c8 ??
    db   $1d, $46                                      ;; 06:77ca ??
    db   $0d, $47                                      ;; 06:77cc ??
    db   $0d, $56                                      ;; 06:77ce ??
    db   $ff, $ff                                      ;; 06:77d0 ??

map0a_room06_06_script:
    SCRIPT_IDX script_0115                             ;; 06:77d2 $15 $01
    SCRIPT_AT_POS 1, 8, script_0297                    ;; 06:77d4 $18 $97 $02
    db   $ff                                           ;; 06:77d7 $ff

map0a_room06_06_tiles:
    db   $02, $00, $02, $00                            ;; 06:77d8 ????
    db   $11, $18                                      ;; 06:77dc ??
    db   $44, $33                                      ;; 06:77de ??
    db   $44, $34                                      ;; 06:77e0 ??
    db   $44, $35                                      ;; 06:77e2 ??
    db   $44, $36                                      ;; 06:77e4 ??
    db   $44, $43                                      ;; 06:77e6 ??
    db   $44, $44                                      ;; 06:77e8 ??
    db   $44, $45                                      ;; 06:77ea ??
    db   $44, $46                                      ;; 06:77ec ??
    db   $ff, $ff                                      ;; 06:77ee ??

map0a_room00_07_script:
    SCRIPT_IDX script_003d                             ;; 06:77f0 $3d $00
    SCRIPT_AT_POS 5, 7, script_0401                    ;; 06:77f2 $57 $01 $04
    db   $ff                                           ;; 06:77f5 $ff

map0a_room00_07_tiles:
    db   $00, $02, $02, $02                            ;; 06:77f6 ????
    db   $16, $11                                      ;; 06:77fa ??
    db   $01, $12                                      ;; 06:77fc ??
    db   $01, $13                                      ;; 06:77fe ??
    db   $04, $14                                      ;; 06:7800 ??
    db   $05, $15                                      ;; 06:7802 ??
    db   $10, $21                                      ;; 06:7804 ??
    db   $07, $22                                      ;; 06:7806 ??
    db   $07, $23                                      ;; 06:7808 ??
    db   $07, $24                                      ;; 06:780a ??
    db   $15, $25                                      ;; 06:780c ??
    db   $10, $31                                      ;; 06:780e ??
    db   $07, $32                                      ;; 06:7810 ??
    db   $07, $33                                      ;; 06:7812 ??
    db   $07, $34                                      ;; 06:7814 ??
    db   $15, $35                                      ;; 06:7816 ??
    db   $15, $39                                      ;; 06:7818 ??
    db   $40, $41                                      ;; 06:781a ??
    db   $07, $42                                      ;; 06:781c ??
    db   $07, $43                                      ;; 06:781e ??
    db   $07, $44                                      ;; 06:7820 ??
    db   $45, $45                                      ;; 06:7822 ??
    db   $1b, $49                                      ;; 06:7824 ??
    db   $40, $51                                      ;; 06:7826 ??
    db   $07, $52                                      ;; 06:7828 ??
    db   $07, $53                                      ;; 06:782a ??
    db   $07, $54                                      ;; 06:782c ??
    db   $45, $55                                      ;; 06:782e ??
    db   $4f, $56                                      ;; 06:7830 ??
    db   $46, $57                                      ;; 06:7832 ??
    db   $60, $58                                      ;; 06:7834 ??
    db   $60, $59                                      ;; 06:7836 ??
    db   $50, $61                                      ;; 06:7838 ??
    db   $51, $62                                      ;; 06:783a ??
    db   $51, $63                                      ;; 06:783c ??
    db   $54, $64                                      ;; 06:783e ??
    db   $55, $65                                      ;; 06:7840 ??
    db   $3b, $69                                      ;; 06:7842 ??
    db   $ff, $ff                                      ;; 06:7844 ??

map0a_room01_07_script:
    SCRIPT_IDX script_003d                             ;; 06:7846 $3d $00
    db   $ff                                           ;; 06:7848 $ff

map0a_room01_07_tiles:
    db   $00, $00, $02, $02                            ;; 06:7849 ????
    db   $44, $11                                      ;; 06:784d ??
    db   $44, $12                                      ;; 06:784f ??
    db   $44, $13                                      ;; 06:7851 ??
    db   $44, $21                                      ;; 06:7853 ??
    db   $10, $30                                      ;; 06:7855 ??
    db   $15, $39                                      ;; 06:7857 ??
    db   $17, $40                                      ;; 06:7859 ??
    db   $1b, $49                                      ;; 06:785b ??
    db   $60, $50                                      ;; 06:785d ??
    db   $60, $51                                      ;; 06:785f ??
    db   $60, $52                                      ;; 06:7861 ??
    db   $60, $53                                      ;; 06:7863 ??
    db   $60, $54                                      ;; 06:7865 ??
    db   $60, $55                                      ;; 06:7867 ??
    db   $60, $56                                      ;; 06:7869 ??
    db   $60, $57                                      ;; 06:786b ??
    db   $60, $58                                      ;; 06:786d ??
    db   $60, $59                                      ;; 06:786f ??
    db   $37, $60                                      ;; 06:7871 ??
    db   $44, $67                                      ;; 06:7873 ??
    db   $44, $68                                      ;; 06:7875 ??
    db   $3b, $69                                      ;; 06:7877 ??
    db   $ff, $ff                                      ;; 06:7879 ??

map0a_room02_07_script:
    SCRIPT_IDX script_03f7                             ;; 06:787b $f7 $03
    db   $ff                                           ;; 06:787d $ff

map0a_room02_07_tiles:
    db   $00, $00, $00, $02                            ;; 06:787e ????
    db   $01, $04                                      ;; 06:7882 ??
    db   $08, $05                                      ;; 06:7884 ??
    db   $63, $06                                      ;; 06:7886 ??
    db   $0a, $07                                      ;; 06:7888 ??
    db   $0b, $11                                      ;; 06:788a ??
    db   $0b, $12                                      ;; 06:788c ??
    db   $0b, $13                                      ;; 06:788e ??
    db   $19, $14                                      ;; 06:7890 ??
    db   $19, $15                                      ;; 06:7892 ??
    db   $63, $16                                      ;; 06:7894 ??
    db   $0b, $21                                      ;; 06:7896 ??
    db   $0b, $22                                      ;; 06:7898 ??
    db   $19, $23                                      ;; 06:789a ??
    db   $19, $24                                      ;; 06:789c ??
    db   $63, $26                                      ;; 06:789e ??
    db   $1a, $27                                      ;; 06:78a0 ??
    db   $10, $30                                      ;; 06:78a2 ??
    db   $19, $31                                      ;; 06:78a4 ??
    db   $19, $32                                      ;; 06:78a6 ??
    db   $19, $33                                      ;; 06:78a8 ??
    db   $63, $36                                      ;; 06:78aa ??
    db   $15, $39                                      ;; 06:78ac ??
    db   $17, $40                                      ;; 06:78ae ??
    db   $63, $46                                      ;; 06:78b0 ??
    db   $1b, $49                                      ;; 06:78b2 ??
    db   $60, $50                                      ;; 06:78b4 ??
    db   $60, $51                                      ;; 06:78b6 ??
    db   $60, $52                                      ;; 06:78b8 ??
    db   $60, $53                                      ;; 06:78ba ??
    db   $60, $54                                      ;; 06:78bc ??
    db   $60, $55                                      ;; 06:78be ??
    db   $61, $56                                      ;; 06:78c0 ??
    db   $61, $57                                      ;; 06:78c2 ??
    db   $61, $58                                      ;; 06:78c4 ??
    db   $61, $59                                      ;; 06:78c6 ??
    db   $37, $60                                      ;; 06:78c8 ??
    db   $19, $67                                      ;; 06:78ca ??
    db   $19, $68                                      ;; 06:78cc ??
    db   $3b, $69                                      ;; 06:78ce ??
    db   $ff, $ff                                      ;; 06:78d0 ??

map0a_room03_07_script:
    SCRIPT_IDX script_003d                             ;; 06:78d2 $3d $00
    db   $ff                                           ;; 06:78d4 $ff

map0a_room03_07_tiles:
    db   $00, $00, $00, $02                            ;; 06:78d5 ????
    db   $08, $04                                      ;; 06:78d9 ??
    db   $63, $05                                      ;; 06:78db ??
    db   $0a, $06                                      ;; 06:78dd ??
    db   $63, $15                                      ;; 06:78df ??
    db   $63, $25                                      ;; 06:78e1 ??
    db   $10, $30                                      ;; 06:78e3 ??
    db   $63, $35                                      ;; 06:78e5 ??
    db   $15, $39                                      ;; 06:78e7 ??
    db   $17, $40                                      ;; 06:78e9 ??
    db   $63, $45                                      ;; 06:78eb ??
    db   $1b, $49                                      ;; 06:78ed ??
    db   $61, $50                                      ;; 06:78ef ??
    db   $61, $51                                      ;; 06:78f1 ??
    db   $61, $52                                      ;; 06:78f3 ??
    db   $61, $53                                      ;; 06:78f5 ??
    db   $61, $54                                      ;; 06:78f7 ??
    db   $61, $55                                      ;; 06:78f9 ??
    db   $61, $56                                      ;; 06:78fb ??
    db   $61, $57                                      ;; 06:78fd ??
    db   $61, $58                                      ;; 06:78ff ??
    db   $61, $59                                      ;; 06:7901 ??
    db   $37, $60                                      ;; 06:7903 ??
    db   $2c, $64                                      ;; 06:7905 ??
    db   $2c, $65                                      ;; 06:7907 ??
    db   $2c, $66                                      ;; 06:7909 ??
    db   $3b, $69                                      ;; 06:790b ??
    db   $ff, $ff                                      ;; 06:790d ??

map0a_room04_07_script:
    SCRIPT_IDX script_008b                             ;; 06:790f $8b $00
    db   $ff                                           ;; 06:7911 $ff

map0a_room04_07_tiles:
    db   $02, $00, $00, $02                            ;; 06:7912 ????
    db   $08, $04                                      ;; 06:7916 ??
    db   $62, $05                                      ;; 06:7918 ??
    db   $0a, $06                                      ;; 06:791a ??
    db   $16, $11                                      ;; 06:791c ??
    db   $01, $12                                      ;; 06:791e ??
    db   $01, $13                                      ;; 06:7920 ??
    db   $05, $14                                      ;; 06:7922 ??
    db   $62, $15                                      ;; 06:7924 ??
    db   $10, $21                                      ;; 06:7926 ??
    db   $07, $22                                      ;; 06:7928 ??
    db   $07, $23                                      ;; 06:792a ??
    db   $45, $24                                      ;; 06:792c ??
    db   $62, $25                                      ;; 06:792e ??
    db   $10, $30                                      ;; 06:7930 ??
    db   $40, $31                                      ;; 06:7932 ??
    db   $07, $32                                      ;; 06:7934 ??
    db   $07, $33                                      ;; 06:7936 ??
    db   $45, $34                                      ;; 06:7938 ??
    db   $62, $35                                      ;; 06:793a ??
    db   $17, $40                                      ;; 06:793c ??
    db   $50, $41                                      ;; 06:793e ??
    db   $51, $42                                      ;; 06:7940 ??
    db   $54, $43                                      ;; 06:7942 ??
    db   $55, $44                                      ;; 06:7944 ??
    db   $62, $45                                      ;; 06:7946 ??
    db   $61, $50                                      ;; 06:7948 ??
    db   $61, $51                                      ;; 06:794a ??
    db   $61, $52                                      ;; 06:794c ??
    db   $61, $53                                      ;; 06:794e ??
    db   $61, $54                                      ;; 06:7950 ??
    db   $68, $55                                      ;; 06:7952 ??
    db   $37, $60                                      ;; 06:7954 ??
    db   $ff, $ff                                      ;; 06:7956 ??

map0a_room05_07_script:
    SCRIPT_IDX script_0118                             ;; 06:7958 $18 $01
    db   $ff                                           ;; 06:795a $ff

map0a_room05_07_tiles:
    db   $00, $02, $02, $02                            ;; 06:795b ????
    db   $2a, $11                                      ;; 06:795f ??
    db   $0d, $26                                      ;; 06:7961 ??
    db   $0d, $33                                      ;; 06:7963 ??
    db   $0d, $35                                      ;; 06:7965 ??
    db   $1d, $36                                      ;; 06:7967 ??
    db   $0d, $37                                      ;; 06:7969 ??
    db   $0d, $42                                      ;; 06:796b ??
    db   $1d, $43                                      ;; 06:796d ??
    db   $0d, $44                                      ;; 06:796f ??
    db   $0d, $46                                      ;; 06:7971 ??
    db   $0d, $53                                      ;; 06:7973 ??
    db   $ff, $ff                                      ;; 06:7975 ??

map0a_room06_07_script:
    SCRIPT_IDX script_011b                             ;; 06:7977 $1b $01
    db   $ff                                           ;; 06:7979 $ff

map0a_room06_07_tiles:
    db   $02, $00, $00, $02                            ;; 06:797a ????
    db   $2a, $11                                      ;; 06:797e ??
    db   $2a, $12                                      ;; 06:7980 ??
    db   $0d, $25                                      ;; 06:7982 ??
    db   $0d, $26                                      ;; 06:7984 ??
    db   $0d, $27                                      ;; 06:7986 ??
    db   $0d, $28                                      ;; 06:7988 ??
    db   $2d, $35                                      ;; 06:798a ??
    db   $2e, $36                                      ;; 06:798c ??
    db   $2e, $37                                      ;; 06:798e ??
    db   $2f, $38                                      ;; 06:7990 ??
    db   $0d, $45                                      ;; 06:7992 ??
    db   $0d, $46                                      ;; 06:7994 ??
    db   $0d, $47                                      ;; 06:7996 ??
    db   $0d, $48                                      ;; 06:7998 ??
    db   $ff, $ff                                      ;; 06:799a ??
