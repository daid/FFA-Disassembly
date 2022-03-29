;; Disassembled with BadBoy Disassembler: https://github.com/daid/BadBoy



mapRoomPointers_05:
    db   $01, $04, $08, $08                            ;; 07:6170 ????
    dw   map05_room_tile_template                      ;; 07:6174 $8e $62
    ;;Door tile info
    db   $25, $35, $20, $30, $14, $03, $52, $53        ;; 07:6176 ????????
    db   $24, $34, $21, $31, $12, $13, $42, $43        ;; 07:617e ????????
    db   $15, $45, $10, $40, $28, $04, $51, $54        ;; 07:6186 ????????
    ;;Room data pointers
    dw   map05_room00_00_script, map05_room00_00_tiles ;; 07:618e $ba $62 $d5 $62
    dw   map05_room01_00_script, map05_room01_00_tiles ;; 07:6192 $ff $62 $02 $63
    dw   map05_room02_00_script, map05_room02_00_tiles ;; 07:6196 $08 $63 $0e $63
    dw   map05_room03_00_script, map05_room03_00_tiles ;; 07:619a $22 $63 $25 $63
    dw   map05_room04_00_script, map05_room04_00_tiles ;; 07:619e $33 $63 $42 $63
    dw   map05_room05_00_script, map05_room05_00_tiles ;; 07:61a2 $50 $63 $53 $63
    dw   map05_room06_00_script, map05_room06_00_tiles ;; 07:61a6 $61 $63 $64 $63
    dw   map05_room07_00_script, map05_room07_00_tiles ;; 07:61aa $6a $63 $73 $63
    dw   map05_room00_01_script, map05_room00_01_tiles ;; 07:61ae $81 $63 $84 $63
    dw   map05_room01_01_script, map05_room01_01_tiles ;; 07:61b2 $92 $63 $95 $63
    dw   map05_room02_01_script, map05_room02_01_tiles ;; 07:61b6 $a7 $63 $ad $63
    dw   map05_room03_01_script, map05_room03_01_tiles ;; 07:61ba $cb $63 $ce $63
    dw   map05_room04_01_script, map05_room04_01_tiles ;; 07:61be $ea $63 $ed $63
    dw   map05_room05_01_script, map05_room05_01_tiles ;; 07:61c2 $f3 $63 $f9 $63
    dw   map05_room06_01_script, map05_room06_01_tiles ;; 07:61c6 $11 $64 $14 $64
    dw   map05_room07_01_script, map05_room07_01_tiles ;; 07:61ca $1a $64 $29 $64
    dw   map05_room00_02_script, map05_room00_02_tiles ;; 07:61ce $37 $64 $3d $64
    dw   map05_room01_02_script, map05_room01_02_tiles ;; 07:61d2 $53 $64 $56 $64
    dw   map05_room02_02_script, map05_room02_02_tiles ;; 07:61d6 $68 $64 $6b $64
    dw   map05_room03_02_script, map05_room03_02_tiles ;; 07:61da $91 $64 $97 $64
    dw   map05_room04_02_script, map05_room04_02_tiles ;; 07:61de $b7 $64 $bd $64
    dw   map05_room05_02_script, map05_room05_02_tiles ;; 07:61e2 $cd $64 $dc $64
    dw   map05_room06_02_script, map05_room06_02_tiles ;; 07:61e6 $ea $64 $ed $64
    dw   map05_room07_02_script, map05_room07_02_tiles ;; 07:61ea $f3 $64 $fc $64
    dw   map05_room00_03_script, map05_room00_03_tiles ;; 07:61ee $1e $65 $30 $65
    dw   map05_room01_03_script, map05_room01_03_tiles ;; 07:61f2 $4e $65 $51 $65
    dw   map05_room02_03_script, map05_room02_03_tiles ;; 07:61f6 $67 $65 $6a $65
    dw   map05_room03_03_script, map05_room03_03_tiles ;; 07:61fa $88 $65 $8e $65
    dw   map05_room04_03_script, map05_room04_03_tiles ;; 07:61fe $b8 $65 $bb $65
    dw   map05_room05_03_script, map05_room05_03_tiles ;; 07:6202 $c9 $65 $cc $65
    dw   map05_room06_03_script, map05_room06_03_tiles ;; 07:6206 $d8 $65 $e7 $65
    dw   map05_room07_03_script, map05_room07_03_tiles ;; 07:620a $f5 $65 $f8 $65
    dw   map05_room00_04_script, map05_room00_04_tiles ;; 07:620e $fe $65 $01 $66
    dw   map05_room01_04_script, map05_room01_04_tiles ;; 07:6212 $0f $66 $15 $66
    dw   map05_room02_04_script, map05_room02_04_tiles ;; 07:6216 $35 $66 $38 $66
    dw   map05_room03_04_script, map05_room03_04_tiles ;; 07:621a $56 $66 $5c $66
    dw   map05_room04_04_script, map05_room04_04_tiles ;; 07:621e $64 $66 $67 $66
    dw   map05_room05_04_script, map05_room05_04_tiles ;; 07:6222 $6d $66 $70 $66
    dw   map05_room06_04_script, map05_room06_04_tiles ;; 07:6226 $76 $66 $79 $66
    dw   map05_room07_04_script, map05_room07_04_tiles ;; 07:622a $7f $66 $8e $66
    dw   map05_room00_05_script, map05_room00_05_tiles ;; 07:622e $9c $66 $9f $66
    dw   map05_room01_05_script, map05_room01_05_tiles ;; 07:6232 $b5 $66 $b8 $66
    dw   map05_room02_05_script, map05_room02_05_tiles ;; 07:6236 $ca $66 $cd $66
    dw   map05_room03_05_script, map05_room03_05_tiles ;; 07:623a $df $66 $e2 $66
    dw   map05_room04_05_script, map05_room04_05_tiles ;; 07:623e $f8 $66 $fb $66
    dw   map05_room05_05_script, map05_room05_05_tiles ;; 07:6242 $01 $67 $04 $67
    dw   map05_room06_05_script, map05_room06_05_tiles ;; 07:6246 $1a $67 $1d $67
    dw   map05_room07_05_script, map05_room07_05_tiles ;; 07:624a $33 $67 $36 $67
    dw   map05_room00_06_script, map05_room00_06_tiles ;; 07:624e $44 $67 $47 $67
    dw   map05_room01_06_script, map05_room01_06_tiles ;; 07:6252 $5d $67 $60 $67
    dw   map05_room02_06_script, map05_room02_06_tiles ;; 07:6256 $7e $67 $99 $67
    dw   map05_room03_06_script, map05_room03_06_tiles ;; 07:625a $b3 $67 $b6 $67
    dw   map05_room04_06_script, map05_room04_06_tiles ;; 07:625e $dc $67 $eb $67
    dw   map05_room05_06_script, map05_room05_06_tiles ;; 07:6262 $f9 $67 $fc $67
    dw   map05_room06_06_script, map05_room06_06_tiles ;; 07:6266 $12 $68 $15 $68
    dw   map05_room07_06_script, map05_room07_06_tiles ;; 07:626a $1b $68 $1e $68
    dw   map05_room00_07_script, map05_room00_07_tiles ;; 07:626e $24 $68 $39 $68
    dw   map05_room01_07_script, map05_room01_07_tiles ;; 07:6272 $4b $68 $4e $68
    dw   map05_room02_07_script, map05_room02_07_tiles ;; 07:6276 $60 $68 $66 $68
    dw   map05_room03_07_script, map05_room03_07_tiles ;; 07:627a $86 $68 $89 $68
    dw   map05_room04_07_script, map05_room04_07_tiles ;; 07:627e $a3 $68 $a6 $68
    dw   map05_room05_07_script, map05_room05_07_tiles ;; 07:6282 $ac $68 $af $68
    dw   map05_room06_07_script, map05_room06_07_tiles ;; 07:6286 $bd $68 $c0 $68
    dw   map05_room07_07_script, map05_room07_07_tiles ;; 07:628a $d6 $68 $d9 $68

map05_room_tile_template:
    db   $06, $28, $28, $28, $14, $03, $04, $04, $04, $05 ;; 07:628e ??????????
    db   $10,                $80,                $80, $15 ;; 07:6298 ????
    db   $10,                $80,                $80, $15 ;; 07:629c ????
    db   $20,                $80,                $80, $25 ;; 07:62a0 ????
    db   $30,                $80,                $80, $35 ;; 07:62a4 ????
    db   $40,                $80,                $80, $45 ;; 07:62a8 ????
    db   $40,                $80,                $80, $45 ;; 07:62ac ????
    db   $50, $51, $51, $51, $52, $53, $54, $54, $54, $55 ;; 07:62b0 ??????????

map05_room00_00_script:
    SCRIPT_IDX script_0528                             ;; 07:62ba $28 $05
    SCRIPT_AT_POS 2, 3, script_0403                    ;; 07:62bc $23 $03 $04
    SCRIPT_AT_POS 2, 6, script_0403                    ;; 07:62bf $26 $03 $04
    SCRIPT_AT_POS 2, 8, script_0403                    ;; 07:62c2 $28 $03 $04
    SCRIPT_AT_POS 5, 1, script_0403                    ;; 07:62c5 $51 $03 $04
    SCRIPT_AT_POS 5, 3, script_0403                    ;; 07:62c8 $53 $03 $04
    SCRIPT_AT_POS 5, 6, script_0403                    ;; 07:62cb $56 $03 $04
    SCRIPT_AT_POS 5, 8, script_0403                    ;; 07:62ce $58 $03 $04
    SCRIPT_AT_POS 2, 1, script_0403                    ;; 07:62d1 $21 $03 $04
    db   $ff                                           ;; 07:62d4 $ff

map05_room00_00_tiles:
    db   $02, $02, $02, $0c                            ;; 07:62d5 ????
    db   $0f, $11                                      ;; 07:62d9 ??
    db   $0f, $13                                      ;; 07:62db ??
    db   $0f, $16                                      ;; 07:62dd ??
    db   $0f, $18                                      ;; 07:62df ??
    db   $3f, $21                                      ;; 07:62e1 ??
    db   $3f, $23                                      ;; 07:62e3 ??
    db   $3f, $26                                      ;; 07:62e5 ??
    db   $3f, $28                                      ;; 07:62e7 ??
    db   $0f, $41                                      ;; 07:62e9 ??
    db   $0f, $43                                      ;; 07:62eb ??
    db   $0f, $46                                      ;; 07:62ed ??
    db   $0f, $48                                      ;; 07:62ef ??
    db   $3f, $51                                      ;; 07:62f1 ??
    db   $3f, $53                                      ;; 07:62f3 ??
    db   $3f, $56                                      ;; 07:62f5 ??
    db   $3f, $58                                      ;; 07:62f7 ??
    db   $16, $61                                      ;; 07:62f9 ??
    db   $16, $68                                      ;; 07:62fb ??
    db   $ff, $ff                                      ;; 07:62fd ??

map05_room01_00_script:
    dw   $ffff                                         ;; 07:62ff $ff $ff
    db   $ff                                           ;; 07:6301 $ff

map05_room01_00_tiles:
    db   $00, $00, $00, $00                            ;; 07:6302 ????
    db   $ff, $ff                                      ;; 07:6306 ??

map05_room02_00_script:
    SCRIPT_IDX script_0085                             ;; 07:6308 $85 $00
    SCRIPT_AT_POS 6, 8, script_0308                    ;; 07:630a $68 $08 $03
    db   $ff                                           ;; 07:630d $ff

map05_room02_00_tiles:
    db   $00, $02, $02, $02                            ;; 07:630e ????
    db   $2a, $51                                      ;; 07:6312 ??
    db   $2a, $52                                      ;; 07:6314 ??
    db   $2a, $53                                      ;; 07:6316 ??
    db   $2a, $56                                      ;; 07:6318 ??
    db   $2a, $57                                      ;; 07:631a ??
    db   $2a, $58                                      ;; 07:631c ??
    db   $11, $68                                      ;; 07:631e ??
    db   $ff, $ff                                      ;; 07:6320 ??

map05_room03_00_script:
    SCRIPT_IDX script_0088                             ;; 07:6322 $88 $00
    db   $ff                                           ;; 07:6324 $ff

map05_room03_00_tiles:
    db   $02, $00, $02, $05                            ;; 07:6325 ????
    db   $64, $53                                      ;; 07:6329 ??
    db   $64, $56                                      ;; 07:632b ??
    db   $64, $63                                      ;; 07:632d ??
    db   $64, $66                                      ;; 07:632f ??
    db   $ff, $ff                                      ;; 07:6331 ??

map05_room04_00_script:
    SCRIPT_IDX script_00cd                             ;; 07:6333 $cd $00
    SCRIPT_AT_POS 3, 5, script_032e                    ;; 07:6335 $35 $2e $03
    SCRIPT_AT_POS 4, 4, script_032e                    ;; 07:6338 $44 $2e $03
    SCRIPT_AT_POS 4, 5, script_032e                    ;; 07:633b $45 $2e $03
    SCRIPT_AT_POS 3, 4, script_032e                    ;; 07:633e $34 $2e $03
    db   $ff                                           ;; 07:6341 $ff

map05_room04_00_tiles:
    db   $01, $02, $02, $02                            ;; 07:6342 ????
    db   $48, $34                                      ;; 07:6346 ??
    db   $49, $35                                      ;; 07:6348 ??
    db   $58, $44                                      ;; 07:634a ??
    db   $59, $45                                      ;; 07:634c ??
    db   $ff, $ff                                      ;; 07:634e ??

map05_room05_00_script:
    SCRIPT_IDX script_00d0                             ;; 07:6350 $d0 $00
    db   $ff                                           ;; 07:6352 $ff

map05_room05_00_tiles:
    db   $00, $01, $02, $02                            ;; 07:6353 ????
    db   $0c, $33                                      ;; 07:6357 ??
    db   $0c, $36                                      ;; 07:6359 ??
    db   $1c, $43                                      ;; 07:635b ??
    db   $1c, $46                                      ;; 07:635d ??
    db   $ff, $ff                                      ;; 07:635f ??

map05_room06_00_script:
    SCRIPT_IDX script_00c4                             ;; 07:6361 $c4 $00
    db   $ff                                           ;; 07:6363 $ff

map05_room06_00_tiles:
    db   $02, $00, $02, $00                            ;; 07:6364 ????
    db   $ff, $ff                                      ;; 07:6368 ??

map05_room07_00_script:
    SCRIPT_IDX script_00a9                             ;; 07:636a $a9 $00
    SCRIPT_AT_POS 6, 8, script_02dc                    ;; 07:636c $68 $dc $02
    SCRIPT_AT_POS 1, 8, script_02df                    ;; 07:636f $18 $df $02
    db   $ff                                           ;; 07:6372 $ff

map05_room07_00_tiles:
    db   $02, $02, $02, $02                            ;; 07:6373 ????
    db   $11, $18                                      ;; 07:6377 ??
    db   $46, $28                                      ;; 07:6379 ??
    db   $46, $58                                      ;; 07:637b ??
    db   $11, $68                                      ;; 07:637d ??
    db   $ff, $ff                                      ;; 07:637f ??

map05_room00_01_script:
    SCRIPT_IDX script_00a9                             ;; 07:6381 $a9 $00
    db   $ff                                           ;; 07:6383 $ff

map05_room00_01_tiles:
    db   $00, $02, $02, $00                            ;; 07:6384 ????
    db   $46, $43                                      ;; 07:6388 ??
    db   $46, $46                                      ;; 07:638a ??
    db   $46, $63                                      ;; 07:638c ??
    db   $46, $66                                      ;; 07:638e ??
    db   $ff, $ff                                      ;; 07:6390 ??

map05_room01_01_script:
    SCRIPT_IDX script_009d                             ;; 07:6392 $9d $00
    db   $ff                                           ;; 07:6394 $ff

map05_room01_01_tiles:
    db   $02, $00, $02, $00                            ;; 07:6395 ????
    db   $2a, $24                                      ;; 07:6399 ??
    db   $2a, $25                                      ;; 07:639b ??
    db   $2a, $42                                      ;; 07:639d ??
    db   $2a, $47                                      ;; 07:639f ??
    db   $2a, $53                                      ;; 07:63a1 ??
    db   $2a, $56                                      ;; 07:63a3 ??
    db   $ff, $ff                                      ;; 07:63a5 ??

map05_room02_01_script:
    SCRIPT_IDX script_00a9                             ;; 07:63a7 $a9 $00
    SCRIPT_AT_POS 3, 5, script_02d6                    ;; 07:63a9 $35 $d6 $02
    db   $ff                                           ;; 07:63ac $ff

map05_room02_01_tiles:
    db   $02, $02, $02, $00                            ;; 07:63ad ????
    db   $2f, $24                                      ;; 07:63b1 ??
    db   $2f, $25                                      ;; 07:63b3 ??
    db   $2f, $33                                      ;; 07:63b5 ??
    db   $2f, $34                                      ;; 07:63b7 ??
    db   $11, $35                                      ;; 07:63b9 ??
    db   $2f, $36                                      ;; 07:63bb ??
    db   $2f, $43                                      ;; 07:63bd ??
    db   $2f, $44                                      ;; 07:63bf ??
    db   $2f, $45                                      ;; 07:63c1 ??
    db   $2f, $46                                      ;; 07:63c3 ??
    db   $2f, $54                                      ;; 07:63c5 ??
    db   $2f, $55                                      ;; 07:63c7 ??
    db   $ff, $ff                                      ;; 07:63c9 ??

map05_room03_01_script:
    SCRIPT_IDX script_018d                             ;; 07:63cb $8d $01
    db   $ff                                           ;; 07:63cd $ff

map05_room03_01_tiles:
    db   $02, $02, $01, $02                            ;; 07:63ce ????
    db   $44, $11                                      ;; 07:63d2 ??
    db   $44, $13                                      ;; 07:63d4 ??
    db   $44, $17                                      ;; 07:63d6 ??
    db   $44, $31                                      ;; 07:63d8 ??
    db   $44, $33                                      ;; 07:63da ??
    db   $44, $35                                      ;; 07:63dc ??
    db   $44, $37                                      ;; 07:63de ??
    db   $44, $51                                      ;; 07:63e0 ??
    db   $44, $53                                      ;; 07:63e2 ??
    db   $6a, $55                                      ;; 07:63e4 ??
    db   $44, $57                                      ;; 07:63e6 ??
    db   $ff, $ff                                      ;; 07:63e8 ??

map05_room04_01_script:
    SCRIPT_IDX script_00a9                             ;; 07:63ea $a9 $00
    db   $ff                                           ;; 07:63ec $ff

map05_room04_01_tiles:
    db   $05, $02, $02, $00                            ;; 07:63ed ????
    db   $ff, $ff                                      ;; 07:63f1 ??

map05_room05_01_script:
    SCRIPT_IDX script_009a                             ;; 07:63f3 $9a $00
    SCRIPT_AT_POS 1, 8, script_02d3                    ;; 07:63f5 $18 $d3 $02
    db   $ff                                           ;; 07:63f8 $ff

map05_room05_01_tiles:
    db   $02, $01, $02, $02                            ;; 07:63f9 ????
    db   $46, $16                                      ;; 07:63fd ??
    db   $11, $18                                      ;; 07:63ff ??
    db   $46, $21                                      ;; 07:6401 ??
    db   $46, $26                                      ;; 07:6403 ??
    db   $46, $34                                      ;; 07:6405 ??
    db   $46, $45                                      ;; 07:6407 ??
    db   $46, $53                                      ;; 07:6409 ??
    db   $46, $58                                      ;; 07:640b ??
    db   $46, $63                                      ;; 07:640d ??
    db   $ff, $ff                                      ;; 07:640f ??

map05_room06_01_script:
    SCRIPT_IDX script_00d0                             ;; 07:6411 $d0 $00
    db   $ff                                           ;; 07:6413 $ff

map05_room06_01_tiles:
    db   $01, $02, $00, $00                            ;; 07:6414 ????
    db   $ff, $ff                                      ;; 07:6418 ??

map05_room07_01_script:
    SCRIPT_IDX script_00cd                             ;; 07:641a $cd $00
    SCRIPT_AT_POS 4, 4, script_0324                    ;; 07:641c $44 $24 $03
    SCRIPT_AT_POS 3, 4, script_0324                    ;; 07:641f $34 $24 $03
    SCRIPT_AT_POS 3, 5, script_0324                    ;; 07:6422 $35 $24 $03
    SCRIPT_AT_POS 4, 5, script_0324                    ;; 07:6425 $45 $24 $03
    db   $ff                                           ;; 07:6428 $ff

map05_room07_01_tiles:
    db   $02, $01, $02, $02                            ;; 07:6429 ????
    db   $48, $34                                      ;; 07:642d ??
    db   $49, $35                                      ;; 07:642f ??
    db   $58, $44                                      ;; 07:6431 ??
    db   $59, $45                                      ;; 07:6433 ??
    db   $ff, $ff                                      ;; 07:6435 ??

map05_room00_02_script:
    SCRIPT_IDX script_00a9                             ;; 07:6437 $a9 $00
    SCRIPT_AT_POS 6, 8, script_02cd                    ;; 07:6439 $68 $cd $02
    db   $ff                                           ;; 07:643c $ff

map05_room00_02_tiles:
    db   $02, $02, $00, $02                            ;; 07:643d ????
    db   $2f, $11                                      ;; 07:6441 ??
    db   $2f, $12                                      ;; 07:6443 ??
    db   $2f, $17                                      ;; 07:6445 ??
    db   $2f, $18                                      ;; 07:6447 ??
    db   $2f, $61                                      ;; 07:6449 ??
    db   $2f, $62                                      ;; 07:644b ??
    db   $2f, $67                                      ;; 07:644d ??
    db   $11, $68                                      ;; 07:644f ??
    db   $ff, $ff                                      ;; 07:6451 ??

map05_room01_02_script:
    SCRIPT_IDX script_0094                             ;; 07:6453 $94 $00
    db   $ff                                           ;; 07:6455 $ff

map05_room01_02_tiles:
    db   $02, $02, $00, $00                            ;; 07:6456 ????
    db   $37, $42                                      ;; 07:645a ??
    db   $22, $43                                      ;; 07:645c ??
    db   $23, $44                                      ;; 07:645e ??
    db   $22, $45                                      ;; 07:6460 ??
    db   $23, $46                                      ;; 07:6462 ??
    db   $37, $47                                      ;; 07:6464 ??
    db   $ff, $ff                                      ;; 07:6466 ??

map05_room02_02_script:
    SCRIPT_IDX script_00a9                             ;; 07:6468 $a9 $00
    db   $ff                                           ;; 07:646a $ff

map05_room02_02_tiles:
    db   $00, $02, $00, $02                            ;; 07:646b ????
    db   $38, $23                                      ;; 07:646f ??
    db   $38, $24                                      ;; 07:6471 ??
    db   $38, $25                                      ;; 07:6473 ??
    db   $38, $26                                      ;; 07:6475 ??
    db   $38, $33                                      ;; 07:6477 ??
    db   $36, $34                                      ;; 07:6479 ??
    db   $36, $35                                      ;; 07:647b ??
    db   $38, $36                                      ;; 07:647d ??
    db   $38, $43                                      ;; 07:647f ??
    db   $36, $44                                      ;; 07:6481 ??
    db   $36, $45                                      ;; 07:6483 ??
    db   $38, $46                                      ;; 07:6485 ??
    db   $38, $53                                      ;; 07:6487 ??
    db   $38, $54                                      ;; 07:6489 ??
    db   $38, $55                                      ;; 07:648b ??
    db   $38, $56                                      ;; 07:648d ??
    db   $ff, $ff                                      ;; 07:648f ??

map05_room03_02_script:
    SCRIPT_IDX script_0091                             ;; 07:6491 $91 $00
    SCRIPT_AT_POS 6, 8, script_02d5                    ;; 07:6493 $68 $d5 $02
    db   $ff                                           ;; 07:6496 $ff

map05_room03_02_tiles:
    db   $02, $00, $02, $02                            ;; 07:6497 ????
    db   $3d, $23                                      ;; 07:649b ??
    db   $3d, $24                                      ;; 07:649d ??
    db   $3d, $25                                      ;; 07:649f ??
    db   $3d, $26                                      ;; 07:64a1 ??
    db   $3d, $33                                      ;; 07:64a3 ??
    db   $3d, $36                                      ;; 07:64a5 ??
    db   $3d, $43                                      ;; 07:64a7 ??
    db   $3d, $46                                      ;; 07:64a9 ??
    db   $3d, $53                                      ;; 07:64ab ??
    db   $3d, $54                                      ;; 07:64ad ??
    db   $3d, $55                                      ;; 07:64af ??
    db   $3d, $56                                      ;; 07:64b1 ??
    db   $11, $68                                      ;; 07:64b3 ??
    db   $ff, $ff                                      ;; 07:64b5 ??

map05_room04_02_script:
    SCRIPT_IDX script_03df                             ;; 07:64b7 $df $03
    SCRIPT_AT_POS 1, 8, script_02d0                    ;; 07:64b9 $18 $d0 $02
    db   $ff                                           ;; 07:64bc $ff

map05_room04_02_tiles:
    db   $02, $02, $02, $00                            ;; 07:64bd ????
    db   $02, $18                                      ;; 07:64c1 ??
    db   $0b, $23                                      ;; 07:64c3 ??
    db   $0b, $26                                      ;; 07:64c5 ??
    db   $1b, $33                                      ;; 07:64c7 ??
    db   $1b, $36                                      ;; 07:64c9 ??
    db   $ff, $ff                                      ;; 07:64cb ??

map05_room05_02_script:
    SCRIPT_IDX script_00c4                             ;; 07:64cd $c4 $00
    SCRIPT_AT_POS 3, 5, script_032d                    ;; 07:64cf $35 $2d $03
    SCRIPT_AT_POS 4, 4, script_032d                    ;; 07:64d2 $44 $2d $03
    SCRIPT_AT_POS 3, 4, script_032d                    ;; 07:64d5 $34 $2d $03
    SCRIPT_AT_POS 4, 5, script_032d                    ;; 07:64d8 $45 $2d $03
    db   $ff                                           ;; 07:64db $ff

map05_room05_02_tiles:
    db   $01, $02, $02, $02                            ;; 07:64dc ????
    db   $48, $34                                      ;; 07:64e0 ??
    db   $49, $35                                      ;; 07:64e2 ??
    db   $58, $44                                      ;; 07:64e4 ??
    db   $59, $45                                      ;; 07:64e6 ??
    db   $ff, $ff                                      ;; 07:64e8 ??

map05_room06_02_script:
    SCRIPT_IDX script_00cd                             ;; 07:64ea $cd $00
    db   $ff                                           ;; 07:64ec $ff

map05_room06_02_tiles:
    db   $02, $01, $00, $01                            ;; 07:64ed ????
    db   $ff, $ff                                      ;; 07:64f1 ??

map05_room07_02_script:
    SCRIPT_IDX script_00a9                             ;; 07:64f3 $a9 $00
    SCRIPT_AT_POS 1, 8, script_02da                    ;; 07:64f5 $18 $da $02
    SCRIPT_AT_POS 6, 8, script_02dd                    ;; 07:64f8 $68 $dd $02
    db   $ff                                           ;; 07:64fb $ff

map05_room07_02_tiles:
    db   $02, $02, $02, $02                            ;; 07:64fc ????
    db   $0f, $11                                      ;; 07:6500 ??
    db   $36, $12                                      ;; 07:6502 ??
    db   $38, $13                                      ;; 07:6504 ??
    db   $11, $18                                      ;; 07:6506 ??
    db   $1f, $21                                      ;; 07:6508 ??
    db   $36, $22                                      ;; 07:650a ??
    db   $38, $23                                      ;; 07:650c ??
    db   $38, $31                                      ;; 07:650e ??
    db   $38, $32                                      ;; 07:6510 ??
    db   $38, $33                                      ;; 07:6512 ??
    db   $0d, $51                                      ;; 07:6514 ??
    db   $1d, $52                                      ;; 07:6516 ??
    db   $0d, $62                                      ;; 07:6518 ??
    db   $02, $68                                      ;; 07:651a ??
    db   $ff, $ff                                      ;; 07:651c ??

map05_room00_03_script:
    SCRIPT_IDX script_04ed                             ;; 07:651e $ed $04
    SCRIPT_AT_POS 1, 8, script_02ce                    ;; 07:6520 $18 $ce $02
    SCRIPT_AT_POS 2, 3, script_04ec                    ;; 07:6523 $23 $ec $04
    SCRIPT_AT_POS 2, 6, script_04ec                    ;; 07:6526 $26 $ec $04
    SCRIPT_AT_POS 5, 6, script_04ec                    ;; 07:6529 $56 $ec $04
    SCRIPT_AT_POS 5, 3, script_04ec                    ;; 07:652c $53 $ec $04
    db   $ff                                           ;; 07:652f $ff

map05_room00_03_tiles:
    db   $00, $02, $02, $02                            ;; 07:6530 ????
    db   $02, $18                                      ;; 07:6534 ??
    db   $46, $22                                      ;; 07:6536 ??
    db   $29, $23                                      ;; 07:6538 ??
    db   $46, $24                                      ;; 07:653a ??
    db   $46, $25                                      ;; 07:653c ??
    db   $29, $26                                      ;; 07:653e ??
    db   $46, $27                                      ;; 07:6540 ??
    db   $46, $28                                      ;; 07:6542 ??
    db   $46, $32                                      ;; 07:6544 ??
    db   $46, $42                                      ;; 07:6546 ??
    db   $29, $53                                      ;; 07:6548 ??
    db   $29, $56                                      ;; 07:654a ??
    db   $ff, $ff                                      ;; 07:654c ??

map05_room01_03_script:
    SCRIPT_IDX script_00a9                             ;; 07:654e $a9 $00
    db   $ff                                           ;; 07:6550 $ff

map05_room01_03_tiles:
    db   $00, $00, $00, $02                            ;; 07:6551 ????
    db   $46, $21                                      ;; 07:6555 ??
    db   $46, $23                                      ;; 07:6557 ??
    db   $46, $26                                      ;; 07:6559 ??
    db   $46, $28                                      ;; 07:655b ??
    db   $46, $51                                      ;; 07:655d ??
    db   $46, $53                                      ;; 07:655f ??
    db   $46, $56                                      ;; 07:6561 ??
    db   $46, $58                                      ;; 07:6563 ??
    db   $ff, $ff                                      ;; 07:6565 ??

map05_room02_03_script:
    SCRIPT_IDX script_00a9                             ;; 07:6567 $a9 $00
    db   $ff                                           ;; 07:6569 $ff

map05_room02_03_tiles:
    db   $05, $00, $02, $02                            ;; 07:656a ????
    db   $27, $13                                      ;; 07:656e ??
    db   $27, $16                                      ;; 07:6570 ??
    db   $27, $21                                      ;; 07:6572 ??
    db   $27, $28                                      ;; 07:6574 ??
    db   $16, $34                                      ;; 07:6576 ??
    db   $16, $35                                      ;; 07:6578 ??
    db   $16, $44                                      ;; 07:657a ??
    db   $16, $45                                      ;; 07:657c ??
    db   $27, $51                                      ;; 07:657e ??
    db   $27, $58                                      ;; 07:6580 ??
    db   $27, $63                                      ;; 07:6582 ??
    db   $27, $66                                      ;; 07:6584 ??
    db   $ff, $ff                                      ;; 07:6586 ??

map05_room03_03_script:
    SCRIPT_IDX script_00a3                             ;; 07:6588 $a3 $00
    SCRIPT_AT_POS 2, 8, script_0403                    ;; 07:658a $28 $03 $04
    db   $ff                                           ;; 07:658d $ff

map05_room03_03_tiles:
    db   $02, $01, $02, $02                            ;; 07:658e ????
    db   $38, $16                                      ;; 07:6592 ??
    db   $36, $17                                      ;; 07:6594 ??
    db   $0f, $18                                      ;; 07:6596 ??
    db   $38, $21                                      ;; 07:6598 ??
    db   $38, $22                                      ;; 07:659a ??
    db   $38, $26                                      ;; 07:659c ??
    db   $36, $27                                      ;; 07:659e ??
    db   $3f, $28                                      ;; 07:65a0 ??
    db   $36, $31                                      ;; 07:65a2 ??
    db   $38, $32                                      ;; 07:65a4 ??
    db   $38, $36                                      ;; 07:65a6 ??
    db   $38, $37                                      ;; 07:65a8 ??
    db   $38, $38                                      ;; 07:65aa ??
    db   $36, $41                                      ;; 07:65ac ??
    db   $38, $42                                      ;; 07:65ae ??
    db   $38, $51                                      ;; 07:65b0 ??
    db   $38, $52                                      ;; 07:65b2 ??
    db   $16, $68                                      ;; 07:65b4 ??
    db   $ff, $ff                                      ;; 07:65b6 ??

map05_room04_03_script:
    SCRIPT_IDX script_00a9                             ;; 07:65b8 $a9 $00
    db   $ff                                           ;; 07:65ba $ff

map05_room04_03_tiles:
    db   $01, $02, $00, $02                            ;; 07:65bb ????
    db   $27, $24                                      ;; 07:65bf ??
    db   $27, $25                                      ;; 07:65c1 ??
    db   $27, $54                                      ;; 07:65c3 ??
    db   $27, $55                                      ;; 07:65c5 ??
    db   $ff, $ff                                      ;; 07:65c7 ??

map05_room05_03_script:
    SCRIPT_IDX script_00f2                             ;; 07:65c9 $f2 $00
    db   $ff                                           ;; 07:65cb $ff

map05_room05_03_tiles:
    db   $02, $09, $02, $02                            ;; 07:65cc ????
    db   $41, $11                                      ;; 07:65d0 ??
    db   $41, $52                                      ;; 07:65d2 ??
    db   $41, $56                                      ;; 07:65d4 ??
    db   $ff, $ff                                      ;; 07:65d6 ??

map05_room06_03_script:
    SCRIPT_IDX script_00d0                             ;; 07:65d8 $d0 $00
    SCRIPT_AT_POS 3, 5, script_032b                    ;; 07:65da $35 $2b $03
    SCRIPT_AT_POS 4, 4, script_032b                    ;; 07:65dd $44 $2b $03
    SCRIPT_AT_POS 4, 5, script_032b                    ;; 07:65e0 $45 $2b $03
    SCRIPT_AT_POS 3, 4, script_032b                    ;; 07:65e3 $34 $2b $03
    db   $ff                                           ;; 07:65e6 $ff

map05_room06_03_tiles:
    db   $02, $02, $01, $02                            ;; 07:65e7 ????
    db   $48, $34                                      ;; 07:65eb ??
    db   $49, $35                                      ;; 07:65ed ??
    db   $58, $44                                      ;; 07:65ef ??
    db   $59, $45                                      ;; 07:65f1 ??
    db   $ff, $ff                                      ;; 07:65f3 ??

map05_room07_03_script:
    dw   $ffff                                         ;; 07:65f5 $ff $ff
    db   $ff                                           ;; 07:65f7 $ff

map05_room07_03_tiles:
    db   $00, $00, $00, $00                            ;; 07:65f8 ????
    db   $ff, $ff                                      ;; 07:65fc ??

map05_room00_04_script:
    SCRIPT_IDX script_00be                             ;; 07:65fe $be $00
    db   $ff                                           ;; 07:6600 $ff

map05_room00_04_tiles:
    db   $00, $02, $02, $00                            ;; 07:6601 ????
    db   $27, $34                                      ;; 07:6605 ??
    db   $27, $45                                      ;; 07:6607 ??
    db   $27, $56                                      ;; 07:6609 ??
    db   $27, $67                                      ;; 07:660b ??
    db   $ff, $ff                                      ;; 07:660d ??

map05_room01_04_script:
    SCRIPT_IDX script_00c7                             ;; 07:660f $c7 $00
    SCRIPT_AT_POS 1, 1, script_02ea                    ;; 07:6611 $11 $ea $02
    db   $ff                                           ;; 07:6614 $ff

map05_room01_04_tiles:
    db   $00, $00, $02, $00                            ;; 07:6615 ????
    db   $02, $11                                      ;; 07:6619 ??
    db   $46, $15                                      ;; 07:661b ??
    db   $46, $25                                      ;; 07:661d ??
    db   $46, $35                                      ;; 07:661f ??
    db   $46, $45                                      ;; 07:6621 ??
    db   $46, $51                                      ;; 07:6623 ??
    db   $46, $52                                      ;; 07:6625 ??
    db   $46, $53                                      ;; 07:6627 ??
    db   $46, $54                                      ;; 07:6629 ??
    db   $46, $55                                      ;; 07:662b ??
    db   $46, $56                                      ;; 07:662d ??
    db   $46, $57                                      ;; 07:662f ??
    db   $46, $58                                      ;; 07:6631 ??
    db   $ff, $ff                                      ;; 07:6633 ??

map05_room02_04_script:
    SCRIPT_IDX script_0091                             ;; 07:6635 $91 $00
    db   $ff                                           ;; 07:6637 $ff

map05_room02_04_tiles:
    db   $00, $00, $02, $00                            ;; 07:6638 ????
    db   $3d, $23                                      ;; 07:663c ??
    db   $3d, $26                                      ;; 07:663e ??
    db   $3d, $32                                      ;; 07:6640 ??
    db   $3d, $33                                      ;; 07:6642 ??
    db   $3d, $36                                      ;; 07:6644 ??
    db   $3d, $37                                      ;; 07:6646 ??
    db   $3d, $42                                      ;; 07:6648 ??
    db   $3d, $43                                      ;; 07:664a ??
    db   $3d, $46                                      ;; 07:664c ??
    db   $3d, $47                                      ;; 07:664e ??
    db   $3d, $53                                      ;; 07:6650 ??
    db   $3d, $56                                      ;; 07:6652 ??
    db   $ff, $ff                                      ;; 07:6654 ??

map05_room03_04_script:
    SCRIPT_IDX script_007f                             ;; 07:6656 $7f $00
    SCRIPT_AT_POS 1, 8, script_02e7                    ;; 07:6658 $18 $e7 $02
    db   $ff                                           ;; 07:665b $ff

map05_room03_04_tiles:
    db   $02, $00, $02, $00                            ;; 07:665c ????
    db   $02, $18                                      ;; 07:6660 ??
    db   $ff, $ff                                      ;; 07:6662 ??

map05_room04_04_script:
    dw   $ffff                                         ;; 07:6664 $ff $ff
    db   $ff                                           ;; 07:6666 $ff

map05_room04_04_tiles:
    db   $00, $00, $00, $00                            ;; 07:6667 ????
    db   $ff, $ff                                      ;; 07:666b ??

map05_room05_04_script:
    dw   $ffff                                         ;; 07:666d $ff $ff
    db   $ff                                           ;; 07:666f $ff

map05_room05_04_tiles:
    db   $00, $00, $00, $00                            ;; 07:6670 ????
    db   $ff, $ff                                      ;; 07:6674 ??

map05_room06_04_script:
    dw   $ffff                                         ;; 07:6676 $ff $ff
    db   $ff                                           ;; 07:6678 $ff

map05_room06_04_tiles:
    db   $00, $00, $00, $00                            ;; 07:6679 ????
    db   $ff, $ff                                      ;; 07:667d ??

map05_room07_04_script:
    SCRIPT_IDX script_00c7                             ;; 07:667f $c7 $00
    SCRIPT_AT_POS 4, 5, script_0326                    ;; 07:6681 $45 $26 $03
    SCRIPT_AT_POS 4, 4, script_0326                    ;; 07:6684 $44 $26 $03
    SCRIPT_AT_POS 3, 5, script_0326                    ;; 07:6687 $35 $26 $03
    SCRIPT_AT_POS 3, 4, script_0326                    ;; 07:668a $34 $26 $03
    db   $ff                                           ;; 07:668d $ff

map05_room07_04_tiles:
    db   $02, $02, $02, $01                            ;; 07:668e ????
    db   $48, $34                                      ;; 07:6692 ??
    db   $49, $35                                      ;; 07:6694 ??
    db   $58, $44                                      ;; 07:6696 ??
    db   $59, $45                                      ;; 07:6698 ??
    db   $ff, $ff                                      ;; 07:669a ??

map05_room00_05_script:
    SCRIPT_IDX script_0091                             ;; 07:669c $91 $00
    db   $ff                                           ;; 07:669e $ff

map05_room00_05_tiles:
    db   $00, $02, $00, $00                            ;; 07:669f ????
    db   $3d, $13                                      ;; 07:66a3 ??
    db   $3d, $16                                      ;; 07:66a5 ??
    db   $3d, $23                                      ;; 07:66a7 ??
    db   $3d, $26                                      ;; 07:66a9 ??
    db   $3d, $53                                      ;; 07:66ab ??
    db   $3d, $56                                      ;; 07:66ad ??
    db   $3d, $63                                      ;; 07:66af ??
    db   $3d, $66                                      ;; 07:66b1 ??
    db   $ff, $ff                                      ;; 07:66b3 ??

map05_room01_05_script:
    SCRIPT_IDX script_00c4                             ;; 07:66b5 $c4 $00
    db   $ff                                           ;; 07:66b7 $ff

map05_room01_05_tiles:
    db   $00, $00, $00, $00                            ;; 07:66b8 ????
    db   $46, $13                                      ;; 07:66bc ??
    db   $46, $23                                      ;; 07:66be ??
    db   $46, $26                                      ;; 07:66c0 ??
    db   $46, $53                                      ;; 07:66c2 ??
    db   $46, $56                                      ;; 07:66c4 ??
    db   $46, $66                                      ;; 07:66c6 ??
    db   $ff, $ff                                      ;; 07:66c8 ??

map05_room02_05_script:
    SCRIPT_IDX script_0166                             ;; 07:66ca $66 $01
    db   $ff                                           ;; 07:66cc $ff

map05_room02_05_tiles:
    db   $00, $00, $00, $00                            ;; 07:66cd ????
    db   $0b, $33                                      ;; 07:66d1 ??
    db   $56, $34                                      ;; 07:66d3 ??
    db   $57, $35                                      ;; 07:66d5 ??
    db   $0b, $36                                      ;; 07:66d7 ??
    db   $1b, $43                                      ;; 07:66d9 ??
    db   $1b, $46                                      ;; 07:66db ??
    db   $ff, $ff                                      ;; 07:66dd ??

map05_room03_05_script:
    SCRIPT_IDX script_00c7                             ;; 07:66df $c7 $00
    db   $ff                                           ;; 07:66e1 $ff

map05_room03_05_tiles:
    db   $02, $00, $00, $00                            ;; 07:66e2 ????
    db   $2a, $13                                      ;; 07:66e6 ??
    db   $2a, $16                                      ;; 07:66e8 ??
    db   $46, $34                                      ;; 07:66ea ??
    db   $46, $35                                      ;; 07:66ec ??
    db   $46, $44                                      ;; 07:66ee ??
    db   $46, $45                                      ;; 07:66f0 ??
    db   $2a, $63                                      ;; 07:66f2 ??
    db   $2a, $66                                      ;; 07:66f4 ??
    db   $ff, $ff                                      ;; 07:66f6 ??

map05_room04_05_script:
    dw   $ffff                                         ;; 07:66f8 $ff $ff
    db   $ff                                           ;; 07:66fa $ff

map05_room04_05_tiles:
    db   $00, $00, $00, $00                            ;; 07:66fb ????
    db   $ff, $ff                                      ;; 07:66ff ??

map05_room05_05_script:
    SCRIPT_IDX script_00d0                             ;; 07:6701 $d0 $00
    db   $ff                                           ;; 07:6703 $ff

map05_room05_05_tiles:
    db   $00, $02, $02, $00                            ;; 07:6704 ????
    db   $0c, $33                                      ;; 07:6708 ??
    db   $0c, $36                                      ;; 07:670a ??
    db   $1c, $43                                      ;; 07:670c ??
    db   $1c, $46                                      ;; 07:670e ??
    db   $0c, $53                                      ;; 07:6710 ??
    db   $0c, $56                                      ;; 07:6712 ??
    db   $1c, $63                                      ;; 07:6714 ??
    db   $1c, $66                                      ;; 07:6716 ??
    db   $ff, $ff                                      ;; 07:6718 ??

map05_room06_05_script:
    SCRIPT_IDX script_00cd                             ;; 07:671a $cd $00
    db   $ff                                           ;; 07:671c $ff

map05_room06_05_tiles:
    db   $00, $00, $02, $02                            ;; 07:671d ????
    db   $0c, $22                                      ;; 07:6721 ??
    db   $0c, $27                                      ;; 07:6723 ??
    db   $1c, $32                                      ;; 07:6725 ??
    db   $1c, $37                                      ;; 07:6727 ??
    db   $0c, $44                                      ;; 07:6729 ??
    db   $0c, $45                                      ;; 07:672b ??
    db   $1c, $54                                      ;; 07:672d ??
    db   $1c, $55                                      ;; 07:672f ??
    db   $ff, $ff                                      ;; 07:6731 ??

map05_room07_05_script:
    SCRIPT_IDX script_03dc                             ;; 07:6733 $dc $03
    db   $ff                                           ;; 07:6735 $ff

map05_room07_05_tiles:
    db   $02, $02, $01, $01                            ;; 07:6736 ????
    db   $0c, $11                                      ;; 07:673a ??
    db   $1c, $21                                      ;; 07:673c ??
    db   $0c, $51                                      ;; 07:673e ??
    db   $1c, $61                                      ;; 07:6740 ??
    db   $ff, $ff                                      ;; 07:6742 ??

map05_room00_06_script:
    SCRIPT_IDX script_00c7                             ;; 07:6744 $c7 $00
    db   $ff                                           ;; 07:6746 $ff

map05_room00_06_tiles:
    db   $00, $02, $00, $00                            ;; 07:6747 ????
    db   $37, $23                                      ;; 07:674b ??
    db   $22, $24                                      ;; 07:674d ??
    db   $22, $25                                      ;; 07:674f ??
    db   $37, $26                                      ;; 07:6751 ??
    db   $37, $53                                      ;; 07:6753 ??
    db   $23, $54                                      ;; 07:6755 ??
    db   $23, $55                                      ;; 07:6757 ??
    db   $37, $56                                      ;; 07:6759 ??
    db   $ff, $ff                                      ;; 07:675b ??

map05_room01_06_script:
    SCRIPT_IDX script_00b5                             ;; 07:675d $b5 $00
    db   $ff                                           ;; 07:675f $ff

map05_room01_06_tiles:
    db   $00, $00, $00, $00                            ;; 07:6760 ????
    db   $46, $13                                      ;; 07:6764 ??
    db   $46, $16                                      ;; 07:6766 ??
    db   $46, $23                                      ;; 07:6768 ??
    db   $46, $26                                      ;; 07:676a ??
    db   $46, $33                                      ;; 07:676c ??
    db   $46, $36                                      ;; 07:676e ??
    db   $46, $43                                      ;; 07:6770 ??
    db   $46, $46                                      ;; 07:6772 ??
    db   $46, $53                                      ;; 07:6774 ??
    db   $46, $56                                      ;; 07:6776 ??
    db   $46, $63                                      ;; 07:6778 ??
    db   $46, $66                                      ;; 07:677a ??
    db   $ff, $ff                                      ;; 07:677c ??

map05_room02_06_script:
    SCRIPT_IDX script_00c1                             ;; 07:677e $c1 $00
    SCRIPT_AT_POS 2, 1, script_0292                    ;; 07:6780 $21 $92 $02
    SCRIPT_AT_POS 2, 8, script_0292                    ;; 07:6783 $28 $92 $02
    SCRIPT_AT_POS 2, 7, script_0292                    ;; 07:6786 $27 $92 $02
    SCRIPT_AT_POS 2, 6, script_0292                    ;; 07:6789 $26 $92 $02
    SCRIPT_AT_POS 2, 5, script_0292                    ;; 07:678c $25 $92 $02
    SCRIPT_AT_POS 2, 4, script_0292                    ;; 07:678f $24 $92 $02
    SCRIPT_AT_POS 2, 3, script_0292                    ;; 07:6792 $23 $92 $02
    SCRIPT_AT_POS 2, 2, script_0292                    ;; 07:6795 $22 $92 $02
    db   $ff                                           ;; 07:6798 $ff

map05_room02_06_tiles:
    db   $00, $00, $00, $00                            ;; 07:6799 ????
    db   $47, $21                                      ;; 07:679d ??
    db   $47, $22                                      ;; 07:679f ??
    db   $47, $23                                      ;; 07:67a1 ??
    db   $47, $24                                      ;; 07:67a3 ??
    db   $47, $25                                      ;; 07:67a5 ??
    db   $47, $26                                      ;; 07:67a7 ??
    db   $47, $27                                      ;; 07:67a9 ??
    db   $47, $28                                      ;; 07:67ab ??
    db   $46, $43                                      ;; 07:67ad ??
    db   $46, $46                                      ;; 07:67af ??
    db   $ff, $ff                                      ;; 07:67b1 ??

map05_room03_06_script:
    SCRIPT_IDX script_0091                             ;; 07:67b3 $91 $00
    db   $ff                                           ;; 07:67b5 $ff

map05_room03_06_tiles:
    db   $02, $00, $00, $00                            ;; 07:67b6 ????
    db   $3d, $11                                      ;; 07:67ba ??
    db   $3d, $12                                      ;; 07:67bc ??
    db   $3d, $17                                      ;; 07:67be ??
    db   $3d, $18                                      ;; 07:67c0 ??
    db   $3d, $22                                      ;; 07:67c2 ??
    db   $3d, $23                                      ;; 07:67c4 ??
    db   $3d, $26                                      ;; 07:67c6 ??
    db   $3d, $27                                      ;; 07:67c8 ??
    db   $3d, $52                                      ;; 07:67ca ??
    db   $3d, $53                                      ;; 07:67cc ??
    db   $3d, $56                                      ;; 07:67ce ??
    db   $3d, $57                                      ;; 07:67d0 ??
    db   $3d, $61                                      ;; 07:67d2 ??
    db   $3d, $62                                      ;; 07:67d4 ??
    db   $3d, $67                                      ;; 07:67d6 ??
    db   $3d, $68                                      ;; 07:67d8 ??
    db   $ff, $ff                                      ;; 07:67da ??

map05_room04_06_script:
    SCRIPT_IDX script_00cd                             ;; 07:67dc $cd $00
    SCRIPT_AT_POS 3, 5, script_0329                    ;; 07:67de $35 $29 $03
    SCRIPT_AT_POS 4, 4, script_0329                    ;; 07:67e1 $44 $29 $03
    SCRIPT_AT_POS 4, 5, script_0329                    ;; 07:67e4 $45 $29 $03
    SCRIPT_AT_POS 3, 4, script_0329                    ;; 07:67e7 $34 $29 $03
    db   $ff                                           ;; 07:67ea $ff

map05_room04_06_tiles:
    db   $01, $02, $02, $02                            ;; 07:67eb ????
    db   $48, $34                                      ;; 07:67ef ??
    db   $49, $35                                      ;; 07:67f1 ??
    db   $58, $44                                      ;; 07:67f3 ??
    db   $59, $45                                      ;; 07:67f5 ??
    db   $ff, $ff                                      ;; 07:67f7 ??

map05_room05_06_script:
    SCRIPT_IDX script_00b5                             ;; 07:67f9 $b5 $00
    db   $ff                                           ;; 07:67fb $ff

map05_room05_06_tiles:
    db   $02, $01, $00, $00                            ;; 07:67fc ????
    db   $0c, $12                                      ;; 07:6800 ??
    db   $1c, $22                                      ;; 07:6802 ??
    db   $0c, $34                                      ;; 07:6804 ??
    db   $0c, $35                                      ;; 07:6806 ??
    db   $1c, $44                                      ;; 07:6808 ??
    db   $1c, $45                                      ;; 07:680a ??
    db   $0c, $52                                      ;; 07:680c ??
    db   $1c, $62                                      ;; 07:680e ??
    db   $ff, $ff                                      ;; 07:6810 ??

map05_room06_06_script:
    dw   $ffff                                         ;; 07:6812 $ff $ff
    db   $ff                                           ;; 07:6814 $ff

map05_room06_06_tiles:
    db   $00, $00, $00, $00                            ;; 07:6815 ????
    db   $ff, $ff                                      ;; 07:6819 ??

map05_room07_06_script:
    SCRIPT_IDX script_007f                             ;; 07:681b $7f $00
    db   $ff                                           ;; 07:681d $ff

map05_room07_06_tiles:
    db   $02, $02, $01, $02                            ;; 07:681e ????
    db   $ff, $ff                                      ;; 07:6822 ??

map05_room00_07_script:
    SCRIPT_IDX script_00c1                             ;; 07:6824 $c1 $00
    SCRIPT_AT_POS 1, 6, script_0274                    ;; 07:6826 $16 $74 $02
    SCRIPT_AT_POS 6, 6, script_0274                    ;; 07:6829 $66 $74 $02
    SCRIPT_AT_POS 5, 6, script_0274                    ;; 07:682c $56 $74 $02
    SCRIPT_AT_POS 4, 6, script_0274                    ;; 07:682f $46 $74 $02
    SCRIPT_AT_POS 3, 6, script_0274                    ;; 07:6832 $36 $74 $02
    SCRIPT_AT_POS 2, 6, script_0274                    ;; 07:6835 $26 $74 $02
    db   $ff                                           ;; 07:6838 $ff

map05_room00_07_tiles:
    db   $00, $02, $00, $02                            ;; 07:6839 ????
    db   $47, $16                                      ;; 07:683d ??
    db   $47, $26                                      ;; 07:683f ??
    db   $47, $36                                      ;; 07:6841 ??
    db   $47, $46                                      ;; 07:6843 ??
    db   $47, $56                                      ;; 07:6845 ??
    db   $47, $66                                      ;; 07:6847 ??
    db   $ff, $ff                                      ;; 07:6849 ??

map05_room01_07_script:
    SCRIPT_IDX script_0169                             ;; 07:684b $69 $01
    db   $ff                                           ;; 07:684d $ff

map05_room01_07_tiles:
    db   $00, $00, $00, $02                            ;; 07:684e ????
    db   $0b, $33                                      ;; 07:6852 ??
    db   $56, $34                                      ;; 07:6854 ??
    db   $57, $35                                      ;; 07:6856 ??
    db   $0b, $36                                      ;; 07:6858 ??
    db   $1b, $43                                      ;; 07:685a ??
    db   $1b, $46                                      ;; 07:685c ??
    db   $ff, $ff                                      ;; 07:685e ??

map05_room02_07_script:
    SCRIPT_IDX script_00c7                             ;; 07:6860 $c7 $00
    SCRIPT_AT_POS 3, 4, script_02eb                    ;; 07:6862 $34 $eb $02
    db   $ff                                           ;; 07:6865 $ff

map05_room02_07_tiles:
    db   $00, $00, $00, $02                            ;; 07:6866 ????
    db   $2f, $13                                      ;; 07:686a ??
    db   $2f, $16                                      ;; 07:686c ??
    db   $2f, $22                                      ;; 07:686e ??
    db   $2f, $23                                      ;; 07:6870 ??
    db   $2f, $26                                      ;; 07:6872 ??
    db   $2f, $27                                      ;; 07:6874 ??
    db   $11, $34                                      ;; 07:6876 ??
    db   $2f, $52                                      ;; 07:6878 ??
    db   $2f, $53                                      ;; 07:687a ??
    db   $2f, $56                                      ;; 07:687c ??
    db   $2f, $57                                      ;; 07:687e ??
    db   $2f, $63                                      ;; 07:6880 ??
    db   $2f, $66                                      ;; 07:6882 ??
    db   $ff, $ff                                      ;; 07:6884 ??

map05_room03_07_script:
    SCRIPT_IDX script_00c4                             ;; 07:6886 $c4 $00
    db   $ff                                           ;; 07:6888 $ff

map05_room03_07_tiles:
    db   $02, $00, $00, $02                            ;; 07:6889 ????
    db   $37, $11                                      ;; 07:688d ??
    db   $37, $22                                      ;; 07:688f ??
    db   $23, $23                                      ;; 07:6891 ??
    db   $22, $24                                      ;; 07:6893 ??
    db   $23, $25                                      ;; 07:6895 ??
    db   $22, $26                                      ;; 07:6897 ??
    db   $37, $27                                      ;; 07:6899 ??
    db   $22, $32                                      ;; 07:689b ??
    db   $23, $42                                      ;; 07:689d ??
    db   $37, $52                                      ;; 07:689f ??
    db   $ff, $ff                                      ;; 07:68a1 ??

map05_room04_07_script:
    dw   $ffff                                         ;; 07:68a3 $ff $ff
    db   $ff                                           ;; 07:68a5 $ff

map05_room04_07_tiles:
    db   $00, $00, $00, $00                            ;; 07:68a6 ????
    db   $ff, $ff                                      ;; 07:68aa ??

map05_room05_07_script:
    SCRIPT_IDX script_00cd                             ;; 07:68ac $cd $00
    db   $ff                                           ;; 07:68ae $ff

map05_room05_07_tiles:
    db   $00, $02, $00, $02                            ;; 07:68af ????
    db   $0c, $13                                      ;; 07:68b3 ??
    db   $0c, $16                                      ;; 07:68b5 ??
    db   $1c, $23                                      ;; 07:68b7 ??
    db   $1c, $26                                      ;; 07:68b9 ??
    db   $ff, $ff                                      ;; 07:68bb ??

map05_room06_07_script:
    SCRIPT_IDX script_00c4                             ;; 07:68bd $c4 $00
    db   $ff                                           ;; 07:68bf $ff

map05_room06_07_tiles:
    db   $05, $00, $02, $02                            ;; 07:68c0 ????
    db   $0c, $16                                      ;; 07:68c4 ??
    db   $0c, $23                                      ;; 07:68c6 ??
    db   $1c, $26                                      ;; 07:68c8 ??
    db   $1c, $33                                      ;; 07:68ca ??
    db   $0c, $43                                      ;; 07:68cc ??
    db   $1c, $53                                      ;; 07:68ce ??
    db   $0c, $56                                      ;; 07:68d0 ??
    db   $1c, $66                                      ;; 07:68d2 ??
    db   $ff, $ff                                      ;; 07:68d4 ??

map05_room07_07_script:
    SCRIPT_IDX script_00d0                             ;; 07:68d6 $d0 $00
    db   $ff                                           ;; 07:68d8 $ff

map05_room07_07_tiles:
    db   $02, $01, $02, $02                            ;; 07:68d9 ????
    db   $ff, $ff                                      ;; 07:68dd ??
