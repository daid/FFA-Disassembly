;; Disassembled with BadBoy Disassembler: https://github.com/daid/BadBoy



mapRoomPointers_08:
    db   $01, $04, $08, $07                            ;; 06:799c ????
    dw   map08_room_tile_template                      ;; 06:79a0 $9a $7a
    ;;Door tile info
    db   $25, $35, $20, $30, $14, $03, $52, $53        ;; 06:79a2 ????????
    db   $24, $34, $21, $31, $12, $13, $42, $43        ;; 06:79aa ????????
    db   $15, $45, $10, $40, $01, $04, $51, $54        ;; 06:79b2 ????????
    ;;Room data pointers
    dw   map08_room00_00_script, map08_room00_00_tiles ;; 06:79ba $c6 $7a $cc $7a
    dw   map08_room01_00_script, map08_room01_00_tiles ;; 06:79be $de $7a $e1 $7a
    dw   map08_room02_00_script, map08_room02_00_tiles ;; 06:79c2 $ef $7a $f2 $7a
    dw   map08_room03_00_script, map08_room03_00_tiles ;; 06:79c6 $04 $7b $07 $7b
    dw   map08_room04_00_script, map08_room04_00_tiles ;; 06:79ca $19 $7b $1c $7b
    dw   map08_room05_00_script, map08_room05_00_tiles ;; 06:79ce $2a $7b $2d $7b
    dw   map08_room06_00_script, map08_room06_00_tiles ;; 06:79d2 $33 $7b $36 $7b
    dw   map08_room00_01_script, map08_room00_01_tiles ;; 06:79d6 $3c $7b $3f $7b
    dw   map08_room01_01_script, map08_room01_01_tiles ;; 06:79da $65 $7b $74 $7b
    dw   map08_room02_01_script, map08_room02_01_tiles ;; 06:79de $82 $7b $85 $7b
    dw   map08_room03_01_script, map08_room03_01_tiles ;; 06:79e2 $9f $7b $a2 $7b
    dw   map08_room04_01_script, map08_room04_01_tiles ;; 06:79e6 $a8 $7b $ab $7b
    dw   map08_room05_01_script, map08_room05_01_tiles ;; 06:79ea $b9 $7b $bf $7b
    dw   map08_room06_01_script, map08_room06_01_tiles ;; 06:79ee $d7 $7b $da $7b
    dw   map08_room00_02_script, map08_room00_02_tiles ;; 06:79f2 $e0 $7b $e3 $7b
    dw   map08_room01_02_script, map08_room01_02_tiles ;; 06:79f6 $f1 $7b $f4 $7b
    dw   map08_room02_02_script, map08_room02_02_tiles ;; 06:79fa $02 $7c $05 $7c
    dw   map08_room03_02_script, map08_room03_02_tiles ;; 06:79fe $17 $7c $1a $7c
    dw   map08_room04_02_script, map08_room04_02_tiles ;; 06:7a02 $20 $7c $23 $7c
    dw   map08_room05_02_script, map08_room05_02_tiles ;; 06:7a06 $39 $7c $3c $7c
    dw   map08_room06_02_script, map08_room06_02_tiles ;; 06:7a0a $4c $7c $52 $7c
    dw   map08_room00_03_script, map08_room00_03_tiles ;; 06:7a0e $6a $7c $70 $7c
    dw   map08_room01_03_script, map08_room01_03_tiles ;; 06:7a12 $84 $7c $8d $7c
    dw   map08_room02_03_script, map08_room02_03_tiles ;; 06:7a16 $a9 $7c $ac $7c
    dw   map08_room03_03_script, map08_room03_03_tiles ;; 06:7a1a $be $7c $c1 $7c
    dw   map08_room04_03_script, map08_room04_03_tiles ;; 06:7a1e $cd $7c $d0 $7c
    dw   map08_room05_03_script, map08_room05_03_tiles ;; 06:7a22 $de $7c $e1 $7c
    dw   map08_room06_03_script, map08_room06_03_tiles ;; 06:7a26 $17 $7d $1d $7d
    dw   map08_room00_04_script, map08_room00_04_tiles ;; 06:7a2a $31 $7d $34 $7d
    dw   map08_room01_04_script, map08_room01_04_tiles ;; 06:7a2e $42 $7d $45 $7d
    dw   map08_room02_04_script, map08_room02_04_tiles ;; 06:7a32 $4b $7d $51 $7d
    dw   map08_room03_04_script, map08_room03_04_tiles ;; 06:7a36 $67 $7d $6a $7d
    dw   map08_room04_04_script, map08_room04_04_tiles ;; 06:7a3a $80 $7d $83 $7d
    dw   map08_room05_04_script, map08_room05_04_tiles ;; 06:7a3e $99 $7d $9f $7d
    dw   map08_room06_04_script, map08_room06_04_tiles ;; 06:7a42 $b1 $7d $b4 $7d
    dw   map08_room00_05_script, map08_room00_05_tiles ;; 06:7a46 $c0 $7d $c3 $7d
    dw   map08_room01_05_script, map08_room01_05_tiles ;; 06:7a4a $cf $7d $d2 $7d
    dw   map08_room02_05_script, map08_room02_05_tiles ;; 06:7a4e $f4 $7d $fa $7d
    dw   map08_room03_05_script, map08_room03_05_tiles ;; 06:7a52 $3c $7e $3f $7e
    dw   map08_room04_05_script, map08_room04_05_tiles ;; 06:7a56 $51 $7e $54 $7e
    dw   map08_room05_05_script, map08_room05_05_tiles ;; 06:7a5a $6a $7e $6d $7e
    dw   map08_room06_05_script, map08_room06_05_tiles ;; 06:7a5e $87 $7e $8a $7e
    dw   map08_room00_06_script, map08_room00_06_tiles ;; 06:7a62 $90 $7e $93 $7e
    dw   map08_room01_06_script, map08_room01_06_tiles ;; 06:7a66 $a9 $7e $ac $7e
    dw   map08_room02_06_script, map08_room02_06_tiles ;; 06:7a6a $ba $7e $c0 $7e
    dw   map08_room03_06_script, map08_room03_06_tiles ;; 06:7a6e $02 $7f $05 $7f
    dw   map08_room04_06_script, map08_room04_06_tiles ;; 06:7a72 $1b $7f $1e $7f
    dw   map08_room05_06_script, map08_room05_06_tiles ;; 06:7a76 $2c $7f $2f $7f
    dw   map08_room06_06_script, map08_room06_06_tiles ;; 06:7a7a $3d $7f $40 $7f
    dw   map08_room00_07_script, map08_room00_07_tiles ;; 06:7a7e $5e $7f $61 $7f
    dw   map08_room01_07_script, map08_room01_07_tiles ;; 06:7a82 $67 $7f $6a $7f
    dw   map08_room02_07_script, map08_room02_07_tiles ;; 06:7a86 $7a $7f $7d $7f
    dw   map08_room03_07_script, map08_room03_07_tiles ;; 06:7a8a $8b $7f $8e $7f
    dw   map08_room04_07_script, map08_room04_07_tiles ;; 06:7a8e $b4 $7f $ba $7f
    dw   map08_room05_07_script, map08_room05_07_tiles ;; 06:7a92 $ce $7f $d4 $7f
    dw   map08_room06_07_script, map08_room06_07_tiles ;; 06:7a96 $ec $7f $ef $7f

map08_room_tile_template:
    db   $16, $01, $01, $01, $14, $03, $04, $04, $04, $05 ;; 06:7a9a ??????????
    db   $10,                $80,                $80, $15 ;; 06:7aa4 ????
    db   $10,                $80,                $80, $15 ;; 06:7aa8 ????
    db   $20,                $80,                $80, $25 ;; 06:7aac ????
    db   $30,                $80,                $80, $35 ;; 06:7ab0 ????
    db   $40,                $80,                $80, $45 ;; 06:7ab4 ????
    db   $40,                $80,                $80, $45 ;; 06:7ab8 ????
    db   $50, $51, $51, $51, $52, $53, $54, $54, $54, $55 ;; 06:7abc ??????????

map08_room00_00_script:
    SCRIPT_IDX script_00a0                             ;; 06:7ac6 $a0 $00
    SCRIPT_AT_POS 1, 1, script_02a0                    ;; 06:7ac8 $11 $a0 $02
    db   $ff                                           ;; 06:7acb $ff

map08_room00_00_tiles:
    db   $02, $02, $02, $01                            ;; 06:7acc ????
    db   $11, $11                                      ;; 06:7ad0 ??
    db   $2c, $14                                      ;; 06:7ad2 ??
    db   $2c, $15                                      ;; 06:7ad4 ??
    db   $2c, $23                                      ;; 06:7ad6 ??
    db   $2c, $31                                      ;; 06:7ad8 ??
    db   $2c, $32                                      ;; 06:7ada ??
    db   $ff, $ff                                      ;; 06:7adc ??

map08_room01_00_script:
    SCRIPT_IDX script_03d0                             ;; 06:7ade $d0 $03
    db   $ff                                           ;; 06:7ae0 $ff

map08_room01_00_tiles:
    db   $00, $00, $02, $01                            ;; 06:7ae1 ????
    db   $44, $34                                      ;; 06:7ae5 ??
    db   $44, $35                                      ;; 06:7ae7 ??
    db   $44, $44                                      ;; 06:7ae9 ??
    db   $44, $45                                      ;; 06:7aeb ??
    db   $ff, $ff                                      ;; 06:7aed ??

map08_room02_00_script:
    SCRIPT_IDX script_00a3                             ;; 06:7aef $a3 $00
    db   $ff                                           ;; 06:7af1 $ff

map08_room02_00_tiles:
    db   $05, $00, $02, $02                            ;; 06:7af2 ????
    db   $5c, $25                                      ;; 06:7af6 ??
    db   $5c, $26                                      ;; 06:7af8 ??
    db   $5c, $37                                      ;; 06:7afa ??
    db   $5c, $42                                      ;; 06:7afc ??
    db   $5c, $53                                      ;; 06:7afe ??
    db   $5c, $54                                      ;; 06:7b00 ??
    db   $ff, $ff                                      ;; 06:7b02 ??

map08_room03_00_script:
    SCRIPT_IDX script_00a0                             ;; 06:7b04 $a0 $00
    db   $ff                                           ;; 06:7b06 $ff

map08_room03_00_tiles:
    db   $00, $01, $02, $02                            ;; 06:7b07 ????
    db   $5c, $15                                      ;; 06:7b0b ??
    db   $5c, $25                                      ;; 06:7b0d ??
    db   $5c, $36                                      ;; 06:7b0f ??
    db   $5c, $46                                      ;; 06:7b11 ??
    db   $5c, $55                                      ;; 06:7b13 ??
    db   $5c, $65                                      ;; 06:7b15 ??
    db   $ff, $ff                                      ;; 06:7b17 ??

map08_room04_00_script:
    SCRIPT_IDX script_00a6                             ;; 06:7b19 $a6 $00
    db   $ff                                           ;; 06:7b1b $ff

map08_room04_00_tiles:
    db   $02, $00, $02, $00                            ;; 06:7b1c ????
    db   $2c, $33                                      ;; 06:7b20 ??
    db   $2c, $36                                      ;; 06:7b22 ??
    db   $2c, $43                                      ;; 06:7b24 ??
    db   $2c, $46                                      ;; 06:7b26 ??
    db   $ff, $ff                                      ;; 06:7b28 ??

map08_room05_00_script:
    dw   $ffff                                         ;; 06:7b2a $ff $ff
    db   $ff                                           ;; 06:7b2c $ff

map08_room05_00_tiles:
    db   $00, $00, $00, $00                            ;; 06:7b2d ????
    db   $ff, $ff                                      ;; 06:7b31 ??

map08_room06_00_script:
    dw   $ffff                                         ;; 06:7b33 $ff $ff
    db   $ff                                           ;; 06:7b35 $ff

map08_room06_00_tiles:
    db   $00, $00, $00, $00                            ;; 06:7b36 ????
    db   $ff, $ff                                      ;; 06:7b3a ??

map08_room00_01_script:
    SCRIPT_IDX script_01b8                             ;; 06:7b3c $b8 $01
    db   $ff                                           ;; 06:7b3e $ff

map08_room00_01_tiles:
    db   $02, $02, $09, $01                            ;; 06:7b3f ????
    db   $28, $11                                      ;; 06:7b43 ??
    db   $28, $12                                      ;; 06:7b45 ??
    db   $28, $13                                      ;; 06:7b47 ??
    db   $28, $14                                      ;; 06:7b49 ??
    db   $28, $15                                      ;; 06:7b4b ??
    db   $28, $16                                      ;; 06:7b4d ??
    db   $28, $17                                      ;; 06:7b4f ??
    db   $28, $18                                      ;; 06:7b51 ??
    db   $28, $22                                      ;; 06:7b53 ??
    db   $28, $23                                      ;; 06:7b55 ??
    db   $28, $24                                      ;; 06:7b57 ??
    db   $28, $25                                      ;; 06:7b59 ??
    db   $28, $26                                      ;; 06:7b5b ??
    db   $28, $27                                      ;; 06:7b5d ??
    db   $28, $34                                      ;; 06:7b5f ??
    db   $28, $35                                      ;; 06:7b61 ??
    db   $ff, $ff                                      ;; 06:7b63 ??

map08_room01_01_script:
    SCRIPT_IDX script_04ed                             ;; 06:7b65 $ed $04
    SCRIPT_AT_POS 5, 2, script_0503                    ;; 06:7b67 $52 $03 $05
    SCRIPT_AT_POS 5, 7, script_0503                    ;; 06:7b6a $57 $03 $05
    SCRIPT_AT_POS 2, 7, script_0503                    ;; 06:7b6d $27 $03 $05
    SCRIPT_AT_POS 2, 2, script_0503                    ;; 06:7b70 $22 $03 $05
    db   $ff                                           ;; 06:7b73 $ff

map08_room01_01_tiles:
    db   $00, $02, $09, $02                            ;; 06:7b74 ????
    db   $4e, $22                                      ;; 06:7b78 ??
    db   $4e, $27                                      ;; 06:7b7a ??
    db   $4e, $52                                      ;; 06:7b7c ??
    db   $4e, $57                                      ;; 06:7b7e ??
    db   $ff, $ff                                      ;; 06:7b80 ??

map08_room02_01_script:
    SCRIPT_IDX script_00a3                             ;; 06:7b82 $a3 $00
    db   $ff                                           ;; 06:7b84 $ff

map08_room02_01_tiles:
    db   $02, $00, $02, $00                            ;; 06:7b85 ????
    db   $09, $42                                      ;; 06:7b89 ??
    db   $09, $43                                      ;; 06:7b8b ??
    db   $09, $44                                      ;; 06:7b8d ??
    db   $09, $51                                      ;; 06:7b8f ??
    db   $09, $52                                      ;; 06:7b91 ??
    db   $09, $53                                      ;; 06:7b93 ??
    db   $09, $54                                      ;; 06:7b95 ??
    db   $09, $61                                      ;; 06:7b97 ??
    db   $09, $62                                      ;; 06:7b99 ??
    db   $09, $63                                      ;; 06:7b9b ??
    db   $ff, $ff                                      ;; 06:7b9d ??

map08_room03_01_script:
    dw   $ffff                                         ;; 06:7b9f $ff $ff
    db   $ff                                           ;; 06:7ba1 $ff

map08_room03_01_tiles:
    db   $00, $00, $00, $00                            ;; 06:7ba2 ????
    db   $ff, $ff                                      ;; 06:7ba6 ??

map08_room04_01_script:
    SCRIPT_IDX script_00a3                             ;; 06:7ba8 $a3 $00
    db   $ff                                           ;; 06:7baa $ff

map08_room04_01_tiles:
    db   $02, $02, $00, $00                            ;; 06:7bab ????
    db   $5c, $23                                      ;; 06:7baf ??
    db   $5c, $26                                      ;; 06:7bb1 ??
    db   $5c, $34                                      ;; 06:7bb3 ??
    db   $5c, $35                                      ;; 06:7bb5 ??
    db   $ff, $ff                                      ;; 06:7bb7 ??

map08_room05_01_script:
    SCRIPT_IDX script_008b                             ;; 06:7bb9 $8b $00
    SCRIPT_AT_POS 1, 8, script_035e                    ;; 06:7bbb $18 $5e $03
    db   $ff                                           ;; 06:7bbe $ff

map08_room05_01_tiles:
    db   $02, $02, $02, $00                            ;; 06:7bbf ????
    db   $4f, $14                                      ;; 06:7bc3 ??
    db   $11, $18                                      ;; 06:7bc5 ??
    db   $4f, $25                                      ;; 06:7bc7 ??
    db   $4f, $26                                      ;; 06:7bc9 ??
    db   $4f, $37                                      ;; 06:7bcb ??
    db   $4f, $43                                      ;; 06:7bcd ??
    db   $4f, $54                                      ;; 06:7bcf ??
    db   $4f, $55                                      ;; 06:7bd1 ??
    db   $4f, $66                                      ;; 06:7bd3 ??
    db   $ff, $ff                                      ;; 06:7bd5 ??

map08_room06_01_script:
    dw   $ffff                                         ;; 06:7bd7 $ff $ff
    db   $ff                                           ;; 06:7bd9 $ff

map08_room06_01_tiles:
    db   $00, $00, $00, $00                            ;; 06:7bda ????
    db   $ff, $ff                                      ;; 06:7bde ??

map08_room00_02_script:
    SCRIPT_IDX script_03d0                             ;; 06:7be0 $d0 $03
    db   $ff                                           ;; 06:7be2 $ff

map08_room00_02_tiles:
    db   $00, $00, $05, $00                            ;; 06:7be3 ????
    db   $0c, $13                                      ;; 06:7be7 ??
    db   $0c, $16                                      ;; 06:7be9 ??
    db   $1c, $23                                      ;; 06:7beb ??
    db   $1c, $26                                      ;; 06:7bed ??
    db   $ff, $ff                                      ;; 06:7bef ??

map08_room01_02_script:
    SCRIPT_IDX script_00a3                             ;; 06:7bf1 $a3 $00
    db   $ff                                           ;; 06:7bf3 $ff

map08_room01_02_tiles:
    db   $00, $00, $02, $02                            ;; 06:7bf4 ????
    db   $4f, $32                                      ;; 06:7bf8 ??
    db   $4f, $37                                      ;; 06:7bfa ??
    db   $4f, $42                                      ;; 06:7bfc ??
    db   $4f, $47                                      ;; 06:7bfe ??
    db   $ff, $ff                                      ;; 06:7c00 ??

map08_room02_02_script:
    SCRIPT_IDX script_0199                             ;; 06:7c02 $99 $01
    db   $ff                                           ;; 06:7c04 $ff

map08_room02_02_tiles:
    db   $02, $00, $02, $02                            ;; 06:7c05 ????
    db   $5b, $11                                      ;; 06:7c09 ??
    db   $5b, $12                                      ;; 06:7c0b ??
    db   $5b, $17                                      ;; 06:7c0d ??
    db   $5b, $18                                      ;; 06:7c0f ??
    db   $5b, $21                                      ;; 06:7c11 ??
    db   $5b, $28                                      ;; 06:7c13 ??
    db   $ff, $ff                                      ;; 06:7c15 ??

map08_room03_02_script:
    dw   $ffff                                         ;; 06:7c17 $ff $ff
    db   $ff                                           ;; 06:7c19 $ff

map08_room03_02_tiles:
    db   $00, $00, $00, $00                            ;; 06:7c1a ????
    db   $ff, $ff                                      ;; 06:7c1e ??

map08_room04_02_script:
    SCRIPT_IDX script_0094                             ;; 06:7c20 $94 $00
    db   $ff                                           ;; 06:7c22 $ff

map08_room04_02_tiles:
    db   $02, $02, $00, $00                            ;; 06:7c23 ????
    db   $4a, $33                                      ;; 06:7c27 ??
    db   $51, $34                                      ;; 06:7c29 ??
    db   $54, $35                                      ;; 06:7c2b ??
    db   $48, $36                                      ;; 06:7c2d ??
    db   $0a, $43                                      ;; 06:7c2f ??
    db   $01, $44                                      ;; 06:7c31 ??
    db   $04, $45                                      ;; 06:7c33 ??
    db   $08, $46                                      ;; 06:7c35 ??
    db   $ff, $ff                                      ;; 06:7c37 ??

map08_room05_02_script:
    SCRIPT_IDX script_008b                             ;; 06:7c39 $8b $00
    db   $ff                                           ;; 06:7c3b $ff

map08_room05_02_tiles:
    db   $00, $02, $00, $02                            ;; 06:7c3c ????
    db   $4f, $27                                      ;; 06:7c40 ??
    db   $4f, $28                                      ;; 06:7c42 ??
    db   $4f, $36                                      ;; 06:7c44 ??
    db   $4f, $46                                      ;; 06:7c46 ??
    db   $4f, $55                                      ;; 06:7c48 ??
    db   $ff, $ff                                      ;; 06:7c4a ??

map08_room06_02_script:
    SCRIPT_IDX script_008b                             ;; 06:7c4c $8b $00
    SCRIPT_AT_POS 1, 8, script_02fe                    ;; 06:7c4e $18 $fe $02
    db   $ff                                           ;; 06:7c51 $ff

map08_room06_02_tiles:
    db   $02, $00, $02, $02                            ;; 06:7c52 ????
    db   $05, $06                                      ;; 06:7c56 ??
    db   $16, $07                                      ;; 06:7c58 ??
    db   $15, $16                                      ;; 06:7c5a ??
    db   $10, $17                                      ;; 06:7c5c ??
    db   $11, $18                                      ;; 06:7c5e ??
    db   $15, $26                                      ;; 06:7c60 ??
    db   $10, $27                                      ;; 06:7c62 ??
    db   $1b, $36                                      ;; 06:7c64 ??
    db   $17, $37                                      ;; 06:7c66 ??
    db   $ff, $ff                                      ;; 06:7c68 ??

map08_room00_03_script:
    SCRIPT_IDX script_03ee                             ;; 06:7c6a $ee $03
    SCRIPT_AT_POS 4, 4, script_0356                    ;; 06:7c6c $44 $56 $03
    db   $ff                                           ;; 06:7c6f $ff

map08_room00_03_tiles:
    db   $00, $00, $00, $02                            ;; 06:7c70 ????
    db   $41, $18                                      ;; 06:7c74 ??
    db   $41, $22                                      ;; 06:7c76 ??
    db   $2c, $34                                      ;; 06:7c78 ??
    db   $2c, $35                                      ;; 06:7c7a ??
    db   $02, $44                                      ;; 06:7c7c ??
    db   $2c, $45                                      ;; 06:7c7e ??
    db   $41, $57                                      ;; 06:7c80 ??
    db   $ff, $ff                                      ;; 06:7c82 ??

map08_room01_03_script:
    SCRIPT_IDX script_007f                             ;; 06:7c84 $7f $00
    SCRIPT_AT_POS 2, 1, script_0502                    ;; 06:7c86 $21 $02 $05
    SCRIPT_AT_POS 5, 1, script_0501                    ;; 06:7c89 $51 $01 $05
    db   $ff                                           ;; 06:7c8c $ff

map08_room01_03_tiles:
    db   $09, $02, $02, $00                            ;; 06:7c8d ????
    db   $59, $11                                      ;; 06:7c91 ??
    db   $4e, $21                                      ;; 06:7c93 ??
    db   $5a, $22                                      ;; 06:7c95 ??
    db   $5a, $27                                      ;; 06:7c97 ??
    db   $56, $31                                      ;; 06:7c99 ??
    db   $56, $41                                      ;; 06:7c9b ??
    db   $4e, $51                                      ;; 06:7c9d ??
    db   $5a, $52                                      ;; 06:7c9f ??
    db   $5e, $54                                      ;; 06:7ca1 ??
    db   $5a, $57                                      ;; 06:7ca3 ??
    db   $56, $61                                      ;; 06:7ca5 ??
    db   $ff, $ff                                      ;; 06:7ca7 ??

map08_room02_03_script:
    SCRIPT_IDX script_0425                             ;; 06:7ca9 $25 $04
    db   $ff                                           ;; 06:7cab $ff

map08_room02_03_tiles:
    db   $02, $01, $02, $02                            ;; 06:7cac ????
    db   $28, $21                                      ;; 06:7cb0 ??
    db   $28, $31                                      ;; 06:7cb2 ??
    db   $28, $32                                      ;; 06:7cb4 ??
    db   $28, $41                                      ;; 06:7cb6 ??
    db   $28, $42                                      ;; 06:7cb8 ??
    db   $28, $51                                      ;; 06:7cba ??
    db   $ff, $ff                                      ;; 06:7cbc ??

map08_room03_03_script:
    SCRIPT_IDX script_009a                             ;; 06:7cbe $9a $00
    db   $ff                                           ;; 06:7cc0 $ff

map08_room03_03_tiles:
    db   $02, $02, $02, $01                            ;; 06:7cc1 ????
    db   $41, $22                                      ;; 06:7cc5 ??
    db   $41, $34                                      ;; 06:7cc7 ??
    db   $41, $67                                      ;; 06:7cc9 ??
    db   $ff, $ff                                      ;; 06:7ccb ??

map08_room04_03_script:
    SCRIPT_IDX script_03d0                             ;; 06:7ccd $d0 $03
    db   $ff                                           ;; 06:7ccf $ff

map08_room04_03_tiles:
    db   $00, $00, $00, $02                            ;; 06:7cd0 ????
    db   $44, $34                                      ;; 06:7cd4 ??
    db   $44, $35                                      ;; 06:7cd6 ??
    db   $44, $44                                      ;; 06:7cd8 ??
    db   $44, $45                                      ;; 06:7cda ??
    db   $ff, $ff                                      ;; 06:7cdc ??

map08_room05_03_script:
    SCRIPT_IDX script_00a3                             ;; 06:7cde $a3 $00
    db   $ff                                           ;; 06:7ce0 $ff

map08_room05_03_tiles:
    db   $00, $00, $02, $02                            ;; 06:7ce1 ????
    db   $16, $13                                      ;; 06:7ce5 ??
    db   $01, $14                                      ;; 06:7ce7 ??
    db   $04, $15                                      ;; 06:7ce9 ??
    db   $05, $16                                      ;; 06:7ceb ??
    db   $10, $23                                      ;; 06:7ced ??
    db   $0b, $24                                      ;; 06:7cef ??
    db   $0b, $25                                      ;; 06:7cf1 ??
    db   $15, $26                                      ;; 06:7cf3 ??
    db   $29, $33                                      ;; 06:7cf5 ??
    db   $29, $34                                      ;; 06:7cf7 ??
    db   $29, $35                                      ;; 06:7cf9 ??
    db   $29, $36                                      ;; 06:7cfb ??
    db   $40, $43                                      ;; 06:7cfd ??
    db   $0b, $44                                      ;; 06:7cff ??
    db   $0b, $45                                      ;; 06:7d01 ??
    db   $45, $46                                      ;; 06:7d03 ??
    db   $40, $53                                      ;; 06:7d05 ??
    db   $0b, $54                                      ;; 06:7d07 ??
    db   $0b, $55                                      ;; 06:7d09 ??
    db   $45, $56                                      ;; 06:7d0b ??
    db   $50, $63                                      ;; 06:7d0d ??
    db   $51, $64                                      ;; 06:7d0f ??
    db   $54, $65                                      ;; 06:7d11 ??
    db   $55, $66                                      ;; 06:7d13 ??
    db   $ff, $ff                                      ;; 06:7d15 ??

map08_room06_03_script:
    SCRIPT_IDX script_00a3                             ;; 06:7d17 $a3 $00
    SCRIPT_AT_POS 3, 5, script_0357                    ;; 06:7d19 $35 $57 $03
    db   $ff                                           ;; 06:7d1c $ff

map08_room06_03_tiles:
    db   $02, $00, $02, $02                            ;; 06:7d1d ????
    db   $5a, $24                                      ;; 06:7d21 ??
    db   $5a, $25                                      ;; 06:7d23 ??
    db   $5a, $33                                      ;; 06:7d25 ??
    db   $11, $35                                      ;; 06:7d27 ??
    db   $5a, $43                                      ;; 06:7d29 ??
    db   $5a, $54                                      ;; 06:7d2b ??
    db   $5a, $55                                      ;; 06:7d2d ??
    db   $ff, $ff                                      ;; 06:7d2f ??

map08_room00_04_script:
    SCRIPT_IDX script_0097                             ;; 06:7d31 $97 $00
    db   $ff                                           ;; 06:7d33 $ff

map08_room00_04_tiles:
    db   $00, $02, $02, $05                            ;; 06:7d34 ????
    db   $4f, $43                                      ;; 06:7d38 ??
    db   $4f, $44                                      ;; 06:7d3a ??
    db   $4f, $55                                      ;; 06:7d3c ??
    db   $4f, $66                                      ;; 06:7d3e ??
    db   $ff, $ff                                      ;; 06:7d40 ??

map08_room01_04_script:
    SCRIPT_IDX script_0097                             ;; 06:7d42 $97 $00
    db   $ff                                           ;; 06:7d44 $ff

map08_room01_04_tiles:
    db   $02, $00, $05, $00                            ;; 06:7d45 ????
    db   $ff, $ff                                      ;; 06:7d49 ??

map08_room02_04_script:
    SCRIPT_IDX script_0085                             ;; 06:7d4b $85 $00
    SCRIPT_AT_POS 1, 8, script_0359                    ;; 06:7d4d $18 $59 $03
    db   $ff                                           ;; 06:7d50 $ff

map08_room02_04_tiles:
    db   $02, $02, $02, $00                            ;; 06:7d51 ????
    db   $0d, $12                                      ;; 06:7d55 ??
    db   $02, $18                                      ;; 06:7d57 ??
    db   $0d, $21                                      ;; 06:7d59 ??
    db   $1d, $22                                      ;; 06:7d5b ??
    db   $0d, $23                                      ;; 06:7d5d ??
    db   $0d, $32                                      ;; 06:7d5f ??
    db   $41, $35                                      ;; 06:7d61 ??
    db   $41, $44                                      ;; 06:7d63 ??
    db   $ff, $ff                                      ;; 06:7d65 ??

map08_room03_04_script:
    SCRIPT_IDX script_0097                             ;; 06:7d67 $97 $00
    db   $ff                                           ;; 06:7d69 $ff

map08_room03_04_tiles:
    db   $01, $02, $01, $01                            ;; 06:7d6a ????
    db   $28, $16                                      ;; 06:7d6e ??
    db   $28, $17                                      ;; 06:7d70 ??
    db   $28, $18                                      ;; 06:7d72 ??
    db   $28, $26                                      ;; 06:7d74 ??
    db   $28, $56                                      ;; 06:7d76 ??
    db   $28, $66                                      ;; 06:7d78 ??
    db   $28, $67                                      ;; 06:7d7a ??
    db   $28, $68                                      ;; 06:7d7c ??
    db   $ff, $ff                                      ;; 06:7d7e ??

map08_room04_04_script:
    SCRIPT_IDX script_009a                             ;; 06:7d80 $9a $00
    db   $ff                                           ;; 06:7d82 $ff

map08_room04_04_tiles:
    db   $00, $01, $02, $01                            ;; 06:7d83 ????
    db   $3b, $26                                      ;; 06:7d87 ??
    db   $37, $27                                      ;; 06:7d89 ??
    db   $15, $36                                      ;; 06:7d8b ??
    db   $10, $37                                      ;; 06:7d8d ??
    db   $15, $46                                      ;; 06:7d8f ??
    db   $40, $47                                      ;; 06:7d91 ??
    db   $1b, $56                                      ;; 06:7d93 ??
    db   $17, $57                                      ;; 06:7d95 ??
    db   $ff, $ff                                      ;; 06:7d97 ??

map08_room05_04_script:
    SCRIPT_IDX script_0097                             ;; 06:7d99 $97 $00
    SCRIPT_AT_POS 1, 8, script_029f                    ;; 06:7d9b $18 $9f $02
    db   $ff                                           ;; 06:7d9e $ff

map08_room05_04_tiles:
    db   $00, $00, $02, $01                            ;; 06:7d9f ????
    db   $28, $15                                      ;; 06:7da3 ??
    db   $28, $16                                      ;; 06:7da5 ??
    db   $28, $17                                      ;; 06:7da7 ??
    db   $11, $18                                      ;; 06:7da9 ??
    db   $28, $27                                      ;; 06:7dab ??
    db   $28, $28                                      ;; 06:7dad ??
    db   $ff, $ff                                      ;; 06:7daf ??

map08_room06_04_script:
    SCRIPT_IDX script_009a                             ;; 06:7db1 $9a $00
    db   $ff                                           ;; 06:7db3 $ff

map08_room06_04_tiles:
    db   $02, $00, $02, $01                            ;; 06:7db4 ????
    db   $41, $26                                      ;; 06:7db8 ??
    db   $41, $33                                      ;; 06:7dba ??
    db   $41, $51                                      ;; 06:7dbc ??
    db   $ff, $ff                                      ;; 06:7dbe ??

map08_room00_05_script:
    SCRIPT_IDX script_00d9                             ;; 06:7dc0 $d9 $00
    db   $ff                                           ;; 06:7dc2 $ff

map08_room00_05_tiles:
    db   $02, $02, $09, $02                            ;; 06:7dc3 ????
    db   $41, $23                                      ;; 06:7dc7 ??
    db   $41, $55                                      ;; 06:7dc9 ??
    db   $41, $67                                      ;; 06:7dcb ??
    db   $ff, $ff                                      ;; 06:7dcd ??

map08_room01_05_script:
    SCRIPT_IDX script_008e                             ;; 06:7dcf $8e $00
    db   $ff                                           ;; 06:7dd1 $ff

map08_room01_05_tiles:
    db   $02, $02, $00, $01                            ;; 06:7dd2 ????
    db   $50, $30                                      ;; 06:7dd6 ??
    db   $51, $31                                      ;; 06:7dd8 ??
    db   $51, $32                                      ;; 06:7dda ??
    db   $51, $33                                      ;; 06:7ddc ??
    db   $51, $34                                      ;; 06:7dde ??
    db   $51, $35                                      ;; 06:7de0 ??
    db   $48, $36                                      ;; 06:7de2 ??
    db   $16, $40                                      ;; 06:7de4 ??
    db   $01, $41                                      ;; 06:7de6 ??
    db   $01, $42                                      ;; 06:7de8 ??
    db   $01, $43                                      ;; 06:7dea ??
    db   $01, $44                                      ;; 06:7dec ??
    db   $01, $45                                      ;; 06:7dee ??
    db   $08, $46                                      ;; 06:7df0 ??
    db   $ff, $ff                                      ;; 06:7df2 ??

map08_room02_05_script:
    SCRIPT_IDX script_008b                             ;; 06:7df4 $8b $00
    SCRIPT_AT_POS 1, 1, script_0504                    ;; 06:7df6 $11 $04 $05
    db   $ff                                           ;; 06:7df9 $ff

map08_room02_05_tiles:
    db   $02, $02, $09, $00                            ;; 06:7dfa ????
    db   $4e, $11                                      ;; 06:7dfe ??
    db   $19, $12                                      ;; 06:7e00 ??
    db   $19, $13                                      ;; 06:7e02 ??
    db   $19, $14                                      ;; 06:7e04 ??
    db   $19, $15                                      ;; 06:7e06 ??
    db   $19, $16                                      ;; 06:7e08 ??
    db   $19, $17                                      ;; 06:7e0a ??
    db   $19, $18                                      ;; 06:7e0c ??
    db   $19, $21                                      ;; 06:7e0e ??
    db   $19, $28                                      ;; 06:7e10 ??
    db   $56, $31                                      ;; 06:7e12 ??
    db   $56, $32                                      ;; 06:7e14 ??
    db   $56, $33                                      ;; 06:7e16 ??
    db   $56, $34                                      ;; 06:7e18 ??
    db   $56, $35                                      ;; 06:7e1a ??
    db   $56, $36                                      ;; 06:7e1c ??
    db   $56, $37                                      ;; 06:7e1e ??
    db   $57, $38                                      ;; 06:7e20 ??
    db   $19, $41                                      ;; 06:7e22 ??
    db   $19, $48                                      ;; 06:7e24 ??
    db   $19, $51                                      ;; 06:7e26 ??
    db   $19, $58                                      ;; 06:7e28 ??
    db   $19, $61                                      ;; 06:7e2a ??
    db   $19, $62                                      ;; 06:7e2c ??
    db   $19, $63                                      ;; 06:7e2e ??
    db   $19, $64                                      ;; 06:7e30 ??
    db   $19, $65                                      ;; 06:7e32 ??
    db   $19, $66                                      ;; 06:7e34 ??
    db   $19, $67                                      ;; 06:7e36 ??
    db   $19, $68                                      ;; 06:7e38 ??
    db   $ff, $ff                                      ;; 06:7e3a ??

map08_room03_05_script:
    SCRIPT_IDX script_009a                             ;; 06:7e3c $9a $00
    db   $ff                                           ;; 06:7e3e $ff

map08_room03_05_tiles:
    db   $01, $02, $01, $02                            ;; 06:7e3f ????
    db   $2a, $11                                      ;; 06:7e43 ??
    db   $2a, $18                                      ;; 06:7e45 ??
    db   $2a, $21                                      ;; 06:7e47 ??
    db   $2a, $51                                      ;; 06:7e49 ??
    db   $2a, $61                                      ;; 06:7e4b ??
    db   $2a, $68                                      ;; 06:7e4d ??
    db   $ff, $ff                                      ;; 06:7e4f ??

map08_room04_05_script:
    SCRIPT_IDX script_008e                             ;; 06:7e51 $8e $00
    db   $ff                                           ;; 06:7e53 $ff

map08_room04_05_tiles:
    db   $00, $01, $01, $02                            ;; 06:7e54 ????
    db   $5a, $11                                      ;; 06:7e58 ??
    db   $5a, $18                                      ;; 06:7e5a ??
    db   $5a, $23                                      ;; 06:7e5c ??
    db   $5a, $26                                      ;; 06:7e5e ??
    db   $5a, $53                                      ;; 06:7e60 ??
    db   $5a, $56                                      ;; 06:7e62 ??
    db   $5a, $61                                      ;; 06:7e64 ??
    db   $5a, $68                                      ;; 06:7e66 ??
    db   $ff, $ff                                      ;; 06:7e68 ??

map08_room05_05_script:
    SCRIPT_IDX script_0139                             ;; 06:7e6a $39 $01
    db   $ff                                           ;; 06:7e6c $ff

map08_room05_05_tiles:
    db   $00, $00, $01, $02                            ;; 06:7e6d ????
    db   $4f, $32                                      ;; 06:7e71 ??
    db   $4f, $37                                      ;; 06:7e73 ??
    db   $4f, $42                                      ;; 06:7e75 ??
    db   $4f, $47                                      ;; 06:7e77 ??
    db   $19, $61                                      ;; 06:7e79 ??
    db   $19, $62                                      ;; 06:7e7b ??
    db   $19, $63                                      ;; 06:7e7d ??
    db   $19, $66                                      ;; 06:7e7f ??
    db   $19, $67                                      ;; 06:7e81 ??
    db   $19, $68                                      ;; 06:7e83 ??
    db   $ff, $ff                                      ;; 06:7e85 ??

map08_room06_05_script:
    SCRIPT_IDX script_0097                             ;; 06:7e87 $97 $00
    db   $ff                                           ;; 06:7e89 $ff

map08_room06_05_tiles:
    db   $02, $00, $01, $02                            ;; 06:7e8a ????
    db   $ff, $ff                                      ;; 06:7e8e ??

map08_room00_06_script:
    SCRIPT_IDX script_03e5                             ;; 06:7e90 $e5 $03
    db   $ff                                           ;; 06:7e92 $ff

map08_room00_06_tiles:
    db   $01, $02, $02, $02                            ;; 06:7e93 ????
    db   $09, $24                                      ;; 06:7e97 ??
    db   $09, $25                                      ;; 06:7e99 ??
    db   $09, $34                                      ;; 06:7e9b ??
    db   $09, $35                                      ;; 06:7e9d ??
    db   $09, $44                                      ;; 06:7e9f ??
    db   $09, $45                                      ;; 06:7ea1 ??
    db   $09, $54                                      ;; 06:7ea3 ??
    db   $09, $55                                      ;; 06:7ea5 ??
    db   $ff, $ff                                      ;; 06:7ea7 ??

map08_room01_06_script:
    SCRIPT_IDX script_009a                             ;; 06:7ea9 $9a $00
    db   $ff                                           ;; 06:7eab $ff

map08_room01_06_tiles:
    db   $02, $05, $01, $01                            ;; 06:7eac ????
    db   $4f, $25                                      ;; 06:7eb0 ??
    db   $4f, $33                                      ;; 06:7eb2 ??
    db   $4f, $46                                      ;; 06:7eb4 ??
    db   $4f, $54                                      ;; 06:7eb6 ??
    db   $ff, $ff                                      ;; 06:7eb8 ??

map08_room02_06_script:
    SCRIPT_IDX script_03fd                             ;; 06:7eba $fd $03
    SCRIPT_AT_POS 1, 1, script_0504                    ;; 06:7ebc $11 $04 $05
    db   $ff                                           ;; 06:7ebf $ff

map08_room02_06_tiles:
    db   $02, $02, $09, $00                            ;; 06:7ec0 ????
    db   $4e, $11                                      ;; 06:7ec4 ??
    db   $19, $12                                      ;; 06:7ec6 ??
    db   $19, $13                                      ;; 06:7ec8 ??
    db   $19, $14                                      ;; 06:7eca ??
    db   $19, $15                                      ;; 06:7ecc ??
    db   $19, $16                                      ;; 06:7ece ??
    db   $19, $17                                      ;; 06:7ed0 ??
    db   $19, $18                                      ;; 06:7ed2 ??
    db   $19, $21                                      ;; 06:7ed4 ??
    db   $19, $28                                      ;; 06:7ed6 ??
    db   $56, $31                                      ;; 06:7ed8 ??
    db   $56, $32                                      ;; 06:7eda ??
    db   $56, $33                                      ;; 06:7edc ??
    db   $56, $34                                      ;; 06:7ede ??
    db   $56, $35                                      ;; 06:7ee0 ??
    db   $56, $36                                      ;; 06:7ee2 ??
    db   $56, $37                                      ;; 06:7ee4 ??
    db   $57, $38                                      ;; 06:7ee6 ??
    db   $19, $41                                      ;; 06:7ee8 ??
    db   $19, $48                                      ;; 06:7eea ??
    db   $19, $51                                      ;; 06:7eec ??
    db   $19, $58                                      ;; 06:7eee ??
    db   $19, $61                                      ;; 06:7ef0 ??
    db   $19, $62                                      ;; 06:7ef2 ??
    db   $19, $63                                      ;; 06:7ef4 ??
    db   $19, $64                                      ;; 06:7ef6 ??
    db   $19, $65                                      ;; 06:7ef8 ??
    db   $19, $66                                      ;; 06:7efa ??
    db   $19, $67                                      ;; 06:7efc ??
    db   $19, $68                                      ;; 06:7efe ??
    db   $ff, $ff                                      ;; 06:7f00 ??

map08_room03_06_script:
    SCRIPT_IDX script_0097                             ;; 06:7f02 $97 $00
    db   $ff                                           ;; 06:7f04 $ff

map08_room03_06_tiles:
    db   $01, $02, $02, $01                            ;; 06:7f05 ????
    db   $5a, $33                                      ;; 06:7f09 ??
    db   $5a, $36                                      ;; 06:7f0b ??
    db   $5a, $43                                      ;; 06:7f0d ??
    db   $5a, $46                                      ;; 06:7f0f ??
    db   $5a, $53                                      ;; 06:7f11 ??
    db   $5a, $56                                      ;; 06:7f13 ??
    db   $5a, $63                                      ;; 06:7f15 ??
    db   $5a, $66                                      ;; 06:7f17 ??
    db   $ff, $ff                                      ;; 06:7f19 ??

map08_room04_06_script:
    SCRIPT_IDX script_009a                             ;; 06:7f1b $9a $00
    db   $ff                                           ;; 06:7f1d $ff

map08_room04_06_tiles:
    db   $00, $01, $02, $02                            ;; 06:7f1e ????
    db   $0c, $33                                      ;; 06:7f22 ??
    db   $0c, $36                                      ;; 06:7f24 ??
    db   $1c, $43                                      ;; 06:7f26 ??
    db   $1c, $46                                      ;; 06:7f28 ??
    db   $ff, $ff                                      ;; 06:7f2a ??

map08_room05_06_script:
    SCRIPT_IDX script_0097                             ;; 06:7f2c $97 $00
    db   $ff                                           ;; 06:7f2e $ff

map08_room05_06_tiles:
    db   $01, $00, $00, $02                            ;; 06:7f2f ????
    db   $5a, $22                                      ;; 06:7f33 ??
    db   $5a, $27                                      ;; 06:7f35 ??
    db   $5a, $52                                      ;; 06:7f37 ??
    db   $5a, $57                                      ;; 06:7f39 ??
    db   $ff, $ff                                      ;; 06:7f3b ??

map08_room06_06_script:
    SCRIPT_IDX script_007f                             ;; 06:7f3d $7f $00
    db   $ff                                           ;; 06:7f3f $ff

map08_room06_06_tiles:
    db   $02, $01, $02, $02                            ;; 06:7f40 ????
    db   $5c, $24                                      ;; 06:7f44 ??
    db   $5c, $25                                      ;; 06:7f46 ??
    db   $5c, $32                                      ;; 06:7f48 ??
    db   $5c, $33                                      ;; 06:7f4a ??
    db   $5c, $36                                      ;; 06:7f4c ??
    db   $5c, $37                                      ;; 06:7f4e ??
    db   $5c, $42                                      ;; 06:7f50 ??
    db   $5c, $43                                      ;; 06:7f52 ??
    db   $5c, $46                                      ;; 06:7f54 ??
    db   $5c, $47                                      ;; 06:7f56 ??
    db   $5c, $54                                      ;; 06:7f58 ??
    db   $5c, $55                                      ;; 06:7f5a ??
    db   $ff, $ff                                      ;; 06:7f5c ??

map08_room00_07_script:
    dw   $ffff                                         ;; 06:7f5e $ff $ff
    db   $ff                                           ;; 06:7f60 $ff

map08_room00_07_tiles:
    db   $00, $00, $00, $00                            ;; 06:7f61 ????
    db   $ff, $ff                                      ;; 06:7f65 ??

map08_room01_07_script:
    SCRIPT_IDX script_0097                             ;; 06:7f67 $97 $00
    db   $ff                                           ;; 06:7f69 $ff

map08_room01_07_tiles:
    db   $00, $02, $01, $02                            ;; 06:7f6a ????
    db   $2c, $27                                      ;; 06:7f6e ??
    db   $2c, $28                                      ;; 06:7f70 ??
    db   $2c, $36                                      ;; 06:7f72 ??
    db   $2c, $44                                      ;; 06:7f74 ??
    db   $2c, $45                                      ;; 06:7f76 ??
    db   $ff, $ff                                      ;; 06:7f78 ??

map08_room02_07_script:
    SCRIPT_IDX script_0199                             ;; 06:7f7a $99 $01
    db   $ff                                           ;; 06:7f7c $ff

map08_room02_07_tiles:
    db   $00, $00, $02, $02                            ;; 06:7f7d ????
    db   $0c, $13                                      ;; 06:7f81 ??
    db   $0c, $16                                      ;; 06:7f83 ??
    db   $1c, $23                                      ;; 06:7f85 ??
    db   $1c, $26                                      ;; 06:7f87 ??
    db   $ff, $ff                                      ;; 06:7f89 ??

map08_room03_07_script:
    SCRIPT_IDX script_009a                             ;; 06:7f8b $9a $00
    db   $ff                                           ;; 06:7f8d $ff

map08_room03_07_tiles:
    db   $02, $00, $01, $02                            ;; 06:7f8e ????
    db   $28, $11                                      ;; 06:7f92 ??
    db   $28, $12                                      ;; 06:7f94 ??
    db   $28, $13                                      ;; 06:7f96 ??
    db   $28, $16                                      ;; 06:7f98 ??
    db   $28, $17                                      ;; 06:7f9a ??
    db   $28, $18                                      ;; 06:7f9c ??
    db   $28, $21                                      ;; 06:7f9e ??
    db   $28, $28                                      ;; 06:7fa0 ??
    db   $28, $51                                      ;; 06:7fa2 ??
    db   $28, $58                                      ;; 06:7fa4 ??
    db   $28, $61                                      ;; 06:7fa6 ??
    db   $28, $62                                      ;; 06:7fa8 ??
    db   $28, $63                                      ;; 06:7faa ??
    db   $28, $66                                      ;; 06:7fac ??
    db   $28, $67                                      ;; 06:7fae ??
    db   $28, $68                                      ;; 06:7fb0 ??
    db   $ff, $ff                                      ;; 06:7fb2 ??

map08_room04_07_script:
    SCRIPT_IDX script_008b                             ;; 06:7fb4 $8b $00
    SCRIPT_AT_POS 1, 8, script_034a                    ;; 06:7fb6 $18 $4a $03
    db   $ff                                           ;; 06:7fb9 $ff

map08_room04_07_tiles:
    db   $01, $02, $02, $02                            ;; 06:7fba ????
    db   $02, $18                                      ;; 06:7fbe ??
    db   $4f, $27                                      ;; 06:7fc0 ??
    db   $4f, $28                                      ;; 06:7fc2 ??
    db   $4f, $35                                      ;; 06:7fc4 ??
    db   $4f, $36                                      ;; 06:7fc6 ??
    db   $4f, $43                                      ;; 06:7fc8 ??
    db   $4f, $44                                      ;; 06:7fca ??
    db   $ff, $ff                                      ;; 06:7fcc ??

map08_room05_07_script:
    SCRIPT_IDX script_008e                             ;; 06:7fce $8e $00
    SCRIPT_AT_POS 1, 8, script_035d                    ;; 06:7fd0 $18 $5d $03
    db   $ff                                           ;; 06:7fd3 $ff

map08_room05_07_tiles:
    db   $02, $01, $02, $02                            ;; 06:7fd4 ????
    db   $05, $06                                      ;; 06:7fd8 ??
    db   $16, $07                                      ;; 06:7fda ??
    db   $15, $16                                      ;; 06:7fdc ??
    db   $10, $17                                      ;; 06:7fde ??
    db   $02, $18                                      ;; 06:7fe0 ??
    db   $15, $26                                      ;; 06:7fe2 ??
    db   $10, $27                                      ;; 06:7fe4 ??
    db   $1b, $36                                      ;; 06:7fe6 ??
    db   $17, $37                                      ;; 06:7fe8 ??
    db   $ff, $ff                                      ;; 06:7fea ??

map08_room06_07_script:
    dw   $ffff                                         ;; 06:7fec $ff $ff
    db   $ff                                           ;; 06:7fee $ff

map08_room06_07_tiles:
    db   $00, $00, $00, $00                            ;; 06:7fef ????
    db   $ff, $ff                                      ;; 06:7ff3 ??
    db   $1e, $de, $21, $bf, $40, $7f, $80, $7f        ;; 06:7ff5 ????????
    db   $80, $ff, $00                                 ;; 06:7ffd ???
