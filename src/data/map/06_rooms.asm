;; Disassembled with BadBoy Disassembler: https://github.com/daid/BadBoy


mapRoomPointers_06:
    db   $01, $04, $08, $08                            ;; 07:75d0 ....
    dw   map06_room_tile_template                      ;; 07:75d4 $ee $76
    ;;Door tile info
    db   $25, $35, $20, $30, $14, $03, $52, $53        ;; 07:75d6 ????....
    db   $24, $34, $21, $31, $12, $13, $42, $43        ;; 07:75de ????..??
    db   $15, $45, $10, $40, $28, $04, $51, $54        ;; 07:75e6 ......??
    ;;Room data pointers
    dw   map06_room00_00_script, map06_room00_00_tiles ;; 07:75ee $1a $77 $29 $77
    dw   map06_room01_00_script, map06_room01_00_tiles ;; 07:75f2 $3f $77 $42 $77
    dw   map06_room02_00_script, map06_room02_00_tiles ;; 07:75f6 $48 $77 $4b $77
    dw   map06_room03_00_script, map06_room03_00_tiles ;; 07:75fa $51 $77 $54 $77
    dw   map06_room04_00_script, map06_room04_00_tiles ;; 07:75fe $5a $77 $5d $77
    dw   map06_room05_00_script, map06_room05_00_tiles ;; 07:7602 $63 $77 $66 $77
    dw   map06_room06_00_script, map06_room06_00_tiles ;; 07:7606 $6c $77 $75 $77
    dw   map06_room07_00_script, map06_room07_00_tiles ;; 07:760a $83 $77 $86 $77
    dw   map06_room00_01_script, map06_room00_01_tiles ;; 07:760e $8c $77 $8f $77
    dw   map06_room01_01_script, map06_room01_01_tiles ;; 07:7612 $9d $77 $a0 $77
    dw   map06_room02_01_script, map06_room02_01_tiles ;; 07:7616 $ae $77 $bd $77
    dw   map06_room03_01_script, map06_room03_01_tiles ;; 07:761a $d3 $77 $d6 $77
    dw   map06_room04_01_script, map06_room04_01_tiles ;; 07:761e $ec $77 $f5 $77
    dw   map06_room05_01_script, map06_room05_01_tiles ;; 07:7622 $03 $78 $06 $78
    dw   map06_room06_01_script, map06_room06_01_tiles ;; 07:7626 $0c $78 $0f $78
    dw   map06_room07_01_script, map06_room07_01_tiles ;; 07:762a $1d $78 $26 $78
    dw   map06_room00_02_script, map06_room00_02_tiles ;; 07:762e $3c $78 $3f $78
    dw   map06_room01_02_script, map06_room01_02_tiles ;; 07:7632 $45 $78 $54 $78
    dw   map06_room02_02_script, map06_room02_02_tiles ;; 07:7636 $6a $78 $6d $78
    dw   map06_room03_02_script, map06_room03_02_tiles ;; 07:763a $73 $78 $76 $78
    dw   map06_room04_02_script, map06_room04_02_tiles ;; 07:763e $9a $78 $a0 $78
    dw   map06_room05_02_script, map06_room05_02_tiles ;; 07:7642 $ae $78 $b1 $78
    dw   map06_room06_02_script, map06_room06_02_tiles ;; 07:7646 $bf $78 $c2 $78
    dw   map06_room07_02_script, map06_room07_02_tiles ;; 07:764a $c8 $78 $d1 $78
    dw   map06_room00_03_script, map06_room00_03_tiles ;; 07:764e $df $78 $e5 $78
    dw   map06_room01_03_script, map06_room01_03_tiles ;; 07:7652 $fb $78 $fe $78
    dw   map06_room02_03_script, map06_room02_03_tiles ;; 07:7656 $0c $79 $0f $79
    dw   map06_room03_03_script, map06_room03_03_tiles ;; 07:765a $1d $79 $20 $79
    dw   map06_room04_03_script, map06_room04_03_tiles ;; 07:765e $2e $79 $31 $79
    dw   map06_room05_03_script, map06_room05_03_tiles ;; 07:7662 $3f $79 $48 $79
    dw   map06_room06_03_script, map06_room06_03_tiles ;; 07:7666 $56 $79 $59 $79
    dw   map06_room07_03_script, map06_room07_03_tiles ;; 07:766a $5f $79 $62 $79
    dw   map06_room00_04_script, map06_room00_04_tiles ;; 07:766e $68 $79 $6b $79
    dw   map06_room01_04_script, map06_room01_04_tiles ;; 07:7672 $7d $79 $83 $79
    dw   map06_room02_04_script, map06_room02_04_tiles ;; 07:7676 $8b $79 $8e $79
    dw   map06_room03_04_script, map06_room03_04_tiles ;; 07:767a $9c $79 $a2 $79
    dw   map06_room04_04_script, map06_room04_04_tiles ;; 07:767e $ba $79 $c9 $79
    dw   map06_room05_04_script, map06_room05_04_tiles ;; 07:7682 $d7 $79 $da $79
    dw   map06_room06_04_script, map06_room06_04_tiles ;; 07:7686 $e0 $79 $e6 $79
    dw   map06_room07_04_script, map06_room07_04_tiles ;; 07:768a $ee $79 $f1 $79
    dw   map06_room00_05_script, map06_room00_05_tiles ;; 07:768e $f7 $79 $fa $79
    dw   map06_room01_05_script, map06_room01_05_tiles ;; 07:7692 $0c $7a $0f $7a
    dw   map06_room02_05_script, map06_room02_05_tiles ;; 07:7696 $1b $7a $1e $7a
    dw   map06_room03_05_script, map06_room03_05_tiles ;; 07:769a $30 $7a $3f $7a
    dw   map06_room04_05_script, map06_room04_05_tiles ;; 07:769e $69 $7a $6c $7a
    dw   map06_room05_05_script, map06_room05_05_tiles ;; 07:76a2 $7a $7a $7d $7a
    dw   map06_room06_05_script, map06_room06_05_tiles ;; 07:76a6 $8b $7a $8e $7a
    dw   map06_room07_05_script, map06_room07_05_tiles ;; 07:76aa $9c $7a $ab $7a
    dw   map06_room00_06_script, map06_room00_06_tiles ;; 07:76ae $b9 $7a $bc $7a
    dw   map06_room01_06_script, map06_room01_06_tiles ;; 07:76b2 $ca $7a $cd $7a
    dw   map06_room02_06_script, map06_room02_06_tiles ;; 07:76b6 $d5 $7a $d8 $7a
    dw   map06_room03_06_script, map06_room03_06_tiles ;; 07:76ba $ea $7a $ed $7a
    dw   map06_room04_06_script, map06_room04_06_tiles ;; 07:76be $f3 $7a $f9 $7a
    dw   map06_room05_06_script, map06_room05_06_tiles ;; 07:76c2 $09 $7b $0f $7b
    dw   map06_room06_06_script, map06_room06_06_tiles ;; 07:76c6 $17 $7b $1a $7b
    dw   map06_room07_06_script, map06_room07_06_tiles ;; 07:76ca $28 $7b $2b $7b
    dw   map06_room00_07_script, map06_room00_07_tiles ;; 07:76ce $31 $7b $34 $7b
    dw   map06_room01_07_script, map06_room01_07_tiles ;; 07:76d2 $4c $7b $4f $7b
    dw   map06_room02_07_script, map06_room02_07_tiles ;; 07:76d6 $5d $7b $60 $7b
    dw   map06_room03_07_script, map06_room03_07_tiles ;; 07:76da $72 $7b $75 $7b
    dw   map06_room04_07_script, map06_room04_07_tiles ;; 07:76de $7d $7b $80 $7b
    dw   map06_room05_07_script, map06_room05_07_tiles ;; 07:76e2 $8e $7b $91 $7b
    dw   map06_room06_07_script, map06_room06_07_tiles ;; 07:76e6 $9f $7b $a2 $7b
    dw   map06_room07_07_script, map06_room07_07_tiles ;; 07:76ea $a8 $7b $ab $7b

map06_room_tile_template:
    db   $06, $28, $28, $28, $14, $03, $04, $04, $04, $05 ;; 07:76ee ..........
    db   $10,                $80,                $80, $15 ;; 07:76f8 ....
    db   $10,                $80,                $80, $15 ;; 07:76fc ....
    db   $20,                $80,                $80, $25 ;; 07:7700 ....
    db   $30,                $80,                $80, $35 ;; 07:7704 ....
    db   $40,                $80,                $80, $45 ;; 07:7708 ....
    db   $40,                $80,                $80, $45 ;; 07:770c ....
    db   $50, $51, $51, $51, $52, $53, $54, $54, $54, $55 ;; 07:7710 ..........

map06_room00_00_script:
    SCRIPT_IDX script_00b2                             ;; 07:771a $b2 $00
    SCRIPT_AT_POS 3, 5, script_0334                    ;; 07:771c $35 $34 $03
    SCRIPT_AT_POS 4, 4, script_0334                    ;; 07:771f $44 $34 $03
    SCRIPT_AT_POS 4, 5, script_0334                    ;; 07:7722 $45 $34 $03
    SCRIPT_AT_POS 3, 4, script_0334                    ;; 07:7725 $34 $34 $03
    db   $ff                                           ;; 07:7728 $ff

map06_room00_00_tiles:
    db   $02, $02, $02, $01                            ;; 07:7729 ????
    db   $2f, $11                                      ;; 07:772d ??
    db   $2f, $18                                      ;; 07:772f ??
    db   $48, $34                                      ;; 07:7731 ??
    db   $49, $35                                      ;; 07:7733 ??
    db   $58, $44                                      ;; 07:7735 ??
    db   $59, $45                                      ;; 07:7737 ??
    db   $2f, $61                                      ;; 07:7739 ??
    db   $2f, $68                                      ;; 07:773b ??
    db   $ff, $ff                                      ;; 07:773d ??

map06_room01_00_script:
    dw   $ffff                                         ;; 07:773f $ff $ff
    db   $ff                                           ;; 07:7741 $ff

map06_room01_00_tiles:
    db   $00, $00, $00, $00                            ;; 07:7742 ????
    db   $ff, $ff                                      ;; 07:7746 ??

map06_room02_00_script:
    dw   $ffff                                         ;; 07:7748 $ff $ff
    db   $ff                                           ;; 07:774a $ff

map06_room02_00_tiles:
    db   $00, $00, $00, $00                            ;; 07:774b ????
    db   $ff, $ff                                      ;; 07:774f ??

map06_room03_00_script:
    dw   $ffff                                         ;; 07:7751 $ff $ff
    db   $ff                                           ;; 07:7753 $ff

map06_room03_00_tiles:
    db   $00, $00, $00, $00                            ;; 07:7754 ????
    db   $ff, $ff                                      ;; 07:7758 ??

map06_room04_00_script:
    dw   $ffff                                         ;; 07:775a $ff $ff
    db   $ff                                           ;; 07:775c $ff

map06_room04_00_tiles:
    db   $00, $00, $00, $00                            ;; 07:775d ????
    db   $ff, $ff                                      ;; 07:7761 ??

map06_room05_00_script:
    dw   $ffff                                         ;; 07:7763 $ff $ff
    db   $ff                                           ;; 07:7765 $ff

map06_room05_00_tiles:
    db   $00, $00, $00, $00                            ;; 07:7766 ????
    db   $ff, $ff                                      ;; 07:776a ??

map06_room06_00_script:
    SCRIPT_IDX script_0079                             ;; 07:776c $79 $00
    SCRIPT_AT_POS 4, 5, script_0323                    ;; 07:776e $45 $23 $03
    SCRIPT_AT_POS 4, 4, script_0323                    ;; 07:7771 $44 $23 $03
    db   $ff                                           ;; 07:7774 $ff

map06_room06_00_tiles:
    db   $02, $02, $02, $01                            ;; 07:7775 ????
    db   $48, $34                                      ;; 07:7779 ??
    db   $49, $35                                      ;; 07:777b ??
    db   $58, $44                                      ;; 07:777d ??
    db   $59, $45                                      ;; 07:777f ??
    db   $ff, $ff                                      ;; 07:7781 ??

map06_room07_00_script:
    dw   $ffff                                         ;; 07:7783 $ff $ff
    db   $ff                                           ;; 07:7785 $ff

map06_room07_00_tiles:
    db   $00, $00, $00, $00                            ;; 07:7786 ????
    db   $ff, $ff                                      ;; 07:778a ??

map06_room00_01_script:
    SCRIPT_IDX script_00cd                             ;; 07:778c $cd $00
    db   $ff                                           ;; 07:778e $ff

map06_room00_01_tiles:
    db   $00, $02, $01, $02                            ;; 07:778f ????
    db   $0c, $13                                      ;; 07:7793 ??
    db   $0c, $16                                      ;; 07:7795 ??
    db   $1c, $23                                      ;; 07:7797 ??
    db   $1c, $26                                      ;; 07:7799 ??
    db   $ff, $ff                                      ;; 07:779b ??

map06_room01_01_script:
    SCRIPT_IDX script_00d0                             ;; 07:779d $d0 $00
    db   $ff                                           ;; 07:779f $ff

map06_room01_01_tiles:
    db   $01, $00, $02, $01                            ;; 07:77a0 ????
    db   $0c, $26                                      ;; 07:77a4 ??
    db   $1c, $36                                      ;; 07:77a6 ??
    db   $0c, $43                                      ;; 07:77a8 ??
    db   $1c, $53                                      ;; 07:77aa ??
    db   $ff, $ff                                      ;; 07:77ac ??

map06_room02_01_script:
    SCRIPT_IDX script_00cd                             ;; 07:77ae $cd $00
    SCRIPT_AT_POS 4, 4, script_0337                    ;; 07:77b0 $44 $37 $03
    SCRIPT_AT_POS 4, 5, script_0337                    ;; 07:77b3 $45 $37 $03
    SCRIPT_AT_POS 3, 5, script_0337                    ;; 07:77b6 $35 $37 $03
    SCRIPT_AT_POS 3, 4, script_0337                    ;; 07:77b9 $34 $37 $03
    db   $ff                                           ;; 07:77bc $ff

map06_room02_01_tiles:
    db   $02, $01, $02, $02                            ;; 07:77bd ????
    db   $2f, $11                                      ;; 07:77c1 ??
    db   $2f, $18                                      ;; 07:77c3 ??
    db   $48, $34                                      ;; 07:77c5 ??
    db   $49, $35                                      ;; 07:77c7 ??
    db   $58, $44                                      ;; 07:77c9 ??
    db   $59, $45                                      ;; 07:77cb ??
    db   $2f, $61                                      ;; 07:77cd ??
    db   $2f, $68                                      ;; 07:77cf ??
    db   $ff, $ff                                      ;; 07:77d1 ??

map06_room03_01_script:
    SCRIPT_IDX script_0127                             ;; 07:77d3 $27 $01
    db   $ff                                           ;; 07:77d5 $ff

map06_room03_01_tiles:
    db   $02, $02, $02, $01                            ;; 07:77d6 ....
    db   $16, $11                                      ;; 07:77da ..
    db   $16, $18                                      ;; 07:77dc ..
    db   $38, $54                                      ;; 07:77de ..
    db   $38, $55                                      ;; 07:77e0 ..
    db   $38, $63                                      ;; 07:77e2 ..
    db   $36, $64                                      ;; 07:77e4 ..
    db   $36, $65                                      ;; 07:77e6 ..
    db   $38, $66                                      ;; 07:77e8 ..
    db   $ff, $ff                                      ;; 07:77ea .?

map06_room04_01_script:
    SCRIPT_IDX script_00cd                             ;; 07:77ec $cd $00
    SCRIPT_AT_POS 4, 5, script_0325                    ;; 07:77ee $45 $25 $03
    SCRIPT_AT_POS 4, 4, script_0325                    ;; 07:77f1 $44 $25 $03
    db   $ff                                           ;; 07:77f4 $ff

map06_room04_01_tiles:
    db   $01, $02, $02, $02                            ;; 07:77f5 ????
    db   $48, $34                                      ;; 07:77f9 ??
    db   $49, $35                                      ;; 07:77fb ??
    db   $58, $44                                      ;; 07:77fd ??
    db   $59, $45                                      ;; 07:77ff ??
    db   $ff, $ff                                      ;; 07:7801 ??

map06_room05_01_script:
    SCRIPT_IDX script_00be                             ;; 07:7803 $be $00
    db   $ff                                           ;; 07:7805 $ff

map06_room05_01_tiles:
    db   $00, $05, $02, $02                            ;; 07:7806 ????
    db   $ff, $ff                                      ;; 07:780a ??

map06_room06_01_script:
    SCRIPT_IDX script_00d0                             ;; 07:780c $d0 $00
    db   $ff                                           ;; 07:780e $ff

map06_room06_01_tiles:
    db   $02, $00, $01, $00                            ;; 07:780f ????
    db   $0c, $33                                      ;; 07:7813 ??
    db   $0c, $36                                      ;; 07:7815 ??
    db   $1c, $43                                      ;; 07:7817 ??
    db   $1c, $46                                      ;; 07:7819 ??
    db   $ff, $ff                                      ;; 07:781b ??

map06_room07_01_script:
    SCRIPT_IDX script_00a9                             ;; 07:781d $a9 $00
    SCRIPT_AT_POS 1, 1, script_02d9                    ;; 07:781f $11 $d9 $02
    SCRIPT_AT_POS 1, 8, script_02db                    ;; 07:7822 $18 $db $02
    db   $ff                                           ;; 07:7825 $ff

map06_room07_01_tiles:
    db   $02, $02, $02, $02                            ;; 07:7826 ????
    db   $05, $02                                      ;; 07:782a ??
    db   $06, $03                                      ;; 07:782c ??
    db   $11, $11                                      ;; 07:782e ??
    db   $15, $12                                      ;; 07:7830 ??
    db   $10, $13                                      ;; 07:7832 ??
    db   $02, $18                                      ;; 07:7834 ??
    db   $25, $22                                      ;; 07:7836 ??
    db   $20, $23                                      ;; 07:7838 ??
    db   $ff, $ff                                      ;; 07:783a ??

map06_room00_02_script:
    dw   $ffff                                         ;; 07:783c $ff $ff
    db   $ff                                           ;; 07:783e $ff

map06_room00_02_tiles:
    db   $00, $00, $00, $00                            ;; 07:783f ????
    db   $ff, $ff                                      ;; 07:7843 ??

map06_room01_02_script:
    SCRIPT_IDX script_00b5                             ;; 07:7845 $b5 $00
    SCRIPT_AT_POS 4, 5, script_0335                    ;; 07:7847 $45 $35 $03
    SCRIPT_AT_POS 3, 5, script_0335                    ;; 07:784a $35 $35 $03
    SCRIPT_AT_POS 4, 4, script_0335                    ;; 07:784d $44 $35 $03
    SCRIPT_AT_POS 3, 4, script_0335                    ;; 07:7850 $34 $35 $03
    db   $ff                                           ;; 07:7853 $ff

map06_room01_02_tiles:
    db   $02, $02, $01, $02                            ;; 07:7854 ????
    db   $2f, $11                                      ;; 07:7858 ??
    db   $2f, $18                                      ;; 07:785a ??
    db   $48, $34                                      ;; 07:785c ??
    db   $49, $35                                      ;; 07:785e ??
    db   $58, $44                                      ;; 07:7860 ??
    db   $59, $45                                      ;; 07:7862 ??
    db   $2f, $61                                      ;; 07:7864 ??
    db   $2f, $68                                      ;; 07:7866 ??
    db   $ff, $ff                                      ;; 07:7868 ??

map06_room02_02_script:
    dw   $ffff                                         ;; 07:786a $ff $ff
    db   $ff                                           ;; 07:786c $ff

map06_room02_02_tiles:
    db   $00, $00, $00, $00                            ;; 07:786d ????
    db   $ff, $ff                                      ;; 07:7871 ??

map06_room03_02_script:
    SCRIPT_IDX script_0124                             ;; 07:7873 $24 $01
    db   $ff                                           ;; 07:7875 $ff

map06_room03_02_tiles:
    db   $02, $02, $09, $0c                            ;; 07:7876 ....
    db   $16, $11                                      ;; 07:787a ..
    db   $38, $14                                      ;; 07:787c ..
    db   $38, $15                                      ;; 07:787e ..
    db   $0f, $21                                      ;; 07:7880 ..
    db   $1f, $31                                      ;; 07:7882 ..
    db   $62, $33                                      ;; 07:7884 ..
    db   $0d, $37                                      ;; 07:7886 ..
    db   $17, $41                                      ;; 07:7888 ..
    db   $18, $42                                      ;; 07:788a ..
    db   $19, $43                                      ;; 07:788c ..
    db   $0d, $46                                      ;; 07:788e ..
    db   $1d, $47                                      ;; 07:7890 ..
    db   $0d, $48                                      ;; 07:7892 ..
    db   $0d, $57                                      ;; 07:7894 ..
    db   $1a, $61                                      ;; 07:7896 ..
    db   $ff, $ff                                      ;; 07:7898 .?

map06_room04_02_script:
    SCRIPT_IDX script_0085                             ;; 07:789a $85 $00
    SCRIPT_AT_POS 1, 8, script_02d1                    ;; 07:789c $18 $d1 $02
    db   $ff                                           ;; 07:789f $ff

map06_room04_02_tiles:
    db   $02, $02, $02, $01                            ;; 07:78a0 ????
    db   $11, $18                                      ;; 07:78a4 ??
    db   $41, $36                                      ;; 07:78a6 ??
    db   $41, $42                                      ;; 07:78a8 ??
    db   $41, $55                                      ;; 07:78aa ??
    db   $ff, $ff                                      ;; 07:78ac ??

map06_room05_02_script:
    SCRIPT_IDX script_00d0                             ;; 07:78ae $d0 $00
    db   $ff                                           ;; 07:78b0 $ff

map06_room05_02_tiles:
    db   $00, $02, $02, $01                            ;; 07:78b1 ????
    db   $0c, $23                                      ;; 07:78b5 ??
    db   $1c, $33                                      ;; 07:78b7 ??
    db   $0c, $46                                      ;; 07:78b9 ??
    db   $1c, $56                                      ;; 07:78bb ??
    db   $ff, $ff                                      ;; 07:78bd ??

map06_room06_02_script:
    SCRIPT_IDX script_00cd                             ;; 07:78bf $cd $00
    db   $ff                                           ;; 07:78c1 $ff

map06_room06_02_tiles:
    db   $01, $00, $00, $02                            ;; 07:78c2 ????
    db   $ff, $ff                                      ;; 07:78c6 ??

map06_room07_02_script:
    SCRIPT_IDX script_00cd                             ;; 07:78c8 $cd $00
    SCRIPT_AT_POS 4, 5, script_0320                    ;; 07:78ca $45 $20 $03
    SCRIPT_AT_POS 4, 4, script_0320                    ;; 07:78cd $44 $20 $03
    db   $ff                                           ;; 07:78d0 $ff

map06_room07_02_tiles:
    db   $02, $01, $02, $02                            ;; 07:78d1 ????
    db   $48, $34                                      ;; 07:78d5 ??
    db   $49, $35                                      ;; 07:78d7 ??
    db   $58, $44                                      ;; 07:78d9 ??
    db   $59, $45                                      ;; 07:78db ??
    db   $ff, $ff                                      ;; 07:78dd ??

map06_room00_03_script:
    SCRIPT_IDX script_00a9                             ;; 07:78df $a9 $00
    SCRIPT_AT_POS 1, 8, script_02cf                    ;; 07:78e1 $18 $cf $02
    db   $ff                                           ;; 07:78e4 $ff

map06_room00_03_tiles:
    db   $00, $02, $02, $02                            ;; 07:78e5 ????
    db   $11, $18                                      ;; 07:78e9 ??
    db   $2a, $25                                      ;; 07:78eb ??
    db   $2a, $26                                      ;; 07:78ed ??
    db   $2a, $27                                      ;; 07:78ef ??
    db   $2a, $28                                      ;; 07:78f1 ??
    db   $2a, $35                                      ;; 07:78f3 ??
    db   $2a, $45                                      ;; 07:78f5 ??
    db   $2a, $55                                      ;; 07:78f7 ??
    db   $ff, $ff                                      ;; 07:78f9 ??

map06_room01_03_script:
    SCRIPT_IDX script_007f                             ;; 07:78fb $7f $00
    db   $ff                                           ;; 07:78fd $ff

map06_room01_03_tiles:
    db   $01, $00, $02, $02                            ;; 07:78fe ????
    db   $37, $23                                      ;; 07:7902 ??
    db   $37, $34                                      ;; 07:7904 ??
    db   $37, $45                                      ;; 07:7906 ??
    db   $37, $56                                      ;; 07:7908 ??
    db   $ff, $ff                                      ;; 07:790a ??

map06_room02_03_script:
    SCRIPT_IDX script_0187                             ;; 07:790c $87 $01
    db   $ff                                           ;; 07:790e $ff

map06_room02_03_tiles:
    db   $02, $05, $02, $02                            ;; 07:790f ????
    db   $2a, $23                                      ;; 07:7913 ??
    db   $2a, $26                                      ;; 07:7915 ??
    db   $2a, $53                                      ;; 07:7917 ??
    db   $2a, $56                                      ;; 07:7919 ??
    db   $ff, $ff                                      ;; 07:791b ??

map06_room03_03_script:
    SCRIPT_IDX script_00a9                             ;; 07:791d $a9 $00
    db   $ff                                           ;; 07:791f $ff

map06_room03_03_tiles:
    db   $00, $00, $02, $02                            ;; 07:7920 ????
    db   $37, $32                                      ;; 07:7924 ??
    db   $37, $37                                      ;; 07:7926 ??
    db   $37, $42                                      ;; 07:7928 ??
    db   $37, $47                                      ;; 07:792a ??
    db   $ff, $ff                                      ;; 07:792c ??

map06_room04_03_script:
    SCRIPT_IDX script_0088                             ;; 07:792e $88 $00
    db   $ff                                           ;; 07:7930 $ff

map06_room04_03_tiles:
    db   $02, $00, $01, $02                            ;; 07:7931 ????
    db   $07, $11                                      ;; 07:7935 ??
    db   $07, $12                                      ;; 07:7937 ??
    db   $07, $17                                      ;; 07:7939 ??
    db   $07, $18                                      ;; 07:793b ??
    db   $ff, $ff                                      ;; 07:793d ??

map06_room05_03_script:
    SCRIPT_IDX script_00c4                             ;; 07:793f $c4 $00
    SCRIPT_AT_POS 4, 4, script_0327                    ;; 07:7941 $44 $27 $03
    SCRIPT_AT_POS 4, 5, script_0327                    ;; 07:7944 $45 $27 $03
    db   $ff                                           ;; 07:7947 $ff

map06_room05_03_tiles:
    db   $02, $02, $01, $02                            ;; 07:7948 ????
    db   $48, $34                                      ;; 07:794c ??
    db   $49, $35                                      ;; 07:794e ??
    db   $58, $44                                      ;; 07:7950 ??
    db   $59, $45                                      ;; 07:7952 ??
    db   $ff, $ff                                      ;; 07:7954 ??

map06_room06_03_script:
    dw   $ffff                                         ;; 07:7956 $ff $ff
    db   $ff                                           ;; 07:7958 $ff

map06_room06_03_tiles:
    db   $00, $00, $00, $00                            ;; 07:7959 ????
    db   $ff, $ff                                      ;; 07:795d ??

map06_room07_03_script:
    dw   $ffff                                         ;; 07:795f $ff $ff
    db   $ff                                           ;; 07:7961 $ff

map06_room07_03_tiles:
    db   $00, $00, $00, $00                            ;; 07:7962 ????
    db   $ff, $ff                                      ;; 07:7966 ??

map06_room00_04_script:
    SCRIPT_IDX script_0160                             ;; 07:7968 $60 $01
    db   $ff                                           ;; 07:796a $ff

map06_room00_04_tiles:
    db   $02, $02, $02, $01                            ;; 07:796b ????
    db   $0b, $23                                      ;; 07:796f ??
    db   $56, $24                                      ;; 07:7971 ??
    db   $57, $25                                      ;; 07:7973 ??
    db   $0b, $26                                      ;; 07:7975 ??
    db   $1b, $33                                      ;; 07:7977 ??
    db   $1b, $36                                      ;; 07:7979 ??
    db   $ff, $ff                                      ;; 07:797b ??

map06_room01_04_script:
    SCRIPT_IDX script_00c4                             ;; 07:797d $c4 $00
    SCRIPT_AT_POS 1, 8, script_02e9                    ;; 07:797f $18 $e9 $02
    db   $ff                                           ;; 07:7982 $ff

map06_room01_04_tiles:
    db   $01, $02, $02, $02                            ;; 07:7983 ????
    db   $11, $18                                      ;; 07:7987 ??
    db   $ff, $ff                                      ;; 07:7989 ??

map06_room02_04_script:
    SCRIPT_IDX script_00c7                             ;; 07:798b $c7 $00
    db   $ff                                           ;; 07:798d $ff

map06_room02_04_tiles:
    db   $02, $01, $02, $01                            ;; 07:798e ????
    db   $44, $22                                      ;; 07:7992 ??
    db   $44, $24                                      ;; 07:7994 ??
    db   $44, $52                                      ;; 07:7996 ??
    db   $44, $54                                      ;; 07:7998 ??
    db   $ff, $ff                                      ;; 07:799a ??

map06_room03_04_script:
    SCRIPT_IDX script_00c4                             ;; 07:799c $c4 $00
    SCRIPT_AT_POS 1, 8, script_02e8                    ;; 07:799e $18 $e8 $02
    db   $ff                                           ;; 07:79a1 $ff

map06_room03_04_tiles:
    db   $02, $02, $02, $01                            ;; 07:79a2 ????
    db   $11, $18                                      ;; 07:79a6 ??
    db   $2f, $33                                      ;; 07:79a8 ??
    db   $2f, $34                                      ;; 07:79aa ??
    db   $2f, $35                                      ;; 07:79ac ??
    db   $2f, $36                                      ;; 07:79ae ??
    db   $2f, $43                                      ;; 07:79b0 ??
    db   $2f, $44                                      ;; 07:79b2 ??
    db   $2f, $45                                      ;; 07:79b4 ??
    db   $2f, $46                                      ;; 07:79b6 ??
    db   $ff, $ff                                      ;; 07:79b8 ??

map06_room04_04_script:
    SCRIPT_IDX script_00cd                             ;; 07:79ba $cd $00
    SCRIPT_AT_POS 3, 5, script_0321                    ;; 07:79bc $35 $21 $03
    SCRIPT_AT_POS 4, 4, script_0321                    ;; 07:79bf $44 $21 $03
    SCRIPT_AT_POS 4, 5, script_0321                    ;; 07:79c2 $45 $21 $03
    SCRIPT_AT_POS 3, 4, script_0321                    ;; 07:79c5 $34 $21 $03
    db   $ff                                           ;; 07:79c8 $ff

map06_room04_04_tiles:
    db   $02, $02, $02, $01                            ;; 07:79c9 ????
    db   $48, $34                                      ;; 07:79cd ??
    db   $49, $35                                      ;; 07:79cf ??
    db   $58, $44                                      ;; 07:79d1 ??
    db   $59, $45                                      ;; 07:79d3 ??
    db   $ff, $ff                                      ;; 07:79d5 ??

map06_room05_04_script:
    dw   $ffff                                         ;; 07:79d7 $ff $ff
    db   $ff                                           ;; 07:79d9 $ff

map06_room05_04_tiles:
    db   $00, $00, $00, $00                            ;; 07:79da ????
    db   $ff, $ff                                      ;; 07:79de ??

map06_room06_04_script:
    SCRIPT_IDX script_00cd                             ;; 07:79e0 $cd $00
    SCRIPT_AT_POS 6, 8, script_0397                    ;; 07:79e2 $68 $97 $03
    db   $ff                                           ;; 07:79e5 $ff

map06_room06_04_tiles:
    db   $02, $02, $02, $01                            ;; 07:79e6 ????
    db   $11, $68                                      ;; 07:79ea ??
    db   $ff, $ff                                      ;; 07:79ec ??

map06_room07_04_script:
    dw   $ffff                                         ;; 07:79ee $ff $ff
    db   $ff                                           ;; 07:79f0 $ff

map06_room07_04_tiles:
    db   $00, $00, $00, $00                            ;; 07:79f1 ????
    db   $ff, $ff                                      ;; 07:79f5 ??

map06_room00_05_script:
    SCRIPT_IDX script_00c4                             ;; 07:79f7 $c4 $00
    db   $ff                                           ;; 07:79f9 $ff

map06_room00_05_tiles:
    db   $00, $02, $01, $00                            ;; 07:79fa ????
    db   $2a, $16                                      ;; 07:79fe ??
    db   $2a, $36                                      ;; 07:7a00 ??
    db   $2a, $46                                      ;; 07:7a02 ??
    db   $2a, $56                                      ;; 07:7a04 ??
    db   $2a, $57                                      ;; 07:7a06 ??
    db   $2a, $58                                      ;; 07:7a08 ??
    db   $ff, $ff                                      ;; 07:7a0a ??

map06_room01_05_script:
    SCRIPT_IDX script_03e2                             ;; 07:7a0c $e2 $03
    db   $ff                                           ;; 07:7a0e $ff

map06_room01_05_tiles:
    db   $02, $00, $02, $01                            ;; 07:7a0f ????
    db   $46, $33                                      ;; 07:7a13 ??
    db   $46, $42                                      ;; 07:7a15 ??
    db   $46, $51                                      ;; 07:7a17 ??
    db   $ff, $ff                                      ;; 07:7a19 ??

map06_room02_05_script:
    SCRIPT_IDX script_00b5                             ;; 07:7a1b $b5 $00
    db   $ff                                           ;; 07:7a1d $ff

map06_room02_05_tiles:
    db   $00, $00, $01, $02                            ;; 07:7a1e ????
    db   $2a, $21                                      ;; 07:7a22 ??
    db   $2a, $22                                      ;; 07:7a24 ??
    db   $2a, $24                                      ;; 07:7a26 ??
    db   $2a, $25                                      ;; 07:7a28 ??
    db   $2a, $27                                      ;; 07:7a2a ??
    db   $2a, $28                                      ;; 07:7a2c ??
    db   $ff, $ff                                      ;; 07:7a2e ??

map06_room03_05_script:
    SCRIPT_IDX script_00c1                             ;; 07:7a30 $c1 $00
    SCRIPT_AT_POS 3, 4, script_04fd                    ;; 07:7a32 $34 $fd $04
    SCRIPT_AT_POS 4, 4, script_04fe                    ;; 07:7a35 $44 $fe $04
    SCRIPT_AT_POS 4, 5, script_0500                    ;; 07:7a38 $45 $00 $05
    SCRIPT_AT_POS 3, 5, script_04ff                    ;; 07:7a3b $35 $ff $04
    db   $ff                                           ;; 07:7a3e $ff

map06_room03_05_tiles:
    db   $02, $00, $09, $01                            ;; 07:7a3f ????
    db   $2a, $23                                      ;; 07:7a43 ??
    db   $2a, $24                                      ;; 07:7a45 ??
    db   $2a, $25                                      ;; 07:7a47 ??
    db   $2a, $26                                      ;; 07:7a49 ??
    db   $2e, $32                                      ;; 07:7a4b ??
    db   $2a, $33                                      ;; 07:7a4d ??
    db   $29, $34                                      ;; 07:7a4f ??
    db   $29, $35                                      ;; 07:7a51 ??
    db   $2a, $36                                      ;; 07:7a53 ??
    db   $2a, $43                                      ;; 07:7a55 ??
    db   $29, $44                                      ;; 07:7a57 ??
    db   $29, $45                                      ;; 07:7a59 ??
    db   $2e, $46                                      ;; 07:7a5b ??
    db   $2a, $47                                      ;; 07:7a5d ??
    db   $2a, $53                                      ;; 07:7a5f ??
    db   $2a, $54                                      ;; 07:7a61 ??
    db   $2a, $55                                      ;; 07:7a63 ??
    db   $2a, $56                                      ;; 07:7a65 ??
    db   $ff, $ff                                      ;; 07:7a67 ??

map06_room04_05_script:
    SCRIPT_IDX script_00c7                             ;; 07:7a69 $c7 $00
    db   $ff                                           ;; 07:7a6b $ff

map06_room04_05_tiles:
    db   $00, $02, $01, $02                            ;; 07:7a6c ????
    db   $0c, $13                                      ;; 07:7a70 ??
    db   $0c, $16                                      ;; 07:7a72 ??
    db   $1c, $23                                      ;; 07:7a74 ??
    db   $1c, $26                                      ;; 07:7a76 ??
    db   $ff, $ff                                      ;; 07:7a78 ??

map06_room05_05_script:
    SCRIPT_IDX script_00c1                             ;; 07:7a7a $c1 $00
    db   $ff                                           ;; 07:7a7c $ff

map06_room05_05_tiles:
    db   $00, $00, $02, $02                            ;; 07:7a7d ????
    db   $27, $34                                      ;; 07:7a81 ??
    db   $27, $35                                      ;; 07:7a83 ??
    db   $27, $44                                      ;; 07:7a85 ??
    db   $27, $45                                      ;; 07:7a87 ??
    db   $ff, $ff                                      ;; 07:7a89 ??

map06_room06_05_script:
    SCRIPT_IDX script_00c7                             ;; 07:7a8b $c7 $00
    db   $ff                                           ;; 07:7a8d $ff

map06_room06_05_tiles:
    db   $02, $00, $05, $00                            ;; 07:7a8e ????
    db   $0c, $33                                      ;; 07:7a92 ??
    db   $0c, $36                                      ;; 07:7a94 ??
    db   $1c, $43                                      ;; 07:7a96 ??
    db   $1c, $46                                      ;; 07:7a98 ??
    db   $ff, $ff                                      ;; 07:7a9a ??

map06_room07_05_script:
    SCRIPT_IDX script_00d0                             ;; 07:7a9c $d0 $00
    SCRIPT_AT_POS 3, 5, script_0322                    ;; 07:7a9e $35 $22 $03
    SCRIPT_AT_POS 4, 4, script_0322                    ;; 07:7aa1 $44 $22 $03
    SCRIPT_AT_POS 4, 5, script_0322                    ;; 07:7aa4 $45 $22 $03
    SCRIPT_AT_POS 3, 4, script_0322                    ;; 07:7aa7 $34 $22 $03
    db   $ff                                           ;; 07:7aaa $ff

map06_room07_05_tiles:
    db   $02, $02, $02, $02                            ;; 07:7aab ????
    db   $48, $34                                      ;; 07:7aaf ??
    db   $49, $35                                      ;; 07:7ab1 ??
    db   $58, $44                                      ;; 07:7ab3 ??
    db   $59, $45                                      ;; 07:7ab5 ??
    db   $ff, $ff                                      ;; 07:7ab7 ??

map06_room00_06_script:
    SCRIPT_IDX script_00c7                             ;; 07:7ab9 $c7 $00
    db   $ff                                           ;; 07:7abb $ff

map06_room00_06_tiles:
    db   $02, $02, $00, $00                            ;; 07:7abc ????
    db   $37, $23                                      ;; 07:7ac0 ??
    db   $23, $34                                      ;; 07:7ac2 ??
    db   $22, $45                                      ;; 07:7ac4 ??
    db   $37, $56                                      ;; 07:7ac6 ??
    db   $ff, $ff                                      ;; 07:7ac8 ??

map06_room01_06_script:
    SCRIPT_IDX script_00c4                             ;; 07:7aca $c4 $00
    db   $ff                                           ;; 07:7acc $ff

map06_room01_06_tiles:
    db   $05, $02, $01, $02                            ;; 07:7acd ????
    db   $1a, $61                                      ;; 07:7ad1 ??
    db   $ff, $ff                                      ;; 07:7ad3 ??

map06_room02_06_script:
    SCRIPT_IDX script_0163                             ;; 07:7ad5 $63 $01
    db   $ff                                           ;; 07:7ad7 $ff

map06_room02_06_tiles:
    db   $00, $01, $02, $02                            ;; 07:7ad8 ????
    db   $0b, $23                                      ;; 07:7adc ??
    db   $56, $24                                      ;; 07:7ade ??
    db   $57, $25                                      ;; 07:7ae0 ??
    db   $0b, $26                                      ;; 07:7ae2 ??
    db   $1b, $33                                      ;; 07:7ae4 ??
    db   $1b, $36                                      ;; 07:7ae6 ??
    db   $ff, $ff                                      ;; 07:7ae8 ??

map06_room03_06_script:
    SCRIPT_IDX script_00c7                             ;; 07:7aea $c7 $00
    db   $ff                                           ;; 07:7aec $ff

map06_room03_06_tiles:
    db   $02, $00, $01, $02                            ;; 07:7aed ????
    db   $ff, $ff                                      ;; 07:7af1 ??

map06_room04_06_script:
    SCRIPT_IDX script_00d0                             ;; 07:7af3 $d0 $00
    SCRIPT_AT_POS 1, 8, script_02a5                    ;; 07:7af5 $18 $a5 $02
    db   $ff                                           ;; 07:7af8 $ff

map06_room04_06_tiles:
    db   $02, $02, $02, $00                            ;; 07:7af9 ????
    db   $11, $18                                      ;; 07:7afd ??
    db   $0c, $33                                      ;; 07:7aff ??
    db   $0c, $36                                      ;; 07:7b01 ??
    db   $1c, $43                                      ;; 07:7b03 ??
    db   $1c, $46                                      ;; 07:7b05 ??
    db   $ff, $ff                                      ;; 07:7b07 ??

map06_room05_06_script:
    SCRIPT_IDX script_0184                             ;; 07:7b09 $84 $01
    SCRIPT_AT_POS 1, 8, script_003d                    ;; 07:7b0b $18 $3d $00
    db   $ff                                           ;; 07:7b0e $ff

map06_room05_06_tiles:
    db   $02, $02, $02, $02                            ;; 07:7b0f ????
    db   $11, $18                                      ;; 07:7b13 ??
    db   $ff, $ff                                      ;; 07:7b15 ??

map06_room06_06_script:
    SCRIPT_IDX script_00cd                             ;; 07:7b17 $cd $00
    db   $ff                                           ;; 07:7b19 $ff

map06_room06_06_tiles:
    db   $02, $02, $00, $00                            ;; 07:7b1a ????
    db   $0c, $34                                      ;; 07:7b1e ??
    db   $0c, $35                                      ;; 07:7b20 ??
    db   $1c, $44                                      ;; 07:7b22 ??
    db   $1c, $45                                      ;; 07:7b24 ??
    db   $ff, $ff                                      ;; 07:7b26 ??

map06_room07_06_script:
    dw   $ffff                                         ;; 07:7b28 $ff $ff
    db   $ff                                           ;; 07:7b2a $ff

map06_room07_06_tiles:
    db   $00, $00, $00, $00                            ;; 07:7b2b ????
    db   $ff, $ff                                      ;; 07:7b2f ??

map06_room00_07_script:
    SCRIPT_IDX script_007f                             ;; 07:7b31 $7f $00
    db   $ff                                           ;; 07:7b33 $ff

map06_room00_07_tiles:
    db   $00, $02, $00, $02                            ;; 07:7b34 ????
    db   $46, $18                                      ;; 07:7b38 ??
    db   $46, $27                                      ;; 07:7b3a ??
    db   $46, $34                                      ;; 07:7b3c ??
    db   $46, $35                                      ;; 07:7b3e ??
    db   $46, $36                                      ;; 07:7b40 ??
    db   $46, $46                                      ;; 07:7b42 ??
    db   $46, $54                                      ;; 07:7b44 ??
    db   $46, $56                                      ;; 07:7b46 ??
    db   $46, $63                                      ;; 07:7b48 ??
    db   $ff, $ff                                      ;; 07:7b4a ??

map06_room01_07_script:
    SCRIPT_IDX script_003d                             ;; 07:7b4c $3d $00
    db   $ff                                           ;; 07:7b4e $ff

map06_room01_07_tiles:
    db   $00, $00, $02, $0c                            ;; 07:7b4f ????
    db   $64, $23                                      ;; 07:7b53 ??
    db   $64, $26                                      ;; 07:7b55 ??
    db   $64, $53                                      ;; 07:7b57 ??
    db   $64, $56                                      ;; 07:7b59 ??
    db   $ff, $ff                                      ;; 07:7b5b ??

map06_room02_07_script:
    SCRIPT_IDX script_00b5                             ;; 07:7b5d $b5 $00
    db   $ff                                           ;; 07:7b5f $ff

map06_room02_07_tiles:
    db   $00, $00, $02, $02                            ;; 07:7b60 ????
    db   $2a, $23                                      ;; 07:7b64 ??
    db   $2a, $25                                      ;; 07:7b66 ??
    db   $2a, $36                                      ;; 07:7b68 ??
    db   $2a, $46                                      ;; 07:7b6a ??
    db   $2a, $53                                      ;; 07:7b6c ??
    db   $2a, $55                                      ;; 07:7b6e ??
    db   $ff, $ff                                      ;; 07:7b70 ??

map06_room03_07_script:
    SCRIPT_IDX script_00c1                             ;; 07:7b72 $c1 $00
    db   $ff                                           ;; 07:7b74 $ff

map06_room03_07_tiles:
    db   $02, $00, $02, $02                            ;; 07:7b75 ????
    db   $1a, $68                                      ;; 07:7b79 ??
    db   $ff, $ff                                      ;; 07:7b7b ??

map06_room04_07_script:
    SCRIPT_IDX script_00cd                             ;; 07:7b7d $cd $00
    db   $ff                                           ;; 07:7b7f $ff

map06_room04_07_tiles:
    db   $00, $02, $00, $02                            ;; 07:7b80 ????
    db   $0c, $16                                      ;; 07:7b84 ??
    db   $1c, $26                                      ;; 07:7b86 ??
    db   $0c, $35                                      ;; 07:7b88 ??
    db   $1c, $45                                      ;; 07:7b8a ??
    db   $ff, $ff                                      ;; 07:7b8c ??

map06_room05_07_script:
    SCRIPT_IDX script_00b5                             ;; 07:7b8e $b5 $00
    db   $ff                                           ;; 07:7b90 $ff

map06_room05_07_tiles:
    db   $00, $00, $02, $02                            ;; 07:7b91 ????
    db   $0c, $32                                      ;; 07:7b95 ??
    db   $0c, $37                                      ;; 07:7b97 ??
    db   $1c, $42                                      ;; 07:7b99 ??
    db   $1c, $47                                      ;; 07:7b9b ??
    db   $ff, $ff                                      ;; 07:7b9d ??

map06_room06_07_script:
    SCRIPT_IDX script_007f                             ;; 07:7b9f $7f $00
    db   $ff                                           ;; 07:7ba1 $ff

map06_room06_07_tiles:
    db   $02, $00, $00, $02                            ;; 07:7ba2 ????
    db   $ff, $ff                                      ;; 07:7ba6 ??

map06_room07_07_script:
    dw   $ffff                                         ;; 07:7ba8 $ff $ff
    db   $ff                                           ;; 07:7baa $ff

map06_room07_07_tiles:
    db   $00, $00, $00, $00                            ;; 07:7bab ????
    db   $ff, $ff                                      ;; 07:7baf ??
