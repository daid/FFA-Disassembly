;; Disassembled with BadBoy Disassembler: https://github.com/daid/BadBoy



mapRoomPointers_0b:
    db   $01, $04, $08, $08                            ;; 07:68df ????
    dw   map0b_room_tile_template                      ;; 07:68e3 $fd $69
    ;;Door tile info
    db   $25, $35, $20, $30, $14, $03, $52, $53        ;; 07:68e5 ????????
    db   $24, $34, $21, $31, $12, $13, $42, $43        ;; 07:68ed ????????
    db   $15, $45, $10, $40, $01, $04, $51, $54        ;; 07:68f5 ????????
    ;;Room data pointers
    dw   map0b_room00_00_script, map0b_room00_00_tiles ;; 07:68fd $29 $6a $2c $6a
    dw   map0b_room01_00_script, map0b_room01_00_tiles ;; 07:6901 $32 $6a $35 $6a
    dw   map0b_room02_00_script, map0b_room02_00_tiles ;; 07:6905 $5b $6a $61 $6a
    dw   map0b_room03_00_script, map0b_room03_00_tiles ;; 07:6909 $81 $6a $84 $6a
    dw   map0b_room04_00_script, map0b_room04_00_tiles ;; 07:690d $8a $6a $8d $6a
    dw   map0b_room05_00_script, map0b_room05_00_tiles ;; 07:6911 $93 $6a $96 $6a
    dw   map0b_room06_00_script, map0b_room06_00_tiles ;; 07:6915 $9c $6a $9f $6a
    dw   map0b_room07_00_script, map0b_room07_00_tiles ;; 07:6919 $a5 $6a $a8 $6a
    dw   map0b_room00_01_script, map0b_room00_01_tiles ;; 07:691d $ae $6a $b1 $6a
    dw   map0b_room01_01_script, map0b_room01_01_tiles ;; 07:6921 $e9 $6a $ef $6a
    dw   map0b_room02_01_script, map0b_room02_01_tiles ;; 07:6925 $21 $6b $24 $6b
    dw   map0b_room03_01_script, map0b_room03_01_tiles ;; 07:6929 $3c $6b $3f $6b
    dw   map0b_room04_01_script, map0b_room04_01_tiles ;; 07:692d $45 $6b $48 $6b
    dw   map0b_room05_01_script, map0b_room05_01_tiles ;; 07:6931 $4e $6b $51 $6b
    dw   map0b_room06_01_script, map0b_room06_01_tiles ;; 07:6935 $57 $6b $5a $6b
    dw   map0b_room07_01_script, map0b_room07_01_tiles ;; 07:6939 $60 $6b $63 $6b
    dw   map0b_room00_02_script, map0b_room00_02_tiles ;; 07:693d $69 $6b $6c $6b
    dw   map0b_room01_02_script, map0b_room01_02_tiles ;; 07:6941 $80 $6b $83 $6b
    dw   map0b_room02_02_script, map0b_room02_02_tiles ;; 07:6945 $95 $6b $98 $6b
    dw   map0b_room03_02_script, map0b_room03_02_tiles ;; 07:6949 $9e $6b $a4 $6b
    dw   map0b_room04_02_script, map0b_room04_02_tiles ;; 07:694d $b8 $6b $bb $6b
    dw   map0b_room05_02_script, map0b_room05_02_tiles ;; 07:6951 $c1 $6b $c4 $6b
    dw   map0b_room06_02_script, map0b_room06_02_tiles ;; 07:6955 $ca $6b $cd $6b
    dw   map0b_room07_02_script, map0b_room07_02_tiles ;; 07:6959 $d3 $6b $d6 $6b
    dw   map0b_room00_03_script, map0b_room00_03_tiles ;; 07:695d $dc $6b $df $6b
    dw   map0b_room01_03_script, map0b_room01_03_tiles ;; 07:6961 $01 $6c $04 $6c
    dw   map0b_room02_03_script, map0b_room02_03_tiles ;; 07:6965 $1a $6c $1d $6c
    dw   map0b_room03_03_script, map0b_room03_03_tiles ;; 07:6969 $47 $6c $4a $6c
    dw   map0b_room04_03_script, map0b_room04_03_tiles ;; 07:696d $60 $6c $63 $6c
    dw   map0b_room05_03_script, map0b_room05_03_tiles ;; 07:6971 $69 $6c $6c $6c
    dw   map0b_room06_03_script, map0b_room06_03_tiles ;; 07:6975 $72 $6c $75 $6c
    dw   map0b_room07_03_script, map0b_room07_03_tiles ;; 07:6979 $7b $6c $7e $6c
    dw   map0b_room00_04_script, map0b_room00_04_tiles ;; 07:697d $84 $6c $87 $6c
    dw   map0b_room01_04_script, map0b_room01_04_tiles ;; 07:6981 $a5 $6c $a8 $6c
    dw   map0b_room02_04_script, map0b_room02_04_tiles ;; 07:6985 $ba $6c $bd $6c
    dw   map0b_room03_04_script, map0b_room03_04_tiles ;; 07:6989 $c3 $6c $c6 $6c
    dw   map0b_room04_04_script, map0b_room04_04_tiles ;; 07:698d $e0 $6c $e3 $6c
    dw   map0b_room05_04_script, map0b_room05_04_tiles ;; 07:6991 $e9 $6c $ec $6c
    dw   map0b_room06_04_script, map0b_room06_04_tiles ;; 07:6995 $f2 $6c $f5 $6c
    dw   map0b_room07_04_script, map0b_room07_04_tiles ;; 07:6999 $fb $6c $fe $6c
    dw   map0b_room00_05_script, map0b_room00_05_tiles ;; 07:699d $04 $6d $07 $6d
    dw   map0b_room01_05_script, map0b_room01_05_tiles ;; 07:69a1 $19 $6d $1c $6d
    dw   map0b_room02_05_script, map0b_room02_05_tiles ;; 07:69a5 $3a $6d $43 $6d
    dw   map0b_room03_05_script, map0b_room03_05_tiles ;; 07:69a9 $6d $6d $70 $6d
    dw   map0b_room04_05_script, map0b_room04_05_tiles ;; 07:69ad $98 $6d $9b $6d
    dw   map0b_room05_05_script, map0b_room05_05_tiles ;; 07:69b1 $a1 $6d $a4 $6d
    dw   map0b_room06_05_script, map0b_room06_05_tiles ;; 07:69b5 $aa $6d $ad $6d
    dw   map0b_room07_05_script, map0b_room07_05_tiles ;; 07:69b9 $b3 $6d $b6 $6d
    dw   map0b_room00_06_script, map0b_room00_06_tiles ;; 07:69bd $bc $6d $bf $6d
    dw   map0b_room01_06_script, map0b_room01_06_tiles ;; 07:69c1 $dd $6d $e0 $6d
    dw   map0b_room02_06_script, map0b_room02_06_tiles ;; 07:69c5 $f4 $6d $f7 $6d
    dw   map0b_room03_06_script, map0b_room03_06_tiles ;; 07:69c9 $13 $6e $1c $6e
    dw   map0b_room04_06_script, map0b_room04_06_tiles ;; 07:69cd $4c $6e $58 $6e
    dw   map0b_room05_06_script, map0b_room05_06_tiles ;; 07:69d1 $92 $6e $95 $6e
    dw   map0b_room06_06_script, map0b_room06_06_tiles ;; 07:69d5 $ab $6e $ae $6e
    dw   map0b_room07_06_script, map0b_room07_06_tiles ;; 07:69d9 $be $6e $c4 $6e
    dw   map0b_room00_07_script, map0b_room00_07_tiles ;; 07:69dd $d8 $6e $de $6e
    dw   map0b_room01_07_script, map0b_room01_07_tiles ;; 07:69e1 $f6 $6e $f9 $6e
    dw   map0b_room02_07_script, map0b_room02_07_tiles ;; 07:69e5 $0b $6f $0e $6f
    dw   map0b_room03_07_script, map0b_room03_07_tiles ;; 07:69e9 $38 $6f $3b $6f
    dw   map0b_room04_07_script, map0b_room04_07_tiles ;; 07:69ed $41 $6f $44 $6f
    dw   map0b_room05_07_script, map0b_room05_07_tiles ;; 07:69f1 $54 $6f $57 $6f
    dw   map0b_room06_07_script, map0b_room06_07_tiles ;; 07:69f5 $69 $6f $6c $6f
    dw   map0b_room07_07_script, map0b_room07_07_tiles ;; 07:69f9 $82 $6f $85 $6f

map0b_room_tile_template:
    db   $16, $01, $01, $01, $14, $03, $04, $04, $04, $05 ;; 07:69fd ??????????
    db   $10,                $80,                $80, $15 ;; 07:6a07 ????
    db   $10,                $80,                $80, $15 ;; 07:6a0b ????
    db   $20,                $80,                $80, $25 ;; 07:6a0f ????
    db   $30,                $80,                $80, $35 ;; 07:6a13 ????
    db   $40,                $80,                $80, $45 ;; 07:6a17 ????
    db   $40,                $80,                $80, $45 ;; 07:6a1b ????
    db   $50, $51, $51, $51, $52, $53, $54, $54, $54, $55 ;; 07:6a1f ??????????

map0b_room00_00_script:
    dw   $ffff                                         ;; 07:6a29 $ff $ff
    db   $ff                                           ;; 07:6a2b $ff

map0b_room00_00_tiles:
    db   $00, $00, $00, $00                            ;; 07:6a2c ????
    db   $ff, $ff                                      ;; 07:6a30 ??

map0b_room01_00_script:
    SCRIPT_IDX script_03e5                             ;; 07:6a32 $e5 $03
    db   $ff                                           ;; 07:6a34 $ff

map0b_room01_00_tiles:
    db   $02, $02, $02, $00                            ;; 07:6a35 ????
    db   $44, $11                                      ;; 07:6a39 ??
    db   $44, $18                                      ;; 07:6a3b ??
    db   $09, $33                                      ;; 07:6a3d ??
    db   $09, $34                                      ;; 07:6a3f ??
    db   $09, $35                                      ;; 07:6a41 ??
    db   $09, $36                                      ;; 07:6a43 ??
    db   $09, $43                                      ;; 07:6a45 ??
    db   $09, $44                                      ;; 07:6a47 ??
    db   $09, $45                                      ;; 07:6a49 ??
    db   $09, $46                                      ;; 07:6a4b ??
    db   $09, $53                                      ;; 07:6a4d ??
    db   $09, $54                                      ;; 07:6a4f ??
    db   $09, $55                                      ;; 07:6a51 ??
    db   $09, $56                                      ;; 07:6a53 ??
    db   $44, $61                                      ;; 07:6a55 ??
    db   $44, $68                                      ;; 07:6a57 ??
    db   $ff, $ff                                      ;; 07:6a59 ??

map0b_room02_00_script:
    SCRIPT_IDX script_00b5                             ;; 07:6a5b $b5 $00
    SCRIPT_AT_POS 1, 8, script_0371                    ;; 07:6a5d $18 $71 $03
    db   $ff                                           ;; 07:6a60 $ff

map0b_room02_00_tiles:
    db   $02, $02, $02, $01                            ;; 07:6a61 ????
    db   $4f, $12                                      ;; 07:6a65 ??
    db   $4f, $17                                      ;; 07:6a67 ??
    db   $11, $18                                      ;; 07:6a69 ??
    db   $59, $23                                      ;; 07:6a6b ??
    db   $59, $26                                      ;; 07:6a6d ??
    db   $4f, $34                                      ;; 07:6a6f ??
    db   $4f, $35                                      ;; 07:6a71 ??
    db   $4f, $44                                      ;; 07:6a73 ??
    db   $4f, $45                                      ;; 07:6a75 ??
    db   $58, $53                                      ;; 07:6a77 ??
    db   $58, $56                                      ;; 07:6a79 ??
    db   $4f, $62                                      ;; 07:6a7b ??
    db   $4f, $67                                      ;; 07:6a7d ??
    db   $ff, $ff                                      ;; 07:6a7f ??

map0b_room03_00_script:
    dw   $ffff                                         ;; 07:6a81 $ff $ff
    db   $ff                                           ;; 07:6a83 $ff

map0b_room03_00_tiles:
    db   $00, $00, $00, $00                            ;; 07:6a84 ????
    db   $ff, $ff                                      ;; 07:6a88 ??

map0b_room04_00_script:
    dw   $ffff                                         ;; 07:6a8a $ff $ff
    db   $ff                                           ;; 07:6a8c $ff

map0b_room04_00_tiles:
    db   $00, $00, $00, $00                            ;; 07:6a8d ????
    db   $ff, $ff                                      ;; 07:6a91 ??

map0b_room05_00_script:
    dw   $ffff                                         ;; 07:6a93 $ff $ff
    db   $ff                                           ;; 07:6a95 $ff

map0b_room05_00_tiles:
    db   $00, $00, $00, $00                            ;; 07:6a96 ????
    db   $ff, $ff                                      ;; 07:6a9a ??

map0b_room06_00_script:
    dw   $ffff                                         ;; 07:6a9c $ff $ff
    db   $ff                                           ;; 07:6a9e $ff

map0b_room06_00_tiles:
    db   $00, $00, $00, $00                            ;; 07:6a9f ????
    db   $ff, $ff                                      ;; 07:6aa3 ??

map0b_room07_00_script:
    dw   $ffff                                         ;; 07:6aa5 $ff $ff
    db   $ff                                           ;; 07:6aa7 $ff

map0b_room07_00_tiles:
    db   $00, $00, $00, $00                            ;; 07:6aa8 ????
    db   $ff, $ff                                      ;; 07:6aac ??

map0b_room00_01_script:
    SCRIPT_IDX script_00bb                             ;; 07:6aae $bb $00
    db   $ff                                           ;; 07:6ab0 $ff

map0b_room00_01_tiles:
    db   $01, $02, $02, $00                            ;; 07:6ab1 ????
    db   $16, $22                                      ;; 07:6ab5 ??
    db   $01, $23                                      ;; 07:6ab7 ??
    db   $01, $24                                      ;; 07:6ab9 ??
    db   $04, $25                                      ;; 07:6abb ??
    db   $04, $26                                      ;; 07:6abd ??
    db   $05, $27                                      ;; 07:6abf ??
    db   $10, $32                                      ;; 07:6ac1 ??
    db   $09, $33                                      ;; 07:6ac3 ??
    db   $09, $34                                      ;; 07:6ac5 ??
    db   $09, $35                                      ;; 07:6ac7 ??
    db   $09, $36                                      ;; 07:6ac9 ??
    db   $15, $37                                      ;; 07:6acb ??
    db   $40, $42                                      ;; 07:6acd ??
    db   $09, $43                                      ;; 07:6acf ??
    db   $09, $44                                      ;; 07:6ad1 ??
    db   $09, $45                                      ;; 07:6ad3 ??
    db   $09, $46                                      ;; 07:6ad5 ??
    db   $45, $47                                      ;; 07:6ad7 ??
    db   $50, $52                                      ;; 07:6ad9 ??
    db   $51, $53                                      ;; 07:6adb ??
    db   $51, $54                                      ;; 07:6add ??
    db   $54, $55                                      ;; 07:6adf ??
    db   $54, $56                                      ;; 07:6ae1 ??
    db   $55, $57                                      ;; 07:6ae3 ??
    db   $4f, $58                                      ;; 07:6ae5 ??
    db   $ff, $ff                                      ;; 07:6ae7 ??

map0b_room01_01_script:
    SCRIPT_IDX script_03df                             ;; 07:6ae9 $df $03
    SCRIPT_AT_POS 1, 8, script_0370                    ;; 07:6aeb $18 $70 $03
    db   $ff                                           ;; 07:6aee $ff

map0b_room01_01_tiles:
    db   $00, $01, $02, $00                            ;; 07:6aef ????
    db   $19, $11                                      ;; 07:6af3 ??
    db   $19, $12                                      ;; 07:6af5 ??
    db   $19, $13                                      ;; 07:6af7 ??
    db   $19, $16                                      ;; 07:6af9 ??
    db   $19, $17                                      ;; 07:6afb ??
    db   $02, $18                                      ;; 07:6afd ??
    db   $59, $21                                      ;; 07:6aff ??
    db   $57, $22                                      ;; 07:6b01 ??
    db   $2c, $23                                      ;; 07:6b03 ??
    db   $59, $24                                      ;; 07:6b05 ??
    db   $59, $25                                      ;; 07:6b07 ??
    db   $59, $26                                      ;; 07:6b09 ??
    db   $59, $27                                      ;; 07:6b0b ??
    db   $57, $28                                      ;; 07:6b0d ??
    db   $56, $51                                      ;; 07:6b0f ??
    db   $58, $52                                      ;; 07:6b11 ??
    db   $58, $53                                      ;; 07:6b13 ??
    db   $58, $54                                      ;; 07:6b15 ??
    db   $58, $55                                      ;; 07:6b17 ??
    db   $2c, $56                                      ;; 07:6b19 ??
    db   $56, $57                                      ;; 07:6b1b ??
    db   $58, $58                                      ;; 07:6b1d ??
    db   $ff, $ff                                      ;; 07:6b1f ??

map0b_room02_01_script:
    SCRIPT_IDX script_00b2                             ;; 07:6b21 $b2 $00
    db   $ff                                           ;; 07:6b23 $ff

map0b_room02_01_tiles:
    db   $02, $00, $05, $02                            ;; 07:6b24 ????
    db   $2c, $13                                      ;; 07:6b28 ??
    db   $2c, $24                                      ;; 07:6b2a ??
    db   $2c, $25                                      ;; 07:6b2c ??
    db   $2c, $26                                      ;; 07:6b2e ??
    db   $2c, $32                                      ;; 07:6b30 ??
    db   $2c, $37                                      ;; 07:6b32 ??
    db   $2c, $42                                      ;; 07:6b34 ??
    db   $2c, $51                                      ;; 07:6b36 ??
    db   $2c, $66                                      ;; 07:6b38 ??
    db   $ff, $ff                                      ;; 07:6b3a ??

map0b_room03_01_script:
    dw   $ffff                                         ;; 07:6b3c $ff $ff
    db   $ff                                           ;; 07:6b3e $ff

map0b_room03_01_tiles:
    db   $00, $00, $00, $00                            ;; 07:6b3f ????
    db   $ff, $ff                                      ;; 07:6b43 ??

map0b_room04_01_script:
    dw   $ffff                                         ;; 07:6b45 $ff $ff
    db   $ff                                           ;; 07:6b47 $ff

map0b_room04_01_tiles:
    db   $00, $00, $00, $00                            ;; 07:6b48 ????
    db   $ff, $ff                                      ;; 07:6b4c ??

map0b_room05_01_script:
    dw   $ffff                                         ;; 07:6b4e $ff $ff
    db   $ff                                           ;; 07:6b50 $ff

map0b_room05_01_tiles:
    db   $00, $00, $00, $00                            ;; 07:6b51 ????
    db   $ff, $ff                                      ;; 07:6b55 ??

map0b_room06_01_script:
    dw   $ffff                                         ;; 07:6b57 $ff $ff
    db   $ff                                           ;; 07:6b59 $ff

map0b_room06_01_tiles:
    db   $00, $00, $00, $00                            ;; 07:6b5a ????
    db   $ff, $ff                                      ;; 07:6b5e ??

map0b_room07_01_script:
    dw   $ffff                                         ;; 07:6b60 $ff $ff
    db   $ff                                           ;; 07:6b62 $ff

map0b_room07_01_tiles:
    db   $00, $00, $00, $00                            ;; 07:6b63 ????
    db   $ff, $ff                                      ;; 07:6b67 ??

map0b_room00_02_script:
    SCRIPT_IDX script_041f                             ;; 07:6b69 $1f $04
    db   $ff                                           ;; 07:6b6b $ff

map0b_room00_02_tiles:
    db   $02, $02, $00, $02                            ;; 07:6b6c ????
    db   $19, $17                                      ;; 07:6b70 ??
    db   $19, $18                                      ;; 07:6b72 ??
    db   $19, $28                                      ;; 07:6b74 ??
    db   $19, $51                                      ;; 07:6b76 ??
    db   $44, $61                                      ;; 07:6b78 ??
    db   $19, $62                                      ;; 07:6b7a ??
    db   $19, $63                                      ;; 07:6b7c ??
    db   $ff, $ff                                      ;; 07:6b7e ??

map0b_room01_02_script:
    SCRIPT_IDX script_008e                             ;; 07:6b80 $8e $00
    db   $ff                                           ;; 07:6b82 $ff

map0b_room01_02_tiles:
    db   $02, $02, $00, $02                            ;; 07:6b83 ????
    db   $5a, $13                                      ;; 07:6b87 ??
    db   $5a, $31                                      ;; 07:6b89 ??
    db   $5a, $36                                      ;; 07:6b8b ??
    db   $5a, $38                                      ;; 07:6b8d ??
    db   $5a, $44                                      ;; 07:6b8f ??
    db   $5a, $64                                      ;; 07:6b91 ??
    db   $ff, $ff                                      ;; 07:6b93 ??

map0b_room02_02_script:
    dw   $ffff                                         ;; 07:6b95 $ff $ff
    db   $ff                                           ;; 07:6b97 $ff

map0b_room02_02_tiles:
    db   $00, $00, $00, $00                            ;; 07:6b98 ????
    db   $ff, $ff                                      ;; 07:6b9c ??

map0b_room03_02_script:
    SCRIPT_IDX script_003d                             ;; 07:6b9e $3d $00
    SCRIPT_AT_POS 1, 8, script_02a3                    ;; 07:6ba0 $18 $a3 $02
    db   $ff                                           ;; 07:6ba3 $ff

map0b_room03_02_tiles:
    db   $02, $02, $02, $00                            ;; 07:6ba4 ????
    db   $02, $18                                      ;; 07:6ba8 ??
    db   $0b, $51                                      ;; 07:6baa ??
    db   $0b, $58                                      ;; 07:6bac ??
    db   $0b, $61                                      ;; 07:6bae ??
    db   $0b, $62                                      ;; 07:6bb0 ??
    db   $0b, $67                                      ;; 07:6bb2 ??
    db   $0b, $68                                      ;; 07:6bb4 ??
    db   $ff, $ff                                      ;; 07:6bb6 ??

map0b_room04_02_script:
    dw   $ffff                                         ;; 07:6bb8 $ff $ff
    db   $ff                                           ;; 07:6bba $ff

map0b_room04_02_tiles:
    db   $00, $00, $00, $00                            ;; 07:6bbb ????
    db   $ff, $ff                                      ;; 07:6bbf ??

map0b_room05_02_script:
    dw   $ffff                                         ;; 07:6bc1 $ff $ff
    db   $ff                                           ;; 07:6bc3 $ff

map0b_room05_02_tiles:
    db   $00, $00, $00, $00                            ;; 07:6bc4 ????
    db   $ff, $ff                                      ;; 07:6bc8 ??

map0b_room06_02_script:
    dw   $ffff                                         ;; 07:6bca $ff $ff
    db   $ff                                           ;; 07:6bcc $ff

map0b_room06_02_tiles:
    db   $00, $00, $00, $00                            ;; 07:6bcd ????
    db   $ff, $ff                                      ;; 07:6bd1 ??

map0b_room07_02_script:
    dw   $ffff                                         ;; 07:6bd3 $ff $ff
    db   $ff                                           ;; 07:6bd5 $ff

map0b_room07_02_tiles:
    db   $00, $00, $00, $00                            ;; 07:6bd6 ????
    db   $ff, $ff                                      ;; 07:6bda ??

map0b_room00_03_script:
    SCRIPT_IDX script_007c                             ;; 07:6bdc $7c $00
    db   $ff                                           ;; 07:6bde $ff

map0b_room00_03_tiles:
    db   $02, $02, $02, $01                            ;; 07:6bdf ????
    db   $0b, $11                                      ;; 07:6be3 ??
    db   $0b, $12                                      ;; 07:6be5 ??
    db   $0b, $13                                      ;; 07:6be7 ??
    db   $0b, $14                                      ;; 07:6be9 ??
    db   $0b, $15                                      ;; 07:6beb ??
    db   $0b, $16                                      ;; 07:6bed ??
    db   $0b, $17                                      ;; 07:6bef ??
    db   $0b, $18                                      ;; 07:6bf1 ??
    db   $0b, $21                                      ;; 07:6bf3 ??
    db   $0b, $22                                      ;; 07:6bf5 ??
    db   $0b, $27                                      ;; 07:6bf7 ??
    db   $0b, $28                                      ;; 07:6bf9 ??
    db   $0b, $31                                      ;; 07:6bfb ??
    db   $0b, $38                                      ;; 07:6bfd ??
    db   $ff, $ff                                      ;; 07:6bff ??

map0b_room01_03_script:
    SCRIPT_IDX script_007c                             ;; 07:6c01 $7c $00
    db   $ff                                           ;; 07:6c03 $ff

map0b_room01_03_tiles:
    db   $01, $02, $02, $02                            ;; 07:6c04 ????
    db   $0b, $11                                      ;; 07:6c08 ??
    db   $0b, $18                                      ;; 07:6c0a ??
    db   $0b, $21                                      ;; 07:6c0c ??
    db   $0b, $28                                      ;; 07:6c0e ??
    db   $0b, $51                                      ;; 07:6c10 ??
    db   $0b, $58                                      ;; 07:6c12 ??
    db   $0b, $61                                      ;; 07:6c14 ??
    db   $0b, $68                                      ;; 07:6c16 ??
    db   $ff, $ff                                      ;; 07:6c18 ??

map0b_room02_03_script:
    SCRIPT_IDX script_0046                             ;; 07:6c1a $46 $00
    db   $ff                                           ;; 07:6c1c $ff

map0b_room02_03_tiles:
    db   $01, $01, $02, $02                            ;; 07:6c1d ????
    db   $0b, $14                                      ;; 07:6c21 ??
    db   $0b, $15                                      ;; 07:6c23 ??
    db   $0b, $16                                      ;; 07:6c25 ??
    db   $0b, $23                                      ;; 07:6c27 ??
    db   $0b, $24                                      ;; 07:6c29 ??
    db   $0b, $25                                      ;; 07:6c2b ??
    db   $0b, $32                                      ;; 07:6c2d ??
    db   $0b, $33                                      ;; 07:6c2f ??
    db   $0b, $37                                      ;; 07:6c31 ??
    db   $0b, $42                                      ;; 07:6c33 ??
    db   $0b, $46                                      ;; 07:6c35 ??
    db   $0b, $47                                      ;; 07:6c37 ??
    db   $0b, $54                                      ;; 07:6c39 ??
    db   $0b, $55                                      ;; 07:6c3b ??
    db   $0b, $56                                      ;; 07:6c3d ??
    db   $0b, $63                                      ;; 07:6c3f ??
    db   $0b, $64                                      ;; 07:6c41 ??
    db   $0b, $65                                      ;; 07:6c43 ??
    db   $ff, $ff                                      ;; 07:6c45 ??

map0b_room03_03_script:
    SCRIPT_IDX script_03df                             ;; 07:6c47 $df $03
    db   $ff                                           ;; 07:6c49 $ff

map0b_room03_03_tiles:
    db   $02, $05, $02, $00                            ;; 07:6c4a ????
    db   $0b, $51                                      ;; 07:6c4e ??
    db   $0b, $58                                      ;; 07:6c50 ??
    db   $0b, $61                                      ;; 07:6c52 ??
    db   $0b, $62                                      ;; 07:6c54 ??
    db   $0b, $63                                      ;; 07:6c56 ??
    db   $0b, $66                                      ;; 07:6c58 ??
    db   $0b, $67                                      ;; 07:6c5a ??
    db   $0b, $68                                      ;; 07:6c5c ??
    db   $ff, $ff                                      ;; 07:6c5e ??

map0b_room04_03_script:
    dw   $ffff                                         ;; 07:6c60 $ff $ff
    db   $ff                                           ;; 07:6c62 $ff

map0b_room04_03_tiles:
    db   $00, $00, $00, $00                            ;; 07:6c63 ????
    db   $ff, $ff                                      ;; 07:6c67 ??

map0b_room05_03_script:
    dw   $ffff                                         ;; 07:6c69 $ff $ff
    db   $ff                                           ;; 07:6c6b $ff

map0b_room05_03_tiles:
    db   $00, $00, $00, $00                            ;; 07:6c6c ????
    db   $ff, $ff                                      ;; 07:6c70 ??

map0b_room06_03_script:
    dw   $ffff                                         ;; 07:6c72 $ff $ff
    db   $ff                                           ;; 07:6c74 $ff

map0b_room06_03_tiles:
    db   $00, $00, $00, $00                            ;; 07:6c75 ????
    db   $ff, $ff                                      ;; 07:6c79 ??

map0b_room07_03_script:
    dw   $ffff                                         ;; 07:6c7b $ff $ff
    db   $ff                                           ;; 07:6c7d $ff

map0b_room07_03_tiles:
    db   $00, $00, $00, $00                            ;; 07:6c7e ????
    db   $ff, $ff                                      ;; 07:6c82 ??

map0b_room00_04_script:
    SCRIPT_IDX script_0046                             ;; 07:6c84 $46 $00
    db   $ff                                           ;; 07:6c86 $ff

map0b_room00_04_tiles:
    db   $02, $02, $01, $01                            ;; 07:6c87 ????
    db   $0b, $32                                      ;; 07:6c8b ??
    db   $0b, $33                                      ;; 07:6c8d ??
    db   $0b, $34                                      ;; 07:6c8f ??
    db   $0b, $35                                      ;; 07:6c91 ??
    db   $0b, $36                                      ;; 07:6c93 ??
    db   $0b, $37                                      ;; 07:6c95 ??
    db   $0b, $42                                      ;; 07:6c97 ??
    db   $0b, $43                                      ;; 07:6c99 ??
    db   $0b, $44                                      ;; 07:6c9b ??
    db   $0b, $45                                      ;; 07:6c9d ??
    db   $0b, $46                                      ;; 07:6c9f ??
    db   $0b, $47                                      ;; 07:6ca1 ??
    db   $ff, $ff                                      ;; 07:6ca3 ??

map0b_room01_04_script:
    SCRIPT_IDX script_0055                             ;; 07:6ca5 $55 $00
    db   $ff                                           ;; 07:6ca7 $ff

map0b_room01_04_tiles:
    db   $02, $02, $02, $01                            ;; 07:6ca8 ????
    db   $0b, $15                                      ;; 07:6cac ??
    db   $0b, $16                                      ;; 07:6cae ??
    db   $0b, $17                                      ;; 07:6cb0 ??
    db   $0b, $18                                      ;; 07:6cb2 ??
    db   $0b, $27                                      ;; 07:6cb4 ??
    db   $0b, $28                                      ;; 07:6cb6 ??
    db   $ff, $ff                                      ;; 07:6cb8 ??

map0b_room02_04_script:
    dw   $ffff                                         ;; 07:6cba $ff $ff
    db   $ff                                           ;; 07:6cbc $ff

map0b_room02_04_tiles:
    db   $00, $00, $00, $00                            ;; 07:6cbd ????
    db   $ff, $ff                                      ;; 07:6cc1 ??

map0b_room03_04_script:
    SCRIPT_IDX script_007c                             ;; 07:6cc3 $7c $00
    db   $ff                                           ;; 07:6cc5 $ff

map0b_room03_04_tiles:
    db   $02, $02, $00, $01                            ;; 07:6cc6 ????
    db   $0b, $25                                      ;; 07:6cca ??
    db   $0b, $32                                      ;; 07:6ccc ??
    db   $0b, $33                                      ;; 07:6cce ??
    db   $0b, $34                                      ;; 07:6cd0 ??
    db   $0b, $35                                      ;; 07:6cd2 ??
    db   $0b, $44                                      ;; 07:6cd4 ??
    db   $0b, $45                                      ;; 07:6cd6 ??
    db   $0b, $46                                      ;; 07:6cd8 ??
    db   $0b, $47                                      ;; 07:6cda ??
    db   $0b, $54                                      ;; 07:6cdc ??
    db   $ff, $ff                                      ;; 07:6cde ??

map0b_room04_04_script:
    dw   $ffff                                         ;; 07:6ce0 $ff $ff
    db   $ff                                           ;; 07:6ce2 $ff

map0b_room04_04_tiles:
    db   $00, $00, $00, $00                            ;; 07:6ce3 ????
    db   $ff, $ff                                      ;; 07:6ce7 ??

map0b_room05_04_script:
    dw   $ffff                                         ;; 07:6ce9 $ff $ff
    db   $ff                                           ;; 07:6ceb $ff

map0b_room05_04_tiles:
    db   $00, $00, $00, $00                            ;; 07:6cec ????
    db   $ff, $ff                                      ;; 07:6cf0 ??

map0b_room06_04_script:
    dw   $ffff                                         ;; 07:6cf2 $ff $ff
    db   $ff                                           ;; 07:6cf4 $ff

map0b_room06_04_tiles:
    db   $00, $00, $00, $00                            ;; 07:6cf5 ????
    db   $ff, $ff                                      ;; 07:6cf9 ??

map0b_room07_04_script:
    dw   $ffff                                         ;; 07:6cfb $ff $ff
    db   $ff                                           ;; 07:6cfd $ff

map0b_room07_04_tiles:
    db   $00, $00, $00, $00                            ;; 07:6cfe ????
    db   $ff, $ff                                      ;; 07:6d02 ??

map0b_room00_05_script:
    SCRIPT_IDX script_0187                             ;; 07:6d04 $87 $01
    db   $ff                                           ;; 07:6d06 $ff

map0b_room00_05_tiles:
    db   $02, $02, $01, $01                            ;; 07:6d07 ????
    db   $0b, $17                                      ;; 07:6d0b ??
    db   $0b, $18                                      ;; 07:6d0d ??
    db   $0b, $28                                      ;; 07:6d0f ??
    db   $0b, $58                                      ;; 07:6d11 ??
    db   $0b, $67                                      ;; 07:6d13 ??
    db   $0b, $68                                      ;; 07:6d15 ??
    db   $ff, $ff                                      ;; 07:6d17 ??

map0b_room01_05_script:
    SCRIPT_IDX script_007c                             ;; 07:6d19 $7c $00
    db   $ff                                           ;; 07:6d1b $ff

map0b_room01_05_tiles:
    db   $00, $00, $01, $02                            ;; 07:6d1c ????
    db   $0b, $11                                      ;; 07:6d20 ??
    db   $0b, $12                                      ;; 07:6d22 ??
    db   $0b, $17                                      ;; 07:6d24 ??
    db   $0b, $18                                      ;; 07:6d26 ??
    db   $0b, $21                                      ;; 07:6d28 ??
    db   $0b, $28                                      ;; 07:6d2a ??
    db   $0b, $51                                      ;; 07:6d2c ??
    db   $0b, $58                                      ;; 07:6d2e ??
    db   $0b, $61                                      ;; 07:6d30 ??
    db   $0b, $62                                      ;; 07:6d32 ??
    db   $0b, $67                                      ;; 07:6d34 ??
    db   $0b, $68                                      ;; 07:6d36 ??
    db   $ff, $ff                                      ;; 07:6d38 ??

map0b_room02_05_script:
    SCRIPT_IDX script_00b5                             ;; 07:6d3a $b5 $00
    SCRIPT_AT_POS 6, 5, script_050a                    ;; 07:6d3c $65 $0a $05
    SCRIPT_AT_POS 1, 4, script_0509                    ;; 07:6d3f $14 $09 $05
    db   $ff                                           ;; 07:6d42 $ff

map0b_room02_05_tiles:
    db   $09, $00, $02, $02                            ;; 07:6d43 ????
    db   $2c, $12                                      ;; 07:6d47 ??
    db   $2c, $13                                      ;; 07:6d49 ??
    db   $4e, $14                                      ;; 07:6d4b ??
    db   $09, $15                                      ;; 07:6d4d ??
    db   $2c, $23                                      ;; 07:6d4f ??
    db   $09, $24                                      ;; 07:6d51 ??
    db   $09, $25                                      ;; 07:6d53 ??
    db   $09, $34                                      ;; 07:6d55 ??
    db   $09, $35                                      ;; 07:6d57 ??
    db   $09, $44                                      ;; 07:6d59 ??
    db   $09, $45                                      ;; 07:6d5b ??
    db   $09, $54                                      ;; 07:6d5d ??
    db   $09, $55                                      ;; 07:6d5f ??
    db   $2c, $56                                      ;; 07:6d61 ??
    db   $09, $64                                      ;; 07:6d63 ??
    db   $4e, $65                                      ;; 07:6d65 ??
    db   $2c, $66                                      ;; 07:6d67 ??
    db   $2c, $67                                      ;; 07:6d69 ??
    db   $ff, $ff                                      ;; 07:6d6b ??

map0b_room03_05_script:
    SCRIPT_IDX script_0067                             ;; 07:6d6d $67 $00
    db   $ff                                           ;; 07:6d6f $ff

map0b_room03_05_tiles:
    db   $02, $01, $01, $02                            ;; 07:6d70 ????
    db   $0b, $11                                      ;; 07:6d74 ??
    db   $0b, $12                                      ;; 07:6d76 ??
    db   $0b, $13                                      ;; 07:6d78 ??
    db   $0b, $21                                      ;; 07:6d7a ??
    db   $0b, $22                                      ;; 07:6d7c ??
    db   $0b, $23                                      ;; 07:6d7e ??
    db   $0b, $24                                      ;; 07:6d80 ??
    db   $0b, $25                                      ;; 07:6d82 ??
    db   $0b, $33                                      ;; 07:6d84 ??
    db   $0b, $34                                      ;; 07:6d86 ??
    db   $0b, $35                                      ;; 07:6d88 ??
    db   $29, $45                                      ;; 07:6d8a ??
    db   $0b, $55                                      ;; 07:6d8c ??
    db   $0b, $56                                      ;; 07:6d8e ??
    db   $0b, $66                                      ;; 07:6d90 ??
    db   $0b, $67                                      ;; 07:6d92 ??
    db   $0b, $68                                      ;; 07:6d94 ??
    db   $ff, $ff                                      ;; 07:6d96 ??

map0b_room04_05_script:
    dw   $ffff                                         ;; 07:6d98 $ff $ff
    db   $ff                                           ;; 07:6d9a $ff

map0b_room04_05_tiles:
    db   $00, $00, $00, $00                            ;; 07:6d9b ????
    db   $ff, $ff                                      ;; 07:6d9f ??

map0b_room05_05_script:
    dw   $ffff                                         ;; 07:6da1 $ff $ff
    db   $ff                                           ;; 07:6da3 $ff

map0b_room05_05_tiles:
    db   $00, $00, $00, $00                            ;; 07:6da4 ????
    db   $ff, $ff                                      ;; 07:6da8 ??

map0b_room06_05_script:
    dw   $ffff                                         ;; 07:6daa $ff $ff
    db   $ff                                           ;; 07:6dac $ff

map0b_room06_05_tiles:
    db   $00, $00, $00, $00                            ;; 07:6dad ????
    db   $ff, $ff                                      ;; 07:6db1 ??

map0b_room07_05_script:
    dw   $ffff                                         ;; 07:6db3 $ff $ff
    db   $ff                                           ;; 07:6db5 $ff

map0b_room07_05_tiles:
    db   $00, $00, $00, $00                            ;; 07:6db6 ????
    db   $ff, $ff                                      ;; 07:6dba ??

map0b_room00_06_script:
    SCRIPT_IDX script_007c                             ;; 07:6dbc $7c $00
    db   $ff                                           ;; 07:6dbe $ff

map0b_room00_06_tiles:
    db   $02, $02, $05, $00                            ;; 07:6dbf ????
    db   $0b, $11                                      ;; 07:6dc3 ??
    db   $0b, $18                                      ;; 07:6dc5 ??
    db   $0b, $21                                      ;; 07:6dc7 ??
    db   $0b, $28                                      ;; 07:6dc9 ??
    db   $0b, $31                                      ;; 07:6dcb ??
    db   $0b, $38                                      ;; 07:6dcd ??
    db   $0b, $41                                      ;; 07:6dcf ??
    db   $0b, $48                                      ;; 07:6dd1 ??
    db   $0b, $51                                      ;; 07:6dd3 ??
    db   $0b, $58                                      ;; 07:6dd5 ??
    db   $0b, $61                                      ;; 07:6dd7 ??
    db   $0b, $68                                      ;; 07:6dd9 ??
    db   $ff, $ff                                      ;; 07:6ddb ??

map0b_room01_06_script:
    SCRIPT_IDX script_008e                             ;; 07:6ddd $8e $00
    db   $ff                                           ;; 07:6ddf $ff

map0b_room01_06_tiles:
    db   $01, $02, $02, $00                            ;; 07:6de0 ????
    db   $2c, $12                                      ;; 07:6de4 ??
    db   $4f, $23                                      ;; 07:6de6 ??
    db   $4f, $33                                      ;; 07:6de8 ??
    db   $4f, $44                                      ;; 07:6dea ??
    db   $4f, $45                                      ;; 07:6dec ??
    db   $4f, $56                                      ;; 07:6dee ??
    db   $4f, $66                                      ;; 07:6df0 ??
    db   $ff, $ff                                      ;; 07:6df2 ??

map0b_room02_06_script:
    SCRIPT_IDX script_0187                             ;; 07:6df4 $87 $01
    db   $ff                                           ;; 07:6df6 $ff

map0b_room02_06_tiles:
    db   $02, $01, $02, $00                            ;; 07:6df7 ????
    db   $2c, $27                                      ;; 07:6dfb ??
    db   $2c, $28                                      ;; 07:6dfd ??
    db   $2c, $37                                      ;; 07:6dff ??
    db   $2c, $45                                      ;; 07:6e01 ??
    db   $2c, $46                                      ;; 07:6e03 ??
    db   $2c, $47                                      ;; 07:6e05 ??
    db   $2c, $54                                      ;; 07:6e07 ??
    db   $2c, $55                                      ;; 07:6e09 ??
    db   $2c, $57                                      ;; 07:6e0b ??
    db   $2c, $58                                      ;; 07:6e0d ??
    db   $2c, $63                                      ;; 07:6e0f ??
    db   $ff, $ff                                      ;; 07:6e11 ??

map0b_room03_06_script:
    SCRIPT_IDX script_008b                             ;; 07:6e13 $8b $00
    SCRIPT_AT_POS 6, 8, script_035c                    ;; 07:6e15 $68 $5c $03
    SCRIPT_AT_POS 6, 3, script_04e8                    ;; 07:6e18 $63 $e8 $04
    db   $ff                                           ;; 07:6e1b $ff

map0b_room03_06_tiles:
    db   $02, $00, $02, $02                            ;; 07:6e1c ????
    db   $58, $12                                      ;; 07:6e20 ??
    db   $58, $13                                      ;; 07:6e22 ??
    db   $58, $14                                      ;; 07:6e24 ??
    db   $58, $15                                      ;; 07:6e26 ??
    db   $58, $16                                      ;; 07:6e28 ??
    db   $58, $18                                      ;; 07:6e2a ??
    db   $4f, $22                                      ;; 07:6e2c ??
    db   $4f, $23                                      ;; 07:6e2e ??
    db   $4f, $27                                      ;; 07:6e30 ??
    db   $4f, $37                                      ;; 07:6e32 ??
    db   $4f, $47                                      ;; 07:6e34 ??
    db   $2a, $51                                      ;; 07:6e36 ??
    db   $2a, $52                                      ;; 07:6e38 ??
    db   $4f, $53                                      ;; 07:6e3a ??
    db   $4f, $57                                      ;; 07:6e3c ??
    db   $59, $61                                      ;; 07:6e3e ??
    db   $4e, $63                                      ;; 07:6e40 ??
    db   $59, $64                                      ;; 07:6e42 ??
    db   $59, $65                                      ;; 07:6e44 ??
    db   $59, $66                                      ;; 07:6e46 ??
    db   $59, $67                                      ;; 07:6e48 ??
    db   $ff, $ff                                      ;; 07:6e4a ??

map0b_room04_06_script:
    SCRIPT_IDX script_00a9                             ;; 07:6e4c $a9 $00
    SCRIPT_AT_POS 6, 8, script_0375                    ;; 07:6e4e $68 $75 $03
    SCRIPT_AT_POS 1, 1, script_04ea                    ;; 07:6e51 $11 $ea $04
    SCRIPT_AT_POS 1, 8, script_04eb                    ;; 07:6e54 $18 $eb $04
    db   $ff                                           ;; 07:6e57 $ff

map0b_room04_06_tiles:
    db   $00, $02, $02, $02                            ;; 07:6e58 ????
    db   $4e, $11                                      ;; 07:6e5c ??
    db   $47, $12                                      ;; 07:6e5e ??
    db   $16, $13                                      ;; 07:6e60 ??
    db   $01, $14                                      ;; 07:6e62 ??
    db   $05, $15                                      ;; 07:6e64 ??
    db   $47, $16                                      ;; 07:6e66 ??
    db   $47, $17                                      ;; 07:6e68 ??
    db   $4e, $18                                      ;; 07:6e6a ??
    db   $47, $21                                      ;; 07:6e6c ??
    db   $10, $23                                      ;; 07:6e6e ??
    db   $07, $24                                      ;; 07:6e70 ??
    db   $15, $25                                      ;; 07:6e72 ??
    db   $47, $27                                      ;; 07:6e74 ??
    db   $47, $28                                      ;; 07:6e76 ??
    db   $10, $33                                      ;; 07:6e78 ??
    db   $07, $34                                      ;; 07:6e7a ??
    db   $15, $35                                      ;; 07:6e7c ??
    db   $29, $43                                      ;; 07:6e7e ??
    db   $29, $44                                      ;; 07:6e80 ??
    db   $29, $45                                      ;; 07:6e82 ??
    db   $40, $53                                      ;; 07:6e84 ??
    db   $07, $54                                      ;; 07:6e86 ??
    db   $45, $55                                      ;; 07:6e88 ??
    db   $50, $63                                      ;; 07:6e8a ??
    db   $51, $64                                      ;; 07:6e8c ??
    db   $55, $65                                      ;; 07:6e8e ??
    db   $ff, $ff                                      ;; 07:6e90 ??

map0b_room05_06_script:
    SCRIPT_IDX script_03dc                             ;; 07:6e92 $dc $03
    db   $ff                                           ;; 07:6e94 $ff

map0b_room05_06_tiles:
    db   $00, $02, $02, $01                            ;; 07:6e95 ????
    db   $5a, $22                                      ;; 07:6e99 ??
    db   $5a, $27                                      ;; 07:6e9b ??
    db   $5a, $33                                      ;; 07:6e9d ??
    db   $5a, $36                                      ;; 07:6e9f ??
    db   $5a, $43                                      ;; 07:6ea1 ??
    db   $5a, $46                                      ;; 07:6ea3 ??
    db   $5a, $52                                      ;; 07:6ea5 ??
    db   $5a, $57                                      ;; 07:6ea7 ??
    db   $ff, $ff                                      ;; 07:6ea9 ??

map0b_room06_06_script:
    SCRIPT_IDX script_00b8                             ;; 07:6eab $b8 $00
    db   $ff                                           ;; 07:6ead $ff

map0b_room06_06_tiles:
    db   $02, $00, $02, $00                            ;; 07:6eae ????
    db   $5a, $44                                      ;; 07:6eb2 ??
    db   $5a, $45                                      ;; 07:6eb4 ??
    db   $5a, $52                                      ;; 07:6eb6 ??
    db   $5a, $53                                      ;; 07:6eb8 ??
    db   $5a, $61                                      ;; 07:6eba ??
    db   $ff, $ff                                      ;; 07:6ebc ??

map0b_room07_06_script:
    SCRIPT_IDX script_00b8                             ;; 07:6ebe $b8 $00
    SCRIPT_AT_POS 1, 8, script_02a4                    ;; 07:6ec0 $18 $a4 $02
    db   $ff                                           ;; 07:6ec3 $ff

map0b_room07_06_tiles:
    db   $02, $02, $02, $00                            ;; 07:6ec4 ????
    db   $11, $18                                      ;; 07:6ec8 ??
    db   $5a, $43                                      ;; 07:6eca ??
    db   $5a, $46                                      ;; 07:6ecc ??
    db   $5a, $52                                      ;; 07:6ece ??
    db   $5a, $57                                      ;; 07:6ed0 ??
    db   $5a, $62                                      ;; 07:6ed2 ??
    db   $5a, $67                                      ;; 07:6ed4 ??
    db   $ff, $ff                                      ;; 07:6ed6 ??

map0b_room00_07_script:
    SCRIPT_IDX script_0046                             ;; 07:6ed8 $46 $00
    SCRIPT_AT_POS 6, 8, script_0290                    ;; 07:6eda $68 $90 $02
    db   $ff                                           ;; 07:6edd $ff

map0b_room00_07_tiles:
    db   $02, $02, $00, $02                            ;; 07:6ede ????
    db   $0b, $11                                      ;; 07:6ee2 ??
    db   $0b, $12                                      ;; 07:6ee4 ??
    db   $0b, $13                                      ;; 07:6ee6 ??
    db   $0b, $16                                      ;; 07:6ee8 ??
    db   $0b, $17                                      ;; 07:6eea ??
    db   $0b, $18                                      ;; 07:6eec ??
    db   $0b, $21                                      ;; 07:6eee ??
    db   $0b, $28                                      ;; 07:6ef0 ??
    db   $11, $68                                      ;; 07:6ef2 ??
    db   $ff, $ff                                      ;; 07:6ef4 ??

map0b_room01_07_script:
    SCRIPT_IDX script_003d                             ;; 07:6ef6 $3d $00
    db   $ff                                           ;; 07:6ef8 $ff

map0b_room01_07_tiles:
    db   $02, $02, $00, $02                            ;; 07:6ef9 ????
    db   $5b, $11                                      ;; 07:6efd ??
    db   $5b, $12                                      ;; 07:6eff ??
    db   $5b, $17                                      ;; 07:6f01 ??
    db   $5b, $18                                      ;; 07:6f03 ??
    db   $5b, $21                                      ;; 07:6f05 ??
    db   $5b, $28                                      ;; 07:6f07 ??
    db   $ff, $ff                                      ;; 07:6f09 ??

map0b_room02_07_script:
    SCRIPT_IDX script_03e5                             ;; 07:6f0b $e5 $03
    db   $ff                                           ;; 07:6f0d $ff

map0b_room02_07_tiles:
    db   $02, $02, $00, $02                            ;; 07:6f0e ????
    db   $44, $11                                      ;; 07:6f12 ??
    db   $44, $12                                      ;; 07:6f14 ??
    db   $44, $17                                      ;; 07:6f16 ??
    db   $44, $18                                      ;; 07:6f18 ??
    db   $09, $33                                      ;; 07:6f1a ??
    db   $09, $34                                      ;; 07:6f1c ??
    db   $09, $35                                      ;; 07:6f1e ??
    db   $09, $36                                      ;; 07:6f20 ??
    db   $09, $43                                      ;; 07:6f22 ??
    db   $09, $44                                      ;; 07:6f24 ??
    db   $09, $45                                      ;; 07:6f26 ??
    db   $09, $46                                      ;; 07:6f28 ??
    db   $09, $54                                      ;; 07:6f2a ??
    db   $09, $55                                      ;; 07:6f2c ??
    db   $44, $61                                      ;; 07:6f2e ??
    db   $44, $62                                      ;; 07:6f30 ??
    db   $44, $67                                      ;; 07:6f32 ??
    db   $44, $68                                      ;; 07:6f34 ??
    db   $ff, $ff                                      ;; 07:6f36 ??

map0b_room03_07_script:
    dw   $ffff                                         ;; 07:6f38 $ff $ff
    db   $ff                                           ;; 07:6f3a $ff

map0b_room03_07_tiles:
    db   $00, $00, $00, $00                            ;; 07:6f3b ????
    db   $ff, $ff                                      ;; 07:6f3f ??

map0b_room04_07_script:
    SCRIPT_IDX script_005e                             ;; 07:6f41 $5e $00
    db   $ff                                           ;; 07:6f43 $ff

map0b_room04_07_tiles:
    db   $00, $02, $02, $02                            ;; 07:6f44 ????
    db   $41, $28                                      ;; 07:6f48 ??
    db   $41, $33                                      ;; 07:6f4a ??
    db   $41, $52                                      ;; 07:6f4c ??
    db   $41, $58                                      ;; 07:6f4e ??
    db   $41, $67                                      ;; 07:6f50 ??
    db   $ff, $ff                                      ;; 07:6f52 ??

map0b_room05_07_script:
    SCRIPT_IDX script_00b8                             ;; 07:6f54 $b8 $00
    db   $ff                                           ;; 07:6f56 $ff

map0b_room05_07_tiles:
    db   $00, $00, $01, $02                            ;; 07:6f57 ????
    db   $2c, $22                                      ;; 07:6f5b ??
    db   $2c, $24                                      ;; 07:6f5d ??
    db   $2c, $27                                      ;; 07:6f5f ??
    db   $2c, $52                                      ;; 07:6f61 ??
    db   $2c, $54                                      ;; 07:6f63 ??
    db   $2c, $57                                      ;; 07:6f65 ??
    db   $ff, $ff                                      ;; 07:6f67 ??

map0b_room06_07_script:
    SCRIPT_IDX script_03df                             ;; 07:6f69 $df $03
    db   $ff                                           ;; 07:6f6b $ff

map0b_room06_07_tiles:
    db   $00, $00, $02, $02                            ;; 07:6f6c ????
    db   $19, $11                                      ;; 07:6f70 ??
    db   $19, $12                                      ;; 07:6f72 ??
    db   $4f, $13                                      ;; 07:6f74 ??
    db   $4f, $16                                      ;; 07:6f76 ??
    db   $19, $17                                      ;; 07:6f78 ??
    db   $19, $18                                      ;; 07:6f7a ??
    db   $4f, $23                                      ;; 07:6f7c ??
    db   $4f, $26                                      ;; 07:6f7e ??
    db   $ff, $ff                                      ;; 07:6f80 ??

map0b_room07_07_script:
    SCRIPT_IDX script_00b8                             ;; 07:6f82 $b8 $00
    db   $ff                                           ;; 07:6f84 $ff

map0b_room07_07_tiles:
    db   $02, $00, $00, $02                            ;; 07:6f85 ????
    db   $2c, $13                                      ;; 07:6f89 ??
    db   $2c, $21                                      ;; 07:6f8b ??
    db   $2c, $33                                      ;; 07:6f8d ??
    db   $2c, $43                                      ;; 07:6f8f ??
    db   $2c, $51                                      ;; 07:6f91 ??
    db   $2c, $63                                      ;; 07:6f93 ??
    db   $ff, $ff                                      ;; 07:6f95 ??
