;; Disassembled with BadBoy Disassembler: https://github.com/daid/BadBoy


mapRoomPointers_04:
    db   $01, $04, $08, $08                            ;; 07:5932 ....
    dw   map04_room_tile_template                      ;; 07:5936 $50 $5a
    ;;Door tile info
    db   $25, $35, $20, $30, $14, $03, $52, $53        ;; 07:5938 ..??....
    db   $24, $34, $21, $31, $12, $13, $42, $43        ;; 07:5940 ????..??
    db   $15, $45, $10, $40, $28, $04, $51, $54        ;; 07:5948 ........
    ;;Room data pointers
    dw   map04_room00_00_script, map04_room00_00_tiles ;; 07:5950 $7c $5a $7f $5a
    dw   map04_room01_00_script, map04_room01_00_tiles ;; 07:5954 $b7 $5a $bd $5a
    dw   map04_room02_00_script, map04_room02_00_tiles ;; 07:5958 $c5 $5a $c8 $5a
    dw   map04_room03_00_script, map04_room03_00_tiles ;; 07:595c $fa $5a $fd $5a
    dw   map04_room04_00_script, map04_room04_00_tiles ;; 07:5960 $03 $5b $06 $5b
    dw   map04_room05_00_script, map04_room05_00_tiles ;; 07:5964 $1c $5b $22 $5b
    dw   map04_room06_00_script, map04_room06_00_tiles ;; 07:5968 $32 $5b $35 $5b
    dw   map04_room07_00_script, map04_room07_00_tiles ;; 07:596c $6b $5b $71 $5b
    dw   map04_room00_01_script, map04_room00_01_tiles ;; 07:5970 $c5 $5b $c8 $5b
    dw   map04_room01_01_script, map04_room01_01_tiles ;; 07:5974 $02 $5c $05 $5c
    dw   map04_room02_01_script, map04_room02_01_tiles ;; 07:5978 $0b $5c $11 $5c
    dw   map04_room03_01_script, map04_room03_01_tiles ;; 07:597c $25 $5c $28 $5c
    dw   map04_room04_01_script, map04_room04_01_tiles ;; 07:5980 $2e $5c $31 $5c
    dw   map04_room05_01_script, map04_room05_01_tiles ;; 07:5984 $37 $5c $3d $5c
    dw   map04_room06_01_script, map04_room06_01_tiles ;; 07:5988 $53 $5c $56 $5c
    dw   map04_room07_01_script, map04_room07_01_tiles ;; 07:598c $66 $5c $69 $5c
    dw   map04_room00_02_script, map04_room00_02_tiles ;; 07:5990 $7f $5c $88 $5c
    dw   map04_room01_02_script, map04_room01_02_tiles ;; 07:5994 $bc $5c $bf $5c
    dw   map04_room02_02_script, map04_room02_02_tiles ;; 07:5998 $d1 $5c $d7 $5c
    dw   map04_room03_02_script, map04_room03_02_tiles ;; 07:599c $fd $5c $09 $5d
    dw   map04_room04_02_script, map04_room04_02_tiles ;; 07:59a0 $27 $5d $2a $5d
    dw   map04_room05_02_script, map04_room05_02_tiles ;; 07:59a4 $50 $5d $53 $5d
    dw   map04_room06_02_script, map04_room06_02_tiles ;; 07:59a8 $79 $5d $7c $5d
    dw   map04_room07_02_script, map04_room07_02_tiles ;; 07:59ac $8a $5d $8d $5d
    dw   map04_room00_03_script, map04_room00_03_tiles ;; 07:59b0 $9f $5d $a2 $5d
    dw   map04_room01_03_script, map04_room01_03_tiles ;; 07:59b4 $b0 $5d $b3 $5d
    dw   map04_room02_03_script, map04_room02_03_tiles ;; 07:59b8 $cd $5d $d0 $5d
    dw   map04_room03_03_script, map04_room03_03_tiles ;; 07:59bc $e6 $5d $e9 $5d
    dw   map04_room04_03_script, map04_room04_03_tiles ;; 07:59c0 $fb $5d $01 $5e
    dw   map04_room05_03_script, map04_room05_03_tiles ;; 07:59c4 $19 $5e $1c $5e
    dw   map04_room06_03_script, map04_room06_03_tiles ;; 07:59c8 $22 $5e $25 $5e
    dw   map04_room07_03_script, map04_room07_03_tiles ;; 07:59cc $3b $5e $3e $5e
    dw   map04_room00_04_script, map04_room00_04_tiles ;; 07:59d0 $50 $5e $56 $5e
    dw   map04_room01_04_script, map04_room01_04_tiles ;; 07:59d4 $6a $5e $6d $5e
    dw   map04_room02_04_script, map04_room02_04_tiles ;; 07:59d8 $75 $5e $78 $5e
    dw   map04_room03_04_script, map04_room03_04_tiles ;; 07:59dc $96 $5e $99 $5e
    dw   map04_room04_04_script, map04_room04_04_tiles ;; 07:59e0 $9f $5e $a2 $5e
    dw   map04_room05_04_script, map04_room05_04_tiles ;; 07:59e4 $bc $5e $bf $5e
    dw   map04_room06_04_script, map04_room06_04_tiles ;; 07:59e8 $dd $5e $e0 $5e
    dw   map04_room07_04_script, map04_room07_04_tiles ;; 07:59ec $f2 $5e $f5 $5e
    dw   map04_room00_05_script, map04_room00_05_tiles ;; 07:59f0 $0d $5f $10 $5f
    dw   map04_room01_05_script, map04_room01_05_tiles ;; 07:59f4 $22 $5f $25 $5f
    dw   map04_room02_05_script, map04_room02_05_tiles ;; 07:59f8 $33 $5f $36 $5f
    dw   map04_room03_05_script, map04_room03_05_tiles ;; 07:59fc $46 $5f $49 $5f
    dw   map04_room04_05_script, map04_room04_05_tiles ;; 07:5a00 $67 $5f $76 $5f
    dw   map04_room05_05_script, map04_room05_05_tiles ;; 07:5a04 $84 $5f $87 $5f
    dw   map04_room06_05_script, map04_room06_05_tiles ;; 07:5a08 $8d $5f $9c $5f
    dw   map04_room07_05_script, map04_room07_05_tiles ;; 07:5a0c $aa $5f $ad $5f
    dw   map04_room00_06_script, map04_room00_06_tiles ;; 07:5a10 $cf $5f $d5 $5f
    dw   map04_room01_06_script, map04_room01_06_tiles ;; 07:5a14 $07 $60 $0a $60
    dw   map04_room02_06_script, map04_room02_06_tiles ;; 07:5a18 $18 $60 $1b $60
    dw   map04_room03_06_script, map04_room03_06_tiles ;; 07:5a1c $21 $60 $24 $60
    dw   map04_room04_06_script, map04_room04_06_tiles ;; 07:5a20 $42 $60 $45 $60
    dw   map04_room05_06_script, map04_room05_06_tiles ;; 07:5a24 $4f $60 $52 $60
    dw   map04_room06_06_script, map04_room06_06_tiles ;; 07:5a28 $70 $60 $73 $60
    dw   map04_room07_06_script, map04_room07_06_tiles ;; 07:5a2c $79 $60 $7c $60
    dw   map04_room00_07_script, map04_room00_07_tiles ;; 07:5a30 $8a $60 $8d $60
    dw   map04_room01_07_script, map04_room01_07_tiles ;; 07:5a34 $9f $60 $a2 $60
    dw   map04_room02_07_script, map04_room02_07_tiles ;; 07:5a38 $b8 $60 $be $60
    dw   map04_room03_07_script, map04_room03_07_tiles ;; 07:5a3c $de $60 $e4 $60
    dw   map04_room04_07_script, map04_room04_07_tiles ;; 07:5a40 $10 $61 $16 $61
    dw   map04_room05_07_script, map04_room05_07_tiles ;; 07:5a44 $26 $61 $2c $61
    dw   map04_room06_07_script, map04_room06_07_tiles ;; 07:5a48 $3a $61 $49 $61
    dw   map04_room07_07_script, map04_room07_07_tiles ;; 07:5a4c $57 $61 $5a $61

map04_room_tile_template:
    db   $06, $28, $28, $28, $14, $03, $04, $04, $04, $05 ;; 07:5a50 ..........
    db   $10,                $80,                $80, $15 ;; 07:5a5a ....
    db   $10,                $80,                $80, $15 ;; 07:5a5e ....
    db   $20,                $80,                $80, $25 ;; 07:5a62 ....
    db   $30,                $80,                $80, $35 ;; 07:5a66 ....
    db   $40,                $80,                $80, $45 ;; 07:5a6a ....
    db   $40,                $80,                $80, $45 ;; 07:5a6e ....
    db   $50, $51, $51, $51, $52, $53, $54, $54, $54, $55 ;; 07:5a72 ..........

map04_room00_00_script:
    SCRIPT_IDX script_003d                             ;; 07:5a7c $3d $00
    db   $ff                                           ;; 07:5a7e $ff

map04_room00_00_tiles:
    db   $02, $02, $02, $0c                            ;; 07:5a7f ????
    db   $17, $11                                      ;; 07:5a83 ??
    db   $19, $12                                      ;; 07:5a85 ??
    db   $1d, $16                                      ;; 07:5a87 ??
    db   $0f, $17                                      ;; 07:5a89 ??
    db   $16, $18                                      ;; 07:5a8b ??
    db   $0d, $21                                      ;; 07:5a8d ??
    db   $38, $23                                      ;; 07:5a8f ??
    db   $38, $24                                      ;; 07:5a91 ??
    db   $38, $25                                      ;; 07:5a93 ??
    db   $38, $26                                      ;; 07:5a95 ??
    db   $1f, $27                                      ;; 07:5a97 ??
    db   $38, $33                                      ;; 07:5a99 ??
    db   $36, $34                                      ;; 07:5a9b ??
    db   $36, $35                                      ;; 07:5a9d ??
    db   $38, $36                                      ;; 07:5a9f ??
    db   $38, $43                                      ;; 07:5aa1 ??
    db   $36, $44                                      ;; 07:5aa3 ??
    db   $36, $45                                      ;; 07:5aa5 ??
    db   $38, $46                                      ;; 07:5aa7 ??
    db   $38, $53                                      ;; 07:5aa9 ??
    db   $38, $54                                      ;; 07:5aab ??
    db   $38, $55                                      ;; 07:5aad ??
    db   $38, $56                                      ;; 07:5aaf ??
    db   $16, $63                                      ;; 07:5ab1 ??
    db   $16, $66                                      ;; 07:5ab3 ??
    db   $ff, $ff                                      ;; 07:5ab5 ??

map04_room01_00_script:
    SCRIPT_IDX script_003d                             ;; 07:5ab7 $3d $00
    SCRIPT_AT_POS 1, 8, script_0347                    ;; 07:5ab9 $18 $47 $03
    db   $ff                                           ;; 07:5abc $ff

map04_room01_00_tiles:
    db   $01, $02, $02, $02                            ;; 07:5abd ????
    db   $11, $18                                      ;; 07:5ac1 ??
    db   $ff, $ff                                      ;; 07:5ac3 ??

map04_room02_00_script:
    SCRIPT_IDX script_00a9                             ;; 07:5ac5 $a9 $00
    db   $ff                                           ;; 07:5ac7 $ff

map04_room02_00_tiles:
    db   $02, $01, $02, $01                            ;; 07:5ac8 ????
    db   $16, $11                                      ;; 07:5acc ??
    db   $38, $13                                      ;; 07:5ace ??
    db   $5c, $14                                      ;; 07:5ad0 ??
    db   $5d, $15                                      ;; 07:5ad2 ??
    db   $38, $16                                      ;; 07:5ad4 ??
    db   $16, $18                                      ;; 07:5ad6 ??
    db   $38, $23                                      ;; 07:5ad8 ??
    db   $5a, $24                                      ;; 07:5ada ??
    db   $5b, $25                                      ;; 07:5adc ??
    db   $38, $26                                      ;; 07:5ade ??
    db   $38, $33                                      ;; 07:5ae0 ??
    db   $36, $34                                      ;; 07:5ae2 ??
    db   $36, $35                                      ;; 07:5ae4 ??
    db   $38, $36                                      ;; 07:5ae6 ??
    db   $38, $43                                      ;; 07:5ae8 ??
    db   $38, $44                                      ;; 07:5aea ??
    db   $38, $45                                      ;; 07:5aec ??
    db   $38, $46                                      ;; 07:5aee ??
    db   $0b, $51                                      ;; 07:5af0 ??
    db   $0b, $58                                      ;; 07:5af2 ??
    db   $1b, $61                                      ;; 07:5af4 ??
    db   $1b, $68                                      ;; 07:5af6 ??
    db   $ff, $ff                                      ;; 07:5af8 ??

map04_room03_00_script:
    dw   $ffff                                         ;; 07:5afa $ff $ff
    db   $ff                                           ;; 07:5afc $ff

map04_room03_00_tiles:
    db   $00, $00, $00, $00                            ;; 07:5afd ????
    db   $ff, $ff                                      ;; 07:5b01 ??

map04_room04_00_script:
    SCRIPT_IDX script_00e3                             ;; 07:5b03 $e3 $00
    db   $ff                                           ;; 07:5b05 $ff

map04_room04_00_tiles:
    db   $00, $02, $02, $01                            ;; 07:5b06 ....
    db   $46, $11                                      ;; 07:5b0a ..
    db   $46, $12                                      ;; 07:5b0c ..
    db   $46, $17                                      ;; 07:5b0e ..
    db   $46, $18                                      ;; 07:5b10 ..
    db   $46, $61                                      ;; 07:5b12 ..
    db   $46, $62                                      ;; 07:5b14 ..
    db   $46, $67                                      ;; 07:5b16 ..
    db   $46, $68                                      ;; 07:5b18 ..
    db   $ff, $ff                                      ;; 07:5b1a .?

map04_room05_00_script:
    SCRIPT_IDX script_003d                             ;; 07:5b1c $3d $00
    SCRIPT_AT_POS 1, 8, script_02c0                    ;; 07:5b1e $18 $c0 $02
    db   $ff                                           ;; 07:5b21 $ff

map04_room05_00_tiles:
    db   $02, $00, $02, $02                            ;; 07:5b22 ....
    db   $46, $11                                      ;; 07:5b26 ..
    db   $11, $18                                      ;; 07:5b28 ..
    db   $46, $21                                      ;; 07:5b2a ..
    db   $46, $51                                      ;; 07:5b2c ..
    db   $46, $61                                      ;; 07:5b2e ..
    db   $ff, $ff                                      ;; 07:5b30 .?

map04_room06_00_script:
    SCRIPT_IDX script_0513                             ;; 07:5b32 $13 $05
    db   $ff                                           ;; 07:5b34 $ff

map04_room06_00_tiles:
    db   $09, $02, $02, $80                            ;; 07:5b35 ????
    db   $37, $11                                      ;; 07:5b39 ??
    db   $22, $12                                      ;; 07:5b3b ??
    db   $23, $13                                      ;; 07:5b3d ??
    db   $22, $14                                      ;; 07:5b3f ??
    db   $23, $15                                      ;; 07:5b41 ??
    db   $22, $16                                      ;; 07:5b43 ??
    db   $23, $17                                      ;; 07:5b45 ??
    db   $37, $18                                      ;; 07:5b47 ??
    db   $22, $21                                      ;; 07:5b49 ??
    db   $23, $28                                      ;; 07:5b4b ??
    db   $23, $31                                      ;; 07:5b4d ??
    db   $22, $38                                      ;; 07:5b4f ??
    db   $22, $41                                      ;; 07:5b51 ??
    db   $23, $48                                      ;; 07:5b53 ??
    db   $23, $51                                      ;; 07:5b55 ??
    db   $22, $58                                      ;; 07:5b57 ??
    db   $37, $61                                      ;; 07:5b59 ??
    db   $23, $62                                      ;; 07:5b5b ??
    db   $22, $63                                      ;; 07:5b5d ??
    db   $23, $64                                      ;; 07:5b5f ??
    db   $22, $65                                      ;; 07:5b61 ??
    db   $23, $66                                      ;; 07:5b63 ??
    db   $22, $67                                      ;; 07:5b65 ??
    db   $37, $68                                      ;; 07:5b67 ??
    db   $ff, $ff                                      ;; 07:5b69 ??

map04_room07_00_script:
    SCRIPT_IDX script_003d                             ;; 07:5b6b $3d $00
    SCRIPT_AT_POS 4, 6, script_040a                    ;; 07:5b6d $46 $0a $04
    db   $ff                                           ;; 07:5b70 $ff

map04_room07_00_tiles:
    db   $02, $01, $02, $02                            ;; 07:5b71 ????
    db   $2c, $11                                      ;; 07:5b75 ??
    db   $2c, $12                                      ;; 07:5b77 ??
    db   $2c, $13                                      ;; 07:5b79 ??
    db   $2c, $14                                      ;; 07:5b7b ??
    db   $2c, $15                                      ;; 07:5b7d ??
    db   $2c, $16                                      ;; 07:5b7f ??
    db   $2c, $17                                      ;; 07:5b81 ??
    db   $2c, $18                                      ;; 07:5b83 ??
    db   $2c, $21                                      ;; 07:5b85 ??
    db   $2c, $22                                      ;; 07:5b87 ??
    db   $2c, $23                                      ;; 07:5b89 ??
    db   $2c, $24                                      ;; 07:5b8b ??
    db   $2c, $25                                      ;; 07:5b8d ??
    db   $2c, $26                                      ;; 07:5b8f ??
    db   $2c, $27                                      ;; 07:5b91 ??
    db   $2c, $28                                      ;; 07:5b93 ??
    db   $07, $33                                      ;; 07:5b95 ??
    db   $07, $34                                      ;; 07:5b97 ??
    db   $64, $35                                      ;; 07:5b99 ??
    db   $64, $36                                      ;; 07:5b9b ??
    db   $64, $37                                      ;; 07:5b9d ??
    db   $07, $38                                      ;; 07:5b9f ??
    db   $29, $46                                      ;; 07:5ba1 ??
    db   $64, $47                                      ;; 07:5ba3 ??
    db   $07, $48                                      ;; 07:5ba5 ??
    db   $07, $53                                      ;; 07:5ba7 ??
    db   $07, $54                                      ;; 07:5ba9 ??
    db   $64, $55                                      ;; 07:5bab ??
    db   $64, $56                                      ;; 07:5bad ??
    db   $64, $57                                      ;; 07:5baf ??
    db   $07, $58                                      ;; 07:5bb1 ??
    db   $2d, $61                                      ;; 07:5bb3 ??
    db   $2d, $62                                      ;; 07:5bb5 ??
    db   $2d, $63                                      ;; 07:5bb7 ??
    db   $2d, $64                                      ;; 07:5bb9 ??
    db   $2d, $65                                      ;; 07:5bbb ??
    db   $2d, $66                                      ;; 07:5bbd ??
    db   $2d, $67                                      ;; 07:5bbf ??
    db   $2d, $68                                      ;; 07:5bc1 ??
    db   $ff, $ff                                      ;; 07:5bc3 ??

map04_room00_01_script:
    SCRIPT_IDX script_051f                             ;; 07:5bc5 $1f $05
    db   $ff                                           ;; 07:5bc7 $ff

map04_room00_01_tiles:
    db   $02, $02, $02, $04                            ;; 07:5bc8 ....
    db   $0f, $11                                      ;; 07:5bcc ..
    db   $1d, $12                                      ;; 07:5bce ..
    db   $0f, $13                                      ;; 07:5bd0 ..
    db   $0f, $16                                      ;; 07:5bd2 ..
    db   $1d, $17                                      ;; 07:5bd4 ..
    db   $0f, $18                                      ;; 07:5bd6 ..
    db   $1f, $21                                      ;; 07:5bd8 ..
    db   $36, $22                                      ;; 07:5bda ..
    db   $1f, $23                                      ;; 07:5bdc ..
    db   $1f, $26                                      ;; 07:5bde ..
    db   $36, $27                                      ;; 07:5be0 ..
    db   $1f, $28                                      ;; 07:5be2 ..
    db   $38, $31                                      ;; 07:5be4 ..
    db   $36, $32                                      ;; 07:5be6 ..
    db   $38, $33                                      ;; 07:5be8 ..
    db   $38, $36                                      ;; 07:5bea ..
    db   $36, $37                                      ;; 07:5bec ..
    db   $38, $38                                      ;; 07:5bee ..
    db   $38, $42                                      ;; 07:5bf0 ..
    db   $38, $47                                      ;; 07:5bf2 ..
    db   $17, $53                                      ;; 07:5bf4 ..
    db   $4f, $54                                      ;; 07:5bf6 ..
    db   $4f, $55                                      ;; 07:5bf8 ..
    db   $19, $56                                      ;; 07:5bfa ..
    db   $16, $63                                      ;; 07:5bfc ..
    db   $16, $66                                      ;; 07:5bfe ..
    db   $ff, $ff                                      ;; 07:5c00 .?

map04_room01_01_script:
    dw   $ffff                                         ;; 07:5c02 $ff $ff
    db   $ff                                           ;; 07:5c04 $ff

map04_room01_01_tiles:
    db   $00, $00, $00, $00                            ;; 07:5c05 ????
    db   $ff, $ff                                      ;; 07:5c09 ??

map04_room02_01_script:
    SCRIPT_IDX script_003d                             ;; 07:5c0b $3d $00
    SCRIPT_AT_POS 4, 5, script_02d7                    ;; 07:5c0d $45 $d7 $02
    db   $ff                                           ;; 07:5c10 $ff

map04_room02_01_tiles:
    db   $02, $02, $01, $02                            ;; 07:5c11 ????
    db   $2a, $33                                      ;; 07:5c15 ??
    db   $2a, $34                                      ;; 07:5c17 ??
    db   $2a, $35                                      ;; 07:5c19 ??
    db   $2a, $36                                      ;; 07:5c1b ??
    db   $2a, $43                                      ;; 07:5c1d ??
    db   $02, $45                                      ;; 07:5c1f ??
    db   $2a, $46                                      ;; 07:5c21 ??
    db   $ff, $ff                                      ;; 07:5c23 ??

map04_room03_01_script:
    dw   $ffff                                         ;; 07:5c25 $ff $ff
    db   $ff                                           ;; 07:5c27 $ff

map04_room03_01_tiles:
    db   $00, $00, $00, $00                            ;; 07:5c28 ????
    db   $ff, $ff                                      ;; 07:5c2c ??

map04_room04_01_script:
    SCRIPT_IDX script_00e0                             ;; 07:5c2e $e0 $00
    db   $ff                                           ;; 07:5c30 $ff

map04_room04_01_tiles:
    db   $02, $02, $01, $02                            ;; 07:5c31 ....
    db   $ff, $ff                                      ;; 07:5c35 .?

map04_room05_01_script:
    SCRIPT_IDX script_00a9                             ;; 07:5c37 $a9 $00
    SCRIPT_AT_POS 1, 8, script_02d2                    ;; 07:5c39 $18 $d2 $02
    db   $ff                                           ;; 07:5c3c $ff

map04_room05_01_tiles:
    db   $02, $02, $02, $01                            ;; 07:5c3d ????
    db   $02, $18                                      ;; 07:5c41 ??
    db   $37, $23                                      ;; 07:5c43 ??
    db   $37, $24                                      ;; 07:5c45 ??
    db   $37, $25                                      ;; 07:5c47 ??
    db   $37, $35                                      ;; 07:5c49 ??
    db   $37, $36                                      ;; 07:5c4b ??
    db   $37, $37                                      ;; 07:5c4d ??
    db   $37, $38                                      ;; 07:5c4f ??
    db   $ff, $ff                                      ;; 07:5c51 ??

map04_room06_01_script:
    SCRIPT_IDX script_00b8                             ;; 07:5c53 $b8 $00
    db   $ff                                           ;; 07:5c55 $ff

map04_room06_01_tiles:
    db   $00, $02, $00, $02                            ;; 07:5c56 ????
    db   $64, $16                                      ;; 07:5c5a ??
    db   $64, $26                                      ;; 07:5c5c ??
    db   $64, $34                                      ;; 07:5c5e ??
    db   $64, $35                                      ;; 07:5c60 ??
    db   $64, $36                                      ;; 07:5c62 ??
    db   $ff, $ff                                      ;; 07:5c64 ??

map04_room07_01_script:
    SCRIPT_IDX script_00bb                             ;; 07:5c66 $bb $00
    db   $ff                                           ;; 07:5c68 $ff

map04_room07_01_tiles:
    db   $02, $00, $02, $01                            ;; 07:5c69 ????
    db   $27, $23                                      ;; 07:5c6d ??
    db   $27, $33                                      ;; 07:5c6f ??
    db   $27, $43                                      ;; 07:5c71 ??
    db   $27, $44                                      ;; 07:5c73 ??
    db   $27, $45                                      ;; 07:5c75 ??
    db   $27, $46                                      ;; 07:5c77 ??
    db   $27, $53                                      ;; 07:5c79 ??
    db   $27, $63                                      ;; 07:5c7b ??
    db   $ff, $ff                                      ;; 07:5c7d ??

map04_room00_02_script:
    SCRIPT_IDX script_00a9                             ;; 07:5c7f $a9 $00
    SCRIPT_AT_POS 6, 8, script_02cc                    ;; 07:5c81 $68 $cc $02
    SCRIPT_AT_POS 3, 2, script_04e8                    ;; 07:5c84 $32 $e8 $04
    db   $ff                                           ;; 07:5c87 $ff

map04_room00_02_tiles:
    db   $01, $02, $02, $02                            ;; 07:5c88 ????
    db   $09, $11                                      ;; 07:5c8c ??
    db   $09, $12                                      ;; 07:5c8e ??
    db   $09, $13                                      ;; 07:5c90 ??
    db   $09, $14                                      ;; 07:5c92 ??
    db   $2e, $15                                      ;; 07:5c94 ??
    db   $09, $17                                      ;; 07:5c96 ??
    db   $09, $24                                      ;; 07:5c98 ??
    db   $09, $27                                      ;; 07:5c9a ??
    db   $29, $32                                      ;; 07:5c9c ??
    db   $09, $34                                      ;; 07:5c9e ??
    db   $09, $37                                      ;; 07:5ca0 ??
    db   $2e, $41                                      ;; 07:5ca2 ??
    db   $09, $44                                      ;; 07:5ca4 ??
    db   $09, $46                                      ;; 07:5ca6 ??
    db   $09, $47                                      ;; 07:5ca8 ??
    db   $09, $51                                      ;; 07:5caa ??
    db   $09, $53                                      ;; 07:5cac ??
    db   $09, $54                                      ;; 07:5cae ??
    db   $09, $55                                      ;; 07:5cb0 ??
    db   $09, $56                                      ;; 07:5cb2 ??
    db   $09, $61                                      ;; 07:5cb4 ??
    db   $09, $63                                      ;; 07:5cb6 ??
    db   $2e, $66                                      ;; 07:5cb8 ??
    db   $ff, $ff                                      ;; 07:5cba ??

map04_room01_02_script:
    SCRIPT_IDX script_00a0                             ;; 07:5cbc $a0 $00
    db   $ff                                           ;; 07:5cbe $ff

map04_room01_02_tiles:
    db   $02, $01, $02, $00                            ;; 07:5cbf ????
    db   $23, $27                                      ;; 07:5cc3 ??
    db   $22, $34                                      ;; 07:5cc5 ??
    db   $23, $42                                      ;; 07:5cc7 ??
    db   $22, $51                                      ;; 07:5cc9 ??
    db   $22, $53                                      ;; 07:5ccb ??
    db   $22, $55                                      ;; 07:5ccd ??
    db   $ff, $ff                                      ;; 07:5ccf ??

map04_room02_02_script:
    SCRIPT_IDX script_0223                             ;; 07:5cd1 $23 $02
    SCRIPT_AT_POS 2, 1, script_0403                    ;; 07:5cd3 $21 $03 $04
    db   $ff                                           ;; 07:5cd6 $ff

map04_room02_02_tiles:
    db   $02, $02, $02, $01                            ;; 07:5cd7 ????
    db   $0f, $11                                      ;; 07:5cdb ??
    db   $36, $12                                      ;; 07:5cdd ??
    db   $38, $13                                      ;; 07:5cdf ??
    db   $3f, $21                                      ;; 07:5ce1 ??
    db   $36, $22                                      ;; 07:5ce3 ??
    db   $38, $23                                      ;; 07:5ce5 ??
    db   $0d, $26                                      ;; 07:5ce7 ??
    db   $38, $31                                      ;; 07:5ce9 ??
    db   $38, $32                                      ;; 07:5ceb ??
    db   $38, $33                                      ;; 07:5ced ??
    db   $0d, $35                                      ;; 07:5cef ??
    db   $1d, $36                                      ;; 07:5cf1 ??
    db   $0d, $37                                      ;; 07:5cf3 ??
    db   $0d, $46                                      ;; 07:5cf5 ??
    db   $16, $61                                      ;; 07:5cf7 ??
    db   $16, $68                                      ;; 07:5cf9 ??
    db   $ff, $ff                                      ;; 07:5cfb ??

map04_room03_02_script:
    SCRIPT_IDX script_00a9                             ;; 07:5cfd $a9 $00
    SCRIPT_AT_POS 6, 8, script_02d4                    ;; 07:5cff $68 $d4 $02
    SCRIPT_AT_POS 6, 2, script_04eb                    ;; 07:5d02 $62 $eb $04
    SCRIPT_AT_POS 1, 2, script_04ea                    ;; 07:5d05 $12 $ea $04
    db   $ff                                           ;; 07:5d08 $ff

map04_room03_02_tiles:
    db   $01, $02, $02, $02                            ;; 07:5d09 ????
    db   $29, $12                                      ;; 07:5d0d ??
    db   $07, $33                                      ;; 07:5d0f ??
    db   $07, $34                                      ;; 07:5d11 ??
    db   $07, $35                                      ;; 07:5d13 ??
    db   $07, $36                                      ;; 07:5d15 ??
    db   $07, $43                                      ;; 07:5d17 ??
    db   $07, $44                                      ;; 07:5d19 ??
    db   $07, $45                                      ;; 07:5d1b ??
    db   $07, $46                                      ;; 07:5d1d ??
    db   $46, $57                                      ;; 07:5d1f ??
    db   $46, $58                                      ;; 07:5d21 ??
    db   $29, $62                                      ;; 07:5d23 ??
    db   $ff, $ff                                      ;; 07:5d25 ??

map04_room04_02_script:
    SCRIPT_IDX script_00a3                             ;; 07:5d27 $a3 $00
    db   $ff                                           ;; 07:5d29 $ff

map04_room04_02_tiles:
    db   $01, $01, $02, $02                            ;; 07:5d2a ????
    db   $38, $23                                      ;; 07:5d2e ??
    db   $38, $24                                      ;; 07:5d30 ??
    db   $38, $25                                      ;; 07:5d32 ??
    db   $38, $26                                      ;; 07:5d34 ??
    db   $38, $33                                      ;; 07:5d36 ??
    db   $36, $34                                      ;; 07:5d38 ??
    db   $36, $35                                      ;; 07:5d3a ??
    db   $38, $36                                      ;; 07:5d3c ??
    db   $38, $43                                      ;; 07:5d3e ??
    db   $36, $44                                      ;; 07:5d40 ??
    db   $36, $45                                      ;; 07:5d42 ??
    db   $38, $46                                      ;; 07:5d44 ??
    db   $38, $53                                      ;; 07:5d46 ??
    db   $38, $54                                      ;; 07:5d48 ??
    db   $38, $55                                      ;; 07:5d4a ??
    db   $38, $56                                      ;; 07:5d4c ??
    db   $ff, $ff                                      ;; 07:5d4e ??

map04_room05_02_script:
    SCRIPT_IDX script_00a3                             ;; 07:5d50 $a3 $00
    db   $ff                                           ;; 07:5d52 $ff

map04_room05_02_tiles:
    db   $02, $01, $01, $02                            ;; 07:5d53 ????
    db   $2a, $13                                      ;; 07:5d57 ??
    db   $2a, $16                                      ;; 07:5d59 ??
    db   $2a, $21                                      ;; 07:5d5b ??
    db   $2a, $24                                      ;; 07:5d5d ??
    db   $2a, $26                                      ;; 07:5d5f ??
    db   $2a, $32                                      ;; 07:5d61 ??
    db   $2a, $33                                      ;; 07:5d63 ??
    db   $2a, $34                                      ;; 07:5d65 ??
    db   $2a, $36                                      ;; 07:5d67 ??
    db   $2a, $46                                      ;; 07:5d69 ??
    db   $2a, $51                                      ;; 07:5d6b ??
    db   $2a, $52                                      ;; 07:5d6d ??
    db   $2a, $53                                      ;; 07:5d6f ??
    db   $2a, $54                                      ;; 07:5d71 ??
    db   $2a, $55                                      ;; 07:5d73 ??
    db   $2a, $56                                      ;; 07:5d75 ??
    db   $ff, $ff                                      ;; 07:5d77 ??

map04_room06_02_script:
    SCRIPT_IDX script_010f                             ;; 07:5d79 $0f $01
    db   $ff                                           ;; 07:5d7b $ff

map04_room06_02_tiles:
    db   $02, $02, $02, $01                            ;; 07:5d7c ????
    db   $48, $34                                      ;; 07:5d80 ??
    db   $49, $35                                      ;; 07:5d82 ??
    db   $4d, $44                                      ;; 07:5d84 ??
    db   $4e, $45                                      ;; 07:5d86 ??
    db   $ff, $ff                                      ;; 07:5d88 ??

map04_room07_02_script:
    SCRIPT_IDX script_00be                             ;; 07:5d8a $be $00
    db   $ff                                           ;; 07:5d8c $ff

map04_room07_02_tiles:
    db   $02, $02, $01, $00                            ;; 07:5d8d ????
    db   $46, $12                                      ;; 07:5d91 ??
    db   $46, $17                                      ;; 07:5d93 ??
    db   $46, $24                                      ;; 07:5d95 ??
    db   $46, $25                                      ;; 07:5d97 ??
    db   $46, $33                                      ;; 07:5d99 ??
    db   $46, $36                                      ;; 07:5d9b ??
    db   $ff, $ff                                      ;; 07:5d9d ??

map04_room00_03_script:
    SCRIPT_IDX script_0094                             ;; 07:5d9f $94 $00
    db   $ff                                           ;; 07:5da1 $ff

map04_room00_03_tiles:
    db   $00, $02, $02, $01                            ;; 07:5da2 ????
    db   $27, $33                                      ;; 07:5da6 ??
    db   $27, $44                                      ;; 07:5da8 ??
    db   $27, $55                                      ;; 07:5daa ??
    db   $27, $66                                      ;; 07:5dac ??
    db   $ff, $ff                                      ;; 07:5dae ??

map04_room01_03_script:
    SCRIPT_IDX script_03df                             ;; 07:5db0 $df $03
    db   $ff                                           ;; 07:5db2 $ff

map04_room01_03_tiles:
    db   $02, $00, $02, $01                            ;; 07:5db3 ????
    db   $2a, $13                                      ;; 07:5db7 ??
    db   $41, $14                                      ;; 07:5db9 ??
    db   $41, $15                                      ;; 07:5dbb ??
    db   $2a, $23                                      ;; 07:5dbd ??
    db   $2a, $27                                      ;; 07:5dbf ??
    db   $2a, $28                                      ;; 07:5dc1 ??
    db   $2a, $51                                      ;; 07:5dc3 ??
    db   $2a, $52                                      ;; 07:5dc5 ??
    db   $2a, $56                                      ;; 07:5dc7 ??
    db   $2a, $66                                      ;; 07:5dc9 ??
    db   $ff, $ff                                      ;; 07:5dcb ??

map04_room02_03_script:
    SCRIPT_IDX script_0085                             ;; 07:5dcd $85 $00
    db   $ff                                           ;; 07:5dcf $ff

map04_room02_03_tiles:
    db   $01, $02, $01, $05                            ;; 07:5dd0 ????
    db   $2a, $23                                      ;; 07:5dd4 ??
    db   $2a, $26                                      ;; 07:5dd6 ??
    db   $2a, $32                                      ;; 07:5dd8 ??
    db   $2a, $37                                      ;; 07:5dda ??
    db   $2a, $42                                      ;; 07:5ddc ??
    db   $2a, $47                                      ;; 07:5dde ??
    db   $2a, $53                                      ;; 07:5de0 ??
    db   $2a, $56                                      ;; 07:5de2 ??
    db   $ff, $ff                                      ;; 07:5de4 ??

map04_room03_03_script:
    SCRIPT_IDX script_013c                             ;; 07:5de6 $3c $01
    db   $ff                                           ;; 07:5de8 $ff

map04_room03_03_tiles:
    db   $00, $01, $02, $02                            ;; 07:5de9 ????
    db   $27, $24                                      ;; 07:5ded ??
    db   $27, $25                                      ;; 07:5def ??
    db   $27, $33                                      ;; 07:5df1 ??
    db   $27, $43                                      ;; 07:5df3 ??
    db   $27, $54                                      ;; 07:5df5 ??
    db   $27, $55                                      ;; 07:5df7 ??
    db   $ff, $ff                                      ;; 07:5df9 ??

map04_room04_03_script:
    SCRIPT_IDX script_0091                             ;; 07:5dfb $91 $00
    SCRIPT_AT_POS 6, 8, script_035f                    ;; 07:5dfd $68 $5f $03
    db   $ff                                           ;; 07:5e00 $ff

map04_room04_03_tiles:
    db   $02, $00, $02, $02                            ;; 07:5e01 ????
    db   $3d, $11                                      ;; 07:5e05 ??
    db   $3d, $12                                      ;; 07:5e07 ??
    db   $3d, $13                                      ;; 07:5e09 ??
    db   $3d, $14                                      ;; 07:5e0b ??
    db   $3d, $61                                      ;; 07:5e0d ??
    db   $3d, $62                                      ;; 07:5e0f ??
    db   $3d, $63                                      ;; 07:5e11 ??
    db   $3d, $64                                      ;; 07:5e13 ??
    db   $11, $68                                      ;; 07:5e15 ??
    db   $ff, $ff                                      ;; 07:5e17 ??

map04_room05_03_script:
    SCRIPT_IDX script_00be                             ;; 07:5e19 $be $00
    db   $ff                                           ;; 07:5e1b $ff

map04_room05_03_tiles:
    db   $02, $02, $02, $01                            ;; 07:5e1c ????
    db   $ff, $ff                                      ;; 07:5e20 ??

map04_room06_03_script:
    SCRIPT_IDX script_003d                             ;; 07:5e22 $3d $00
    db   $ff                                           ;; 07:5e24 $ff

map04_room06_03_tiles:
    db   $02, $02, $01, $0c                            ;; 07:5e25 ????
    db   $0c, $13                                      ;; 07:5e29 ??
    db   $0c, $16                                      ;; 07:5e2b ??
    db   $1c, $23                                      ;; 07:5e2d ??
    db   $1c, $26                                      ;; 07:5e2f ??
    db   $0c, $43                                      ;; 07:5e31 ??
    db   $0c, $46                                      ;; 07:5e33 ??
    db   $1c, $53                                      ;; 07:5e35 ??
    db   $1c, $56                                      ;; 07:5e37 ??
    db   $ff, $ff                                      ;; 07:5e39 ??

map04_room07_03_script:
    SCRIPT_IDX script_00c1                             ;; 07:5e3b $c1 $00
    db   $ff                                           ;; 07:5e3d $ff

map04_room07_03_tiles:
    db   $02, $02, $00, $01                            ;; 07:5e3e ????
    db   $2a, $33                                      ;; 07:5e42 ??
    db   $2a, $36                                      ;; 07:5e44 ??
    db   $2a, $41                                      ;; 07:5e46 ??
    db   $2a, $44                                      ;; 07:5e48 ??
    db   $2a, $45                                      ;; 07:5e4a ??
    db   $2a, $48                                      ;; 07:5e4c ??
    db   $ff, $ff                                      ;; 07:5e4e ??

map04_room00_04_script:
    SCRIPT_IDX script_00a3                             ;; 07:5e50 $a3 $00
    SCRIPT_AT_POS 6, 8, script_02e2                    ;; 07:5e52 $68 $e2 $02
    db   $ff                                           ;; 07:5e55 $ff

map04_room00_04_tiles:
    db   $02, $02, $05, $02                            ;; 07:5e56 ????
    db   $27, $48                                      ;; 07:5e5a ??
    db   $27, $57                                      ;; 07:5e5c ??
    db   $27, $58                                      ;; 07:5e5e ??
    db   $1a, $61                                      ;; 07:5e60 ??
    db   $27, $66                                      ;; 07:5e62 ??
    db   $27, $67                                      ;; 07:5e64 ??
    db   $02, $68                                      ;; 07:5e66 ??
    db   $ff, $ff                                      ;; 07:5e68 ??

map04_room01_04_script:
    SCRIPT_IDX script_009a                             ;; 07:5e6a $9a $00
    db   $ff                                           ;; 07:5e6c $ff

map04_room01_04_tiles:
    db   $02, $02, $01, $02                            ;; 07:5e6d ????
    db   $1a, $68                                      ;; 07:5e71 ??
    db   $ff, $ff                                      ;; 07:5e73 ??

map04_room02_04_script:
    SCRIPT_IDX script_013f                             ;; 07:5e75 $3f $01
    db   $ff                                           ;; 07:5e77 $ff

map04_room02_04_tiles:
    db   $02, $02, $01, $00                            ;; 07:5e78 ????
    db   $46, $31                                      ;; 07:5e7c ??
    db   $46, $32                                      ;; 07:5e7e ??
    db   $46, $33                                      ;; 07:5e80 ??
    db   $46, $34                                      ;; 07:5e82 ??
    db   $46, $36                                      ;; 07:5e84 ??
    db   $46, $37                                      ;; 07:5e86 ??
    db   $46, $38                                      ;; 07:5e88 ??
    db   $6b, $45                                      ;; 07:5e8a ??
    db   $0f, $51                                      ;; 07:5e8c ??
    db   $1f, $61                                      ;; 07:5e8e ??
    db   $1d, $64                                      ;; 07:5e90 ??
    db   $0d, $65                                      ;; 07:5e92 ??
    db   $ff, $ff                                      ;; 07:5e94 ??

map04_room03_04_script:
    SCRIPT_IDX script_0416                             ;; 07:5e96 $16 $04
    db   $ff                                           ;; 07:5e98 $ff

map04_room03_04_tiles:
    db   $01, $02, $02, $02                            ;; 07:5e99 ????
    db   $ff, $ff                                      ;; 07:5e9d ??

map04_room04_04_script:
    SCRIPT_IDX script_0097                             ;; 07:5e9f $97 $00
    db   $ff                                           ;; 07:5ea1 $ff

map04_room04_04_tiles:
    db   $01, $01, $02, $02                            ;; 07:5ea2 ????
    db   $37, $13                                      ;; 07:5ea6 ??
    db   $22, $23                                      ;; 07:5ea8 ??
    db   $37, $26                                      ;; 07:5eaa ??
    db   $23, $33                                      ;; 07:5eac ??
    db   $22, $36                                      ;; 07:5eae ??
    db   $22, $43                                      ;; 07:5eb0 ??
    db   $23, $46                                      ;; 07:5eb2 ??
    db   $37, $53                                      ;; 07:5eb4 ??
    db   $22, $56                                      ;; 07:5eb6 ??
    db   $37, $66                                      ;; 07:5eb8 ??
    db   $ff, $ff                                      ;; 07:5eba ??

map04_room05_04_script:
    SCRIPT_IDX script_00c1                             ;; 07:5ebc $c1 $00
    db   $ff                                           ;; 07:5ebe $ff

map04_room05_04_tiles:
    db   $01, $01, $01, $00                            ;; 07:5ebf ????
    db   $68, $12                                      ;; 07:5ec3 ??
    db   $68, $17                                      ;; 07:5ec5 ??
    db   $64, $23                                      ;; 07:5ec7 ??
    db   $64, $26                                      ;; 07:5ec9 ??
    db   $66, $34                                      ;; 07:5ecb ??
    db   $67, $35                                      ;; 07:5ecd ??
    db   $66, $44                                      ;; 07:5ecf ??
    db   $67, $45                                      ;; 07:5ed1 ??
    db   $64, $53                                      ;; 07:5ed3 ??
    db   $64, $56                                      ;; 07:5ed5 ??
    db   $69, $62                                      ;; 07:5ed7 ??
    db   $69, $67                                      ;; 07:5ed9 ??
    db   $ff, $ff                                      ;; 07:5edb ??

map04_room06_04_script:
    SCRIPT_IDX script_00be                             ;; 07:5edd $be $00
    db   $ff                                           ;; 07:5edf $ff

map04_room06_04_tiles:
    db   $01, $01, $02, $02                            ;; 07:5ee0 ????
    db   $46, $26                                      ;; 07:5ee4 ??
    db   $46, $27                                      ;; 07:5ee6 ??
    db   $46, $33                                      ;; 07:5ee8 ??
    db   $46, $43                                      ;; 07:5eea ??
    db   $46, $56                                      ;; 07:5eec ??
    db   $46, $57                                      ;; 07:5eee ??
    db   $ff, $ff                                      ;; 07:5ef0 ??

map04_room07_04_script:
    SCRIPT_IDX script_0091                             ;; 07:5ef2 $91 $00
    db   $ff                                           ;; 07:5ef4 $ff

map04_room07_04_tiles:
    db   $02, $01, $01, $02                            ;; 07:5ef5 ????
    db   $09, $11                                      ;; 07:5ef9 ??
    db   $09, $12                                      ;; 07:5efb ??
    db   $09, $22                                      ;; 07:5efd ??
    db   $09, $32                                      ;; 07:5eff ??
    db   $09, $33                                      ;; 07:5f01 ??
    db   $09, $34                                      ;; 07:5f03 ??
    db   $09, $44                                      ;; 07:5f05 ??
    db   $09, $45                                      ;; 07:5f07 ??
    db   $09, $54                                      ;; 07:5f09 ??
    db   $ff, $ff                                      ;; 07:5f0b ??

map04_room00_05_script:
    SCRIPT_IDX script_016c                             ;; 07:5f0d $6c $01
    db   $ff                                           ;; 07:5f0f $ff

map04_room00_05_tiles:
    db   $01, $02, $02, $02                            ;; 07:5f10 ????
    db   $0b, $13                                      ;; 07:5f14 ??
    db   $56, $14                                      ;; 07:5f16 ??
    db   $57, $15                                      ;; 07:5f18 ??
    db   $0b, $16                                      ;; 07:5f1a ??
    db   $1b, $23                                      ;; 07:5f1c ??
    db   $1b, $26                                      ;; 07:5f1e ??
    db   $ff, $ff                                      ;; 07:5f20 ??

map04_room01_05_script:
    SCRIPT_IDX script_00c4                             ;; 07:5f22 $c4 $00
    db   $ff                                           ;; 07:5f24 $ff

map04_room01_05_tiles:
    db   $00, $05, $02, $02                            ;; 07:5f25 ????
    db   $37, $22                                      ;; 07:5f29 ??
    db   $23, $32                                      ;; 07:5f2b ??
    db   $22, $42                                      ;; 07:5f2d ??
    db   $37, $52                                      ;; 07:5f2f ??
    db   $ff, $ff                                      ;; 07:5f31 ??

map04_room02_05_script:
    SCRIPT_IDX script_00c7                             ;; 07:5f33 $c7 $00
    db   $ff                                           ;; 07:5f35 $ff

map04_room02_05_tiles:
    db   $02, $00, $02, $00                            ;; 07:5f36 ????
    db   $37, $23                                      ;; 07:5f3a ??
    db   $22, $33                                      ;; 07:5f3c ??
    db   $23, $43                                      ;; 07:5f3e ??
    db   $22, $53                                      ;; 07:5f40 ??
    db   $37, $63                                      ;; 07:5f42 ??
    db   $ff, $ff                                      ;; 07:5f44 ??

map04_room03_05_script:
    SCRIPT_IDX script_0091                             ;; 07:5f46 $91 $00
    db   $ff                                           ;; 07:5f48 $ff

map04_room03_05_tiles:
    db   $01, $02, $02, $00                            ;; 07:5f49 ????
    db   $3d, $11                                      ;; 07:5f4d ??
    db   $3d, $12                                      ;; 07:5f4f ??
    db   $3d, $17                                      ;; 07:5f51 ??
    db   $3d, $18                                      ;; 07:5f53 ??
    db   $3d, $21                                      ;; 07:5f55 ??
    db   $3d, $28                                      ;; 07:5f57 ??
    db   $3d, $51                                      ;; 07:5f59 ??
    db   $3d, $58                                      ;; 07:5f5b ??
    db   $3d, $61                                      ;; 07:5f5d ??
    db   $3d, $62                                      ;; 07:5f5f ??
    db   $3d, $67                                      ;; 07:5f61 ??
    db   $3d, $68                                      ;; 07:5f63 ??
    db   $ff, $ff                                      ;; 07:5f65 ??

map04_room04_05_script:
    SCRIPT_IDX script_00a9                             ;; 07:5f67 $a9 $00
    SCRIPT_AT_POS 3, 5, script_032a                    ;; 07:5f69 $35 $2a $03
    SCRIPT_AT_POS 4, 4, script_032a                    ;; 07:5f6c $44 $2a $03
    SCRIPT_AT_POS 4, 5, script_032a                    ;; 07:5f6f $45 $2a $03
    SCRIPT_AT_POS 3, 4, script_032a                    ;; 07:5f72 $34 $2a $03
    db   $ff                                           ;; 07:5f75 $ff

map04_room04_05_tiles:
    db   $02, $01, $02, $02                            ;; 07:5f76 ????
    db   $48, $34                                      ;; 07:5f7a ??
    db   $49, $35                                      ;; 07:5f7c ??
    db   $58, $44                                      ;; 07:5f7e ??
    db   $59, $45                                      ;; 07:5f80 ??
    db   $ff, $ff                                      ;; 07:5f82 ??

map04_room05_05_script:
    SCRIPT_IDX script_003d                             ;; 07:5f84 $3d $00
    db   $ff                                           ;; 07:5f86 $ff

map04_room05_05_tiles:
    db   $02, $02, $00, $01                            ;; 07:5f87 ????
    db   $ff, $ff                                      ;; 07:5f8b ??

map04_room06_05_script:
    SCRIPT_IDX script_00cd                             ;; 07:5f8d $cd $00
    SCRIPT_AT_POS 3, 5, script_032c                    ;; 07:5f8f $35 $2c $03
    SCRIPT_AT_POS 4, 4, script_032c                    ;; 07:5f92 $44 $2c $03
    SCRIPT_AT_POS 4, 5, script_032c                    ;; 07:5f95 $45 $2c $03
    SCRIPT_AT_POS 3, 4, script_032c                    ;; 07:5f98 $34 $2c $03
    db   $ff                                           ;; 07:5f9b $ff

map04_room06_05_tiles:
    db   $01, $02, $02, $02                            ;; 07:5f9c ????
    db   $48, $34                                      ;; 07:5fa0 ??
    db   $49, $35                                      ;; 07:5fa2 ??
    db   $58, $44                                      ;; 07:5fa4 ??
    db   $59, $45                                      ;; 07:5fa6 ??
    db   $ff, $ff                                      ;; 07:5fa8 ??

map04_room07_05_script:
    SCRIPT_IDX script_00c1                             ;; 07:5faa $c1 $00
    db   $ff                                           ;; 07:5fac $ff

map04_room07_05_tiles:
    db   $02, $01, $02, $00                            ;; 07:5fad ????
    db   $07, $21                                      ;; 07:5fb1 ??
    db   $07, $22                                      ;; 07:5fb3 ??
    db   $07, $23                                      ;; 07:5fb5 ??
    db   $07, $24                                      ;; 07:5fb7 ??
    db   $07, $25                                      ;; 07:5fb9 ??
    db   $07, $26                                      ;; 07:5fbb ??
    db   $07, $36                                      ;; 07:5fbd ??
    db   $07, $46                                      ;; 07:5fbf ??
    db   $07, $51                                      ;; 07:5fc1 ??
    db   $07, $52                                      ;; 07:5fc3 ??
    db   $07, $53                                      ;; 07:5fc5 ??
    db   $07, $56                                      ;; 07:5fc7 ??
    db   $07, $63                                      ;; 07:5fc9 ??
    db   $07, $66                                      ;; 07:5fcb ??
    db   $ff, $ff                                      ;; 07:5fcd ??

map04_room00_06_script:
    SCRIPT_IDX script_00c4                             ;; 07:5fcf $c4 $00
    SCRIPT_AT_POS 6, 8, script_02ed                    ;; 07:5fd1 $68 $ed $02
    db   $ff                                           ;; 07:5fd4 $ff

map04_room00_06_tiles:
    db   $00, $02, $02, $02                            ;; 07:5fd5 ????
    db   $2a, $21                                      ;; 07:5fd9 ??
    db   $06, $23                                      ;; 07:5fdb ??
    db   $28, $24                                      ;; 07:5fdd ??
    db   $04, $25                                      ;; 07:5fdf ??
    db   $05, $26                                      ;; 07:5fe1 ??
    db   $2a, $28                                      ;; 07:5fe3 ??
    db   $10, $33                                      ;; 07:5fe5 ??
    db   $3d, $34                                      ;; 07:5fe7 ??
    db   $3d, $35                                      ;; 07:5fe9 ??
    db   $15, $36                                      ;; 07:5feb ??
    db   $40, $43                                      ;; 07:5fed ??
    db   $3d, $44                                      ;; 07:5fef ??
    db   $3d, $45                                      ;; 07:5ff1 ??
    db   $45, $46                                      ;; 07:5ff3 ??
    db   $2a, $51                                      ;; 07:5ff5 ??
    db   $50, $53                                      ;; 07:5ff7 ??
    db   $51, $54                                      ;; 07:5ff9 ??
    db   $54, $55                                      ;; 07:5ffb ??
    db   $55, $56                                      ;; 07:5ffd ??
    db   $2a, $57                                      ;; 07:5fff ??
    db   $2a, $58                                      ;; 07:6001 ??
    db   $11, $68                                      ;; 07:6003 ??
    db   $ff, $ff                                      ;; 07:6005 ??

map04_room01_06_script:
    SCRIPT_IDX script_03dc                             ;; 07:6007 $dc $03
    db   $ff                                           ;; 07:6009 $ff

map04_room01_06_tiles:
    db   $01, $02, $02, $01                            ;; 07:600a ????
    db   $16, $11                                      ;; 07:600e ??
    db   $16, $18                                      ;; 07:6010 ??
    db   $16, $61                                      ;; 07:6012 ??
    db   $16, $68                                      ;; 07:6014 ??
    db   $ff, $ff                                      ;; 07:6016 ??

map04_room02_06_script:
    SCRIPT_IDX script_041c                             ;; 07:6018 $1c $04
    db   $ff                                           ;; 07:601a $ff

map04_room02_06_tiles:
    db   $02, $01, $00, $02                            ;; 07:601b ????
    db   $ff, $ff                                      ;; 07:601f ??

map04_room03_06_script:
    SCRIPT_IDX script_00cd                             ;; 07:6021 $cd $00
    db   $ff                                           ;; 07:6023 $ff

map04_room03_06_tiles:
    db   $02, $02, $00, $00                            ;; 07:6024 ????
    db   $0c, $32                                      ;; 07:6028 ??
    db   $0c, $33                                      ;; 07:602a ??
    db   $0c, $34                                      ;; 07:602c ??
    db   $0c, $35                                      ;; 07:602e ??
    db   $0c, $36                                      ;; 07:6030 ??
    db   $0c, $37                                      ;; 07:6032 ??
    db   $1c, $42                                      ;; 07:6034 ??
    db   $1c, $43                                      ;; 07:6036 ??
    db   $1c, $44                                      ;; 07:6038 ??
    db   $1c, $45                                      ;; 07:603a ??
    db   $1c, $46                                      ;; 07:603c ??
    db   $1c, $47                                      ;; 07:603e ??
    db   $ff, $ff                                      ;; 07:6040 ??

map04_room04_06_script:
    SCRIPT_IDX script_00be                             ;; 07:6042 $be $00
    db   $ff                                           ;; 07:6044 $ff

map04_room04_06_tiles:
    db   $01, $02, $02, $02                            ;; 07:6045 ????
    db   $41, $45                                      ;; 07:6049 ??
    db   $41, $53                                      ;; 07:604b ??
    db   $ff, $ff                                      ;; 07:604d ??

map04_room05_06_script:
    SCRIPT_IDX script_00c1                             ;; 07:604f $c1 $00
    db   $ff                                           ;; 07:6051 $ff

map04_room05_06_tiles:
    db   $01, $01, $01, $01                            ;; 07:6052 ????
    db   $69, $12                                      ;; 07:6056 ??
    db   $69, $17                                      ;; 07:6058 ??
    db   $64, $23                                      ;; 07:605a ??
    db   $64, $26                                      ;; 07:605c ??
    db   $68, $34                                      ;; 07:605e ??
    db   $68, $35                                      ;; 07:6060 ??
    db   $69, $44                                      ;; 07:6062 ??
    db   $69, $45                                      ;; 07:6064 ??
    db   $64, $53                                      ;; 07:6066 ??
    db   $64, $56                                      ;; 07:6068 ??
    db   $68, $62                                      ;; 07:606a ??
    db   $69, $67                                      ;; 07:606c ??
    db   $ff, $ff                                      ;; 07:606e ??

map04_room06_06_script:
    SCRIPT_IDX script_0419                             ;; 07:6070 $19 $04
    db   $ff                                           ;; 07:6072 $ff

map04_room06_06_tiles:
    db   $02, $01, $02, $02                            ;; 07:6073 ????
    db   $ff, $ff                                      ;; 07:6077 ??

map04_room07_06_script:
    SCRIPT_IDX script_00be                             ;; 07:6079 $be $00
    db   $ff                                           ;; 07:607b $ff

map04_room07_06_tiles:
    db   $02, $02, $00, $00                            ;; 07:607c ????
    db   $0c, $34                                      ;; 07:6080 ??
    db   $0c, $35                                      ;; 07:6082 ??
    db   $1c, $44                                      ;; 07:6084 ??
    db   $1c, $45                                      ;; 07:6086 ??
    db   $ff, $ff                                      ;; 07:6088 ??

map04_room00_07_script:
    SCRIPT_IDX script_016f                             ;; 07:608a $6f $01
    db   $ff                                           ;; 07:608c $ff

map04_room00_07_tiles:
    db   $01, $02, $02, $02                            ;; 07:608d ????
    db   $0b, $13                                      ;; 07:6091 ??
    db   $56, $14                                      ;; 07:6093 ??
    db   $57, $15                                      ;; 07:6095 ??
    db   $0b, $16                                      ;; 07:6097 ??
    db   $1b, $23                                      ;; 07:6099 ??
    db   $1b, $26                                      ;; 07:609b ??
    db   $ff, $ff                                      ;; 07:609d ??

map04_room01_07_script:
    SCRIPT_IDX script_00c7                             ;; 07:609f $c7 $00
    db   $ff                                           ;; 07:60a1 $ff

map04_room01_07_tiles:
    db   $00, $05, $05, $02                            ;; 07:60a2 ????
    db   $3d, $11                                      ;; 07:60a6 ??
    db   $3d, $12                                      ;; 07:60a8 ??
    db   $3d, $21                                      ;; 07:60aa ??
    db   $3d, $22                                      ;; 07:60ac ??
    db   $3d, $51                                      ;; 07:60ae ??
    db   $3d, $52                                      ;; 07:60b0 ??
    db   $3d, $61                                      ;; 07:60b2 ??
    db   $3d, $62                                      ;; 07:60b4 ??
    db   $ff, $ff                                      ;; 07:60b6 ??

map04_room02_07_script:
    SCRIPT_IDX script_00be                             ;; 07:60b8 $be $00
    SCRIPT_AT_POS 4, 4, script_02ec                    ;; 07:60ba $44 $ec $02
    db   $ff                                           ;; 07:60bd $ff

map04_room02_07_tiles:
    db   $02, $00, $02, $02                            ;; 07:60be ????
    db   $2f, $23                                      ;; 07:60c2 ??
    db   $2f, $24                                      ;; 07:60c4 ??
    db   $2f, $25                                      ;; 07:60c6 ??
    db   $2f, $26                                      ;; 07:60c8 ??
    db   $2f, $33                                      ;; 07:60ca ??
    db   $2f, $36                                      ;; 07:60cc ??
    db   $2f, $43                                      ;; 07:60ce ??
    db   $02, $44                                      ;; 07:60d0 ??
    db   $2f, $46                                      ;; 07:60d2 ??
    db   $2f, $53                                      ;; 07:60d4 ??
    db   $2f, $54                                      ;; 07:60d6 ??
    db   $2f, $55                                      ;; 07:60d8 ??
    db   $2f, $56                                      ;; 07:60da ??
    db   $ff, $ff                                      ;; 07:60dc ??

map04_room03_07_script:
    SCRIPT_IDX script_04f2                             ;; 07:60de $f2 $04
    SCRIPT_AT_POS 6, 3, script_04d0                    ;; 07:60e0 $63 $d0 $04
    db   $ff                                           ;; 07:60e3 $ff

map04_room03_07_tiles:
    db   $09, $02, $00, $02                            ;; 07:60e4 ????
    db   $64, $21                                      ;; 07:60e8 ??
    db   $46, $22                                      ;; 07:60ea ??
    db   $46, $23                                      ;; 07:60ec ??
    db   $46, $24                                      ;; 07:60ee ??
    db   $46, $25                                      ;; 07:60f0 ??
    db   $46, $26                                      ;; 07:60f2 ??
    db   $46, $32                                      ;; 07:60f4 ??
    db   $46, $36                                      ;; 07:60f6 ??
    db   $46, $37                                      ;; 07:60f8 ??
    db   $46, $44                                      ;; 07:60fa ??
    db   $46, $47                                      ;; 07:60fc ??
    db   $46, $52                                      ;; 07:60fe ??
    db   $46, $53                                      ;; 07:6100 ??
    db   $46, $55                                      ;; 07:6102 ??
    db   $46, $57                                      ;; 07:6104 ??
    db   $46, $58                                      ;; 07:6106 ??
    db   $46, $62                                      ;; 07:6108 ??
    db   $29, $63                                      ;; 07:610a ??
    db   $64, $64                                      ;; 07:610c ??
    db   $ff, $ff                                      ;; 07:610e ??

map04_room04_07_script:
    SCRIPT_IDX script_00cd                             ;; 07:6110 $cd $00
    SCRIPT_AT_POS 6, 8, script_0396                    ;; 07:6112 $68 $96 $03
    db   $ff                                           ;; 07:6115 $ff

map04_room04_07_tiles:
    db   $02, $01, $02, $02                            ;; 07:6116 ????
    db   $0c, $23                                      ;; 07:611a ??
    db   $1c, $33                                      ;; 07:611c ??
    db   $0c, $46                                      ;; 07:611e ??
    db   $1c, $56                                      ;; 07:6120 ??
    db   $11, $68                                      ;; 07:6122 ??
    db   $ff, $ff                                      ;; 07:6124 ??

map04_room05_07_script:
    SCRIPT_IDX script_00be                             ;; 07:6126 $be $00
    SCRIPT_AT_POS 6, 8, script_02a2                    ;; 07:6128 $68 $a2 $02
    db   $ff                                           ;; 07:612b $ff

map04_room05_07_tiles:
    db   $02, $02, $01, $02                            ;; 07:612c ????
    db   $3c, $57                                      ;; 07:6130 ??
    db   $3c, $58                                      ;; 07:6132 ??
    db   $3c, $67                                      ;; 07:6134 ??
    db   $11, $68                                      ;; 07:6136 ??
    db   $ff, $ff                                      ;; 07:6138 ??

map04_room06_07_script:
    SCRIPT_IDX script_00cd                             ;; 07:613a $cd $00
    SCRIPT_AT_POS 3, 5, script_0328                    ;; 07:613c $35 $28 $03
    SCRIPT_AT_POS 4, 5, script_0328                    ;; 07:613f $45 $28 $03
    SCRIPT_AT_POS 4, 4, script_0328                    ;; 07:6142 $44 $28 $03
    SCRIPT_AT_POS 3, 4, script_0328                    ;; 07:6145 $34 $28 $03
    db   $ff                                           ;; 07:6148 $ff

map04_room06_07_tiles:
    db   $01, $02, $02, $02                            ;; 07:6149 ????
    db   $48, $34                                      ;; 07:614d ??
    db   $49, $35                                      ;; 07:614f ??
    db   $58, $44                                      ;; 07:6151 ??
    db   $59, $45                                      ;; 07:6153 ??
    db   $ff, $ff                                      ;; 07:6155 ??

map04_room07_07_script:
    SCRIPT_IDX script_00c4                             ;; 07:6157 $c4 $00
    db   $ff                                           ;; 07:6159 $ff

map04_room07_07_tiles:
    db   $02, $01, $00, $02                            ;; 07:615a ????
    db   $0c, $13                                      ;; 07:615e ??
    db   $0c, $16                                      ;; 07:6160 ??
    db   $1c, $23                                      ;; 07:6162 ??
    db   $1c, $26                                      ;; 07:6164 ??
    db   $0c, $33                                      ;; 07:6166 ??
    db   $0c, $36                                      ;; 07:6168 ??
    db   $1c, $43                                      ;; 07:616a ??
    db   $1c, $46                                      ;; 07:616c ??
    db   $ff, $ff                                      ;; 07:616e ??
