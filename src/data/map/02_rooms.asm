;; Disassembled with BadBoy Disassembler: https://github.com/daid/BadBoy



mapRoomPointers_02:
    db   $01, $04, $08, $08                            ;; 07:4871 ....
    dw   map02_room_tile_template                      ;; 07:4875 $8f $49
    ;;Door tile info
    db   $25, $35, $20, $30, $14, $03, $52, $53        ;; 07:4877 ??????..
    db   $24, $34, $21, $31, $12, $13, $42, $43        ;; 07:487f ????????
    db   $15, $45, $10, $40, $28, $04, $51, $54        ;; 07:4887 ......??
    ;;Room data pointers
    dw   map02_room00_00_script, map02_room00_00_tiles ;; 07:488f $bb $49 $be $49
    dw   map02_room01_00_script, map02_room01_00_tiles ;; 07:4893 $d8 $49 $de $49
    dw   map02_room02_00_script, map02_room02_00_tiles ;; 07:4897 $f2 $49 $fb $49
    dw   map02_room03_00_script, map02_room03_00_tiles ;; 07:489b $23 $4a $26 $4a
    dw   map02_room04_00_script, map02_room04_00_tiles ;; 07:489f $32 $4a $35 $4a
    dw   map02_room05_00_script, map02_room05_00_tiles ;; 07:48a3 $41 $4a $47 $4a
    dw   map02_room06_00_script, map02_room06_00_tiles ;; 07:48a7 $5b $4a $5e $4a
    dw   map02_room07_00_script, map02_room07_00_tiles ;; 07:48ab $6a $4a $6d $4a
    dw   map02_room00_01_script, map02_room00_01_tiles ;; 07:48af $83 $4a $86 $4a
    dw   map02_room01_01_script, map02_room01_01_tiles ;; 07:48b3 $a0 $4a $bb $4a
    dw   map02_room02_01_script, map02_room02_01_tiles ;; 07:48b7 $d5 $4a $d8 $4a
    dw   map02_room03_01_script, map02_room03_01_tiles ;; 07:48bb $e6 $4a $e9 $4a
    dw   map02_room04_01_script, map02_room04_01_tiles ;; 07:48bf $01 $4b $04 $4b
    dw   map02_room05_01_script, map02_room05_01_tiles ;; 07:48c3 $12 $4b $15 $4b
    dw   map02_room06_01_script, map02_room06_01_tiles ;; 07:48c7 $27 $4b $2a $4b
    dw   map02_room07_01_script, map02_room07_01_tiles ;; 07:48cb $34 $4b $37 $4b
    dw   map02_room00_02_script, map02_room00_02_tiles ;; 07:48cf $45 $4b $4e $4b
    dw   map02_room01_02_script, map02_room01_02_tiles ;; 07:48d3 $64 $4b $67 $4b
    dw   map02_room02_02_script, map02_room02_02_tiles ;; 07:48d7 $7f $4b $85 $4b
    dw   map02_room03_02_script, map02_room03_02_tiles ;; 07:48db $97 $4b $9d $4b
    dw   map02_room04_02_script, map02_room04_02_tiles ;; 07:48df $b3 $4b $b6 $4b
    dw   map02_room05_02_script, map02_room05_02_tiles ;; 07:48e3 $c6 $4b $cc $4b
    dw   map02_room06_02_script, map02_room06_02_tiles ;; 07:48e7 $e4 $4b $f0 $4b
    dw   map02_room07_02_script, map02_room07_02_tiles ;; 07:48eb $0a $4c $0d $4c
    dw   map02_room00_03_script, map02_room00_03_tiles ;; 07:48ef $23 $4c $26 $4c
    dw   map02_room01_03_script, map02_room01_03_tiles ;; 07:48f3 $48 $4c $4b $4c
    dw   map02_room02_03_script, map02_room02_03_tiles ;; 07:48f7 $61 $4c $64 $4c
    dw   map02_room03_03_script, map02_room03_03_tiles ;; 07:48fb $82 $4c $85 $4c
    dw   map02_room04_03_script, map02_room04_03_tiles ;; 07:48ff $8f $4c $92 $4c
    dw   map02_room05_03_script, map02_room05_03_tiles ;; 07:4903 $a8 $4c $ab $4c
    dw   map02_room06_03_script, map02_room06_03_tiles ;; 07:4907 $d1 $4c $d4 $4c
    dw   map02_room07_03_script, map02_room07_03_tiles ;; 07:490b $f2 $4c $f8 $4c
    dw   map02_room00_04_script, map02_room00_04_tiles ;; 07:490f $04 $4d $0a $4d
    dw   map02_room01_04_script, map02_room01_04_tiles ;; 07:4913 $1a $4d $1d $4d
    dw   map02_room02_04_script, map02_room02_04_tiles ;; 07:4917 $35 $4d $47 $4d
    dw   map02_room03_04_script, map02_room03_04_tiles ;; 07:491b $67 $4d $6a $4d
    dw   map02_room04_04_script, map02_room04_04_tiles ;; 07:491f $84 $4d $87 $4d
    dw   map02_room05_04_script, map02_room05_04_tiles ;; 07:4923 $95 $4d $98 $4d
    dw   map02_room06_04_script, map02_room06_04_tiles ;; 07:4927 $ae $4d $b4 $4d
    dw   map02_room07_04_script, map02_room07_04_tiles ;; 07:492b $cc $4d $d2 $4d
    dw   map02_room00_05_script, map02_room00_05_tiles ;; 07:492f $0e $4e $11 $4e
    dw   map02_room01_05_script, map02_room01_05_tiles ;; 07:4933 $2f $4e $32 $4e
    dw   map02_room02_05_script, map02_room02_05_tiles ;; 07:4937 $44 $4e $4a $4e
    dw   map02_room03_05_script, map02_room03_05_tiles ;; 07:493b $56 $4e $5c $4e
    dw   map02_room04_05_script, map02_room04_05_tiles ;; 07:493f $74 $4e $77 $4e
    dw   map02_room05_05_script, map02_room05_05_tiles ;; 07:4943 $bd $4e $c3 $4e
    dw   map02_room06_05_script, map02_room06_05_tiles ;; 07:4947 $e5 $4e $e8 $4e
    dw   map02_room07_05_script, map02_room07_05_tiles ;; 07:494b $f6 $4e $f9 $4e
    dw   map02_room00_06_script, map02_room00_06_tiles ;; 07:494f $0f $4f $1b $4f
    dw   map02_room01_06_script, map02_room01_06_tiles ;; 07:4953 $3b $4f $41 $4f
    dw   map02_room02_06_script, map02_room02_06_tiles ;; 07:4957 $5d $4f $63 $4f
    dw   map02_room03_06_script, map02_room03_06_tiles ;; 07:495b $73 $4f $76 $4f
    dw   map02_room04_06_script, map02_room04_06_tiles ;; 07:495f $8c $4f $9b $4f
    dw   map02_room05_06_script, map02_room05_06_tiles ;; 07:4963 $b1 $4f $b4 $4f
    dw   map02_room06_06_script, map02_room06_06_tiles ;; 07:4967 $be $4f $c4 $4f
    dw   map02_room07_06_script, map02_room07_06_tiles ;; 07:496b $d0 $4f $d3 $4f
    dw   map02_room00_07_script, map02_room00_07_tiles ;; 07:496f $e1 $4f $e4 $4f
    dw   map02_room01_07_script, map02_room01_07_tiles ;; 07:4973 $fa $4f $09 $50
    dw   map02_room02_07_script, map02_room02_07_tiles ;; 07:4977 $1f $50 $2e $50
    dw   map02_room03_07_script, map02_room03_07_tiles ;; 07:497b $44 $50 $47 $50
    dw   map02_room04_07_script, map02_room04_07_tiles ;; 07:497f $55 $50 $58 $50
    dw   map02_room05_07_script, map02_room05_07_tiles ;; 07:4983 $6e $50 $71 $50
    dw   map02_room06_07_script, map02_room06_07_tiles ;; 07:4987 $7f $50 $82 $50
    dw   map02_room07_07_script, map02_room07_07_tiles ;; 07:498b $98 $50 $9e $50

map02_room_tile_template:
    db   $06, $28, $28, $28, $14, $03, $04, $04, $04, $05 ;; 07:498f ..........
    db   $10,                $80,                $80, $15 ;; 07:4999 ....
    db   $10,                $80,                $80, $15 ;; 07:499d ....
    db   $20,                $80,                $80, $25 ;; 07:49a1 ....
    db   $30,                $80,                $80, $35 ;; 07:49a5 ....
    db   $40,                $80,                $80, $45 ;; 07:49a9 ....
    db   $40,                $80,                $80, $45 ;; 07:49ad ....
    db   $50, $51, $51, $51, $52, $53, $54, $54, $54, $55 ;; 07:49b1 ..........

map02_room00_00_script:
    SCRIPT_IDX script_0519                             ;; 07:49bb $19 $05
    db   $ff                                           ;; 07:49bd $ff

map02_room00_00_tiles:
    db   $02, $02, $02, $08                            ;; 07:49be ....
    db   $1a, $11                                      ;; 07:49c2 ..
    db   $1a, $12                                      ;; 07:49c4 ..
    db   $62, $15                                      ;; 07:49c6 ..
    db   $16, $18                                      ;; 07:49c8 ..
    db   $1a, $21                                      ;; 07:49ca ..
    db   $62, $25                                      ;; 07:49cc ..
    db   $17, $35                                      ;; 07:49ce ..
    db   $4f, $36                                      ;; 07:49d0 ..
    db   $4f, $37                                      ;; 07:49d2 ..
    db   $19, $38                                      ;; 07:49d4 ..
    db   $ff, $ff                                      ;; 07:49d6 .?

map02_room01_00_script:
    SCRIPT_IDX script_007f                             ;; 07:49d8 $7f $00
    SCRIPT_AT_POS 1, 8, script_0304                    ;; 07:49da $18 $04 $03
    db   $ff                                           ;; 07:49dd $ff

map02_room01_00_tiles:
    db   $02, $02, $02, $01                            ;; 07:49de ????
    db   $2a, $15                                      ;; 07:49e2 ??
    db   $02, $18                                      ;; 07:49e4 ??
    db   $2a, $35                                      ;; 07:49e6 ??
    db   $2a, $45                                      ;; 07:49e8 ??
    db   $2a, $46                                      ;; 07:49ea ??
    db   $2a, $47                                      ;; 07:49ec ??
    db   $2a, $48                                      ;; 07:49ee ??
    db   $ff, $ff                                      ;; 07:49f0 ??

map02_room02_00_script:
    SCRIPT_IDX script_03eb                             ;; 07:49f2 $eb $03
    SCRIPT_AT_POS 1, 8, script_0306                    ;; 07:49f4 $18 $06 $03
    SCRIPT_AT_POS 3, 4, script_04e0                    ;; 07:49f7 $34 $e0 $04
    db   $ff                                           ;; 07:49fa $ff

map02_room02_00_tiles:
    db   $00, $02, $02, $01                            ;; 07:49fb ????
    db   $0b, $12                                      ;; 07:49ff ??
    db   $0b, $17                                      ;; 07:4a01 ??
    db   $1b, $22                                      ;; 07:4a03 ??
    db   $1b, $27                                      ;; 07:4a05 ??
    db   $2a, $32                                      ;; 07:4a07 ??
    db   $29, $34                                      ;; 07:4a09 ??
    db   $2a, $37                                      ;; 07:4a0b ??
    db   $2a, $42                                      ;; 07:4a0d ??
    db   $2a, $47                                      ;; 07:4a0f ??
    db   $38, $53                                      ;; 07:4a11 ??
    db   $38, $54                                      ;; 07:4a13 ??
    db   $38, $55                                      ;; 07:4a15 ??
    db   $38, $56                                      ;; 07:4a17 ??
    db   $38, $63                                      ;; 07:4a19 ??
    db   $36, $64                                      ;; 07:4a1b ??
    db   $36, $65                                      ;; 07:4a1d ??
    db   $38, $66                                      ;; 07:4a1f ??
    db   $ff, $ff                                      ;; 07:4a21 ??

map02_room03_00_script:
    SCRIPT_IDX script_0085                             ;; 07:4a23 $85 $00
    db   $ff                                           ;; 07:4a25 $ff

map02_room03_00_tiles:
    db   $02, $00, $02, $01                            ;; 07:4a26 ????
    db   $41, $44                                      ;; 07:4a2a ??
    db   $41, $46                                      ;; 07:4a2c ??
    db   $41, $52                                      ;; 07:4a2e ??
    db   $ff, $ff                                      ;; 07:4a30 ??

map02_room04_00_script:
    SCRIPT_IDX script_007f                             ;; 07:4a32 $7f $00
    db   $ff                                           ;; 07:4a34 $ff

map02_room04_00_tiles:
    db   $02, $02, $02, $01                            ;; 07:4a35 ????
    db   $41, $17                                      ;; 07:4a39 ??
    db   $41, $22                                      ;; 07:4a3b ??
    db   $41, $33                                      ;; 07:4a3d ??
    db   $ff, $ff                                      ;; 07:4a3f ??

map02_room05_00_script:
    SCRIPT_IDX script_0082                             ;; 07:4a41 $82 $00
    SCRIPT_AT_POS 1, 8, script_0300                    ;; 07:4a43 $18 $00 $03
    db   $ff                                           ;; 07:4a46 $ff

map02_room05_00_tiles:
    db   $02, $02, $02, $01                            ;; 07:4a47 ????
    db   $02, $18                                      ;; 07:4a4b ??
    db   $46, $31                                      ;; 07:4a4d ??
    db   $46, $32                                      ;; 07:4a4f ??
    db   $46, $37                                      ;; 07:4a51 ??
    db   $46, $38                                      ;; 07:4a53 ??
    db   $46, $43                                      ;; 07:4a55 ??
    db   $46, $46                                      ;; 07:4a57 ??
    db   $ff, $ff                                      ;; 07:4a59 ??

map02_room06_00_script:
    SCRIPT_IDX script_0088                             ;; 07:4a5b $88 $00
    db   $ff                                           ;; 07:4a5d $ff

map02_room06_00_tiles:
    db   $01, $02, $02, $00                            ;; 07:4a5e ????
    db   $41, $11                                      ;; 07:4a62 ??
    db   $41, $24                                      ;; 07:4a64 ??
    db   $41, $43                                      ;; 07:4a66 ??
    db   $ff, $ff                                      ;; 07:4a68 ??

map02_room07_00_script:
    SCRIPT_IDX script_0085                             ;; 07:4a6a $85 $00
    db   $ff                                           ;; 07:4a6c $ff

map02_room07_00_tiles:
    db   $02, $01, $02, $01                            ;; 07:4a6d ????
    db   $46, $23                                      ;; 07:4a71 ??
    db   $46, $24                                      ;; 07:4a73 ??
    db   $46, $25                                      ;; 07:4a75 ??
    db   $46, $26                                      ;; 07:4a77 ??
    db   $46, $33                                      ;; 07:4a79 ??
    db   $46, $43                                      ;; 07:4a7b ??
    db   $46, $53                                      ;; 07:4a7d ??
    db   $46, $63                                      ;; 07:4a7f ??
    db   $ff, $ff                                      ;; 07:4a81 ??

map02_room00_01_script:
    SCRIPT_IDX script_051c                             ;; 07:4a83 $1c $05
    db   $ff                                           ;; 07:4a85 $ff

map02_room00_01_tiles:
    db   $02, $02, $02, $04                            ;; 07:4a86 ....
    db   $26, $11                                      ;; 07:4a8a ..
    db   $62, $13                                      ;; 07:4a8c ..
    db   $62, $16                                      ;; 07:4a8e ..
    db   $26, $18                                      ;; 07:4a90 ..
    db   $62, $23                                      ;; 07:4a92 ..
    db   $62, $26                                      ;; 07:4a94 ..
    db   $17, $33                                      ;; 07:4a96 ..
    db   $4f, $34                                      ;; 07:4a98 ..
    db   $4f, $35                                      ;; 07:4a9a ..
    db   $19, $36                                      ;; 07:4a9c ..
    db   $ff, $ff                                      ;; 07:4a9e .?

map02_room01_01_script:
    SCRIPT_IDX script_0088                             ;; 07:4aa0 $88 $00
    SCRIPT_AT_POS 5, 2, script_0273                    ;; 07:4aa2 $52 $73 $02
    SCRIPT_AT_POS 5, 3, script_0273                    ;; 07:4aa5 $53 $73 $02
    SCRIPT_AT_POS 5, 4, script_0273                    ;; 07:4aa8 $54 $73 $02
    SCRIPT_AT_POS 5, 5, script_0273                    ;; 07:4aab $55 $73 $02
    SCRIPT_AT_POS 5, 6, script_0273                    ;; 07:4aae $56 $73 $02
    SCRIPT_AT_POS 5, 7, script_0273                    ;; 07:4ab1 $57 $73 $02
    SCRIPT_AT_POS 5, 8, script_0273                    ;; 07:4ab4 $58 $73 $02
    SCRIPT_AT_POS 5, 1, script_0273                    ;; 07:4ab7 $51 $73 $02
    db   $ff                                           ;; 07:4aba $ff

map02_room01_01_tiles:
    db   $00, $02, $01, $01                            ;; 07:4abb ????
    db   $2e, $21                                      ;; 07:4abf ??
    db   $47, $51                                      ;; 07:4ac1 ??
    db   $47, $52                                      ;; 07:4ac3 ??
    db   $47, $53                                      ;; 07:4ac5 ??
    db   $47, $54                                      ;; 07:4ac7 ??
    db   $47, $55                                      ;; 07:4ac9 ??
    db   $47, $56                                      ;; 07:4acb ??
    db   $47, $57                                      ;; 07:4acd ??
    db   $47, $58                                      ;; 07:4acf ??
    db   $2e, $68                                      ;; 07:4ad1 ??
    db   $ff, $ff                                      ;; 07:4ad3 ??

map02_room02_01_script:
    SCRIPT_IDX script_0085                             ;; 07:4ad5 $85 $00
    db   $ff                                           ;; 07:4ad7 $ff

map02_room02_01_tiles:
    db   $01, $00, $01, $00                            ;; 07:4ad8 ????
    db   $1a, $13                                      ;; 07:4adc ??
    db   $1a, $16                                      ;; 07:4ade ??
    db   $1a, $24                                      ;; 07:4ae0 ??
    db   $1a, $25                                      ;; 07:4ae2 ??
    db   $ff, $ff                                      ;; 07:4ae4 ??

map02_room03_01_script:
    SCRIPT_IDX script_0085                             ;; 07:4ae6 $85 $00
    db   $ff                                           ;; 07:4ae8 $ff

map02_room03_01_tiles:
    db   $02, $01, $01, $02                            ;; 07:4ae9 ????
    db   $2a, $13                                      ;; 07:4aed ??
    db   $2a, $23                                      ;; 07:4aef ??
    db   $2a, $33                                      ;; 07:4af1 ??
    db   $2a, $34                                      ;; 07:4af3 ??
    db   $2a, $35                                      ;; 07:4af5 ??
    db   $2a, $36                                      ;; 07:4af7 ??
    db   $2a, $37                                      ;; 07:4af9 ??
    db   $2a, $43                                      ;; 07:4afb ??
    db   $2a, $53                                      ;; 07:4afd ??
    db   $ff, $ff                                      ;; 07:4aff ??

map02_room04_01_script:
    SCRIPT_IDX script_0085                             ;; 07:4b01 $85 $00
    db   $ff                                           ;; 07:4b03 $ff

map02_room04_01_tiles:
    db   $00, $02, $01, $02                            ;; 07:4b04 ????
    db   $46, $16                                      ;; 07:4b08 ??
    db   $46, $26                                      ;; 07:4b0a ??
    db   $46, $36                                      ;; 07:4b0c ??
    db   $46, $46                                      ;; 07:4b0e ??
    db   $ff, $ff                                      ;; 07:4b10 ??

map02_room05_01_script:
    SCRIPT_IDX script_0187                             ;; 07:4b12 $87 $01
    db   $ff                                           ;; 07:4b14 $ff

map02_room05_01_tiles:
    db   $02, $00, $01, $02                            ;; 07:4b15 ????
    db   $46, $24                                      ;; 07:4b19 ??
    db   $46, $26                                      ;; 07:4b1b ??
    db   $46, $28                                      ;; 07:4b1d ??
    db   $46, $54                                      ;; 07:4b1f ??
    db   $46, $56                                      ;; 07:4b21 ??
    db   $46, $58                                      ;; 07:4b23 ??
    db   $ff, $ff                                      ;; 07:4b25 ??

map02_room06_01_script:
    SCRIPT_IDX script_0085                             ;; 07:4b27 $85 $00
    db   $ff                                           ;; 07:4b29 $ff

map02_room06_01_tiles:
    db   $02, $00, $00, $02                            ;; 07:4b2a ????
    db   $16, $23                                      ;; 07:4b2e ??
    db   $16, $26                                      ;; 07:4b30 ??
    db   $ff, $ff                                      ;; 07:4b32 ??

map02_room07_01_script:
    SCRIPT_IDX script_0088                             ;; 07:4b34 $88 $00
    db   $ff                                           ;; 07:4b36 $ff

map02_room07_01_tiles:
    db   $02, $02, $01, $00                            ;; 07:4b37 ????
    db   $0b, $34                                      ;; 07:4b3b ??
    db   $0b, $35                                      ;; 07:4b3d ??
    db   $1b, $44                                      ;; 07:4b3f ??
    db   $1b, $45                                      ;; 07:4b41 ??
    db   $ff, $ff                                      ;; 07:4b43 ??

map02_room00_02_script:
    SCRIPT_IDX script_0094                             ;; 07:4b45 $94 $00
    SCRIPT_AT_POS 1, 8, script_0391                    ;; 07:4b47 $18 $91 $03
    SCRIPT_AT_POS 6, 8, script_0390                    ;; 07:4b4a $68 $90 $03
    db   $ff                                           ;; 07:4b4d $ff

map02_room00_02_tiles:
    db   $02, $02, $02, $01                            ;; 07:4b4e ????
    db   $1a, $16                                      ;; 07:4b52 ??
    db   $11, $18                                      ;; 07:4b54 ??
    db   $1a, $26                                      ;; 07:4b56 ??
    db   $1a, $36                                      ;; 07:4b58 ??
    db   $1a, $46                                      ;; 07:4b5a ??
    db   $1a, $56                                      ;; 07:4b5c ??
    db   $1a, $66                                      ;; 07:4b5e ??
    db   $02, $68                                      ;; 07:4b60 ??
    db   $ff, $ff                                      ;; 07:4b62 ??

map02_room01_02_script:
    SCRIPT_IDX script_0085                             ;; 07:4b64 $85 $00
    db   $ff                                           ;; 07:4b66 $ff

map02_room01_02_tiles:
    db   $00, $02, $01, $02                            ;; 07:4b67 ????
    db   $17, $23                                      ;; 07:4b6b ??
    db   $18, $24                                      ;; 07:4b6d ??
    db   $18, $25                                      ;; 07:4b6f ??
    db   $18, $26                                      ;; 07:4b71 ??
    db   $18, $27                                      ;; 07:4b73 ??
    db   $19, $28                                      ;; 07:4b75 ??
    db   $0d, $34                                      ;; 07:4b77 ??
    db   $0d, $35                                      ;; 07:4b79 ??
    db   $0d, $36                                      ;; 07:4b7b ??
    db   $ff, $ff                                      ;; 07:4b7d ??

map02_room02_02_script:
    SCRIPT_IDX script_0199                             ;; 07:4b7f $99 $01
    SCRIPT_AT_POS 1, 8, script_0348                    ;; 07:4b81 $18 $48 $03
    db   $ff                                           ;; 07:4b84 $ff

map02_room02_02_tiles:
    db   $02, $00, $02, $02                            ;; 07:4b85 ????
    db   $2a, $16                                      ;; 07:4b89 ??
    db   $11, $18                                      ;; 07:4b8b ??
    db   $2a, $26                                      ;; 07:4b8d ??
    db   $2a, $36                                      ;; 07:4b8f ??
    db   $2a, $46                                      ;; 07:4b91 ??
    db   $2a, $56                                      ;; 07:4b93 ??
    db   $ff, $ff                                      ;; 07:4b95 ??

map02_room03_02_script:
    SCRIPT_IDX script_0091                             ;; 07:4b97 $91 $00
    SCRIPT_AT_POS 1, 8, script_030d                    ;; 07:4b99 $18 $0d $03
    db   $ff                                           ;; 07:4b9c $ff

map02_room03_02_tiles:
    db   $02, $02, $02, $01                            ;; 07:4b9d ????
    db   $02, $18                                      ;; 07:4ba1 ??
    db   $1a, $21                                      ;; 07:4ba3 ??
    db   $1a, $23                                      ;; 07:4ba5 ??
    db   $1a, $24                                      ;; 07:4ba7 ??
    db   $1a, $25                                      ;; 07:4ba9 ??
    db   $1a, $26                                      ;; 07:4bab ??
    db   $1a, $27                                      ;; 07:4bad ??
    db   $1a, $28                                      ;; 07:4baf ??
    db   $ff, $ff                                      ;; 07:4bb1 ??

map02_room04_02_script:
    SCRIPT_IDX script_0133                             ;; 07:4bb3 $33 $01
    db   $ff                                           ;; 07:4bb5 $ff

map02_room04_02_tiles:
    db   $00, $02, $02, $00                            ;; 07:4bb6 ????
    db   $46, $16                                      ;; 07:4bba ??
    db   $46, $36                                      ;; 07:4bbc ??
    db   $46, $46                                      ;; 07:4bbe ??
    db   $46, $56                                      ;; 07:4bc0 ??
    db   $46, $66                                      ;; 07:4bc2 ??
    db   $ff, $ff                                      ;; 07:4bc4 ??

map02_room05_02_script:
    SCRIPT_IDX script_0091                             ;; 07:4bc6 $91 $00
    SCRIPT_AT_POS 1, 8, script_0310                    ;; 07:4bc8 $18 $10 $03
    db   $ff                                           ;; 07:4bcb $ff

map02_room05_02_tiles:
    db   $02, $00, $02, $02                            ;; 07:4bcc ????
    db   $3d, $13                                      ;; 07:4bd0 ??
    db   $3d, $14                                      ;; 07:4bd2 ??
    db   $3d, $15                                      ;; 07:4bd4 ??
    db   $3d, $16                                      ;; 07:4bd6 ??
    db   $02, $18                                      ;; 07:4bd8 ??
    db   $3d, $63                                      ;; 07:4bda ??
    db   $3d, $64                                      ;; 07:4bdc ??
    db   $3d, $65                                      ;; 07:4bde ??
    db   $3d, $66                                      ;; 07:4be0 ??
    db   $ff, $ff                                      ;; 07:4be2 ??

map02_room06_02_script:
    SCRIPT_IDX script_007f                             ;; 07:4be4 $7f $00
    SCRIPT_AT_POS 3, 4, script_029c                    ;; 07:4be6 $34 $9c $02
    SCRIPT_AT_POS 6, 8, script_0302                    ;; 07:4be9 $68 $02 $03
    SCRIPT_AT_POS 1, 8, script_0374                    ;; 07:4bec $18 $74 $03
    db   $ff                                           ;; 07:4bef $ff

map02_room06_02_tiles:
    db   $01, $02, $02, $02                            ;; 07:4bf0 ????
    db   $11, $18                                      ;; 07:4bf4 ??
    db   $1a, $24                                      ;; 07:4bf6 ??
    db   $1a, $25                                      ;; 07:4bf8 ??
    db   $1a, $33                                      ;; 07:4bfa ??
    db   $29, $34                                      ;; 07:4bfc ??
    db   $1a, $36                                      ;; 07:4bfe ??
    db   $1a, $43                                      ;; 07:4c00 ??
    db   $1a, $46                                      ;; 07:4c02 ??
    db   $1a, $54                                      ;; 07:4c04 ??
    db   $1a, $55                                      ;; 07:4c06 ??
    db   $ff, $ff                                      ;; 07:4c08 ??

map02_room07_02_script:
    SCRIPT_IDX script_0088                             ;; 07:4c0a $88 $00
    db   $ff                                           ;; 07:4c0c $ff

map02_room07_02_tiles:
    db   $02, $01, $00, $02                            ;; 07:4c0d ????
    db   $46, $13                                      ;; 07:4c11 ??
    db   $46, $24                                      ;; 07:4c13 ??
    db   $46, $35                                      ;; 07:4c15 ??
    db   $46, $42                                      ;; 07:4c17 ??
    db   $46, $46                                      ;; 07:4c19 ??
    db   $46, $53                                      ;; 07:4c1b ??
    db   $46, $57                                      ;; 07:4c1d ??
    db   $46, $64                                      ;; 07:4c1f ??
    db   $ff, $ff                                      ;; 07:4c21 ??

map02_room00_03_script:
    SCRIPT_IDX script_0052                             ;; 07:4c23 $52 $00
    db   $ff                                           ;; 07:4c25 $ff

map02_room00_03_tiles:
    db   $00, $02, $01, $05                            ;; 07:4c26 ????
    db   $2a, $21                                      ;; 07:4c2a ??
    db   $2a, $23                                      ;; 07:4c2c ??
    db   $2a, $24                                      ;; 07:4c2e ??
    db   $2a, $25                                      ;; 07:4c30 ??
    db   $2a, $26                                      ;; 07:4c32 ??
    db   $2a, $27                                      ;; 07:4c34 ??
    db   $2a, $28                                      ;; 07:4c36 ??
    db   $2a, $51                                      ;; 07:4c38 ??
    db   $2a, $53                                      ;; 07:4c3a ??
    db   $2a, $54                                      ;; 07:4c3c ??
    db   $2a, $55                                      ;; 07:4c3e ??
    db   $2a, $56                                      ;; 07:4c40 ??
    db   $2a, $57                                      ;; 07:4c42 ??
    db   $2a, $58                                      ;; 07:4c44 ??
    db   $ff, $ff                                      ;; 07:4c46 ??

map02_room01_03_script:
    SCRIPT_IDX script_0085                             ;; 07:4c48 $85 $00
    db   $ff                                           ;; 07:4c4a $ff

map02_room01_03_tiles:
    db   $00, $00, $02, $01                            ;; 07:4c4b ????
    db   $46, $13                                      ;; 07:4c4f ??
    db   $46, $23                                      ;; 07:4c51 ??
    db   $46, $26                                      ;; 07:4c53 ??
    db   $46, $36                                      ;; 07:4c55 ??
    db   $46, $46                                      ;; 07:4c57 ??
    db   $46, $53                                      ;; 07:4c59 ??
    db   $46, $56                                      ;; 07:4c5b ??
    db   $46, $63                                      ;; 07:4c5d ??
    db   $ff, $ff                                      ;; 07:4c5f ??

map02_room02_03_script:
    SCRIPT_IDX script_0091                             ;; 07:4c61 $91 $00
    db   $ff                                           ;; 07:4c63 $ff

map02_room02_03_tiles:
    db   $00, $00, $02, $02                            ;; 07:4c64 ????
    db   $3d, $21                                      ;; 07:4c68 ??
    db   $3d, $22                                      ;; 07:4c6a ??
    db   $3d, $27                                      ;; 07:4c6c ??
    db   $3d, $28                                      ;; 07:4c6e ??
    db   $3d, $34                                      ;; 07:4c70 ??
    db   $3d, $35                                      ;; 07:4c72 ??
    db   $3d, $44                                      ;; 07:4c74 ??
    db   $3d, $45                                      ;; 07:4c76 ??
    db   $3d, $51                                      ;; 07:4c78 ??
    db   $3d, $52                                      ;; 07:4c7a ??
    db   $3d, $57                                      ;; 07:4c7c ??
    db   $3d, $58                                      ;; 07:4c7e ??
    db   $ff, $ff                                      ;; 07:4c80 ??

map02_room03_03_script:
    SCRIPT_IDX script_0136                             ;; 07:4c82 $36 $01
    db   $ff                                           ;; 07:4c84 $ff

map02_room03_03_tiles:
    db   $02, $00, $01, $02                            ;; 07:4c85 ????
    db   $46, $22                                      ;; 07:4c89 ??
    db   $46, $52                                      ;; 07:4c8b ??
    db   $ff, $ff                                      ;; 07:4c8d ??

map02_room04_03_script:
    SCRIPT_IDX script_0094                             ;; 07:4c8f $94 $00
    db   $ff                                           ;; 07:4c91 $ff

map02_room04_03_tiles:
    db   $00, $02, $00, $02                            ;; 07:4c92 ????
    db   $2a, $16                                      ;; 07:4c96 ??
    db   $2a, $23                                      ;; 07:4c98 ??
    db   $2a, $24                                      ;; 07:4c9a ??
    db   $2a, $25                                      ;; 07:4c9c ??
    db   $2a, $26                                      ;; 07:4c9e ??
    db   $2a, $36                                      ;; 07:4ca0 ??
    db   $2a, $46                                      ;; 07:4ca2 ??
    db   $2a, $56                                      ;; 07:4ca4 ??
    db   $ff, $ff                                      ;; 07:4ca6 ??

map02_room05_03_script:
    SCRIPT_IDX script_0091                             ;; 07:4ca8 $91 $00
    db   $ff                                           ;; 07:4caa $ff

map02_room05_03_tiles:
    db   $00, $00, $02, $02                            ;; 07:4cab ????
    db   $3d, $11                                      ;; 07:4caf ??
    db   $3d, $12                                      ;; 07:4cb1 ??
    db   $3d, $17                                      ;; 07:4cb3 ??
    db   $3d, $18                                      ;; 07:4cb5 ??
    db   $3d, $21                                      ;; 07:4cb7 ??
    db   $3d, $22                                      ;; 07:4cb9 ??
    db   $3d, $27                                      ;; 07:4cbb ??
    db   $3d, $28                                      ;; 07:4cbd ??
    db   $3d, $51                                      ;; 07:4cbf ??
    db   $3d, $52                                      ;; 07:4cc1 ??
    db   $3d, $57                                      ;; 07:4cc3 ??
    db   $3d, $58                                      ;; 07:4cc5 ??
    db   $3d, $61                                      ;; 07:4cc7 ??
    db   $3d, $62                                      ;; 07:4cc9 ??
    db   $3d, $67                                      ;; 07:4ccb ??
    db   $3d, $68                                      ;; 07:4ccd ??
    db   $ff, $ff                                      ;; 07:4ccf ??

map02_room06_03_script:
    SCRIPT_IDX script_007f                             ;; 07:4cd1 $7f $00
    db   $ff                                           ;; 07:4cd3 $ff

map02_room06_03_tiles:
    db   $01, $00, $02, $02                            ;; 07:4cd4 ????
    db   $3d, $11                                      ;; 07:4cd8 ??
    db   $3d, $12                                      ;; 07:4cda ??
    db   $3d, $13                                      ;; 07:4cdc ??
    db   $3d, $14                                      ;; 07:4cde ??
    db   $3d, $15                                      ;; 07:4ce0 ??
    db   $3d, $16                                      ;; 07:4ce2 ??
    db   $3d, $61                                      ;; 07:4ce4 ??
    db   $3d, $62                                      ;; 07:4ce6 ??
    db   $3d, $63                                      ;; 07:4ce8 ??
    db   $3d, $64                                      ;; 07:4cea ??
    db   $3d, $65                                      ;; 07:4cec ??
    db   $3d, $66                                      ;; 07:4cee ??
    db   $ff, $ff                                      ;; 07:4cf0 ??

map02_room07_03_script:
    SCRIPT_IDX script_0094                             ;; 07:4cf2 $94 $00
    SCRIPT_AT_POS 1, 8, script_0309                    ;; 07:4cf4 $18 $09 $03
    db   $ff                                           ;; 07:4cf7 $ff

map02_room07_03_tiles:
    db   $02, $01, $02, $02                            ;; 07:4cf8 ????
    db   $11, $18                                      ;; 07:4cfc ??
    db   $46, $21                                      ;; 07:4cfe ??
    db   $46, $51                                      ;; 07:4d00 ??
    db   $ff, $ff                                      ;; 07:4d02 ??

map02_room00_04_script:
    SCRIPT_IDX script_007f                             ;; 07:4d04 $7f $00
    SCRIPT_AT_POS 6, 8, script_030b                    ;; 07:4d06 $68 $0b $03
    db   $ff                                           ;; 07:4d09 $ff

map02_room00_04_tiles:
    db   $01, $02, $01, $02                            ;; 07:4d0a ????
    db   $2a, $55                                      ;; 07:4d0e ??
    db   $2a, $57                                      ;; 07:4d10 ??
    db   $2a, $58                                      ;; 07:4d12 ??
    db   $2a, $65                                      ;; 07:4d14 ??
    db   $02, $68                                      ;; 07:4d16 ??
    db   $ff, $ff                                      ;; 07:4d18 ??

map02_room01_04_script:
    SCRIPT_IDX script_0091                             ;; 07:4d1a $91 $00
    db   $ff                                           ;; 07:4d1c $ff

map02_room01_04_tiles:
    db   $02, $01, $01, $02                            ;; 07:4d1d ????
    db   $46, $21                                      ;; 07:4d21 ??
    db   $46, $22                                      ;; 07:4d23 ??
    db   $46, $32                                      ;; 07:4d25 ??
    db   $46, $42                                      ;; 07:4d27 ??
    db   $46, $43                                      ;; 07:4d29 ??
    db   $46, $44                                      ;; 07:4d2b ??
    db   $46, $45                                      ;; 07:4d2d ??
    db   $46, $47                                      ;; 07:4d2f ??
    db   $46, $52                                      ;; 07:4d31 ??
    db   $ff, $ff                                      ;; 07:4d33 ??

map02_room02_04_script:
    SCRIPT_IDX script_009d                             ;; 07:4d35 $9d $00
    SCRIPT_AT_POS 6, 8, script_031b                    ;; 07:4d37 $68 $1b $03
    SCRIPT_AT_POS 2, 5, script_04e2                    ;; 07:4d3a $25 $e2 $04
    SCRIPT_AT_POS 4, 6, script_04e1                    ;; 07:4d3d $46 $e1 $04
    SCRIPT_AT_POS 5, 4, script_04e4                    ;; 07:4d40 $54 $e4 $04
    SCRIPT_AT_POS 3, 3, script_04e3                    ;; 07:4d43 $33 $e3 $04
    db   $ff                                           ;; 07:4d46 $ff

map02_room02_04_tiles:
    db   $00, $02, $02, $02                            ;; 07:4d47 ????
    db   $38, $24                                      ;; 07:4d4b ??
    db   $29, $25                                      ;; 07:4d4d ??
    db   $29, $33                                      ;; 07:4d4f ??
    db   $0b, $34                                      ;; 07:4d51 ??
    db   $0b, $35                                      ;; 07:4d53 ??
    db   $38, $36                                      ;; 07:4d55 ??
    db   $38, $43                                      ;; 07:4d57 ??
    db   $1b, $44                                      ;; 07:4d59 ??
    db   $1b, $45                                      ;; 07:4d5b ??
    db   $29, $46                                      ;; 07:4d5d ??
    db   $29, $54                                      ;; 07:4d5f ??
    db   $38, $55                                      ;; 07:4d61 ??
    db   $2a, $56                                      ;; 07:4d63 ??
    db   $ff, $ff                                      ;; 07:4d65 ??

map02_room03_04_script:
    SCRIPT_IDX script_0091                             ;; 07:4d67 $91 $00
    db   $ff                                           ;; 07:4d69 $ff

map02_room03_04_tiles:
    db   $00, $00, $02, $02                            ;; 07:4d6a ????
    db   $27, $16                                      ;; 07:4d6e ??
    db   $27, $23                                      ;; 07:4d70 ??
    db   $27, $26                                      ;; 07:4d72 ??
    db   $27, $33                                      ;; 07:4d74 ??
    db   $27, $36                                      ;; 07:4d76 ??
    db   $27, $43                                      ;; 07:4d78 ??
    db   $27, $46                                      ;; 07:4d7a ??
    db   $27, $53                                      ;; 07:4d7c ??
    db   $27, $56                                      ;; 07:4d7e ??
    db   $27, $63                                      ;; 07:4d80 ??
    db   $ff, $ff                                      ;; 07:4d82 ??

map02_room04_04_script:
    SCRIPT_IDX script_00a0                             ;; 07:4d84 $a0 $00
    db   $ff                                           ;; 07:4d86 $ff

map02_room04_04_tiles:
    db   $00, $00, $02, $02                            ;; 07:4d87 ????
    db   $37, $23                                      ;; 07:4d8b ??
    db   $22, $34                                      ;; 07:4d8d ??
    db   $23, $45                                      ;; 07:4d8f ??
    db   $37, $56                                      ;; 07:4d91 ??
    db   $ff, $ff                                      ;; 07:4d93 ??

map02_room05_04_script:
    SCRIPT_IDX script_0091                             ;; 07:4d95 $91 $00
    db   $ff                                           ;; 07:4d97 $ff

map02_room05_04_tiles:
    db   $00, $00, $02, $02                            ;; 07:4d98 ????
    db   $09, $11                                      ;; 07:4d9c ??
    db   $09, $18                                      ;; 07:4d9e ??
    db   $0b, $34                                      ;; 07:4da0 ??
    db   $0b, $35                                      ;; 07:4da2 ??
    db   $1b, $44                                      ;; 07:4da4 ??
    db   $1b, $45                                      ;; 07:4da6 ??
    db   $09, $61                                      ;; 07:4da8 ??
    db   $09, $68                                      ;; 07:4daa ??
    db   $ff, $ff                                      ;; 07:4dac ??

map02_room06_04_script:
    SCRIPT_IDX script_009a                             ;; 07:4dae $9a $00
    SCRIPT_AT_POS 1, 8, script_0319                    ;; 07:4db0 $18 $19 $03
    db   $ff                                           ;; 07:4db3 $ff

map02_room06_04_tiles:
    db   $02, $00, $02, $02                            ;; 07:4db4 ????
    db   $02, $18                                      ;; 07:4db8 ??
    db   $2f, $33                                      ;; 07:4dba ??
    db   $2f, $34                                      ;; 07:4dbc ??
    db   $2f, $35                                      ;; 07:4dbe ??
    db   $2f, $36                                      ;; 07:4dc0 ??
    db   $2f, $43                                      ;; 07:4dc2 ??
    db   $2f, $44                                      ;; 07:4dc4 ??
    db   $2f, $45                                      ;; 07:4dc6 ??
    db   $2f, $46                                      ;; 07:4dc8 ??
    db   $ff, $ff                                      ;; 07:4dca ??

map02_room07_04_script:
    SCRIPT_IDX script_00cd                             ;; 07:4dcc $cd $00
    SCRIPT_AT_POS 2, 7, script_034c                    ;; 07:4dce $27 $4c $03
    db   $ff                                           ;; 07:4dd1 $ff

map02_room07_04_tiles:
    db   $02, $02, $02, $01                            ;; 07:4dd2 ????
    db   $07, $11                                      ;; 07:4dd6 ??
    db   $07, $12                                      ;; 07:4dd8 ??
    db   $07, $13                                      ;; 07:4dda ??
    db   $07, $14                                      ;; 07:4ddc ??
    db   $07, $15                                      ;; 07:4dde ??
    db   $07, $16                                      ;; 07:4de0 ??
    db   $07, $17                                      ;; 07:4de2 ??
    db   $07, $18                                      ;; 07:4de4 ??
    db   $07, $21                                      ;; 07:4de6 ??
    db   $11, $27                                      ;; 07:4de8 ??
    db   $07, $28                                      ;; 07:4dea ??
    db   $07, $31                                      ;; 07:4dec ??
    db   $07, $38                                      ;; 07:4dee ??
    db   $07, $41                                      ;; 07:4df0 ??
    db   $07, $48                                      ;; 07:4df2 ??
    db   $07, $51                                      ;; 07:4df4 ??
    db   $07, $52                                      ;; 07:4df6 ??
    db   $07, $53                                      ;; 07:4df8 ??
    db   $07, $56                                      ;; 07:4dfa ??
    db   $07, $57                                      ;; 07:4dfc ??
    db   $07, $58                                      ;; 07:4dfe ??
    db   $07, $61                                      ;; 07:4e00 ??
    db   $07, $62                                      ;; 07:4e02 ??
    db   $07, $63                                      ;; 07:4e04 ??
    db   $07, $66                                      ;; 07:4e06 ??
    db   $07, $67                                      ;; 07:4e08 ??
    db   $07, $68                                      ;; 07:4e0a ??
    db   $ff, $ff                                      ;; 07:4e0c ??

map02_room00_05_script:
    SCRIPT_IDX script_00c4                             ;; 07:4e0e $c4 $00
    db   $ff                                           ;; 07:4e10 $ff

map02_room00_05_tiles:
    db   $05, $02, $02, $01                            ;; 07:4e11 ????
    db   $2a, $22                                      ;; 07:4e15 ??
    db   $2a, $27                                      ;; 07:4e17 ??
    db   $2a, $32                                      ;; 07:4e19 ??
    db   $2a, $37                                      ;; 07:4e1b ??
    db   $2a, $47                                      ;; 07:4e1d ??
    db   $2a, $52                                      ;; 07:4e1f ??
    db   $2a, $53                                      ;; 07:4e21 ??
    db   $2a, $54                                      ;; 07:4e23 ??
    db   $2a, $55                                      ;; 07:4e25 ??
    db   $2a, $56                                      ;; 07:4e27 ??
    db   $2a, $57                                      ;; 07:4e29 ??
    db   $2a, $67                                      ;; 07:4e2b ??
    db   $ff, $ff                                      ;; 07:4e2d ??

map02_room01_05_script:
    SCRIPT_IDX script_0175                             ;; 07:4e2f $75 $01
    db   $ff                                           ;; 07:4e31 $ff

map02_room01_05_tiles:
    db   $02, $01, $02, $01                            ;; 07:4e32 ????
    db   $0b, $23                                      ;; 07:4e36 ??
    db   $0b, $26                                      ;; 07:4e38 ??
    db   $1b, $33                                      ;; 07:4e3a ??
    db   $56, $34                                      ;; 07:4e3c ??
    db   $57, $35                                      ;; 07:4e3e ??
    db   $1b, $36                                      ;; 07:4e40 ??
    db   $ff, $ff                                      ;; 07:4e42 ??

map02_room02_05_script:
    SCRIPT_IDX script_003d                             ;; 07:4e44 $3d $00
    SCRIPT_AT_POS 1, 8, script_039a                    ;; 07:4e46 $18 $9a $03
    db   $ff                                           ;; 07:4e49 $ff

map02_room02_05_tiles:
    db   $02, $02, $02, $01                            ;; 07:4e4a ????
    db   $11, $18                                      ;; 07:4e4e ??
    db   $64, $43                                      ;; 07:4e50 ??
    db   $64, $46                                      ;; 07:4e52 ??
    db   $ff, $ff                                      ;; 07:4e54 ??

map02_room03_05_script:
    SCRIPT_IDX script_003d                             ;; 07:4e56 $3d $00
    SCRIPT_AT_POS 1, 8, script_0313                    ;; 07:4e58 $18 $13 $03
    db   $ff                                           ;; 07:4e5b $ff

map02_room03_05_tiles:
    db   $01, $02, $02, $02                            ;; 07:4e5c ????
    db   $02, $18                                      ;; 07:4e60 ??
    db   $38, $27                                      ;; 07:4e62 ??
    db   $38, $28                                      ;; 07:4e64 ??
    db   $38, $37                                      ;; 07:4e66 ??
    db   $36, $38                                      ;; 07:4e68 ??
    db   $38, $47                                      ;; 07:4e6a ??
    db   $36, $48                                      ;; 07:4e6c ??
    db   $38, $57                                      ;; 07:4e6e ??
    db   $38, $58                                      ;; 07:4e70 ??
    db   $ff, $ff                                      ;; 07:4e72 ??

map02_room04_05_script:
    SCRIPT_IDX script_003d                             ;; 07:4e74 $3d $00
    db   $ff                                           ;; 07:4e76 $ff

map02_room04_05_tiles:
    db   $01, $01, $02, $02                            ;; 07:4e77 ????
    db   $38, $21                                      ;; 07:4e7b ??
    db   $38, $22                                      ;; 07:4e7d ??
    db   $38, $23                                      ;; 07:4e7f ??
    db   $38, $24                                      ;; 07:4e81 ??
    db   $38, $25                                      ;; 07:4e83 ??
    db   $38, $26                                      ;; 07:4e85 ??
    db   $38, $27                                      ;; 07:4e87 ??
    db   $38, $28                                      ;; 07:4e89 ??
    db   $36, $31                                      ;; 07:4e8b ??
    db   $36, $32                                      ;; 07:4e8d ??
    db   $36, $33                                      ;; 07:4e8f ??
    db   $36, $34                                      ;; 07:4e91 ??
    db   $36, $35                                      ;; 07:4e93 ??
    db   $36, $36                                      ;; 07:4e95 ??
    db   $36, $37                                      ;; 07:4e97 ??
    db   $36, $38                                      ;; 07:4e99 ??
    db   $36, $41                                      ;; 07:4e9b ??
    db   $36, $42                                      ;; 07:4e9d ??
    db   $36, $43                                      ;; 07:4e9f ??
    db   $36, $44                                      ;; 07:4ea1 ??
    db   $36, $45                                      ;; 07:4ea3 ??
    db   $36, $46                                      ;; 07:4ea5 ??
    db   $36, $47                                      ;; 07:4ea7 ??
    db   $36, $48                                      ;; 07:4ea9 ??
    db   $38, $51                                      ;; 07:4eab ??
    db   $38, $52                                      ;; 07:4ead ??
    db   $38, $53                                      ;; 07:4eaf ??
    db   $38, $54                                      ;; 07:4eb1 ??
    db   $38, $55                                      ;; 07:4eb3 ??
    db   $38, $56                                      ;; 07:4eb5 ??
    db   $38, $57                                      ;; 07:4eb7 ??
    db   $38, $58                                      ;; 07:4eb9 ??
    db   $ff, $ff                                      ;; 07:4ebb ??

map02_room05_05_script:
    SCRIPT_IDX script_0154                             ;; 07:4ebd $54 $01
    SCRIPT_AT_POS 6, 8, script_0315                    ;; 07:4ebf $68 $15 $03
    db   $ff                                           ;; 07:4ec2 $ff

map02_room05_05_tiles:
    db   $02, $01, $02, $02                            ;; 07:4ec3 ????
    db   $16, $11                                      ;; 07:4ec7 ??
    db   $38, $13                                      ;; 07:4ec9 ??
    db   $5c, $14                                      ;; 07:4ecb ??
    db   $5d, $15                                      ;; 07:4ecd ??
    db   $38, $16                                      ;; 07:4ecf ??
    db   $16, $18                                      ;; 07:4ed1 ??
    db   $38, $23                                      ;; 07:4ed3 ??
    db   $5a, $24                                      ;; 07:4ed5 ??
    db   $5b, $25                                      ;; 07:4ed7 ??
    db   $38, $26                                      ;; 07:4ed9 ??
    db   $38, $33                                      ;; 07:4edb ??
    db   $38, $34                                      ;; 07:4edd ??
    db   $38, $35                                      ;; 07:4edf ??
    db   $38, $36                                      ;; 07:4ee1 ??
    db   $ff, $ff                                      ;; 07:4ee3 ??

map02_room06_05_script:
    SCRIPT_IDX script_00a0                             ;; 07:4ee5 $a0 $00
    db   $ff                                           ;; 07:4ee7 $ff

map02_room06_05_tiles:
    db   $02, $02, $00, $01                            ;; 07:4ee8 ????
    db   $16, $13                                      ;; 07:4eec ??
    db   $16, $16                                      ;; 07:4eee ??
    db   $16, $33                                      ;; 07:4ef0 ??
    db   $16, $36                                      ;; 07:4ef2 ??
    db   $ff, $ff                                      ;; 07:4ef4 ??

map02_room07_05_script:
    SCRIPT_IDX script_00b8                             ;; 07:4ef6 $b8 $00
    db   $ff                                           ;; 07:4ef8 $ff

map02_room07_05_tiles:
    db   $02, $02, $01, $01                            ;; 07:4ef9 ????
    db   $0c, $13                                      ;; 07:4efd ??
    db   $0c, $16                                      ;; 07:4eff ??
    db   $1c, $23                                      ;; 07:4f01 ??
    db   $1c, $26                                      ;; 07:4f03 ??
    db   $0c, $43                                      ;; 07:4f05 ??
    db   $0c, $46                                      ;; 07:4f07 ??
    db   $1c, $53                                      ;; 07:4f09 ??
    db   $1c, $56                                      ;; 07:4f0b ??
    db   $ff, $ff                                      ;; 07:4f0d ??

map02_room00_06_script:
    SCRIPT_IDX script_04f2                             ;; 07:4f0f $f2 $04
    SCRIPT_AT_POS 1, 8, script_02f2                    ;; 07:4f11 $18 $f2 $02
    SCRIPT_AT_POS 6, 6, script_04f8                    ;; 07:4f14 $66 $f8 $04
    SCRIPT_AT_POS 6, 3, script_04f7                    ;; 07:4f17 $63 $f7 $04
    db   $ff                                           ;; 07:4f1a $ff

map02_room00_06_tiles:
    db   $02, $02, $09, $02                            ;; 07:4f1b ????
    db   $02, $18                                      ;; 07:4f1f ??
    db   $3b, $52                                      ;; 07:4f21 ??
    db   $3b, $53                                      ;; 07:4f23 ??
    db   $3b, $54                                      ;; 07:4f25 ??
    db   $3b, $55                                      ;; 07:4f27 ??
    db   $3b, $56                                      ;; 07:4f29 ??
    db   $3b, $57                                      ;; 07:4f2b ??
    db   $3b, $62                                      ;; 07:4f2d ??
    db   $29, $63                                      ;; 07:4f2f ??
    db   $3b, $64                                      ;; 07:4f31 ??
    db   $3b, $65                                      ;; 07:4f33 ??
    db   $29, $66                                      ;; 07:4f35 ??
    db   $3b, $67                                      ;; 07:4f37 ??
    db   $ff, $ff                                      ;; 07:4f39 ??

map02_room01_06_script:
    SCRIPT_IDX script_00c7                             ;; 07:4f3b $c7 $00
    SCRIPT_AT_POS 6, 8, script_02fb                    ;; 07:4f3d $68 $fb $02
    db   $ff                                           ;; 07:4f40 $ff

map02_room01_06_tiles:
    db   $02, $02, $01, $02                            ;; 07:4f41 ????
    db   $27, $22                                      ;; 07:4f45 ??
    db   $27, $23                                      ;; 07:4f47 ??
    db   $27, $24                                      ;; 07:4f49 ??
    db   $27, $25                                      ;; 07:4f4b ??
    db   $27, $26                                      ;; 07:4f4d ??
    db   $27, $27                                      ;; 07:4f4f ??
    db   $27, $28                                      ;; 07:4f51 ??
    db   $27, $32                                      ;; 07:4f53 ??
    db   $27, $42                                      ;; 07:4f55 ??
    db   $27, $52                                      ;; 07:4f57 ??
    db   $11, $68                                      ;; 07:4f59 ??
    db   $ff, $ff                                      ;; 07:4f5b ??

map02_room02_06_script:
    SCRIPT_IDX script_0097                             ;; 07:4f5d $97 $00
    SCRIPT_AT_POS 6, 8, script_031d                    ;; 07:4f5f $68 $1d $03
    db   $ff                                           ;; 07:4f62 $ff

map02_room02_06_tiles:
    db   $05, $02, $05, $02                            ;; 07:4f63 ????
    db   $2f, $34                                      ;; 07:4f67 ??
    db   $2f, $35                                      ;; 07:4f69 ??
    db   $2f, $44                                      ;; 07:4f6b ??
    db   $2f, $45                                      ;; 07:4f6d ??
    db   $02, $68                                      ;; 07:4f6f ??
    db   $ff, $ff                                      ;; 07:4f71 ??

map02_room03_06_script:
    SCRIPT_IDX script_00a0                             ;; 07:4f73 $a0 $00
    db   $ff                                           ;; 07:4f75 $ff

map02_room03_06_tiles:
    db   $02, $01, $02, $02                            ;; 07:4f76 ????
    db   $44, $23                                      ;; 07:4f7a ??
    db   $44, $25                                      ;; 07:4f7c ??
    db   $44, $27                                      ;; 07:4f7e ??
    db   $44, $33                                      ;; 07:4f80 ??
    db   $44, $43                                      ;; 07:4f82 ??
    db   $44, $53                                      ;; 07:4f84 ??
    db   $44, $55                                      ;; 07:4f86 ??
    db   $44, $57                                      ;; 07:4f88 ??
    db   $ff, $ff                                      ;; 07:4f8a ??

map02_room04_06_script:
    SCRIPT_IDX script_00cd                             ;; 07:4f8c $cd $00
    SCRIPT_AT_POS 3, 5, script_0332                    ;; 07:4f8e $35 $32 $03
    SCRIPT_AT_POS 4, 4, script_0332                    ;; 07:4f91 $44 $32 $03
    SCRIPT_AT_POS 4, 5, script_0332                    ;; 07:4f94 $45 $32 $03
    SCRIPT_AT_POS 3, 4, script_0332                    ;; 07:4f97 $34 $32 $03
    db   $ff                                           ;; 07:4f9a $ff

map02_room04_06_tiles:
    db   $02, $02, $02, $01                            ;; 07:4f9b ????
    db   $2f, $11                                      ;; 07:4f9f ??
    db   $2f, $18                                      ;; 07:4fa1 ??
    db   $48, $34                                      ;; 07:4fa3 ??
    db   $49, $35                                      ;; 07:4fa5 ??
    db   $58, $44                                      ;; 07:4fa7 ??
    db   $59, $45                                      ;; 07:4fa9 ??
    db   $2f, $61                                      ;; 07:4fab ??
    db   $2f, $68                                      ;; 07:4fad ??
    db   $ff, $ff                                      ;; 07:4faf ??

map02_room05_06_script:
    SCRIPT_IDX script_00a0                             ;; 07:4fb1 $a0 $00
    db   $ff                                           ;; 07:4fb3 $ff

map02_room05_06_tiles:
    db   $00, $02, $00, $02                            ;; 07:4fb4 ????
    db   $16, $13                                      ;; 07:4fb8 ??
    db   $16, $16                                      ;; 07:4fba ??
    db   $ff, $ff                                      ;; 07:4fbc ??

map02_room06_06_script:
    SCRIPT_IDX script_012a                             ;; 07:4fbe $2a $01
    SCRIPT_AT_POS 6, 8, script_0317                    ;; 07:4fc0 $68 $17 $03
    db   $ff                                           ;; 07:4fc3 $ff

map02_room06_06_tiles:
    db   $02, $02, $01, $02                            ;; 07:4fc4 ????
    db   $16, $21                                      ;; 07:4fc8 ??
    db   $16, $51                                      ;; 07:4fca ??
    db   $02, $68                                      ;; 07:4fcc ??
    db   $ff, $ff                                      ;; 07:4fce ??

map02_room07_06_script:
    SCRIPT_IDX script_00cd                             ;; 07:4fd0 $cd $00
    db   $ff                                           ;; 07:4fd2 $ff

map02_room07_06_tiles:
    db   $02, $02, $01, $01                            ;; 07:4fd3 ????
    db   $0c, $34                                      ;; 07:4fd7 ??
    db   $0c, $35                                      ;; 07:4fd9 ??
    db   $1c, $44                                      ;; 07:4fdb ??
    db   $1c, $45                                      ;; 07:4fdd ??
    db   $ff, $ff                                      ;; 07:4fdf ??

map02_room00_07_script:
    SCRIPT_IDX script_03e5                             ;; 07:4fe1 $e5 $03
    db   $ff                                           ;; 07:4fe3 $ff

map02_room00_07_tiles:
    db   $01, $02, $02, $02                            ;; 07:4fe4 ????
    db   $07, $24                                      ;; 07:4fe8 ??
    db   $07, $25                                      ;; 07:4fea ??
    db   $07, $34                                      ;; 07:4fec ??
    db   $07, $35                                      ;; 07:4fee ??
    db   $07, $44                                      ;; 07:4ff0 ??
    db   $07, $45                                      ;; 07:4ff2 ??
    db   $07, $54                                      ;; 07:4ff4 ??
    db   $07, $55                                      ;; 07:4ff6 ??
    db   $ff, $ff                                      ;; 07:4ff8 ??

map02_room01_07_script:
    SCRIPT_IDX script_00cd                             ;; 07:4ffa $cd $00
    SCRIPT_AT_POS 3, 5, script_0338                    ;; 07:4ffc $35 $38 $03
    SCRIPT_AT_POS 4, 4, script_0338                    ;; 07:4fff $44 $38 $03
    SCRIPT_AT_POS 4, 5, script_0338                    ;; 07:5002 $45 $38 $03
    SCRIPT_AT_POS 3, 4, script_0338                    ;; 07:5005 $34 $38 $03
    db   $ff                                           ;; 07:5008 $ff

map02_room01_07_tiles:
    db   $02, $05, $02, $02                            ;; 07:5009 ????
    db   $2f, $11                                      ;; 07:500d ??
    db   $2f, $18                                      ;; 07:500f ??
    db   $48, $34                                      ;; 07:5011 ??
    db   $49, $35                                      ;; 07:5013 ??
    db   $58, $44                                      ;; 07:5015 ??
    db   $59, $45                                      ;; 07:5017 ??
    db   $2f, $61                                      ;; 07:5019 ??
    db   $2f, $68                                      ;; 07:501b ??
    db   $ff, $ff                                      ;; 07:501d ??

map02_room02_07_script:
    SCRIPT_IDX script_00b8                             ;; 07:501f $b8 $00
    SCRIPT_AT_POS 3, 5, script_0336                    ;; 07:5021 $35 $36 $03
    SCRIPT_AT_POS 4, 4, script_0336                    ;; 07:5024 $44 $36 $03
    SCRIPT_AT_POS 4, 5, script_0336                    ;; 07:5027 $45 $36 $03
    SCRIPT_AT_POS 3, 4, script_0336                    ;; 07:502a $34 $36 $03
    db   $ff                                           ;; 07:502d $ff

map02_room02_07_tiles:
    db   $01, $02, $02, $02                            ;; 07:502e ????
    db   $2f, $11                                      ;; 07:5032 ??
    db   $2f, $18                                      ;; 07:5034 ??
    db   $48, $34                                      ;; 07:5036 ??
    db   $49, $35                                      ;; 07:5038 ??
    db   $58, $44                                      ;; 07:503a ??
    db   $59, $45                                      ;; 07:503c ??
    db   $2f, $61                                      ;; 07:503e ??
    db   $2f, $68                                      ;; 07:5040 ??
    db   $ff, $ff                                      ;; 07:5042 ??

map02_room03_07_script:
    SCRIPT_IDX script_00cd                             ;; 07:5044 $cd $00
    db   $ff                                           ;; 07:5046 $ff

map02_room03_07_tiles:
    db   $05, $01, $02, $02                            ;; 07:5047 ????
    db   $0c, $25                                      ;; 07:504b ??
    db   $1c, $35                                      ;; 07:504d ??
    db   $0c, $45                                      ;; 07:504f ??
    db   $1c, $55                                      ;; 07:5051 ??
    db   $ff, $ff                                      ;; 07:5053 ??

map02_room04_07_script:
    SCRIPT_IDX script_00d0                             ;; 07:5055 $d0 $00
    db   $ff                                           ;; 07:5057 $ff

map02_room04_07_tiles:
    db   $00, $01, $01, $02                            ;; 07:5058 ????
    db   $0c, $13                                      ;; 07:505c ??
    db   $0c, $16                                      ;; 07:505e ??
    db   $1c, $23                                      ;; 07:5060 ??
    db   $1c, $26                                      ;; 07:5062 ??
    db   $0c, $34                                      ;; 07:5064 ??
    db   $0c, $35                                      ;; 07:5066 ??
    db   $1c, $44                                      ;; 07:5068 ??
    db   $1c, $45                                      ;; 07:506a ??
    db   $ff, $ff                                      ;; 07:506c ??

map02_room05_07_script:
    SCRIPT_IDX script_00c4                             ;; 07:506e $c4 $00
    db   $ff                                           ;; 07:5070 $ff

map02_room05_07_tiles:
    db   $00, $00, $02, $02                            ;; 07:5071 ????
    db   $0c, $25                                      ;; 07:5075 ??
    db   $1c, $35                                      ;; 07:5077 ??
    db   $0c, $44                                      ;; 07:5079 ??
    db   $1c, $54                                      ;; 07:507b ??
    db   $ff, $ff                                      ;; 07:507d ??

map02_room06_07_script:
    SCRIPT_IDX script_00c7                             ;; 07:507f $c7 $00
    db   $ff                                           ;; 07:5081 $ff

map02_room06_07_tiles:
    db   $00, $00, $02, $02                            ;; 07:5082 ????
    db   $0c, $15                                      ;; 07:5086 ??
    db   $1c, $25                                      ;; 07:5088 ??
    db   $0c, $32                                      ;; 07:508a ??
    db   $0c, $37                                      ;; 07:508c ??
    db   $1c, $42                                      ;; 07:508e ??
    db   $1c, $47                                      ;; 07:5090 ??
    db   $0c, $55                                      ;; 07:5092 ??
    db   $1c, $65                                      ;; 07:5094 ??
    db   $ff, $ff                                      ;; 07:5096 ??

map02_room07_07_script:
    SCRIPT_IDX script_00cd                             ;; 07:5098 $cd $00
    SCRIPT_AT_POS 5, 1, script_04f9                    ;; 07:509a $51 $f9 $04
    db   $ff                                           ;; 07:509d $ff

map02_room07_07_tiles:
    db   $02, $00, $09, $02                            ;; 07:509e ????
    db   $65, $11                                      ;; 07:50a2 ??
    db   $65, $12                                      ;; 07:50a4 ??
    db   $65, $13                                      ;; 07:50a6 ??
    db   $65, $14                                      ;; 07:50a8 ??
    db   $65, $15                                      ;; 07:50aa ??
    db   $65, $16                                      ;; 07:50ac ??
    db   $65, $17                                      ;; 07:50ae ??
    db   $65, $18                                      ;; 07:50b0 ??
    db   $65, $21                                      ;; 07:50b2 ??
    db   $65, $28                                      ;; 07:50b4 ??
    db   $65, $31                                      ;; 07:50b6 ??
    db   $65, $38                                      ;; 07:50b8 ??
    db   $65, $41                                      ;; 07:50ba ??
    db   $65, $48                                      ;; 07:50bc ??
    db   $29, $51                                      ;; 07:50be ??
    db   $65, $58                                      ;; 07:50c0 ??
    db   $65, $61                                      ;; 07:50c2 ??
    db   $65, $62                                      ;; 07:50c4 ??
    db   $65, $63                                      ;; 07:50c6 ??
    db   $65, $64                                      ;; 07:50c8 ??
    db   $65, $65                                      ;; 07:50ca ??
    db   $65, $66                                      ;; 07:50cc ??
    db   $65, $67                                      ;; 07:50ce ??
    db   $65, $68                                      ;; 07:50d0 ??
    db   $ff, $ff                                      ;; 07:50d2 ??
