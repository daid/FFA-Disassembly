;; Disassembled with BadBoy Disassembler: https://github.com/daid/BadBoy


mapRoomPointers_09:
    db   $01, $04, $04, $05                            ;; 05:7cd7 ????
    dw   map09_room_tile_template                      ;; 05:7cdb $45 $7d
    ;;Door tile info
    db   $25, $35, $20, $30, $14, $03, $52, $53        ;; 05:7cdd ????????
    db   $24, $34, $21, $31, $12, $13, $42, $43        ;; 05:7ce5 ????????
    db   $15, $45, $10, $40, $01, $04, $51, $54        ;; 05:7ced ????????
    ;;Room data pointers
    dw   map09_room00_00_script, map09_room00_00_tiles ;; 05:7cf5 $71 $7d $74 $7d
    dw   map09_room01_00_script, map09_room01_00_tiles ;; 05:7cf9 $82 $7d $88 $7d
    dw   map09_room02_00_script, map09_room02_00_tiles ;; 05:7cfd $9a $7d $a3 $7d
    dw   map09_room03_00_script, map09_room03_00_tiles ;; 05:7d01 $bb $7d $be $7d
    dw   map09_room04_00_script, map09_room04_00_tiles ;; 05:7d05 $dc $7d $e2 $7d
    dw   map09_room00_01_script, map09_room00_01_tiles ;; 05:7d09 $fe $7d $01 $7e
    dw   map09_room01_01_script, map09_room01_01_tiles ;; 05:7d0d $1b $7e $1e $7e
    dw   map09_room02_01_script, map09_room02_01_tiles ;; 05:7d11 $2c $7e $35 $7e
    dw   map09_room03_01_script, map09_room03_01_tiles ;; 05:7d15 $45 $7e $4b $7e
    dw   map09_room04_01_script, map09_room04_01_tiles ;; 05:7d19 $63 $7e $69 $7e
    dw   map09_room00_02_script, map09_room00_02_tiles ;; 05:7d1d $7b $7e $7e $7e
    dw   map09_room01_02_script, map09_room01_02_tiles ;; 05:7d21 $92 $7e $95 $7e
    dw   map09_room02_02_script, map09_room02_02_tiles ;; 05:7d25 $af $7e $b2 $7e
    dw   map09_room03_02_script, map09_room03_02_tiles ;; 05:7d29 $c0 $7e $c3 $7e
    dw   map09_room04_02_script, map09_room04_02_tiles ;; 05:7d2d $d5 $7e $d8 $7e
    dw   map09_room00_03_script, map09_room00_03_tiles ;; 05:7d31 $de $7e $e4 $7e
    dw   map09_room01_03_script, map09_room01_03_tiles ;; 05:7d35 $14 $7f $17 $7f
    dw   map09_room02_03_script, map09_room02_03_tiles ;; 05:7d39 $2d $7f $30 $7f
    dw   map09_room03_03_script, map09_room03_03_tiles ;; 05:7d3d $3e $7f $44 $7f
    dw   map09_room04_03_script, map09_room04_03_tiles ;; 05:7d41 $54 $7f $57 $7f

map09_room_tile_template:
    db   $16, $01, $01, $01, $14, $03, $04, $04, $04, $05 ;; 05:7d45 ??????????
    db   $10,                $80,                $80, $15 ;; 05:7d4f ????
    db   $10,                $80,                $80, $15 ;; 05:7d53 ????
    db   $20,                $80,                $80, $25 ;; 05:7d57 ????
    db   $30,                $80,                $80, $35 ;; 05:7d5b ????
    db   $40,                $80,                $80, $45 ;; 05:7d5f ????
    db   $40,                $80,                $80, $45 ;; 05:7d63 ????
    db   $50, $51, $51, $51, $52, $53, $54, $54, $54, $55 ;; 05:7d67 ??????????

map09_room00_00_script:
    SCRIPT_IDX script_0082                             ;; 05:7d71 $82 $00
    db   $ff                                           ;; 05:7d73 $ff

map09_room00_00_tiles:
    db   $89, $02, $02, $00                            ;; 05:7d74 ????
    db   $2c, $36                                      ;; 05:7d78 ??
    db   $2c, $37                                      ;; 05:7d7a ??
    db   $2c, $47                                      ;; 05:7d7c ??
    db   $2c, $58                                      ;; 05:7d7e ??
    db   $ff, $ff                                      ;; 05:7d80 ??

map09_room01_00_script:
    SCRIPT_IDX script_0082                             ;; 05:7d82 $82 $00
    SCRIPT_AT_POS 1, 8, script_0361                    ;; 05:7d84 $18 $61 $03
    db   $ff                                           ;; 05:7d87 $ff

map09_room01_00_tiles:
    db   $02, $01, $02, $02                            ;; 05:7d88 ????
    db   $19, $16                                      ;; 05:7d8c ??
    db   $19, $17                                      ;; 05:7d8e ??
    db   $6a, $18                                      ;; 05:7d90 ??
    db   $19, $27                                      ;; 05:7d92 ??
    db   $19, $28                                      ;; 05:7d94 ??
    db   $19, $38                                      ;; 05:7d96 ??
    db   $ff, $ff                                      ;; 05:7d98 ??

map09_room02_00_script:
    SCRIPT_IDX script_0082                             ;; 05:7d9a $82 $00
    SCRIPT_AT_POS 6, 4, script_027d                    ;; 05:7d9c $64 $7d $02
    SCRIPT_AT_POS 1, 1, script_0363                    ;; 05:7d9f $11 $63 $03
    db   $ff                                           ;; 05:7da2 $ff

map09_room02_00_tiles:
    db   $00, $02, $02, $02                            ;; 05:7da3 ????
    db   $4f, $13                                      ;; 05:7da7 ??
    db   $4f, $24                                      ;; 05:7da9 ??
    db   $4f, $28                                      ;; 05:7dab ??
    db   $4f, $37                                      ;; 05:7dad ??
    db   $4f, $42                                      ;; 05:7daf ??
    db   $4f, $51                                      ;; 05:7db1 ??
    db   $4f, $54                                      ;; 05:7db3 ??
    db   $4e, $64                                      ;; 05:7db5 ??
    db   $4f, $65                                      ;; 05:7db7 ??
    db   $ff, $ff                                      ;; 05:7db9 ??

map09_room03_00_script:
    SCRIPT_IDX script_0082                             ;; 05:7dbb $82 $00
    db   $ff                                           ;; 05:7dbd $ff

map09_room03_00_tiles:
    db   $02, $00, $02, $00                            ;; 05:7dbe ????
    db   $09, $51                                      ;; 05:7dc2 ??
    db   $09, $52                                      ;; 05:7dc4 ??
    db   $09, $53                                      ;; 05:7dc6 ??
    db   $09, $56                                      ;; 05:7dc8 ??
    db   $09, $57                                      ;; 05:7dca ??
    db   $09, $58                                      ;; 05:7dcc ??
    db   $09, $61                                      ;; 05:7dce ??
    db   $09, $62                                      ;; 05:7dd0 ??
    db   $09, $63                                      ;; 05:7dd2 ??
    db   $09, $66                                      ;; 05:7dd4 ??
    db   $09, $67                                      ;; 05:7dd6 ??
    db   $09, $68                                      ;; 05:7dd8 ??
    db   $ff, $ff                                      ;; 05:7dda ??

map09_room04_00_script:
    SCRIPT_IDX script_009a                             ;; 05:7ddc $9a $00
    SCRIPT_AT_POS 1, 8, script_02f4                    ;; 05:7dde $18 $f4 $02
    db   $ff                                           ;; 05:7de1 $ff

map09_room04_00_tiles:
    db   $02, $02, $02, $01                            ;; 05:7de2 ????
    db   $02, $18                                      ;; 05:7de6 ??
    db   $4f, $24                                      ;; 05:7de8 ??
    db   $4f, $25                                      ;; 05:7dea ??
    db   $4f, $26                                      ;; 05:7dec ??
    db   $4f, $27                                      ;; 05:7dee ??
    db   $4f, $28                                      ;; 05:7df0 ??
    db   $4f, $41                                      ;; 05:7df2 ??
    db   $4f, $42                                      ;; 05:7df4 ??
    db   $4f, $43                                      ;; 05:7df6 ??
    db   $4f, $44                                      ;; 05:7df8 ??
    db   $4f, $45                                      ;; 05:7dfa ??
    db   $ff, $ff                                      ;; 05:7dfc ??

map09_room00_01_script:
    SCRIPT_IDX script_007f                             ;; 05:7dfe $7f $00
    db   $ff                                           ;; 05:7e00 $ff

map09_room00_01_tiles:
    db   $05, $02, $00, $00                            ;; 05:7e01 ????
    db   $47, $16                                      ;; 05:7e05 ??
    db   $47, $17                                      ;; 05:7e07 ??
    db   $47, $23                                      ;; 05:7e09 ??
    db   $47, $24                                      ;; 05:7e0b ??
    db   $47, $25                                      ;; 05:7e0d ??
    db   $47, $26                                      ;; 05:7e0f ??
    db   $47, $31                                      ;; 05:7e11 ??
    db   $47, $32                                      ;; 05:7e13 ??
    db   $47, $33                                      ;; 05:7e15 ??
    db   $47, $42                                      ;; 05:7e17 ??
    db   $ff, $ff                                      ;; 05:7e19 ??

map09_room01_01_script:
    SCRIPT_IDX script_00af                             ;; 05:7e1b $af $00
    db   $ff                                           ;; 05:7e1d $ff

map09_room01_01_tiles:
    db   $02, $09, $02, $02                            ;; 05:7e1e ????
    db   $4f, $24                                      ;; 05:7e22 ??
    db   $4f, $25                                      ;; 05:7e24 ??
    db   $4f, $54                                      ;; 05:7e26 ??
    db   $4f, $55                                      ;; 05:7e28 ??
    db   $ff, $ff                                      ;; 05:7e2a ??

map09_room02_01_script:
    SCRIPT_IDX script_03eb                             ;; 05:7e2c $eb $03
    SCRIPT_AT_POS 6, 1, script_027e                    ;; 05:7e2e $61 $7e $02
    SCRIPT_AT_POS 1, 8, script_0365                    ;; 05:7e31 $18 $65 $03
    db   $ff                                           ;; 05:7e34 $ff

map09_room02_01_tiles:
    db   $02, $02, $02, $01                            ;; 05:7e35 ????
    db   $4f, $21                                      ;; 05:7e39 ??
    db   $4f, $28                                      ;; 05:7e3b ??
    db   $4f, $51                                      ;; 05:7e3d ??
    db   $4f, $58                                      ;; 05:7e3f ??
    db   $4e, $61                                      ;; 05:7e41 ??
    db   $ff, $ff                                      ;; 05:7e43 ??

map09_room03_01_script:
    SCRIPT_IDX script_0190                             ;; 05:7e45 $90 $01
    SCRIPT_AT_POS 1, 8, script_0294                    ;; 05:7e47 $18 $94 $02
    db   $ff                                           ;; 05:7e4a $ff

map09_room03_01_tiles:
    db   $02, $02, $00, $00                            ;; 05:7e4b ????
    db   $11, $18                                      ;; 05:7e4f ??
    db   $47, $32                                      ;; 05:7e51 ??
    db   $47, $33                                      ;; 05:7e53 ??
    db   $47, $36                                      ;; 05:7e55 ??
    db   $47, $37                                      ;; 05:7e57 ??
    db   $47, $42                                      ;; 05:7e59 ??
    db   $47, $43                                      ;; 05:7e5b ??
    db   $47, $46                                      ;; 05:7e5d ??
    db   $47, $47                                      ;; 05:7e5f ??
    db   $ff, $ff                                      ;; 05:7e61 ??

map09_room04_01_script:
    SCRIPT_IDX script_0097                             ;; 05:7e63 $97 $00
    SCRIPT_AT_POS 1, 8, script_035a                    ;; 05:7e65 $18 $5a $03
    db   $ff                                           ;; 05:7e68 $ff

map09_room04_01_tiles:
    db   $02, $02, $01, $02                            ;; 05:7e69 ????
    db   $4f, $16                                      ;; 05:7e6d ??
    db   $11, $18                                      ;; 05:7e6f ??
    db   $4f, $26                                      ;; 05:7e71 ??
    db   $4f, $36                                      ;; 05:7e73 ??
    db   $4f, $56                                      ;; 05:7e75 ??
    db   $4f, $66                                      ;; 05:7e77 ??
    db   $ff, $ff                                      ;; 05:7e79 ??

map09_room00_02_script:
    SCRIPT_IDX script_0082                             ;; 05:7e7b $82 $00
    db   $ff                                           ;; 05:7e7d $ff

map09_room00_02_tiles:
    db   $00, $02, $00, $02                            ;; 05:7e7e ????
    db   $09, $18                                      ;; 05:7e82 ??
    db   $09, $26                                      ;; 05:7e84 ??
    db   $09, $27                                      ;; 05:7e86 ??
    db   $09, $28                                      ;; 05:7e88 ??
    db   $09, $34                                      ;; 05:7e8a ??
    db   $09, $35                                      ;; 05:7e8c ??
    db   $09, $36                                      ;; 05:7e8e ??
    db   $ff, $ff                                      ;; 05:7e90 ??

map09_room01_02_script:
    SCRIPT_IDX script_0082                             ;; 05:7e92 $82 $00
    db   $ff                                           ;; 05:7e94 $ff

map09_room01_02_tiles:
    db   $00, $00, $02, $02                            ;; 05:7e95 ????
    db   $05, $04                                      ;; 05:7e99 ??
    db   $16, $05                                      ;; 05:7e9b ??
    db   $15, $14                                      ;; 05:7e9d ??
    db   $10, $15                                      ;; 05:7e9f ??
    db   $15, $24                                      ;; 05:7ea1 ??
    db   $10, $25                                      ;; 05:7ea3 ??
    db   $15, $34                                      ;; 05:7ea5 ??
    db   $10, $35                                      ;; 05:7ea7 ??
    db   $1b, $44                                      ;; 05:7ea9 ??
    db   $17, $45                                      ;; 05:7eab ??
    db   $ff, $ff                                      ;; 05:7ead ??

map09_room02_02_script:
    SCRIPT_IDX script_007f                             ;; 05:7eaf $7f $00
    db   $ff                                           ;; 05:7eb1 $ff

map09_room02_02_tiles:
    db   $00, $00, $05, $02                            ;; 05:7eb2 ????
    db   $4f, $33                                      ;; 05:7eb6 ??
    db   $4f, $36                                      ;; 05:7eb8 ??
    db   $4f, $43                                      ;; 05:7eba ??
    db   $4f, $46                                      ;; 05:7ebc ??
    db   $ff, $ff                                      ;; 05:7ebe ??

map09_room03_02_script:
    SCRIPT_IDX script_012a                             ;; 05:7ec0 $2a $01
    db   $ff                                           ;; 05:7ec2 $ff

map09_room03_02_tiles:
    db   $02, $02, $00, $02                            ;; 05:7ec3 ????
    db   $19, $11                                      ;; 05:7ec7 ??
    db   $19, $12                                      ;; 05:7ec9 ??
    db   $19, $21                                      ;; 05:7ecb ??
    db   $19, $51                                      ;; 05:7ecd ??
    db   $19, $61                                      ;; 05:7ecf ??
    db   $19, $62                                      ;; 05:7ed1 ??
    db   $ff, $ff                                      ;; 05:7ed3 ??

map09_room04_02_script:
    dw   $ffff                                         ;; 05:7ed5 $ff $ff
    db   $ff                                           ;; 05:7ed7 $ff

map09_room04_02_tiles:
    db   $00, $00, $00, $00                            ;; 05:7ed8 ????
    db   $ff, $ff                                      ;; 05:7edc ??

map09_room00_03_script:
    SCRIPT_IDX script_0097                             ;; 05:7ede $97 $00
    SCRIPT_AT_POS 6, 1, script_0369                    ;; 05:7ee0 $61 $69 $03
    db   $ff                                           ;; 05:7ee3 $ff

map09_room00_03_tiles:
    db   $00, $02, $02, $02                            ;; 05:7ee4 ????
    db   $16, $25                                      ;; 05:7ee8 ??
    db   $01, $26                                      ;; 05:7eea ??
    db   $5d, $27                                      ;; 05:7eec ??
    db   $04, $28                                      ;; 05:7eee ??
    db   $10, $35                                      ;; 05:7ef0 ??
    db   $19, $36                                      ;; 05:7ef2 ??
    db   $40, $45                                      ;; 05:7ef4 ??
    db   $19, $46                                      ;; 05:7ef6 ??
    db   $19, $47                                      ;; 05:7ef8 ??
    db   $19, $48                                      ;; 05:7efa ??
    db   $3b, $52                                      ;; 05:7efc ??
    db   $37, $53                                      ;; 05:7efe ??
    db   $50, $55                                      ;; 05:7f00 ??
    db   $51, $56                                      ;; 05:7f02 ??
    db   $51, $57                                      ;; 05:7f04 ??
    db   $51, $58                                      ;; 05:7f06 ??
    db   $11, $61                                      ;; 05:7f08 ??
    db   $45, $62                                      ;; 05:7f0a ??
    db   $40, $63                                      ;; 05:7f0c ??
    db   $55, $72                                      ;; 05:7f0e ??
    db   $50, $73                                      ;; 05:7f10 ??
    db   $ff, $ff                                      ;; 05:7f12 ??

map09_room01_03_script:
    SCRIPT_IDX script_0049                             ;; 05:7f14 $49 $00
    db   $ff                                           ;; 05:7f16 $ff

map09_room01_03_tiles:
    db   $00, $00, $02, $02                            ;; 05:7f17 ????
    db   $09, $25                                      ;; 05:7f1b ??
    db   $09, $33                                      ;; 05:7f1d ??
    db   $09, $34                                      ;; 05:7f1f ??
    db   $09, $35                                      ;; 05:7f21 ??
    db   $09, $44                                      ;; 05:7f23 ??
    db   $09, $45                                      ;; 05:7f25 ??
    db   $09, $46                                      ;; 05:7f27 ??
    db   $09, $54                                      ;; 05:7f29 ??
    db   $ff, $ff                                      ;; 05:7f2b ??

map09_room02_03_script:
    SCRIPT_IDX script_0094                             ;; 05:7f2d $94 $00
    db   $ff                                           ;; 05:7f2f $ff

map09_room02_03_tiles:
    db   $00, $00, $02, $02                            ;; 05:7f30 ????
    db   $47, $24                                      ;; 05:7f34 ??
    db   $47, $35                                      ;; 05:7f36 ??
    db   $47, $44                                      ;; 05:7f38 ??
    db   $47, $55                                      ;; 05:7f3a ??
    db   $ff, $ff                                      ;; 05:7f3c ??

map09_room03_03_script:
    SCRIPT_IDX script_00a6                             ;; 05:7f3e $a6 $00
    SCRIPT_AT_POS 1, 8, script_0399                    ;; 05:7f40 $18 $99 $03
    db   $ff                                           ;; 05:7f43 $ff

map09_room03_03_tiles:
    db   $02, $00, $02, $02                            ;; 05:7f44 ????
    db   $4f, $16                                      ;; 05:7f48 ??
    db   $11, $18                                      ;; 05:7f4a ??
    db   $4f, $26                                      ;; 05:7f4c ??
    db   $4f, $36                                      ;; 05:7f4e ??
    db   $4f, $46                                      ;; 05:7f50 ??
    db   $ff, $ff                                      ;; 05:7f52 ??

map09_room04_03_script:
    dw   $ffff                                         ;; 05:7f54 $ff $ff
    db   $ff                                           ;; 05:7f56 $ff

map09_room04_03_tiles:
    db   $00, $00, $00, $00                            ;; 05:7f57 ????
    db   $ff, $ff                                      ;; 05:7f5b ??
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
