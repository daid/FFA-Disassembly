;; Disassembled with BadBoy Disassembler: https://github.com/daid/BadBoy



mapRoomPointers_0d:
    db   $01, $04, $08, $08                            ;; 07:50d4 ....
    dw   map0d_room_tile_template                      ;; 07:50d8 $f2 $51
    ;;Door tile info
    db   $25, $35, $20, $30, $14, $03, $52, $53        ;; 07:50da ??????..
    db   $24, $34, $21, $31, $12, $13, $42, $43        ;; 07:50e2 ????????
    db   $15, $45, $10, $40, $01, $04, $51, $54        ;; 07:50ea ........
    ;;Room data pointers
    dw   map0d_room00_00_script, map0d_room00_00_tiles ;; 07:50f2 $1e $52 $24 $52
    dw   map0d_room01_00_script, map0d_room01_00_tiles ;; 07:50f6 $3a $52 $3d $52
    dw   map0d_room02_00_script, map0d_room02_00_tiles ;; 07:50fa $5f $52 $62 $52
    dw   map0d_room03_00_script, map0d_room03_00_tiles ;; 07:50fe $88 $52 $8b $52
    dw   map0d_room04_00_script, map0d_room04_00_tiles ;; 07:5102 $91 $52 $9d $52
    dw   map0d_room05_00_script, map0d_room05_00_tiles ;; 07:5106 $bd $52 $c3 $52
    dw   map0d_room06_00_script, map0d_room06_00_tiles ;; 07:510a $d7 $52 $da $52
    dw   map0d_room07_00_script, map0d_room07_00_tiles ;; 07:510e $e8 $52 $eb $52
    dw   map0d_room00_01_script, map0d_room00_01_tiles ;; 07:5112 $05 $53 $08 $53
    dw   map0d_room01_01_script, map0d_room01_01_tiles ;; 07:5116 $0e $53 $11 $53
    dw   map0d_room02_01_script, map0d_room02_01_tiles ;; 07:511a $17 $53 $1a $53
    dw   map0d_room03_01_script, map0d_room03_01_tiles ;; 07:511e $36 $53 $39 $53
    dw   map0d_room04_01_script, map0d_room04_01_tiles ;; 07:5122 $49 $53 $4c $53
    dw   map0d_room05_01_script, map0d_room05_01_tiles ;; 07:5126 $72 $53 $75 $53
    dw   map0d_room06_01_script, map0d_room06_01_tiles ;; 07:512a $9b $53 $9e $53
    dw   map0d_room07_01_script, map0d_room07_01_tiles ;; 07:512e $bc $53 $bf $53
    dw   map0d_room00_02_script, map0d_room00_02_tiles ;; 07:5132 $d1 $53 $d4 $53
    dw   map0d_room01_02_script, map0d_room01_02_tiles ;; 07:5136 $e6 $53 $e9 $53
    dw   map0d_room02_02_script, map0d_room02_02_tiles ;; 07:513a $0f $54 $12 $54
    dw   map0d_room03_02_script, map0d_room03_02_tiles ;; 07:513e $38 $54 $3e $54
    dw   map0d_room04_02_script, map0d_room04_02_tiles ;; 07:5142 $4c $54 $4f $54
    dw   map0d_room05_02_script, map0d_room05_02_tiles ;; 07:5146 $5b $54 $5e $54
    dw   map0d_room06_02_script, map0d_room06_02_tiles ;; 07:514a $7c $54 $7f $54
    dw   map0d_room07_02_script, map0d_room07_02_tiles ;; 07:514e $9d $54 $a0 $54
    dw   map0d_room00_03_script, map0d_room00_03_tiles ;; 07:5152 $be $54 $c1 $54
    dw   map0d_room01_03_script, map0d_room01_03_tiles ;; 07:5156 $cf $54 $d2 $54
    dw   map0d_room02_03_script, map0d_room02_03_tiles ;; 07:515a $ec $54 $ef $54
    dw   map0d_room03_03_script, map0d_room03_03_tiles ;; 07:515e $0b $55 $0e $55
    dw   map0d_room04_03_script, map0d_room04_03_tiles ;; 07:5162 $16 $55 $1c $55
    dw   map0d_room05_03_script, map0d_room05_03_tiles ;; 07:5166 $34 $55 $37 $55
    dw   map0d_room06_03_script, map0d_room06_03_tiles ;; 07:516a $45 $55 $48 $55
    dw   map0d_room07_03_script, map0d_room07_03_tiles ;; 07:516e $5a $55 $60 $55
    dw   map0d_room00_04_script, map0d_room00_04_tiles ;; 07:5172 $76 $55 $79 $55
    dw   map0d_room01_04_script, map0d_room01_04_tiles ;; 07:5176 $bb $55 $be $55
    dw   map0d_room02_04_script, map0d_room02_04_tiles ;; 07:517a $e4 $55 $e7 $55
    dw   map0d_room03_04_script, map0d_room03_04_tiles ;; 07:517e $11 $56 $14 $56
    dw   map0d_room04_04_script, map0d_room04_04_tiles ;; 07:5182 $1a $56 $1d $56
    dw   map0d_room05_04_script, map0d_room05_04_tiles ;; 07:5186 $23 $56 $29 $56
    dw   map0d_room06_04_script, map0d_room06_04_tiles ;; 07:518a $3f $56 $42 $56
    dw   map0d_room07_04_script, map0d_room07_04_tiles ;; 07:518e $64 $56 $6a $56
    dw   map0d_room00_05_script, map0d_room00_05_tiles ;; 07:5192 $7a $56 $80 $56
    dw   map0d_room01_05_script, map0d_room01_05_tiles ;; 07:5196 $a6 $56 $ac $56
    dw   map0d_room02_05_script, map0d_room02_05_tiles ;; 07:519a $f2 $56 $f5 $56
    dw   map0d_room03_05_script, map0d_room03_05_tiles ;; 07:519e $21 $57 $24 $57
    dw   map0d_room04_05_script, map0d_room04_05_tiles ;; 07:51a2 $2a $57 $2d $57
    dw   map0d_room05_05_script, map0d_room05_05_tiles ;; 07:51a6 $33 $57 $36 $57
    dw   map0d_room06_05_script, map0d_room06_05_tiles ;; 07:51aa $46 $57 $49 $57
    dw   map0d_room07_05_script, map0d_room07_05_tiles ;; 07:51ae $57 $57 $5a $57
    dw   map0d_room00_06_script, map0d_room00_06_tiles ;; 07:51b2 $6c $57 $6f $57
    dw   map0d_room01_06_script, map0d_room01_06_tiles ;; 07:51b6 $a5 $57 $a8 $57
    dw   map0d_room02_06_script, map0d_room02_06_tiles ;; 07:51ba $c6 $57 $c9 $57
    dw   map0d_room03_06_script, map0d_room03_06_tiles ;; 07:51be $cf $57 $d2 $57
    dw   map0d_room04_06_script, map0d_room04_06_tiles ;; 07:51c2 $d8 $57 $db $57
    dw   map0d_room05_06_script, map0d_room05_06_tiles ;; 07:51c6 $e9 $57 $ec $57
    dw   map0d_room06_06_script, map0d_room06_06_tiles ;; 07:51ca $1e $58 $21 $58
    dw   map0d_room07_06_script, map0d_room07_06_tiles ;; 07:51ce $33 $58 $36 $58
    dw   map0d_room00_07_script, map0d_room00_07_tiles ;; 07:51d2 $3c $58 $42 $58
    dw   map0d_room01_07_script, map0d_room01_07_tiles ;; 07:51d6 $5c $58 $62 $58
    dw   map0d_room02_07_script, map0d_room02_07_tiles ;; 07:51da $76 $58 $79 $58
    dw   map0d_room03_07_script, map0d_room03_07_tiles ;; 07:51de $7f $58 $85 $58
    dw   map0d_room04_07_script, map0d_room04_07_tiles ;; 07:51e2 $bf $58 $c2 $58
    dw   map0d_room05_07_script, map0d_room05_07_tiles ;; 07:51e6 $d2 $58 $d5 $58
    dw   map0d_room06_07_script, map0d_room06_07_tiles ;; 07:51ea $e7 $58 $ea $58
    dw   map0d_room07_07_script, map0d_room07_07_tiles ;; 07:51ee $04 $59 $0a $59

map0d_room_tile_template:
    db   $16, $01, $01, $01, $14, $03, $04, $04, $04, $05 ;; 07:51f2 ..........
    db   $10,                $80,                $80, $15 ;; 07:51fc ....
    db   $10,                $80,                $80, $15 ;; 07:5200 ....
    db   $20,                $80,                $80, $25 ;; 07:5204 ....
    db   $30,                $80,                $80, $35 ;; 07:5208 ....
    db   $40,                $80,                $80, $45 ;; 07:520c ....
    db   $40,                $80,                $80, $45 ;; 07:5210 ....
    db   $50, $51, $51, $51, $52, $53, $54, $54, $54, $55 ;; 07:5214 ..........

map0d_room00_00_script:
    SCRIPT_IDX script_00b5                             ;; 07:521e $b5 $00
    SCRIPT_AT_POS 1, 8, script_036b                    ;; 07:5220 $18 $6b $03
    db   $ff                                           ;; 07:5223 $ff

map0d_room00_00_tiles:
    db   $00, $02, $02, $02                            ;; 07:5224 ????
    db   $11, $18                                      ;; 07:5228 ??
    db   $4f, $22                                      ;; 07:522a ??
    db   $4f, $23                                      ;; 07:522c ??
    db   $4f, $24                                      ;; 07:522e ??
    db   $4f, $25                                      ;; 07:5230 ??
    db   $4f, $26                                      ;; 07:5232 ??
    db   $4f, $27                                      ;; 07:5234 ??
    db   $4f, $28                                      ;; 07:5236 ??
    db   $ff, $ff                                      ;; 07:5238 ??

map0d_room01_00_script:
    SCRIPT_IDX script_00a9                             ;; 07:523a $a9 $00
    db   $ff                                           ;; 07:523c $ff

map0d_room01_00_tiles:
    db   $00, $00, $02, $02                            ;; 07:523d ????
    db   $05, $04                                      ;; 07:5241 ??
    db   $16, $05                                      ;; 07:5243 ??
    db   $15, $14                                      ;; 07:5245 ??
    db   $10, $15                                      ;; 07:5247 ??
    db   $15, $24                                      ;; 07:5249 ??
    db   $10, $25                                      ;; 07:524b ??
    db   $15, $34                                      ;; 07:524d ??
    db   $10, $35                                      ;; 07:524f ??
    db   $1b, $44                                      ;; 07:5251 ??
    db   $17, $45                                      ;; 07:5253 ??
    db   $3b, $64                                      ;; 07:5255 ??
    db   $37, $65                                      ;; 07:5257 ??
    db   $55, $74                                      ;; 07:5259 ??
    db   $50, $75                                      ;; 07:525b ??
    db   $ff, $ff                                      ;; 07:525d ??

map0d_room02_00_script:
    SCRIPT_IDX script_00b5                             ;; 07:525f $b5 $00
    db   $ff                                           ;; 07:5261 $ff

map0d_room02_00_tiles:
    db   $02, $00, $02, $01                            ;; 07:5262 ????
    db   $59, $22                                      ;; 07:5266 ??
    db   $57, $23                                      ;; 07:5268 ??
    db   $59, $24                                      ;; 07:526a ??
    db   $59, $25                                      ;; 07:526c ??
    db   $59, $26                                      ;; 07:526e ??
    db   $57, $27                                      ;; 07:5270 ??
    db   $56, $32                                      ;; 07:5272 ??
    db   $57, $37                                      ;; 07:5274 ??
    db   $56, $42                                      ;; 07:5276 ??
    db   $57, $47                                      ;; 07:5278 ??
    db   $56, $52                                      ;; 07:527a ??
    db   $58, $53                                      ;; 07:527c ??
    db   $59, $56                                      ;; 07:527e ??
    db   $57, $57                                      ;; 07:5280 ??
    db   $56, $63                                      ;; 07:5282 ??
    db   $56, $66                                      ;; 07:5284 ??
    db   $ff, $ff                                      ;; 07:5286 ??

map0d_room03_00_script:
    dw   $ffff                                         ;; 07:5288 $ff $ff
    db   $ff                                           ;; 07:528a $ff

map0d_room03_00_tiles:
    db   $00, $00, $00, $00                            ;; 07:528b ????
    db   $ff, $ff                                      ;; 07:528f ??

map0d_room04_00_script:
    SCRIPT_IDX script_00b8                             ;; 07:5291 $b8 $00
    SCRIPT_AT_POS 1, 8, script_037b                    ;; 07:5293 $18 $7b $03
    SCRIPT_AT_POS 2, 8, script_04f6                    ;; 07:5296 $28 $f6 $04
    SCRIPT_AT_POS 1, 7, script_04f5                    ;; 07:5299 $17 $f5 $04
    db   $ff                                           ;; 07:529c $ff

map0d_room04_00_tiles:
    db   $02, $02, $02, $01                            ;; 07:529d ????
    db   $4e, $17                                      ;; 07:52a1 ??
    db   $4f, $23                                      ;; 07:52a3 ??
    db   $4f, $24                                      ;; 07:52a5 ??
    db   $4f, $25                                      ;; 07:52a7 ??
    db   $4f, $26                                      ;; 07:52a9 ??
    db   $4f, $27                                      ;; 07:52ab ??
    db   $4e, $28                                      ;; 07:52ad ??
    db   $4f, $52                                      ;; 07:52af ??
    db   $4f, $53                                      ;; 07:52b1 ??
    db   $4f, $54                                      ;; 07:52b3 ??
    db   $4f, $55                                      ;; 07:52b5 ??
    db   $4f, $56                                      ;; 07:52b7 ??
    db   $4f, $57                                      ;; 07:52b9 ??
    db   $ff, $ff                                      ;; 07:52bb ??

map0d_room05_00_script:
    SCRIPT_IDX script_00b8                             ;; 07:52bd $b8 $00
    SCRIPT_AT_POS 1, 8, script_02c3                    ;; 07:52bf $18 $c3 $02
    db   $ff                                           ;; 07:52c2 $ff

map0d_room05_00_tiles:
    db   $02, $02, $02, $00                            ;; 07:52c3 ????
    db   $11, $18                                      ;; 07:52c7 ??
    db   $5a, $31                                      ;; 07:52c9 ??
    db   $5a, $32                                      ;; 07:52cb ??
    db   $5a, $37                                      ;; 07:52cd ??
    db   $5a, $38                                      ;; 07:52cf ??
    db   $5a, $54                                      ;; 07:52d1 ??
    db   $5a, $55                                      ;; 07:52d3 ??
    db   $ff, $ff                                      ;; 07:52d5 ??

map0d_room06_00_script:
    SCRIPT_IDX script_00b8                             ;; 07:52d7 $b8 $00
    db   $ff                                           ;; 07:52d9 $ff

map0d_room06_00_tiles:
    db   $00, $02, $02, $01                            ;; 07:52da ????
    db   $23, $34                                      ;; 07:52de ??
    db   $22, $35                                      ;; 07:52e0 ??
    db   $22, $44                                      ;; 07:52e2 ??
    db   $23, $45                                      ;; 07:52e4 ??
    db   $ff, $ff                                      ;; 07:52e6 ??

map0d_room07_00_script:
    SCRIPT_IDX script_007f                             ;; 07:52e8 $7f $00
    db   $ff                                           ;; 07:52ea $ff

map0d_room07_00_tiles:
    db   $02, $00, $02, $02                            ;; 07:52eb ????
    db   $09, $24                                      ;; 07:52ef ??
    db   $09, $25                                      ;; 07:52f1 ??
    db   $09, $33                                      ;; 07:52f3 ??
    db   $09, $34                                      ;; 07:52f5 ??
    db   $09, $37                                      ;; 07:52f7 ??
    db   $09, $43                                      ;; 07:52f9 ??
    db   $09, $44                                      ;; 07:52fb ??
    db   $09, $47                                      ;; 07:52fd ??
    db   $09, $54                                      ;; 07:52ff ??
    db   $09, $55                                      ;; 07:5301 ??
    db   $ff, $ff                                      ;; 07:5303 ??

map0d_room00_01_script:
    dw   $ffff                                         ;; 07:5305 $ff $ff
    db   $ff                                           ;; 07:5307 $ff

map0d_room00_01_tiles:
    db   $00, $00, $00, $00                            ;; 07:5308 ????
    db   $ff, $ff                                      ;; 07:530c ??

map0d_room01_01_script:
    dw   $ffff                                         ;; 07:530e $ff $ff
    db   $ff                                           ;; 07:5310 $ff

map0d_room01_01_tiles:
    db   $00, $00, $00, $00                            ;; 07:5311 ????
    db   $ff, $ff                                      ;; 07:5315 ??

map0d_room02_01_script:
    SCRIPT_IDX script_00b2                             ;; 07:5317 $b2 $00
    db   $ff                                           ;; 07:5319 $ff

map0d_room02_01_tiles:
    db   $02, $02, $01, $00                            ;; 07:531a ????
    db   $5e, $18                                      ;; 07:531e ??
    db   $09, $31                                      ;; 07:5320 ??
    db   $09, $32                                      ;; 07:5322 ??
    db   $09, $33                                      ;; 07:5324 ??
    db   $09, $34                                      ;; 07:5326 ??
    db   $09, $35                                      ;; 07:5328 ??
    db   $09, $45                                      ;; 07:532a ??
    db   $09, $46                                      ;; 07:532c ??
    db   $09, $47                                      ;; 07:532e ??
    db   $09, $48                                      ;; 07:5330 ??
    db   $5e, $61                                      ;; 07:5332 ??
    db   $ff, $ff                                      ;; 07:5334 ??

map0d_room03_01_script:
    SCRIPT_IDX script_00b8                             ;; 07:5336 $b8 $00
    db   $ff                                           ;; 07:5338 $ff

map0d_room03_01_tiles:
    db   $01, $02, $02, $02                            ;; 07:5339 ????
    db   $22, $57                                      ;; 07:533d ??
    db   $23, $58                                      ;; 07:533f ??
    db   $22, $66                                      ;; 07:5341 ??
    db   $23, $67                                      ;; 07:5343 ??
    db   $22, $68                                      ;; 07:5345 ??
    db   $ff, $ff                                      ;; 07:5347 ??

map0d_room04_01_script:
    SCRIPT_IDX script_00a6                             ;; 07:5349 $a6 $00
    db   $ff                                           ;; 07:534b $ff

map0d_room04_01_tiles:
    db   $01, $01, $01, $02                            ;; 07:534c ????
    db   $16, $23                                      ;; 07:5350 ??
    db   $01, $24                                      ;; 07:5352 ??
    db   $04, $25                                      ;; 07:5354 ??
    db   $05, $26                                      ;; 07:5356 ??
    db   $10, $33                                      ;; 07:5358 ??
    db   $22, $34                                      ;; 07:535a ??
    db   $23, $35                                      ;; 07:535c ??
    db   $15, $36                                      ;; 07:535e ??
    db   $40, $43                                      ;; 07:5360 ??
    db   $23, $44                                      ;; 07:5362 ??
    db   $22, $45                                      ;; 07:5364 ??
    db   $45, $46                                      ;; 07:5366 ??
    db   $50, $53                                      ;; 07:5368 ??
    db   $51, $54                                      ;; 07:536a ??
    db   $54, $55                                      ;; 07:536c ??
    db   $55, $56                                      ;; 07:536e ??
    db   $ff, $ff                                      ;; 07:5370 ??

map0d_room05_01_script:
    SCRIPT_IDX script_00a9                             ;; 07:5372 $a9 $00
    db   $ff                                           ;; 07:5374 $ff

map0d_room05_01_tiles:
    db   $02, $01, $00, $02                            ;; 07:5375 ????
    db   $04, $21                                      ;; 07:5379 ??
    db   $04, $22                                      ;; 07:537b ??
    db   $04, $23                                      ;; 07:537d ??
    db   $04, $24                                      ;; 07:537f ??
    db   $04, $25                                      ;; 07:5381 ??
    db   $04, $26                                      ;; 07:5383 ??
    db   $05, $27                                      ;; 07:5385 ??
    db   $15, $37                                      ;; 07:5387 ??
    db   $45, $47                                      ;; 07:5389 ??
    db   $54, $51                                      ;; 07:538b ??
    db   $54, $52                                      ;; 07:538d ??
    db   $5d, $53                                      ;; 07:538f ??
    db   $54, $54                                      ;; 07:5391 ??
    db   $54, $55                                      ;; 07:5393 ??
    db   $54, $56                                      ;; 07:5395 ??
    db   $55, $57                                      ;; 07:5397 ??
    db   $ff, $ff                                      ;; 07:5399 ??

map0d_room06_01_script:
    SCRIPT_IDX script_009d                             ;; 07:539b $9d $00
    db   $ff                                           ;; 07:539d $ff

map0d_room06_01_tiles:
    db   $01, $02, $05, $00                            ;; 07:539e ????
    db   $22, $22                                      ;; 07:53a2 ??
    db   $23, $23                                      ;; 07:53a4 ??
    db   $22, $26                                      ;; 07:53a6 ??
    db   $23, $27                                      ;; 07:53a8 ??
    db   $23, $32                                      ;; 07:53aa ??
    db   $22, $37                                      ;; 07:53ac ??
    db   $22, $42                                      ;; 07:53ae ??
    db   $23, $47                                      ;; 07:53b0 ??
    db   $23, $52                                      ;; 07:53b2 ??
    db   $22, $53                                      ;; 07:53b4 ??
    db   $23, $56                                      ;; 07:53b6 ??
    db   $22, $57                                      ;; 07:53b8 ??
    db   $ff, $ff                                      ;; 07:53ba ??

map0d_room07_01_script:
    SCRIPT_IDX script_00b8                             ;; 07:53bc $b8 $00
    db   $ff                                           ;; 07:53be $ff

map0d_room07_01_tiles:
    db   $02, $05, $02, $00                            ;; 07:53bf ????
    db   $5a, $12                                      ;; 07:53c3 ??
    db   $5a, $26                                      ;; 07:53c5 ??
    db   $5a, $32                                      ;; 07:53c7 ??
    db   $5a, $42                                      ;; 07:53c9 ??
    db   $5a, $56                                      ;; 07:53cb ??
    db   $5a, $62                                      ;; 07:53cd ??
    db   $ff, $ff                                      ;; 07:53cf ??

map0d_room00_02_script:
    SCRIPT_IDX script_00b5                             ;; 07:53d1 $b5 $00
    db   $ff                                           ;; 07:53d3 $ff

map0d_room00_02_tiles:
    db   $01, $02, $02, $00                            ;; 07:53d4 ????
    db   $41, $28                                      ;; 07:53d8 ??
    db   $41, $37                                      ;; 07:53da ??
    db   $41, $38                                      ;; 07:53dc ??
    db   $41, $61                                      ;; 07:53de ??
    db   $41, $62                                      ;; 07:53e0 ??
    db   $41, $68                                      ;; 07:53e2 ??
    db   $ff, $ff                                      ;; 07:53e4 ??

map0d_room01_02_script:
    SCRIPT_IDX script_00b2                             ;; 07:53e6 $b2 $00
    db   $ff                                           ;; 07:53e8 $ff

map0d_room01_02_tiles:
    db   $00, $05, $02, $02                            ;; 07:53e9 ????
    db   $0b, $11                                      ;; 07:53ed ??
    db   $0b, $12                                      ;; 07:53ef ??
    db   $0b, $13                                      ;; 07:53f1 ??
    db   $0b, $14                                      ;; 07:53f3 ??
    db   $0b, $15                                      ;; 07:53f5 ??
    db   $0b, $16                                      ;; 07:53f7 ??
    db   $0b, $17                                      ;; 07:53f9 ??
    db   $0b, $18                                      ;; 07:53fb ??
    db   $0b, $61                                      ;; 07:53fd ??
    db   $0b, $62                                      ;; 07:53ff ??
    db   $0b, $63                                      ;; 07:5401 ??
    db   $0b, $64                                      ;; 07:5403 ??
    db   $0b, $65                                      ;; 07:5405 ??
    db   $0b, $66                                      ;; 07:5407 ??
    db   $0b, $67                                      ;; 07:5409 ??
    db   $0b, $68                                      ;; 07:540b ??
    db   $ff, $ff                                      ;; 07:540d ??

map0d_room02_02_script:
    SCRIPT_IDX script_03df                             ;; 07:540f $df $03
    db   $ff                                           ;; 07:5411 $ff

map0d_room02_02_tiles:
    db   $02, $00, $02, $00                            ;; 07:5412 ????
    db   $19, $11                                      ;; 07:5416 ??
    db   $4f, $12                                      ;; 07:5418 ??
    db   $19, $13                                      ;; 07:541a ??
    db   $19, $16                                      ;; 07:541c ??
    db   $4f, $17                                      ;; 07:541e ??
    db   $19, $18                                      ;; 07:5420 ??
    db   $58, $23                                      ;; 07:5422 ??
    db   $58, $26                                      ;; 07:5424 ??
    db   $4f, $34                                      ;; 07:5426 ??
    db   $4f, $35                                      ;; 07:5428 ??
    db   $4f, $44                                      ;; 07:542a ??
    db   $4f, $45                                      ;; 07:542c ??
    db   $59, $53                                      ;; 07:542e ??
    db   $59, $56                                      ;; 07:5430 ??
    db   $4f, $62                                      ;; 07:5432 ??
    db   $4f, $67                                      ;; 07:5434 ??
    db   $ff, $ff                                      ;; 07:5436 ??

map0d_room03_02_script:
    SCRIPT_IDX script_007f                             ;; 07:5438 $7f $00
    SCRIPT_AT_POS 6, 8, script_036d                    ;; 07:543a $68 $6d $03
    db   $ff                                           ;; 07:543d $ff

map0d_room03_02_tiles:
    db   $02, $02, $02, $01                            ;; 07:543e ????
    db   $41, $25                                      ;; 07:5442 ??
    db   $41, $28                                      ;; 07:5444 ??
    db   $41, $52                                      ;; 07:5446 ??
    db   $11, $68                                      ;; 07:5448 ??
    db   $ff, $ff                                      ;; 07:544a ??

map0d_room04_02_script:
    SCRIPT_IDX script_00b8                             ;; 07:544c $b8 $00
    db   $ff                                           ;; 07:544e $ff

map0d_room04_02_tiles:
    db   $01, $02, $02, $00                            ;; 07:544f ????
    db   $41, $25                                      ;; 07:5453 ??
    db   $41, $44                                      ;; 07:5455 ??
    db   $41, $52                                      ;; 07:5457 ??
    db   $ff, $ff                                      ;; 07:5459 ??

map0d_room05_02_script:
    SCRIPT_IDX script_00b8                             ;; 07:545b $b8 $00
    db   $ff                                           ;; 07:545d $ff

map0d_room05_02_tiles:
    db   $00, $00, $02, $02                            ;; 07:545e ????
    db   $22, $24                                      ;; 07:5462 ??
    db   $23, $25                                      ;; 07:5464 ??
    db   $22, $33                                      ;; 07:5466 ??
    db   $23, $34                                      ;; 07:5468 ??
    db   $22, $35                                      ;; 07:546a ??
    db   $23, $36                                      ;; 07:546c ??
    db   $23, $43                                      ;; 07:546e ??
    db   $22, $44                                      ;; 07:5470 ??
    db   $23, $45                                      ;; 07:5472 ??
    db   $22, $46                                      ;; 07:5474 ??
    db   $23, $54                                      ;; 07:5476 ??
    db   $22, $55                                      ;; 07:5478 ??
    db   $ff, $ff                                      ;; 07:547a ??

map0d_room06_02_script:
    SCRIPT_IDX script_0091                             ;; 07:547c $91 $00
    db   $ff                                           ;; 07:547e $ff

map0d_room06_02_tiles:
    db   $00, $00, $00, $01                            ;; 07:547f ????
    db   $23, $11                                      ;; 07:5483 ??
    db   $22, $12                                      ;; 07:5485 ??
    db   $23, $17                                      ;; 07:5487 ??
    db   $22, $18                                      ;; 07:5489 ??
    db   $22, $21                                      ;; 07:548b ??
    db   $23, $28                                      ;; 07:548d ??
    db   $23, $51                                      ;; 07:548f ??
    db   $22, $58                                      ;; 07:5491 ??
    db   $22, $61                                      ;; 07:5493 ??
    db   $23, $62                                      ;; 07:5495 ??
    db   $22, $67                                      ;; 07:5497 ??
    db   $23, $68                                      ;; 07:5499 ??
    db   $ff, $ff                                      ;; 07:549b ??

map0d_room07_02_script:
    SCRIPT_IDX script_00a9                             ;; 07:549d $a9 $00
    db   $ff                                           ;; 07:549f $ff

map0d_room07_02_tiles:
    db   $02, $00, $00, $02                            ;; 07:54a0 ????
    db   $23, $12                                      ;; 07:54a4 ??
    db   $22, $13                                      ;; 07:54a6 ??
    db   $23, $16                                      ;; 07:54a8 ??
    db   $22, $17                                      ;; 07:54aa ??
    db   $23, $23                                      ;; 07:54ac ??
    db   $22, $26                                      ;; 07:54ae ??
    db   $22, $53                                      ;; 07:54b0 ??
    db   $23, $56                                      ;; 07:54b2 ??
    db   $22, $62                                      ;; 07:54b4 ??
    db   $23, $63                                      ;; 07:54b6 ??
    db   $22, $66                                      ;; 07:54b8 ??
    db   $23, $67                                      ;; 07:54ba ??
    db   $ff, $ff                                      ;; 07:54bc ??

map0d_room00_03_script:
    SCRIPT_IDX script_0070                             ;; 07:54be $70 $00
    db   $ff                                           ;; 07:54c0 $ff

map0d_room00_03_tiles:
    db   $01, $02, $00, $02                            ;; 07:54c1 ????
    db   $41, $25                                      ;; 07:54c5 ??
    db   $41, $27                                      ;; 07:54c7 ??
    db   $41, $47                                      ;; 07:54c9 ??
    db   $41, $52                                      ;; 07:54cb ??
    db   $ff, $ff                                      ;; 07:54cd ??

map0d_room01_03_script:
    SCRIPT_IDX script_00b2                             ;; 07:54cf $b2 $00
    db   $ff                                           ;; 07:54d1 $ff

map0d_room01_03_tiles:
    db   $01, $01, $02, $01                            ;; 07:54d2 ????
    db   $5c, $22                                      ;; 07:54d6 ??
    db   $2c, $24                                      ;; 07:54d8 ??
    db   $5c, $25                                      ;; 07:54da ??
    db   $2c, $27                                      ;; 07:54dc ??
    db   $5c, $32                                      ;; 07:54de ??
    db   $5c, $47                                      ;; 07:54e0 ??
    db   $2c, $52                                      ;; 07:54e2 ??
    db   $5c, $54                                      ;; 07:54e4 ??
    db   $2c, $55                                      ;; 07:54e6 ??
    db   $5c, $57                                      ;; 07:54e8 ??
    db   $ff, $ff                                      ;; 07:54ea ??

map0d_room02_03_script:
    SCRIPT_IDX script_00b5                             ;; 07:54ec $b5 $00
    db   $ff                                           ;; 07:54ee $ff

map0d_room02_03_tiles:
    db   $01, $01, $00, $02                            ;; 07:54ef ????
    db   $57, $13                                      ;; 07:54f3 ??
    db   $58, $22                                      ;; 07:54f5 ??
    db   $58, $23                                      ;; 07:54f7 ??
    db   $58, $24                                      ;; 07:54f9 ??
    db   $58, $25                                      ;; 07:54fb ??
    db   $58, $26                                      ;; 07:54fd ??
    db   $57, $27                                      ;; 07:54ff ??
    db   $57, $37                                      ;; 07:5501 ??
    db   $57, $47                                      ;; 07:5503 ??
    db   $59, $57                                      ;; 07:5505 ??
    db   $58, $67                                      ;; 07:5507 ??
    db   $ff, $ff                                      ;; 07:5509 ??

map0d_room03_03_script:
    SCRIPT_IDX script_0070                             ;; 07:550b $70 $00
    db   $ff                                           ;; 07:550d $ff

map0d_room03_03_tiles:
    db   $02, $01, $05, $02                            ;; 07:550e ????
    db   $44, $18                                      ;; 07:5512 ??
    db   $ff, $ff                                      ;; 07:5514 ??

map0d_room04_03_script:
    SCRIPT_IDX script_009d                             ;; 07:5516 $9d $00
    SCRIPT_AT_POS 1, 8, script_0378                    ;; 07:5518 $18 $78 $03
    db   $ff                                           ;; 07:551b $ff

map0d_room04_03_tiles:
    db   $00, $02, $00, $02                            ;; 07:551c ????
    db   $11, $18                                      ;; 07:5520 ??
    db   $5a, $22                                      ;; 07:5522 ??
    db   $5a, $27                                      ;; 07:5524 ??
    db   $5a, $33                                      ;; 07:5526 ??
    db   $5a, $36                                      ;; 07:5528 ??
    db   $5a, $43                                      ;; 07:552a ??
    db   $5a, $46                                      ;; 07:552c ??
    db   $5a, $52                                      ;; 07:552e ??
    db   $5a, $57                                      ;; 07:5530 ??
    db   $ff, $ff                                      ;; 07:5532 ??

map0d_room05_03_script:
    SCRIPT_IDX script_00b8                             ;; 07:5534 $b8 $00
    db   $ff                                           ;; 07:5536 $ff

map0d_room05_03_tiles:
    db   $02, $00, $02, $02                            ;; 07:5537 ????
    db   $22, $14                                      ;; 07:553b ??
    db   $23, $15                                      ;; 07:553d ??
    db   $23, $64                                      ;; 07:553f ??
    db   $22, $65                                      ;; 07:5541 ??
    db   $ff, $ff                                      ;; 07:5543 ??

map0d_room06_03_script:
    SCRIPT_IDX script_00b8                             ;; 07:5545 $b8 $00
    db   $ff                                           ;; 07:5547 $ff

map0d_room06_03_tiles:
    db   $05, $02, $01, $00                            ;; 07:5548 ????
    db   $5a, $11                                      ;; 07:554c ??
    db   $5a, $18                                      ;; 07:554e ??
    db   $5a, $32                                      ;; 07:5550 ??
    db   $5a, $37                                      ;; 07:5552 ??
    db   $5a, $44                                      ;; 07:5554 ??
    db   $5a, $45                                      ;; 07:5556 ??
    db   $ff, $ff                                      ;; 07:5558 ??

map0d_room07_03_script:
    SCRIPT_IDX script_009a                             ;; 07:555a $9a $00
    SCRIPT_AT_POS 6, 8, script_0379                    ;; 07:555c $68 $79 $03
    db   $ff                                           ;; 07:555f $ff

map0d_room07_03_tiles:
    db   $02, $05, $02, $02                            ;; 07:5560 ????
    db   $2c, $11                                      ;; 07:5564 ??
    db   $2c, $18                                      ;; 07:5566 ??
    db   $0c, $33                                      ;; 07:5568 ??
    db   $0c, $36                                      ;; 07:556a ??
    db   $1c, $43                                      ;; 07:556c ??
    db   $1c, $46                                      ;; 07:556e ??
    db   $2c, $61                                      ;; 07:5570 ??
    db   $6a, $68                                      ;; 07:5572 ??
    db   $ff, $ff                                      ;; 07:5574 ??

map0d_room00_04_script:
    SCRIPT_IDX script_00b5                             ;; 07:5576 $b5 $00
    db   $ff                                           ;; 07:5578 $ff

map0d_room00_04_tiles:
    db   $00, $02, $02, $02                            ;; 07:5579 ????
    db   $16, $11                                      ;; 07:557d ??
    db   $01, $12                                      ;; 07:557f ??
    db   $05, $13                                      ;; 07:5581 ??
    db   $10, $21                                      ;; 07:5583 ??
    db   $07, $22                                      ;; 07:5585 ??
    db   $15, $23                                      ;; 07:5587 ??
    db   $10, $31                                      ;; 07:5589 ??
    db   $07, $32                                      ;; 07:558b ??
    db   $15, $33                                      ;; 07:558d ??
    db   $57, $34                                      ;; 07:558f ??
    db   $58, $35                                      ;; 07:5591 ??
    db   $58, $36                                      ;; 07:5593 ??
    db   $58, $37                                      ;; 07:5595 ??
    db   $58, $38                                      ;; 07:5597 ??
    db   $58, $39                                      ;; 07:5599 ??
    db   $40, $41                                      ;; 07:559b ??
    db   $07, $42                                      ;; 07:559d ??
    db   $45, $43                                      ;; 07:559f ??
    db   $59, $44                                      ;; 07:55a1 ??
    db   $59, $45                                      ;; 07:55a3 ??
    db   $59, $46                                      ;; 07:55a5 ??
    db   $59, $47                                      ;; 07:55a7 ??
    db   $59, $48                                      ;; 07:55a9 ??
    db   $59, $49                                      ;; 07:55ab ??
    db   $40, $51                                      ;; 07:55ad ??
    db   $07, $52                                      ;; 07:55af ??
    db   $45, $53                                      ;; 07:55b1 ??
    db   $50, $61                                      ;; 07:55b3 ??
    db   $51, $62                                      ;; 07:55b5 ??
    db   $55, $63                                      ;; 07:55b7 ??
    db   $ff, $ff                                      ;; 07:55b9 ??

map0d_room01_04_script:
    SCRIPT_IDX script_00bb                             ;; 07:55bb $bb $00
    db   $ff                                           ;; 07:55bd $ff

map0d_room01_04_tiles:
    db   $00, $00, $05, $01                            ;; 07:55be ????
    db   $17, $20                                      ;; 07:55c2 ??
    db   $4f, $21                                      ;; 07:55c4 ??
    db   $1b, $29                                      ;; 07:55c6 ??
    db   $58, $30                                      ;; 07:55c8 ??
    db   $58, $31                                      ;; 07:55ca ??
    db   $4f, $37                                      ;; 07:55cc ??
    db   $56, $38                                      ;; 07:55ce ??
    db   $58, $39                                      ;; 07:55d0 ??
    db   $59, $40                                      ;; 07:55d2 ??
    db   $57, $41                                      ;; 07:55d4 ??
    db   $4f, $42                                      ;; 07:55d6 ??
    db   $4f, $47                                      ;; 07:55d8 ??
    db   $56, $48                                      ;; 07:55da ??
    db   $58, $49                                      ;; 07:55dc ??
    db   $37, $50                                      ;; 07:55de ??
    db   $3b, $59                                      ;; 07:55e0 ??
    db   $ff, $ff                                      ;; 07:55e2 ??

map0d_room02_04_script:
    SCRIPT_IDX script_00bb                             ;; 07:55e4 $bb $00
    db   $ff                                           ;; 07:55e6 $ff

map0d_room02_04_tiles:
    db   $02, $00, $02, $00                            ;; 07:55e7 ????
    db   $4f, $13                                      ;; 07:55eb ??
    db   $4f, $14                                      ;; 07:55ed ??
    db   $17, $20                                      ;; 07:55ef ??
    db   $59, $24                                      ;; 07:55f1 ??
    db   $58, $30                                      ;; 07:55f3 ??
    db   $56, $34                                      ;; 07:55f5 ??
    db   $58, $40                                      ;; 07:55f7 ??
    db   $4f, $41                                      ;; 07:55f9 ??
    db   $56, $44                                      ;; 07:55fb ??
    db   $37, $50                                      ;; 07:55fd ??
    db   $56, $54                                      ;; 07:55ff ??
    db   $5e, $62                                      ;; 07:5601 ??
    db   $56, $64                                      ;; 07:5603 ??
    db   $58, $65                                      ;; 07:5605 ??
    db   $48, $73                                      ;; 07:5607 ??
    db   $56, $74                                      ;; 07:5609 ??
    db   $56, $75                                      ;; 07:560b ??
    db   $4a, $76                                      ;; 07:560d ??
    db   $ff, $ff                                      ;; 07:560f ??

map0d_room03_04_script:
    dw   $ffff                                         ;; 07:5611 $ff $ff
    db   $ff                                           ;; 07:5613 $ff

map0d_room03_04_tiles:
    db   $00, $00, $00, $00                            ;; 07:5614 ????
    db   $ff, $ff                                      ;; 07:5618 ??

map0d_room04_04_script:
    dw   $ffff                                         ;; 07:561a $ff $ff
    db   $ff                                           ;; 07:561c $ff

map0d_room04_04_tiles:
    db   $00, $00, $00, $00                            ;; 07:561d ????
    db   $ff, $ff                                      ;; 07:5621 ??

map0d_room05_04_script:
    SCRIPT_IDX script_00b8                             ;; 07:5623 $b8 $00
    SCRIPT_AT_POS 1, 8, script_02c1                    ;; 07:5625 $18 $c1 $02
    db   $ff                                           ;; 07:5628 $ff

map0d_room05_04_tiles:
    db   $02, $02, $02, $00                            ;; 07:5629 ????
    db   $11, $18                                      ;; 07:562d ??
    db   $2a, $21                                      ;; 07:562f ??
    db   $2a, $23                                      ;; 07:5631 ??
    db   $2a, $24                                      ;; 07:5633 ??
    db   $2a, $25                                      ;; 07:5635 ??
    db   $2a, $26                                      ;; 07:5637 ??
    db   $2a, $27                                      ;; 07:5639 ??
    db   $2a, $28                                      ;; 07:563b ??
    db   $ff, $ff                                      ;; 07:563d ??

map0d_room06_04_script:
    SCRIPT_IDX script_03e5                             ;; 07:563f $e5 $03
    db   $ff                                           ;; 07:5641 $ff

map0d_room06_04_tiles:
    db   $02, $02, $00, $02                            ;; 07:5642 ????
    db   $44, $11                                      ;; 07:5646 ??
    db   $44, $12                                      ;; 07:5648 ??
    db   $44, $17                                      ;; 07:564a ??
    db   $44, $18                                      ;; 07:564c ??
    db   $09, $32                                      ;; 07:564e ??
    db   $09, $34                                      ;; 07:5650 ??
    db   $09, $35                                      ;; 07:5652 ??
    db   $09, $37                                      ;; 07:5654 ??
    db   $09, $42                                      ;; 07:5656 ??
    db   $09, $44                                      ;; 07:5658 ??
    db   $09, $45                                      ;; 07:565a ??
    db   $09, $47                                      ;; 07:565c ??
    db   $09, $54                                      ;; 07:565e ??
    db   $09, $55                                      ;; 07:5660 ??
    db   $ff, $ff                                      ;; 07:5662 ??

map0d_room07_04_script:
    SCRIPT_IDX script_00b8                             ;; 07:5664 $b8 $00
    SCRIPT_AT_POS 1, 8, script_02c2                    ;; 07:5666 $18 $c2 $02
    db   $ff                                           ;; 07:5669 $ff

map0d_room07_04_tiles:
    db   $02, $02, $02, $00                            ;; 07:566a ????
    db   $11, $18                                      ;; 07:566e ??
    db   $2c, $34                                      ;; 07:5670 ??
    db   $2c, $45                                      ;; 07:5672 ??
    db   $2c, $56                                      ;; 07:5674 ??
    db   $2c, $66                                      ;; 07:5676 ??
    db   $ff, $ff                                      ;; 07:5678 ??

map0d_room00_05_script:
    SCRIPT_IDX script_0040                             ;; 07:567a $40 $00
    SCRIPT_AT_POS 1, 8, script_039d                    ;; 07:567c $18 $9d $03
    db   $ff                                           ;; 07:567f $ff

map0d_room00_05_tiles:
    db   $02, $02, $02, $00                            ;; 07:5680 ....
    db   $44, $11                                      ;; 07:5684 ..
    db   $5b, $16                                      ;; 07:5686 ..
    db   $5b, $17                                      ;; 07:5688 ..
    db   $11, $18                                      ;; 07:568a ..
    db   $5b, $27                                      ;; 07:568c ..
    db   $5b, $28                                      ;; 07:568e ..
    db   $2c, $33                                      ;; 07:5690 ..
    db   $2c, $48                                      ;; 07:5692 ..
    db   $5b, $51                                      ;; 07:5694 ..
    db   $2c, $56                                      ;; 07:5696 ..
    db   $2c, $57                                      ;; 07:5698 ..
    db   $5b, $61                                      ;; 07:569a ..
    db   $5b, $62                                      ;; 07:569c ..
    db   $2c, $64                                      ;; 07:569e ..
    db   $2c, $65                                      ;; 07:56a0 ..
    db   $2c, $66                                      ;; 07:56a2 ..
    db   $ff, $ff                                      ;; 07:56a4 .?

map0d_room01_05_script:
    SCRIPT_IDX script_03fd                             ;; 07:56a6 $fd $03
    SCRIPT_AT_POS 1, 8, script_050b                    ;; 07:56a8 $18 $0b $05
    db   $ff                                           ;; 07:56ab $ff

map0d_room01_05_tiles:
    db   $09, $02, $02, $00                            ;; 07:56ac ????
    db   $59, $11                                      ;; 07:56b0 ??
    db   $59, $12                                      ;; 07:56b2 ??
    db   $57, $13                                      ;; 07:56b4 ??
    db   $59, $14                                      ;; 07:56b6 ??
    db   $57, $15                                      ;; 07:56b8 ??
    db   $4f, $16                                      ;; 07:56ba ??
    db   $4e, $18                                      ;; 07:56bc ??
    db   $56, $21                                      ;; 07:56be ??
    db   $58, $22                                      ;; 07:56c0 ??
    db   $59, $23                                      ;; 07:56c2 ??
    db   $56, $24                                      ;; 07:56c4 ??
    db   $59, $25                                      ;; 07:56c6 ??
    db   $57, $26                                      ;; 07:56c8 ??
    db   $59, $31                                      ;; 07:56ca ??
    db   $56, $32                                      ;; 07:56cc ??
    db   $57, $33                                      ;; 07:56ce ??
    db   $58, $34                                      ;; 07:56d0 ??
    db   $58, $35                                      ;; 07:56d2 ??
    db   $59, $36                                      ;; 07:56d4 ??
    db   $59, $37                                      ;; 07:56d6 ??
    db   $56, $41                                      ;; 07:56d8 ??
    db   $58, $42                                      ;; 07:56da ??
    db   $58, $43                                      ;; 07:56dc ??
    db   $56, $45                                      ;; 07:56de ??
    db   $4f, $46                                      ;; 07:56e0 ??
    db   $4f, $47                                      ;; 07:56e2 ??
    db   $4f, $51                                      ;; 07:56e4 ??
    db   $4f, $52                                      ;; 07:56e6 ??
    db   $4f, $53                                      ;; 07:56e8 ??
    db   $4f, $54                                      ;; 07:56ea ??
    db   $4f, $55                                      ;; 07:56ec ??
    db   $4f, $56                                      ;; 07:56ee ??
    db   $ff, $ff                                      ;; 07:56f0 ??

map0d_room02_05_script:
    SCRIPT_IDX script_00b5                             ;; 07:56f2 $b5 $00
    db   $ff                                           ;; 07:56f4 $ff

map0d_room02_05_tiles:
    db   $02, $01, $00, $02                            ;; 07:56f5 ????
    db   $08, $03                                      ;; 07:56f9 ??
    db   $56, $04                                      ;; 07:56fb ??
    db   $56, $05                                      ;; 07:56fd ??
    db   $0a, $06                                      ;; 07:56ff ??
    db   $56, $14                                      ;; 07:5701 ??
    db   $56, $15                                      ;; 07:5703 ??
    db   $4f, $16                                      ;; 07:5705 ??
    db   $4f, $17                                      ;; 07:5707 ??
    db   $09, $21                                      ;; 07:5709 ??
    db   $09, $22                                      ;; 07:570b ??
    db   $4f, $25                                      ;; 07:570d ??
    db   $09, $32                                      ;; 07:570f ??
    db   $09, $42                                      ;; 07:5711 ??
    db   $09, $43                                      ;; 07:5713 ??
    db   $09, $44                                      ;; 07:5715 ??
    db   $09, $45                                      ;; 07:5717 ??
    db   $09, $55                                      ;; 07:5719 ??
    db   $09, $65                                      ;; 07:571b ??
    db   $5e, $68                                      ;; 07:571d ??
    db   $ff, $ff                                      ;; 07:571f ??

map0d_room03_05_script:
    dw   $ffff                                         ;; 07:5721 $ff $ff
    db   $ff                                           ;; 07:5723 $ff

map0d_room03_05_tiles:
    db   $00, $00, $00, $00                            ;; 07:5724 ????
    db   $ff, $ff                                      ;; 07:5728 ??

map0d_room04_05_script:
    dw   $ffff                                         ;; 07:572a $ff $ff
    db   $ff                                           ;; 07:572c $ff

map0d_room04_05_tiles:
    db   $00, $00, $00, $00                            ;; 07:572d ????
    db   $ff, $ff                                      ;; 07:5731 ??

map0d_room05_05_script:
    SCRIPT_IDX script_00b8                             ;; 07:5733 $b8 $00
    db   $ff                                           ;; 07:5735 $ff

map0d_room05_05_tiles:
    db   $00, $02, $00, $02                            ;; 07:5736 ????
    db   $22, $16                                      ;; 07:573a ??
    db   $23, $26                                      ;; 07:573c ??
    db   $22, $36                                      ;; 07:573e ??
    db   $23, $46                                      ;; 07:5740 ??
    db   $22, $66                                      ;; 07:5742 ??
    db   $ff, $ff                                      ;; 07:5744 ??

map0d_room06_05_script:
    SCRIPT_IDX script_00b8                             ;; 07:5746 $b8 $00
    db   $ff                                           ;; 07:5748 $ff

map0d_room06_05_tiles:
    db   $00, $00, $02, $02                            ;; 07:5749 ????
    db   $22, $34                                      ;; 07:574d ??
    db   $23, $35                                      ;; 07:574f ??
    db   $23, $44                                      ;; 07:5751 ??
    db   $22, $45                                      ;; 07:5753 ??
    db   $ff, $ff                                      ;; 07:5755 ??

map0d_room07_05_script:
    SCRIPT_IDX script_00b8                             ;; 07:5757 $b8 $00
    db   $ff                                           ;; 07:5759 $ff

map0d_room07_05_tiles:
    db   $02, $00, $00, $02                            ;; 07:575a ????
    db   $2c, $13                                      ;; 07:575e ??
    db   $2c, $23                                      ;; 07:5760 ??
    db   $2c, $34                                      ;; 07:5762 ??
    db   $2c, $35                                      ;; 07:5764 ??
    db   $2c, $42                                      ;; 07:5766 ??
    db   $2c, $51                                      ;; 07:5768 ??
    db   $ff, $ff                                      ;; 07:576a ??

map0d_room00_06_script:
    SCRIPT_IDX script_0040                             ;; 07:576c $40 $00
    db   $ff                                           ;; 07:576e $ff

map0d_room00_06_tiles:
    db   $02, $02, $00, $00                            ;; 07:576f ....
    db   $16, $31                                      ;; 07:5773 ..
    db   $01, $32                                      ;; 07:5775 ..
    db   $2b, $33                                      ;; 07:5777 ..
    db   $01, $34                                      ;; 07:5779 ..
    db   $04, $35                                      ;; 07:577b ..
    db   $04, $36                                      ;; 07:577d ..
    db   $04, $37                                      ;; 07:577f ..
    db   $05, $38                                      ;; 07:5781 ..
    db   $10, $41                                      ;; 07:5783 ..
    db   $0b, $42                                      ;; 07:5785 ..
    db   $2b, $43                                      ;; 07:5787 ..
    db   $0b, $44                                      ;; 07:5789 ..
    db   $0b, $45                                      ;; 07:578b ..
    db   $0b, $46                                      ;; 07:578d ..
    db   $0b, $47                                      ;; 07:578f ..
    db   $15, $48                                      ;; 07:5791 ..
    db   $50, $51                                      ;; 07:5793 ..
    db   $51, $52                                      ;; 07:5795 ..
    db   $2b, $53                                      ;; 07:5797 ..
    db   $51, $54                                      ;; 07:5799 ..
    db   $54, $55                                      ;; 07:579b ..
    db   $54, $56                                      ;; 07:579d ..
    db   $54, $57                                      ;; 07:579f ..
    db   $55, $58                                      ;; 07:57a1 ..
    db   $ff, $ff                                      ;; 07:57a3 .?

map0d_room01_06_script:
    SCRIPT_IDX script_00b5                             ;; 07:57a5 $b5 $00
    db   $ff                                           ;; 07:57a7 $ff

map0d_room01_06_tiles:
    db   $02, $02, $00, $00                            ;; 07:57a8 ????
    db   $59, $13                                      ;; 07:57ac ??
    db   $59, $16                                      ;; 07:57ae ??
    db   $57, $23                                      ;; 07:57b0 ??
    db   $57, $26                                      ;; 07:57b2 ??
    db   $4f, $34                                      ;; 07:57b4 ??
    db   $4f, $35                                      ;; 07:57b6 ??
    db   $4f, $44                                      ;; 07:57b8 ??
    db   $4f, $45                                      ;; 07:57ba ??
    db   $58, $53                                      ;; 07:57bc ??
    db   $58, $56                                      ;; 07:57be ??
    db   $56, $63                                      ;; 07:57c0 ??
    db   $56, $66                                      ;; 07:57c2 ??
    db   $ff, $ff                                      ;; 07:57c4 ??

map0d_room02_06_script:
    dw   $ffff                                         ;; 07:57c6 $ff $ff
    db   $ff                                           ;; 07:57c8 $ff

map0d_room02_06_tiles:
    db   $00, $00, $00, $00                            ;; 07:57c9 ????
    db   $ff, $ff                                      ;; 07:57cd ??

map0d_room03_06_script:
    dw   $ffff                                         ;; 07:57cf $ff $ff
    db   $ff                                           ;; 07:57d1 $ff

map0d_room03_06_tiles:
    db   $00, $00, $00, $00                            ;; 07:57d2 ????
    db   $ff, $ff                                      ;; 07:57d6 ??

map0d_room04_06_script:
    SCRIPT_IDX script_009d                             ;; 07:57d8 $9d $00
    db   $ff                                           ;; 07:57da $ff

map0d_room04_06_tiles:
    db   $01, $02, $02, $01                            ;; 07:57db ????
    db   $4f, $23                                      ;; 07:57df ??
    db   $4f, $26                                      ;; 07:57e1 ??
    db   $4f, $32                                      ;; 07:57e3 ??
    db   $4f, $37                                      ;; 07:57e5 ??
    db   $ff, $ff                                      ;; 07:57e7 ??

map0d_room05_06_script:
    SCRIPT_IDX script_00a6                             ;; 07:57e9 $a6 $00
    db   $ff                                           ;; 07:57eb $ff

map0d_room05_06_tiles:
    db   $00, $01, $02, $02                            ;; 07:57ec ????
    db   $4f, $15                                      ;; 07:57f0 ??
    db   $5c, $21                                      ;; 07:57f2 ??
    db   $5c, $22                                      ;; 07:57f4 ??
    db   $5c, $24                                      ;; 07:57f6 ??
    db   $5c, $25                                      ;; 07:57f8 ??
    db   $5c, $27                                      ;; 07:57fa ??
    db   $5c, $28                                      ;; 07:57fc ??
    db   $5c, $32                                      ;; 07:57fe ??
    db   $4f, $34                                      ;; 07:5800 ??
    db   $5c, $35                                      ;; 07:5802 ??
    db   $4f, $37                                      ;; 07:5804 ??
    db   $4f, $42                                      ;; 07:5806 ??
    db   $5c, $44                                      ;; 07:5808 ??
    db   $4f, $45                                      ;; 07:580a ??
    db   $5c, $47                                      ;; 07:580c ??
    db   $5c, $51                                      ;; 07:580e ??
    db   $5c, $52                                      ;; 07:5810 ??
    db   $5c, $54                                      ;; 07:5812 ??
    db   $5c, $55                                      ;; 07:5814 ??
    db   $5c, $57                                      ;; 07:5816 ??
    db   $5c, $58                                      ;; 07:5818 ??
    db   $4f, $64                                      ;; 07:581a ??
    db   $ff, $ff                                      ;; 07:581c ??

map0d_room06_06_script:
    SCRIPT_IDX script_00a0                             ;; 07:581e $a0 $00
    db   $ff                                           ;; 07:5820 $ff

map0d_room06_06_tiles:
    db   $02, $00, $02, $00                            ;; 07:5821 ????
    db   $2c, $26                                      ;; 07:5825 ??
    db   $2c, $34                                      ;; 07:5827 ??
    db   $2c, $35                                      ;; 07:5829 ??
    db   $2c, $43                                      ;; 07:582b ??
    db   $2c, $53                                      ;; 07:582d ??
    db   $2c, $62                                      ;; 07:582f ??
    db   $ff, $ff                                      ;; 07:5831 ??

map0d_room07_06_script:
    dw   $ffff                                         ;; 07:5833 $ff $ff
    db   $ff                                           ;; 07:5835 $ff

map0d_room07_06_tiles:
    db   $00, $00, $00, $00                            ;; 07:5836 ????
    db   $ff, $ff                                      ;; 07:583a ??

map0d_room00_07_script:
    SCRIPT_IDX script_0040                             ;; 07:583c $40 $00
    SCRIPT_AT_POS 6, 8, script_039e                    ;; 07:583e $68 $9e $03
    db   $ff                                           ;; 07:5841 $ff

map0d_room00_07_tiles:
    db   $02, $02, $00, $02                            ;; 07:5842 ....
    db   $5b, $11                                      ;; 07:5846 ..
    db   $5b, $12                                      ;; 07:5848 ..
    db   $2a, $17                                      ;; 07:584a ..
    db   $2a, $18                                      ;; 07:584c ..
    db   $5b, $21                                      ;; 07:584e ..
    db   $5b, $57                                      ;; 07:5850 ..
    db   $5b, $58                                      ;; 07:5852 ..
    db   $5b, $66                                      ;; 07:5854 ..
    db   $5b, $67                                      ;; 07:5856 ..
    db   $11, $68                                      ;; 07:5858 ..
    db   $ff, $ff                                      ;; 07:585a .?

map0d_room01_07_script:
    SCRIPT_IDX script_00b2                             ;; 07:585c $b2 $00
    SCRIPT_AT_POS 6, 8, script_03a7                    ;; 07:585e $68 $a7 $03
    db   $ff                                           ;; 07:5861 $ff

map0d_room01_07_tiles:
    db   $02, $02, $00, $02                            ;; 07:5862 ????
    db   $4f, $22                                      ;; 07:5866 ??
    db   $4f, $27                                      ;; 07:5868 ??
    db   $4f, $32                                      ;; 07:586a ??
    db   $4f, $37                                      ;; 07:586c ??
    db   $4f, $43                                      ;; 07:586e ??
    db   $4f, $46                                      ;; 07:5870 ??
    db   $11, $68                                      ;; 07:5872 ??
    db   $ff, $ff                                      ;; 07:5874 ??

map0d_room02_07_script:
    dw   $ffff                                         ;; 07:5876 $ff $ff
    db   $ff                                           ;; 07:5878 $ff

map0d_room02_07_tiles:
    db   $00, $00, $00, $00                            ;; 07:5879 ????
    db   $ff, $ff                                      ;; 07:587d ??

map0d_room03_07_script:
    SCRIPT_IDX script_0510                             ;; 07:587f $10 $05
    SCRIPT_AT_POS 6, 1, script_036a                    ;; 07:5881 $61 $6a $03
    db   $ff                                           ;; 07:5884 $ff

map0d_room03_07_tiles:
    db   $00, $02, $02, $02                            ;; 07:5885 ????
    db   $09, $12                                      ;; 07:5889 ??
    db   $09, $13                                      ;; 07:588b ??
    db   $09, $14                                      ;; 07:588d ??
    db   $09, $15                                      ;; 07:588f ??
    db   $09, $16                                      ;; 07:5891 ??
    db   $09, $17                                      ;; 07:5893 ??
    db   $09, $22                                      ;; 07:5895 ??
    db   $09, $23                                      ;; 07:5897 ??
    db   $09, $24                                      ;; 07:5899 ??
    db   $09, $25                                      ;; 07:589b ??
    db   $09, $26                                      ;; 07:589d ??
    db   $09, $27                                      ;; 07:589f ??
    db   $09, $34                                      ;; 07:58a1 ??
    db   $09, $35                                      ;; 07:58a3 ??
    db   $29, $44                                      ;; 07:58a5 ??
    db   $29, $45                                      ;; 07:58a7 ??
    db   $09, $53                                      ;; 07:58a9 ??
    db   $09, $54                                      ;; 07:58ab ??
    db   $09, $55                                      ;; 07:58ad ??
    db   $09, $56                                      ;; 07:58af ??
    db   $09, $62                                      ;; 07:58b1 ??
    db   $09, $63                                      ;; 07:58b3 ??
    db   $09, $64                                      ;; 07:58b5 ??
    db   $09, $65                                      ;; 07:58b7 ??
    db   $09, $66                                      ;; 07:58b9 ??
    db   $09, $67                                      ;; 07:58bb ??
    db   $ff, $ff                                      ;; 07:58bd ??

map0d_room04_07_script:
    SCRIPT_IDX script_0091                             ;; 07:58bf $91 $00
    db   $ff                                           ;; 07:58c1 $ff

map0d_room04_07_tiles:
    db   $02, $00, $01, $02                            ;; 07:58c2 ????
    db   $5c, $13                                      ;; 07:58c6 ??
    db   $5c, $23                                      ;; 07:58c8 ??
    db   $5c, $34                                      ;; 07:58ca ??
    db   $5c, $44                                      ;; 07:58cc ??
    db   $5c, $53                                      ;; 07:58ce ??
    db   $ff, $ff                                      ;; 07:58d0 ??

map0d_room05_07_script:
    SCRIPT_IDX script_00a0                             ;; 07:58d2 $a0 $00
    db   $ff                                           ;; 07:58d4 $ff

map0d_room05_07_tiles:
    db   $00, $02, $02, $02                            ;; 07:58d5 ????
    db   $4f, $21                                      ;; 07:58d9 ??
    db   $4f, $23                                      ;; 07:58db ??
    db   $4f, $26                                      ;; 07:58dd ??
    db   $4f, $51                                      ;; 07:58df ??
    db   $4f, $53                                      ;; 07:58e1 ??
    db   $4f, $56                                      ;; 07:58e3 ??
    db   $ff, $ff                                      ;; 07:58e5 ??

map0d_room06_07_script:
    SCRIPT_IDX script_03dc                             ;; 07:58e7 $dc $03
    db   $ff                                           ;; 07:58e9 $ff

map0d_room06_07_tiles:
    db   $00, $02, $00, $02                            ;; 07:58ea ????
    db   $19, $11                                      ;; 07:58ee ??
    db   $19, $21                                      ;; 07:58f0 ??
    db   $5c, $28                                      ;; 07:58f2 ??
    db   $5c, $37                                      ;; 07:58f4 ??
    db   $5c, $47                                      ;; 07:58f6 ??
    db   $19, $51                                      ;; 07:58f8 ??
    db   $5c, $55                                      ;; 07:58fa ??
    db   $5c, $56                                      ;; 07:58fc ??
    db   $19, $61                                      ;; 07:58fe ??
    db   $5c, $64                                      ;; 07:5900 ??
    db   $ff, $ff                                      ;; 07:5902 ??

map0d_room07_07_script:
    SCRIPT_IDX script_0097                             ;; 07:5904 $97 $00
    SCRIPT_AT_POS 6, 8, script_0398                    ;; 07:5906 $68 $98 $03
    db   $ff                                           ;; 07:5909 $ff

map0d_room07_07_tiles:
    db   $02, $00, $02, $02                            ;; 07:590a ????
    db   $19, $23                                      ;; 07:590e ??
    db   $19, $24                                      ;; 07:5910 ??
    db   $19, $25                                      ;; 07:5912 ??
    db   $19, $26                                      ;; 07:5914 ??
    db   $19, $33                                      ;; 07:5916 ??
    db   $09, $34                                      ;; 07:5918 ??
    db   $09, $35                                      ;; 07:591a ??
    db   $19, $36                                      ;; 07:591c ??
    db   $19, $43                                      ;; 07:591e ??
    db   $09, $44                                      ;; 07:5920 ??
    db   $09, $45                                      ;; 07:5922 ??
    db   $19, $46                                      ;; 07:5924 ??
    db   $19, $53                                      ;; 07:5926 ??
    db   $19, $54                                      ;; 07:5928 ??
    db   $19, $55                                      ;; 07:592a ??
    db   $19, $56                                      ;; 07:592c ??
    db   $11, $68                                      ;; 07:592e ??
    db   $ff, $ff                                      ;; 07:5930 ??
