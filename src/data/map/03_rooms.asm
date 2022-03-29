;; Disassembled with BadBoy Disassembler: https://github.com/daid/BadBoy



mapRoomPointers_03:
    db   $01, $04, $08, $08                            ;; 07:4000 ....
    dw   map03_room_tile_template                      ;; 07:4004 $1e $41
    ;;Door tile info
    db   $25, $35, $20, $30, $14, $03, $52, $53        ;; 07:4006 ??????..
    db   $24, $34, $21, $31, $12, $13, $42, $43        ;; 07:400e ????????
    db   $15, $45, $10, $40, $28, $04, $51, $54        ;; 07:4016 ......??
    ;;Room data pointers
    dw   map03_room00_00_script, map03_room00_00_tiles ;; 07:401e $4a $41 $4d $41
    dw   map03_room01_00_script, map03_room01_00_tiles ;; 07:4022 $71 $41 $77 $41
    dw   map03_room02_00_script, map03_room02_00_tiles ;; 07:4026 $93 $41 $9c $41
    dw   map03_room03_00_script, map03_room03_00_tiles ;; 07:402a $b0 $41 $b6 $41
    dw   map03_room04_00_script, map03_room04_00_tiles ;; 07:402e $e0 $41 $e3 $41
    dw   map03_room05_00_script, map03_room05_00_tiles ;; 07:4032 $0b $42 $11 $42
    dw   map03_room06_00_script, map03_room06_00_tiles ;; 07:4036 $27 $42 $2a $42
    dw   map03_room07_00_script, map03_room07_00_tiles ;; 07:403a $40 $42 $4c $42
    dw   map03_room00_01_script, map03_room00_01_tiles ;; 07:403e $6a $42 $6d $42
    dw   map03_room01_01_script, map03_room01_01_tiles ;; 07:4042 $97 $42 $9a $42
    dw   map03_room02_01_script, map03_room02_01_tiles ;; 07:4046 $b0 $42 $b3 $42
    dw   map03_room03_01_script, map03_room03_01_tiles ;; 07:404a $c9 $42 $cc $42
    dw   map03_room04_01_script, map03_room04_01_tiles ;; 07:404e $e2 $42 $e5 $42
    dw   map03_room05_01_script, map03_room05_01_tiles ;; 07:4052 $fb $42 $fe $42
    dw   map03_room06_01_script, map03_room06_01_tiles ;; 07:4056 $0c $43 $0f $43
    dw   map03_room07_01_script, map03_room07_01_tiles ;; 07:405a $23 $43 $26 $43
    dw   map03_room00_02_script, map03_room00_02_tiles ;; 07:405e $3c $43 $42 $43
    dw   map03_room01_02_script, map03_room01_02_tiles ;; 07:4062 $58 $43 $5b $43
    dw   map03_room02_02_script, map03_room02_02_tiles ;; 07:4066 $6f $43 $72 $43
    dw   map03_room03_02_script, map03_room03_02_tiles ;; 07:406a $84 $43 $8a $43
    dw   map03_room04_02_script, map03_room04_02_tiles ;; 07:406e $9e $43 $a1 $43
    dw   map03_room05_02_script, map03_room05_02_tiles ;; 07:4072 $c3 $43 $c9 $43
    dw   map03_room06_02_script, map03_room06_02_tiles ;; 07:4076 $d9 $43 $df $43
    dw   map03_room07_02_script, map03_room07_02_tiles ;; 07:407a $f1 $43 $f4 $43
    dw   map03_room00_03_script, map03_room00_03_tiles ;; 07:407e $02 $44 $05 $44
    dw   map03_room01_03_script, map03_room01_03_tiles ;; 07:4082 $1b $44 $1e $44
    dw   map03_room02_03_script, map03_room02_03_tiles ;; 07:4086 $3c $44 $3f $44
    dw   map03_room03_03_script, map03_room03_03_tiles ;; 07:408a $49 $44 $58 $44
    dw   map03_room04_03_script, map03_room04_03_tiles ;; 07:408e $6e $44 $7a $44
    dw   map03_room05_03_script, map03_room05_03_tiles ;; 07:4092 $9a $44 $a9 $44
    dw   map03_room06_03_script, map03_room06_03_tiles ;; 07:4096 $bf $44 $c2 $44
    dw   map03_room07_03_script, map03_room07_03_tiles ;; 07:409a $d8 $44 $db $44
    dw   map03_room00_04_script, map03_room00_04_tiles ;; 07:409e $eb $44 $f1 $44
    dw   map03_room01_04_script, map03_room01_04_tiles ;; 07:40a2 $01 $45 $04 $45
    dw   map03_room02_04_script, map03_room02_04_tiles ;; 07:40a6 $2a $45 $30 $45
    dw   map03_room03_04_script, map03_room03_04_tiles ;; 07:40aa $48 $45 $4b $45
    dw   map03_room04_04_script, map03_room04_04_tiles ;; 07:40ae $59 $45 $5c $45
    dw   map03_room05_04_script, map03_room05_04_tiles ;; 07:40b2 $72 $45 $75 $45
    dw   map03_room06_04_script, map03_room06_04_tiles ;; 07:40b6 $83 $45 $89 $45
    dw   map03_room07_04_script, map03_room07_04_tiles ;; 07:40ba $a9 $45 $ac $45
    dw   map03_room00_05_script, map03_room00_05_tiles ;; 07:40be $c2 $45 $c5 $45
    dw   map03_room01_05_script, map03_room01_05_tiles ;; 07:40c2 $db $45 $de $45
    dw   map03_room02_05_script, map03_room02_05_tiles ;; 07:40c6 $fc $45 $ff $45
    dw   map03_room03_05_script, map03_room03_05_tiles ;; 07:40ca $19 $46 $1f $46
    dw   map03_room04_05_script, map03_room04_05_tiles ;; 07:40ce $37 $46 $46 $46
    dw   map03_room05_05_script, map03_room05_05_tiles ;; 07:40d2 $5c $46 $62 $46
    dw   map03_room06_05_script, map03_room06_05_tiles ;; 07:40d6 $7a $46 $7d $46
    dw   map03_room07_05_script, map03_room07_05_tiles ;; 07:40da $93 $46 $96 $46
    dw   map03_room00_06_script, map03_room00_06_tiles ;; 07:40de $b2 $46 $bb $46
    dw   map03_room01_06_script, map03_room01_06_tiles ;; 07:40e2 $c5 $46 $c8 $46
    dw   map03_room02_06_script, map03_room02_06_tiles ;; 07:40e6 $ea $46 $f0 $46
    dw   map03_room03_06_script, map03_room03_06_tiles ;; 07:40ea $08 $47 $0b $47
    dw   map03_room04_06_script, map03_room04_06_tiles ;; 07:40ee $17 $47 $1a $47
    dw   map03_room05_06_script, map03_room05_06_tiles ;; 07:40f2 $4c $47 $4f $47
    dw   map03_room06_06_script, map03_room06_06_tiles ;; 07:40f6 $55 $47 $5b $47
    dw   map03_room07_06_script, map03_room07_06_tiles ;; 07:40fa $6f $47 $72 $47
    dw   map03_room00_07_script, map03_room00_07_tiles ;; 07:40fe $90 $47 $9f $47
    dw   map03_room01_07_script, map03_room01_07_tiles ;; 07:4102 $c3 $47 $c9 $47
    dw   map03_room02_07_script, map03_room02_07_tiles ;; 07:4106 $e1 $47 $e4 $47
    dw   map03_room03_07_script, map03_room03_07_tiles ;; 07:410a $fa $47 $fd $47
    dw   map03_room04_07_script, map03_room04_07_tiles ;; 07:410e $13 $48 $16 $48
    dw   map03_room05_07_script, map03_room05_07_tiles ;; 07:4112 $34 $48 $37 $48
    dw   map03_room06_07_script, map03_room06_07_tiles ;; 07:4116 $3d $48 $40 $48
    dw   map03_room07_07_script, map03_room07_07_tiles ;; 07:411a $56 $48 $59 $48

map03_room_tile_template:
    db   $06, $28, $28, $28, $14, $03, $04, $04, $04, $05 ;; 07:411e ..........
    db   $10,                $80,                $80, $15 ;; 07:4128 ....
    db   $10,                $80,                $80, $15 ;; 07:412c ....
    db   $20,                $80,                $80, $25 ;; 07:4130 ....
    db   $30,                $80,                $80, $35 ;; 07:4134 ....
    db   $40,                $80,                $80, $45 ;; 07:4138 ....
    db   $40,                $80,                $80, $45 ;; 07:413c ....
    db   $50, $51, $51, $51, $52, $53, $54, $54, $54, $55 ;; 07:4140 ..........

map03_room00_00_script:
    SCRIPT_IDX script_0522                             ;; 07:414a $22 $05
    db   $ff                                           ;; 07:414c $ff

map03_room00_00_tiles:
    db   $02, $02, $02, $0c                            ;; 07:414d ....
    db   $1d, $11                                      ;; 07:4151 ..
    db   $0f, $12                                      ;; 07:4153 ..
    db   $38, $13                                      ;; 07:4155 ..
    db   $1a, $17                                      ;; 07:4157 ..
    db   $1a, $18                                      ;; 07:4159 ..
    db   $38, $21                                      ;; 07:415b ..
    db   $1f, $22                                      ;; 07:415d ..
    db   $38, $23                                      ;; 07:415f ..
    db   $38, $31                                      ;; 07:4161 ..
    db   $38, $32                                      ;; 07:4163 ..
    db   $38, $33                                      ;; 07:4165 ..
    db   $16, $36                                      ;; 07:4167 ..
    db   $0d, $45                                      ;; 07:4169 ..
    db   $1d, $46                                      ;; 07:416b ..
    db   $0d, $47                                      ;; 07:416d ..
    db   $ff, $ff                                      ;; 07:416f .?

map03_room01_00_script:
    SCRIPT_IDX script_0085                             ;; 07:4171 $85 $00
    SCRIPT_AT_POS 1, 8, script_0303                    ;; 07:4173 $18 $03 $03
    db   $ff                                           ;; 07:4176 $ff

map03_room01_00_tiles:
    db   $02, $02, $02, $01                            ;; 07:4177 ????
    db   $11, $18                                      ;; 07:417b ??
    db   $2a, $31                                      ;; 07:417d ??
    db   $2a, $32                                      ;; 07:417f ??
    db   $2a, $33                                      ;; 07:4181 ??
    db   $2a, $36                                      ;; 07:4183 ??
    db   $2a, $37                                      ;; 07:4185 ??
    db   $2a, $38                                      ;; 07:4187 ??
    db   $2a, $53                                      ;; 07:4189 ??
    db   $2a, $54                                      ;; 07:418b ??
    db   $2a, $55                                      ;; 07:418d ??
    db   $2a, $56                                      ;; 07:418f ??
    db   $ff, $ff                                      ;; 07:4191 ??

map03_room02_00_script:
    SCRIPT_IDX script_007f                             ;; 07:4193 $7f $00
    SCRIPT_AT_POS 1, 8, script_0305                    ;; 07:4195 $18 $05 $03
    SCRIPT_AT_POS 6, 8, script_0307                    ;; 07:4198 $68 $07 $03
    db   $ff                                           ;; 07:419b $ff

map03_room02_00_tiles:
    db   $02, $02, $02, $02                            ;; 07:419c ????
    db   $11, $18                                      ;; 07:41a0 ??
    db   $0b, $32                                      ;; 07:41a2 ??
    db   $0b, $37                                      ;; 07:41a4 ??
    db   $1b, $42                                      ;; 07:41a6 ??
    db   $1b, $47                                      ;; 07:41a8 ??
    db   $1a, $61                                      ;; 07:41aa ??
    db   $2b, $68                                      ;; 07:41ac ??
    db   $ff, $ff                                      ;; 07:41ae ??

map03_room03_00_script:
    SCRIPT_IDX script_003d                             ;; 07:41b0 $3d $00
    SCRIPT_AT_POS 2, 4, script_0400                    ;; 07:41b2 $24 $00 $04
    db   $ff                                           ;; 07:41b5 $ff

map03_room03_00_tiles:
    db   $02, $02, $02, $01                            ;; 07:41b6 ????
    db   $38, $11                                      ;; 07:41ba ??
    db   $0f, $12                                      ;; 07:41bc ??
    db   $36, $13                                      ;; 07:41be ??
    db   $0f, $14                                      ;; 07:41c0 ??
    db   $38, $15                                      ;; 07:41c2 ??
    db   $0d, $18                                      ;; 07:41c4 ??
    db   $38, $21                                      ;; 07:41c6 ??
    db   $1f, $22                                      ;; 07:41c8 ??
    db   $36, $23                                      ;; 07:41ca ??
    db   $3f, $24                                      ;; 07:41cc ??
    db   $38, $25                                      ;; 07:41ce ??
    db   $0d, $27                                      ;; 07:41d0 ??
    db   $1d, $28                                      ;; 07:41d2 ??
    db   $38, $31                                      ;; 07:41d4 ??
    db   $38, $32                                      ;; 07:41d6 ??
    db   $38, $33                                      ;; 07:41d8 ??
    db   $38, $34                                      ;; 07:41da ??
    db   $38, $35                                      ;; 07:41dc ??
    db   $ff, $ff                                      ;; 07:41de ??

map03_room04_00_script:
    SCRIPT_IDX script_00fe                             ;; 07:41e0 $fe $00
    db   $ff                                           ;; 07:41e2 $ff

map03_room04_00_tiles:
    db   $02, $02, $02, $01                            ;; 07:41e3 ????
    db   $0f, $11                                      ;; 07:41e7 ??
    db   $36, $12                                      ;; 07:41e9 ??
    db   $0f, $13                                      ;; 07:41eb ??
    db   $38, $14                                      ;; 07:41ed ??
    db   $1f, $21                                      ;; 07:41ef ??
    db   $36, $22                                      ;; 07:41f1 ??
    db   $1f, $23                                      ;; 07:41f3 ??
    db   $38, $24                                      ;; 07:41f5 ??
    db   $38, $31                                      ;; 07:41f7 ??
    db   $38, $32                                      ;; 07:41f9 ??
    db   $38, $33                                      ;; 07:41fb ??
    db   $38, $34                                      ;; 07:41fd ??
    db   $0d, $37                                      ;; 07:41ff ??
    db   $0d, $46                                      ;; 07:4201 ??
    db   $1d, $47                                      ;; 07:4203 ??
    db   $0d, $48                                      ;; 07:4205 ??
    db   $0d, $57                                      ;; 07:4207 ??
    db   $ff, $ff                                      ;; 07:4209 ??

map03_room05_00_script:
    SCRIPT_IDX script_0088                             ;; 07:420b $88 $00
    SCRIPT_AT_POS 1, 8, script_02ff                    ;; 07:420d $18 $ff $02
    db   $ff                                           ;; 07:4210 $ff

map03_room05_00_tiles:
    db   $01, $02, $02, $02                            ;; 07:4211 ????
    db   $11, $18                                      ;; 07:4215 ??
    db   $2a, $21                                      ;; 07:4217 ??
    db   $2a, $22                                      ;; 07:4219 ??
    db   $2a, $24                                      ;; 07:421b ??
    db   $2a, $25                                      ;; 07:421d ??
    db   $2a, $26                                      ;; 07:421f ??
    db   $2a, $27                                      ;; 07:4221 ??
    db   $2a, $28                                      ;; 07:4223 ??
    db   $ff, $ff                                      ;; 07:4225 ??

map03_room06_00_script:
    SCRIPT_IDX script_0085                             ;; 07:4227 $85 $00
    db   $ff                                           ;; 07:4229 $ff

map03_room06_00_tiles:
    db   $02, $01, $02, $01                            ;; 07:422a ????
    db   $16, $26                                      ;; 07:422e ??
    db   $16, $36                                      ;; 07:4230 ??
    db   $16, $43                                      ;; 07:4232 ??
    db   $16, $44                                      ;; 07:4234 ??
    db   $16, $45                                      ;; 07:4236 ??
    db   $16, $46                                      ;; 07:4238 ??
    db   $16, $53                                      ;; 07:423a ??
    db   $16, $63                                      ;; 07:423c ??
    db   $ff, $ff                                      ;; 07:423e ??

map03_room07_00_script:
    SCRIPT_IDX script_0413                             ;; 07:4240 $13 $04
    SCRIPT_AT_POS 4, 2, script_0407                    ;; 07:4242 $42 $07 $04
    SCRIPT_AT_POS 5, 5, script_0406                    ;; 07:4245 $55 $06 $04
    SCRIPT_AT_POS 5, 4, script_0406                    ;; 07:4248 $54 $06 $04
    db   $ff                                           ;; 07:424b $ff

map03_room07_00_tiles:
    db   $02, $02, $02, $01                            ;; 07:424c ????
    db   $46, $24                                      ;; 07:4250 ??
    db   $46, $25                                      ;; 07:4252 ??
    db   $46, $33                                      ;; 07:4254 ??
    db   $46, $36                                      ;; 07:4256 ??
    db   $29, $42                                      ;; 07:4258 ??
    db   $46, $43                                      ;; 07:425a ??
    db   $46, $46                                      ;; 07:425c ??
    db   $2e, $47                                      ;; 07:425e ??
    db   $46, $53                                      ;; 07:4260 ??
    db   $4a, $54                                      ;; 07:4262 ??
    db   $4a, $55                                      ;; 07:4264 ??
    db   $46, $56                                      ;; 07:4266 ??
    db   $ff, $ff                                      ;; 07:4268 ??

map03_room00_01_script:
    SCRIPT_IDX script_0525                             ;; 07:426a $25 $05
    db   $ff                                           ;; 07:426c $ff

map03_room00_01_tiles:
    db   $02, $02, $02, $08                            ;; 07:426d ....
    db   $0d, $11                                      ;; 07:4271 ..
    db   $0d, $12                                      ;; 07:4273 ..
    db   $16, $15                                      ;; 07:4275 ..
    db   $0f, $16                                      ;; 07:4277 ..
    db   $1d, $17                                      ;; 07:4279 ..
    db   $0f, $18                                      ;; 07:427b ..
    db   $17, $21                                      ;; 07:427d ..
    db   $19, $22                                      ;; 07:427f ..
    db   $1f, $26                                      ;; 07:4281 ..
    db   $1f, $28                                      ;; 07:4283 ..
    db   $0d, $31                                      ;; 07:4285 ..
    db   $38, $53                                      ;; 07:4287 ..
    db   $38, $56                                      ;; 07:4289 ..
    db   $38, $63                                      ;; 07:428b ..
    db   $38, $64                                      ;; 07:428d ..
    db   $38, $65                                      ;; 07:428f ..
    db   $38, $66                                      ;; 07:4291 ..
    db   $1a, $68                                      ;; 07:4293 ..
    db   $ff, $ff                                      ;; 07:4295 .?

map03_room01_01_script:
    SCRIPT_IDX script_0088                             ;; 07:4297 $88 $00
    db   $ff                                           ;; 07:4299 $ff

map03_room01_01_tiles:
    db   $01, $02, $01, $01                            ;; 07:429a ????
    db   $46, $13                                      ;; 07:429e ??
    db   $46, $16                                      ;; 07:42a0 ??
    db   $46, $23                                      ;; 07:42a2 ??
    db   $46, $26                                      ;; 07:42a4 ??
    db   $46, $53                                      ;; 07:42a6 ??
    db   $46, $56                                      ;; 07:42a8 ??
    db   $46, $63                                      ;; 07:42aa ??
    db   $46, $66                                      ;; 07:42ac ??
    db   $ff, $ff                                      ;; 07:42ae ??

map03_room02_01_script:
    SCRIPT_IDX script_0085                             ;; 07:42b0 $85 $00
    db   $ff                                           ;; 07:42b2 $ff

map03_room02_01_tiles:
    db   $02, $01, $02, $01                            ;; 07:42b3 ????
    db   $16, $23                                      ;; 07:42b7 ??
    db   $16, $24                                      ;; 07:42b9 ??
    db   $16, $25                                      ;; 07:42bb ??
    db   $16, $26                                      ;; 07:42bd ??
    db   $16, $33                                      ;; 07:42bf ??
    db   $16, $43                                      ;; 07:42c1 ??
    db   $16, $53                                      ;; 07:42c3 ??
    db   $16, $63                                      ;; 07:42c5 ??
    db   $ff, $ff                                      ;; 07:42c7 ??

map03_room03_01_script:
    SCRIPT_IDX script_003d                             ;; 07:42c9 $3d $00
    db   $ff                                           ;; 07:42cb $ff

map03_room03_01_tiles:
    db   $00, $02, $01, $02                            ;; 07:42cc ????
    db   $38, $13                                      ;; 07:42d0 ??
    db   $36, $14                                      ;; 07:42d2 ??
    db   $36, $15                                      ;; 07:42d4 ??
    db   $38, $16                                      ;; 07:42d6 ??
    db   $38, $23                                      ;; 07:42d8 ??
    db   $38, $24                                      ;; 07:42da ??
    db   $38, $25                                      ;; 07:42dc ??
    db   $38, $26                                      ;; 07:42de ??
    db   $ff, $ff                                      ;; 07:42e0 ??

map03_room04_01_script:
    SCRIPT_IDX script_01a6                             ;; 07:42e2 $a6 $01
    db   $ff                                           ;; 07:42e4 $ff

map03_room04_01_tiles:
    db   $09, $00, $01, $0c                            ;; 07:42e5 ????
    db   $38, $53                                      ;; 07:42e9 ??
    db   $38, $54                                      ;; 07:42eb ??
    db   $38, $55                                      ;; 07:42ed ??
    db   $38, $56                                      ;; 07:42ef ??
    db   $38, $63                                      ;; 07:42f1 ??
    db   $36, $64                                      ;; 07:42f3 ??
    db   $36, $65                                      ;; 07:42f5 ??
    db   $38, $66                                      ;; 07:42f7 ??
    db   $ff, $ff                                      ;; 07:42f9 ??

map03_room05_01_script:
    SCRIPT_IDX script_0088                             ;; 07:42fb $88 $00
    db   $ff                                           ;; 07:42fd $ff

map03_room05_01_tiles:
    db   $01, $01, $02, $02                            ;; 07:42fe ????
    db   $0b, $33                                      ;; 07:4302 ??
    db   $0b, $36                                      ;; 07:4304 ??
    db   $1b, $43                                      ;; 07:4306 ??
    db   $1b, $46                                      ;; 07:4308 ??
    db   $ff, $ff                                      ;; 07:430a ??

map03_room06_01_script:
    SCRIPT_IDX script_007f                             ;; 07:430c $7f $00
    db   $ff                                           ;; 07:430e $ff

map03_room06_01_tiles:
    db   $02, $01, $01, $02                            ;; 07:430f ????
    db   $46, $13                                      ;; 07:4313 ??
    db   $46, $16                                      ;; 07:4315 ??
    db   $46, $23                                      ;; 07:4317 ??
    db   $46, $33                                      ;; 07:4319 ??
    db   $46, $34                                      ;; 07:431b ??
    db   $46, $35                                      ;; 07:431d ??
    db   $46, $36                                      ;; 07:431f ??
    db   $ff, $ff                                      ;; 07:4321 ??

map03_room07_01_script:
    SCRIPT_IDX script_0088                             ;; 07:4323 $88 $00
    db   $ff                                           ;; 07:4325 $ff

map03_room07_01_tiles:
    db   $02, $02, $05, $00                            ;; 07:4326 ????
    db   $46, $13                                      ;; 07:432a ??
    db   $46, $16                                      ;; 07:432c ??
    db   $46, $23                                      ;; 07:432e ??
    db   $46, $26                                      ;; 07:4330 ??
    db   $46, $53                                      ;; 07:4332 ??
    db   $46, $54                                      ;; 07:4334 ??
    db   $46, $55                                      ;; 07:4336 ??
    db   $46, $56                                      ;; 07:4338 ??
    db   $ff, $ff                                      ;; 07:433a ??

map03_room00_02_script:
    SCRIPT_IDX script_0139                             ;; 07:433c $39 $01
    SCRIPT_AT_POS 6, 8, script_0392                    ;; 07:433e $68 $92 $03
    db   $ff                                           ;; 07:4341 $ff

map03_room00_02_tiles:
    db   $02, $02, $02, $01                            ;; 07:4342 ????
    db   $2a, $43                                      ;; 07:4346 ??
    db   $2a, $44                                      ;; 07:4348 ??
    db   $2a, $45                                      ;; 07:434a ??
    db   $2a, $46                                      ;; 07:434c ??
    db   $2a, $47                                      ;; 07:434e ??
    db   $2a, $57                                      ;; 07:4350 ??
    db   $2a, $67                                      ;; 07:4352 ??
    db   $11, $68                                      ;; 07:4354 ??
    db   $ff, $ff                                      ;; 07:4356 ??

map03_room01_02_script:
    SCRIPT_IDX script_007f                             ;; 07:4358 $7f $00
    db   $ff                                           ;; 07:435a $ff

map03_room01_02_tiles:
    db   $00, $02, $01, $02                            ;; 07:435b ????
    db   $1a, $16                                      ;; 07:435f ??
    db   $1a, $25                                      ;; 07:4361 ??
    db   $1a, $34                                      ;; 07:4363 ??
    db   $1a, $43                                      ;; 07:4365 ??
    db   $1a, $46                                      ;; 07:4367 ??
    db   $1a, $55                                      ;; 07:4369 ??
    db   $1a, $64                                      ;; 07:436b ??
    db   $ff, $ff                                      ;; 07:436d ??

map03_room02_02_script:
    SCRIPT_IDX script_0088                             ;; 07:436f $88 $00
    db   $ff                                           ;; 07:4371 $ff

map03_room02_02_tiles:
    db   $02, $00, $01, $02                            ;; 07:4372 ????
    db   $46, $12                                      ;; 07:4376 ??
    db   $46, $23                                      ;; 07:4378 ??
    db   $46, $26                                      ;; 07:437a ??
    db   $46, $34                                      ;; 07:437c ??
    db   $46, $53                                      ;; 07:437e ??
    db   $46, $56                                      ;; 07:4380 ??
    db   $ff, $ff                                      ;; 07:4382 ??

map03_room03_02_script:
    SCRIPT_IDX script_0094                             ;; 07:4384 $94 $00
    SCRIPT_AT_POS 1, 8, script_030e                    ;; 07:4386 $18 $0e $03
    db   $ff                                           ;; 07:4389 $ff

map03_room03_02_tiles:
    db   $01, $02, $02, $02                            ;; 07:438a ????
    db   $11, $18                                      ;; 07:438e ??
    db   $2a, $21                                      ;; 07:4390 ??
    db   $2a, $22                                      ;; 07:4392 ??
    db   $2a, $25                                      ;; 07:4394 ??
    db   $2a, $26                                      ;; 07:4396 ??
    db   $2a, $27                                      ;; 07:4398 ??
    db   $2a, $28                                      ;; 07:439a ??
    db   $ff, $ff                                      ;; 07:439c ??

map03_room04_02_script:
    SCRIPT_IDX script_0088                             ;; 07:439e $88 $00
    db   $ff                                           ;; 07:43a0 $ff

map03_room04_02_tiles:
    db   $01, $01, $02, $00                            ;; 07:43a1 ????
    db   $3d, $34                                      ;; 07:43a5 ??
    db   $3d, $35                                      ;; 07:43a7 ??
    db   $3d, $36                                      ;; 07:43a9 ??
    db   $3d, $37                                      ;; 07:43ab ??
    db   $3d, $38                                      ;; 07:43ad ??
    db   $3d, $44                                      ;; 07:43af ??
    db   $3d, $45                                      ;; 07:43b1 ??
    db   $3d, $46                                      ;; 07:43b3 ??
    db   $3d, $47                                      ;; 07:43b5 ??
    db   $3d, $48                                      ;; 07:43b7 ??
    db   $3d, $54                                      ;; 07:43b9 ??
    db   $3d, $55                                      ;; 07:43bb ??
    db   $3d, $64                                      ;; 07:43bd ??
    db   $3d, $65                                      ;; 07:43bf ??
    db   $ff, $ff                                      ;; 07:43c1 ??

map03_room05_02_script:
    SCRIPT_IDX script_0094                             ;; 07:43c3 $94 $00
    SCRIPT_AT_POS 1, 8, script_02f7                    ;; 07:43c5 $18 $f7 $02
    db   $ff                                           ;; 07:43c8 $ff

map03_room05_02_tiles:
    db   $02, $01, $02, $02                            ;; 07:43c9 ????
    db   $46, $16                                      ;; 07:43cd ??
    db   $11, $18                                      ;; 07:43cf ??
    db   $46, $26                                      ;; 07:43d1 ??
    db   $46, $56                                      ;; 07:43d3 ??
    db   $46, $66                                      ;; 07:43d5 ??
    db   $ff, $ff                                      ;; 07:43d7 ??

map03_room06_02_script:
    SCRIPT_IDX script_0088                             ;; 07:43d9 $88 $00
    SCRIPT_AT_POS 6, 8, script_0301                    ;; 07:43db $68 $01 $03
    db   $ff                                           ;; 07:43de $ff

map03_room06_02_tiles:
    db   $01, $02, $02, $02                            ;; 07:43df ????
    db   $27, $54                                      ;; 07:43e3 ??
    db   $27, $55                                      ;; 07:43e5 ??
    db   $27, $56                                      ;; 07:43e7 ??
    db   $27, $57                                      ;; 07:43e9 ??
    db   $27, $58                                      ;; 07:43eb ??
    db   $11, $68                                      ;; 07:43ed ??
    db   $ff, $ff                                      ;; 07:43ef ??

map03_room07_02_script:
    SCRIPT_IDX script_007f                             ;; 07:43f1 $7f $00
    db   $ff                                           ;; 07:43f3 $ff

map03_room07_02_tiles:
    db   $02, $01, $00, $02                            ;; 07:43f4 ????
    db   $0b, $13                                      ;; 07:43f8 ??
    db   $0b, $16                                      ;; 07:43fa ??
    db   $1b, $23                                      ;; 07:43fc ??
    db   $1b, $26                                      ;; 07:43fe ??
    db   $ff, $ff                                      ;; 07:4400 ??

map03_room00_03_script:
    SCRIPT_IDX script_0085                             ;; 07:4402 $85 $00
    db   $ff                                           ;; 07:4404 $ff

map03_room00_03_tiles:
    db   $02, $02, $01, $00                            ;; 07:4405 ????
    db   $46, $22                                      ;; 07:4409 ??
    db   $46, $27                                      ;; 07:440b ??
    db   $46, $34                                      ;; 07:440d ??
    db   $46, $35                                      ;; 07:440f ??
    db   $46, $43                                      ;; 07:4411 ??
    db   $46, $46                                      ;; 07:4413 ??
    db   $46, $53                                      ;; 07:4415 ??
    db   $46, $56                                      ;; 07:4417 ??
    db   $ff, $ff                                      ;; 07:4419 ??

map03_room01_03_script:
    SCRIPT_IDX script_0223                             ;; 07:441b $23 $02
    db   $ff                                           ;; 07:441d $ff

map03_room01_03_tiles:
    db   $00, $02, $02, $01                            ;; 07:441e ????
    db   $1a, $11                                      ;; 07:4422 ??
    db   $1a, $12                                      ;; 07:4424 ??
    db   $2a, $16                                      ;; 07:4426 ??
    db   $0d, $33                                      ;; 07:4428 ??
    db   $2a, $36                                      ;; 07:442a ??
    db   $0d, $42                                      ;; 07:442c ??
    db   $1d, $43                                      ;; 07:442e ??
    db   $0d, $44                                      ;; 07:4430 ??
    db   $2a, $46                                      ;; 07:4432 ??
    db   $0d, $53                                      ;; 07:4434 ??
    db   $2a, $56                                      ;; 07:4436 ??
    db   $2a, $66                                      ;; 07:4438 ??
    db   $ff, $ff                                      ;; 07:443a ??

map03_room02_03_script:
    SCRIPT_IDX script_009d                             ;; 07:443c $9d $00
    db   $ff                                           ;; 07:443e $ff

map03_room02_03_tiles:
    db   $02, $00, $02, $01                            ;; 07:443f ????
    db   $64, $22                                      ;; 07:4443 ??
    db   $64, $52                                      ;; 07:4445 ??
    db   $ff, $ff                                      ;; 07:4447 ??

map03_room03_03_script:
    SCRIPT_IDX script_00cd                             ;; 07:4449 $cd $00
    SCRIPT_AT_POS 3, 5, script_0331                    ;; 07:444b $35 $31 $03
    SCRIPT_AT_POS 4, 4, script_0331                    ;; 07:444e $44 $31 $03
    SCRIPT_AT_POS 4, 5, script_0331                    ;; 07:4451 $45 $31 $03
    SCRIPT_AT_POS 3, 4, script_0331                    ;; 07:4454 $34 $31 $03
    db   $ff                                           ;; 07:4457 $ff

map03_room03_03_tiles:
    db   $02, $02, $02, $01                            ;; 07:4458 ????
    db   $2f, $11                                      ;; 07:445c ??
    db   $2f, $18                                      ;; 07:445e ??
    db   $48, $34                                      ;; 07:4460 ??
    db   $49, $35                                      ;; 07:4462 ??
    db   $58, $44                                      ;; 07:4464 ??
    db   $59, $45                                      ;; 07:4466 ??
    db   $2f, $61                                      ;; 07:4468 ??
    db   $2f, $68                                      ;; 07:446a ??
    db   $ff, $ff                                      ;; 07:446c ??

map03_room04_03_script:
    SCRIPT_IDX script_0223                             ;; 07:446e $23 $02
    SCRIPT_AT_POS 6, 8, script_030f                    ;; 07:4470 $68 $0f $03
    SCRIPT_AT_POS 1, 1, script_04e8                    ;; 07:4473 $11 $e8 $04
    SCRIPT_AT_POS 1, 8, script_04e7                    ;; 07:4476 $18 $e7 $04
    db   $ff                                           ;; 07:4479 $ff

map03_room04_03_tiles:
    db   $02, $02, $00, $02                            ;; 07:447a ????
    db   $29, $11                                      ;; 07:447e ??
    db   $2a, $12                                      ;; 07:4480 ??
    db   $2a, $17                                      ;; 07:4482 ??
    db   $29, $18                                      ;; 07:4484 ??
    db   $2a, $22                                      ;; 07:4486 ??
    db   $2a, $27                                      ;; 07:4488 ??
    db   $2a, $32                                      ;; 07:448a ??
    db   $2a, $37                                      ;; 07:448c ??
    db   $2a, $42                                      ;; 07:448e ??
    db   $2a, $47                                      ;; 07:4490 ??
    db   $2a, $52                                      ;; 07:4492 ??
    db   $2a, $57                                      ;; 07:4494 ??
    db   $2a, $62                                      ;; 07:4496 ??
    db   $ff, $ff                                      ;; 07:4498 ??

map03_room05_03_script:
    SCRIPT_IDX script_00d0                             ;; 07:449a $d0 $00
    SCRIPT_AT_POS 3, 5, script_0333                    ;; 07:449c $35 $33 $03
    SCRIPT_AT_POS 4, 4, script_0333                    ;; 07:449f $44 $33 $03
    SCRIPT_AT_POS 4, 5, script_0333                    ;; 07:44a2 $45 $33 $03
    SCRIPT_AT_POS 3, 4, script_0333                    ;; 07:44a5 $34 $33 $03
    db   $ff                                           ;; 07:44a8 $ff

map03_room05_03_tiles:
    db   $02, $02, $02, $01                            ;; 07:44a9 ????
    db   $2f, $11                                      ;; 07:44ad ??
    db   $2f, $18                                      ;; 07:44af ??
    db   $48, $34                                      ;; 07:44b1 ??
    db   $49, $35                                      ;; 07:44b3 ??
    db   $58, $44                                      ;; 07:44b5 ??
    db   $59, $45                                      ;; 07:44b7 ??
    db   $2f, $61                                      ;; 07:44b9 ??
    db   $2f, $68                                      ;; 07:44bb ??
    db   $ff, $ff                                      ;; 07:44bd ??

map03_room06_03_script:
    SCRIPT_IDX script_009d                             ;; 07:44bf $9d $00
    db   $ff                                           ;; 07:44c1 $ff

map03_room06_03_tiles:
    db   $01, $02, $02, $00                            ;; 07:44c2 ????
    db   $2a, $24                                      ;; 07:44c6 ??
    db   $2a, $34                                      ;; 07:44c8 ??
    db   $2a, $44                                      ;; 07:44ca ??
    db   $2a, $54                                      ;; 07:44cc ??
    db   $2a, $55                                      ;; 07:44ce ??
    db   $2a, $56                                      ;; 07:44d0 ??
    db   $2a, $57                                      ;; 07:44d2 ??
    db   $2a, $58                                      ;; 07:44d4 ??
    db   $ff, $ff                                      ;; 07:44d6 ??

map03_room07_03_script:
    SCRIPT_IDX script_00a0                             ;; 07:44d8 $a0 $00
    db   $ff                                           ;; 07:44da $ff

map03_room07_03_tiles:
    db   $02, $05, $02, $00                            ;; 07:44db ????
    db   $16, $26                                      ;; 07:44df ??
    db   $16, $35                                      ;; 07:44e1 ??
    db   $16, $44                                      ;; 07:44e3 ??
    db   $16, $53                                      ;; 07:44e5 ??
    db   $16, $62                                      ;; 07:44e7 ??
    db   $ff, $ff                                      ;; 07:44e9 ??

map03_room00_04_script:
    SCRIPT_IDX script_0094                             ;; 07:44eb $94 $00
    SCRIPT_AT_POS 6, 8, script_030c                    ;; 07:44ed $68 $0c $03
    db   $ff                                           ;; 07:44f0 $ff

map03_room00_04_tiles:
    db   $02, $02, $00, $02                            ;; 07:44f1 ????
    db   $2a, $23                                      ;; 07:44f5 ??
    db   $2a, $24                                      ;; 07:44f7 ??
    db   $2a, $25                                      ;; 07:44f9 ??
    db   $2a, $26                                      ;; 07:44fb ??
    db   $11, $68                                      ;; 07:44fd ??
    db   $ff, $ff                                      ;; 07:44ff ??

map03_room01_04_script:
    SCRIPT_IDX script_009d                             ;; 07:4501 $9d $00
    db   $ff                                           ;; 07:4503 $ff

map03_room01_04_tiles:
    db   $02, $02, $01, $00                            ;; 07:4504 ????
    db   $38, $23                                      ;; 07:4508 ??
    db   $38, $24                                      ;; 07:450a ??
    db   $38, $25                                      ;; 07:450c ??
    db   $38, $26                                      ;; 07:450e ??
    db   $38, $33                                      ;; 07:4510 ??
    db   $36, $34                                      ;; 07:4512 ??
    db   $36, $35                                      ;; 07:4514 ??
    db   $38, $36                                      ;; 07:4516 ??
    db   $38, $43                                      ;; 07:4518 ??
    db   $36, $44                                      ;; 07:451a ??
    db   $36, $45                                      ;; 07:451c ??
    db   $38, $46                                      ;; 07:451e ??
    db   $38, $53                                      ;; 07:4520 ??
    db   $38, $54                                      ;; 07:4522 ??
    db   $38, $55                                      ;; 07:4524 ??
    db   $38, $56                                      ;; 07:4526 ??
    db   $ff, $ff                                      ;; 07:4528 ??

map03_room02_04_script:
    SCRIPT_IDX script_00a0                             ;; 07:452a $a0 $00
    SCRIPT_AT_POS 6, 8, script_031a                    ;; 07:452c $68 $1a $03
    db   $ff                                           ;; 07:452f $ff

map03_room02_04_tiles:
    db   $02, $02, $01, $02                            ;; 07:4530 ????
    db   $2f, $13                                      ;; 07:4534 ??
    db   $0a, $14                                      ;; 07:4536 ??
    db   $0a, $15                                      ;; 07:4538 ??
    db   $2f, $16                                      ;; 07:453a ??
    db   $2f, $23                                      ;; 07:453c ??
    db   $2f, $24                                      ;; 07:453e ??
    db   $2f, $25                                      ;; 07:4540 ??
    db   $2f, $26                                      ;; 07:4542 ??
    db   $11, $68                                      ;; 07:4544 ??
    db   $ff, $ff                                      ;; 07:4546 ??

map03_room03_04_script:
    SCRIPT_IDX script_00b2                             ;; 07:4548 $b2 $00
    db   $ff                                           ;; 07:454a $ff

map03_room03_04_tiles:
    db   $00, $02, $01, $02                            ;; 07:454b ????
    db   $0c, $16                                      ;; 07:454f ??
    db   $1c, $26                                      ;; 07:4551 ??
    db   $0c, $35                                      ;; 07:4553 ??
    db   $1c, $45                                      ;; 07:4555 ??
    db   $ff, $ff                                      ;; 07:4557 ??

map03_room04_04_script:
    SCRIPT_IDX script_00be                             ;; 07:4559 $be $00
    db   $ff                                           ;; 07:455b $ff

map03_room04_04_tiles:
    db   $00, $00, $02, $01                            ;; 07:455c ????
    db   $0c, $23                                      ;; 07:4560 ??
    db   $0c, $26                                      ;; 07:4562 ??
    db   $1c, $33                                      ;; 07:4564 ??
    db   $1c, $36                                      ;; 07:4566 ??
    db   $0c, $43                                      ;; 07:4568 ??
    db   $0c, $46                                      ;; 07:456a ??
    db   $1c, $53                                      ;; 07:456c ??
    db   $1c, $56                                      ;; 07:456e ??
    db   $ff, $ff                                      ;; 07:4570 ??

map03_room05_04_script:
    SCRIPT_IDX script_00cd                             ;; 07:4572 $cd $00
    db   $ff                                           ;; 07:4574 $ff

map03_room05_04_tiles:
    db   $02, $00, $01, $02                            ;; 07:4575 ????
    db   $0c, $13                                      ;; 07:4579 ??
    db   $0c, $16                                      ;; 07:457b ??
    db   $1c, $23                                      ;; 07:457d ??
    db   $1c, $26                                      ;; 07:457f ??
    db   $ff, $ff                                      ;; 07:4581 ??

map03_room06_04_script:
    SCRIPT_IDX script_009d                             ;; 07:4583 $9d $00
    SCRIPT_AT_POS 1, 8, script_0318                    ;; 07:4585 $18 $18 $03
    db   $ff                                           ;; 07:4588 $ff

map03_room06_04_tiles:
    db   $02, $02, $00, $02                            ;; 07:4589 ????
    db   $37, $12                                      ;; 07:458d ??
    db   $37, $17                                      ;; 07:458f ??
    db   $11, $18                                      ;; 07:4591 ??
    db   $69, $23                                      ;; 07:4593 ??
    db   $69, $26                                      ;; 07:4595 ??
    db   $37, $34                                      ;; 07:4597 ??
    db   $37, $35                                      ;; 07:4599 ??
    db   $37, $44                                      ;; 07:459b ??
    db   $37, $45                                      ;; 07:459d ??
    db   $67, $53                                      ;; 07:459f ??
    db   $68, $56                                      ;; 07:45a1 ??
    db   $37, $62                                      ;; 07:45a3 ??
    db   $37, $67                                      ;; 07:45a5 ??
    db   $ff, $ff                                      ;; 07:45a7 ??

map03_room07_04_script:
    SCRIPT_IDX script_009d                             ;; 07:45a9 $9d $00
    db   $ff                                           ;; 07:45ab $ff

map03_room07_04_tiles:
    db   $02, $02, $00, $00                            ;; 07:45ac ????
    db   $16, $23                                      ;; 07:45b0 ??
    db   $16, $26                                      ;; 07:45b2 ??
    db   $16, $34                                      ;; 07:45b4 ??
    db   $16, $35                                      ;; 07:45b6 ??
    db   $16, $44                                      ;; 07:45b8 ??
    db   $16, $45                                      ;; 07:45ba ??
    db   $16, $53                                      ;; 07:45bc ??
    db   $16, $56                                      ;; 07:45be ??
    db   $ff, $ff                                      ;; 07:45c0 ??

map03_room00_05_script:
    SCRIPT_IDX script_00a9                             ;; 07:45c2 $a9 $00
    db   $ff                                           ;; 07:45c4 $ff

map03_room00_05_tiles:
    db   $02, $02, $02, $00                            ;; 07:45c5 ????
    db   $2f, $12                                      ;; 07:45c9 ??
    db   $2f, $17                                      ;; 07:45cb ??
    db   $2f, $21                                      ;; 07:45cd ??
    db   $2f, $28                                      ;; 07:45cf ??
    db   $2f, $51                                      ;; 07:45d1 ??
    db   $2f, $58                                      ;; 07:45d3 ??
    db   $2f, $62                                      ;; 07:45d5 ??
    db   $2f, $67                                      ;; 07:45d7 ??
    db   $ff, $ff                                      ;; 07:45d9 ??

map03_room01_05_script:
    SCRIPT_IDX script_0187                             ;; 07:45db $87 $01
    db   $ff                                           ;; 07:45dd $ff

map03_room01_05_tiles:
    db   $02, $02, $00, $00                            ;; 07:45de ????
    db   $2f, $11                                      ;; 07:45e2 ??
    db   $2f, $18                                      ;; 07:45e4 ??
    db   $2f, $21                                      ;; 07:45e6 ??
    db   $2f, $28                                      ;; 07:45e8 ??
    db   $27, $34                                      ;; 07:45ea ??
    db   $27, $35                                      ;; 07:45ec ??
    db   $27, $44                                      ;; 07:45ee ??
    db   $27, $45                                      ;; 07:45f0 ??
    db   $2f, $51                                      ;; 07:45f2 ??
    db   $2f, $58                                      ;; 07:45f4 ??
    db   $2f, $61                                      ;; 07:45f6 ??
    db   $2f, $68                                      ;; 07:45f8 ??
    db   $ff, $ff                                      ;; 07:45fa ??

map03_room02_05_script:
    SCRIPT_IDX script_009d                             ;; 07:45fc $9d $00
    db   $ff                                           ;; 07:45fe $ff

map03_room02_05_tiles:
    db   $02, $00, $02, $00                            ;; 07:45ff ????
    db   $46, $23                                      ;; 07:4603 ??
    db   $46, $25                                      ;; 07:4605 ??
    db   $46, $35                                      ;; 07:4607 ??
    db   $46, $36                                      ;; 07:4609 ??
    db   $46, $38                                      ;; 07:460b ??
    db   $46, $43                                      ;; 07:460d ??
    db   $46, $44                                      ;; 07:460f ??
    db   $46, $45                                      ;; 07:4611 ??
    db   $46, $53                                      ;; 07:4613 ??
    db   $46, $63                                      ;; 07:4615 ??
    db   $ff, $ff                                      ;; 07:4617 ??

map03_room03_05_script:
    SCRIPT_IDX script_00a0                             ;; 07:4619 $a0 $00
    SCRIPT_AT_POS 1, 8, script_0312                    ;; 07:461b $18 $12 $03
    db   $ff                                           ;; 07:461e $ff

map03_room03_05_tiles:
    db   $02, $02, $02, $0c                            ;; 07:461f ????
    db   $11, $18                                      ;; 07:4623 ??
    db   $38, $53                                      ;; 07:4625 ??
    db   $38, $54                                      ;; 07:4627 ??
    db   $38, $55                                      ;; 07:4629 ??
    db   $38, $56                                      ;; 07:462b ??
    db   $38, $63                                      ;; 07:462d ??
    db   $36, $64                                      ;; 07:462f ??
    db   $36, $65                                      ;; 07:4631 ??
    db   $38, $66                                      ;; 07:4633 ??
    db   $ff, $ff                                      ;; 07:4635 ??

map03_room04_05_script:
    SCRIPT_IDX script_00c1                             ;; 07:4637 $c1 $00
    SCRIPT_AT_POS 3, 5, script_0330                    ;; 07:4639 $35 $30 $03
    SCRIPT_AT_POS 4, 4, script_0330                    ;; 07:463c $44 $30 $03
    SCRIPT_AT_POS 4, 5, script_0330                    ;; 07:463f $45 $30 $03
    SCRIPT_AT_POS 3, 4, script_0330                    ;; 07:4642 $34 $30 $03
    db   $ff                                           ;; 07:4645 $ff

map03_room04_05_tiles:
    db   $02, $02, $01, $02                            ;; 07:4646 ????
    db   $2f, $11                                      ;; 07:464a ??
    db   $2f, $18                                      ;; 07:464c ??
    db   $48, $34                                      ;; 07:464e ??
    db   $49, $35                                      ;; 07:4650 ??
    db   $58, $44                                      ;; 07:4652 ??
    db   $59, $45                                      ;; 07:4654 ??
    db   $2f, $61                                      ;; 07:4656 ??
    db   $2f, $68                                      ;; 07:4658 ??
    db   $ff, $ff                                      ;; 07:465a ??

map03_room05_05_script:
    SCRIPT_IDX script_00a0                             ;; 07:465c $a0 $00
    SCRIPT_AT_POS 6, 8, script_0314                    ;; 07:465e $68 $14 $03
    db   $ff                                           ;; 07:4661 $ff

map03_room05_05_tiles:
    db   $01, $02, $02, $02                            ;; 07:4662 ????
    db   $37, $15                                      ;; 07:4666 ??
    db   $37, $16                                      ;; 07:4668 ??
    db   $37, $33                                      ;; 07:466a ??
    db   $37, $34                                      ;; 07:466c ??
    db   $37, $45                                      ;; 07:466e ??
    db   $37, $46                                      ;; 07:4670 ??
    db   $37, $57                                      ;; 07:4672 ??
    db   $37, $58                                      ;; 07:4674 ??
    db   $11, $68                                      ;; 07:4676 ??
    db   $ff, $ff                                      ;; 07:4678 ??

map03_room06_05_script:
    SCRIPT_IDX script_009d                             ;; 07:467a $9d $00
    db   $ff                                           ;; 07:467c $ff

map03_room06_05_tiles:
    db   $01, $01, $02, $02                            ;; 07:467d ????
    db   $38, $21                                      ;; 07:4681 ??
    db   $38, $22                                      ;; 07:4683 ??
    db   $36, $31                                      ;; 07:4685 ??
    db   $38, $32                                      ;; 07:4687 ??
    db   $36, $41                                      ;; 07:4689 ??
    db   $38, $42                                      ;; 07:468b ??
    db   $38, $51                                      ;; 07:468d ??
    db   $38, $52                                      ;; 07:468f ??
    db   $ff, $ff                                      ;; 07:4691 ??

map03_room07_05_script:
    SCRIPT_IDX script_0199                             ;; 07:4693 $99 $01
    db   $ff                                           ;; 07:4695 $ff

map03_room07_05_tiles:
    db   $02, $01, $02, $00                            ;; 07:4696 ????
    db   $46, $13                                      ;; 07:469a ??
    db   $46, $16                                      ;; 07:469c ??
    db   $46, $33                                      ;; 07:469e ??
    db   $46, $36                                      ;; 07:46a0 ??
    db   $46, $43                                      ;; 07:46a2 ??
    db   $46, $44                                      ;; 07:46a4 ??
    db   $46, $45                                      ;; 07:46a6 ??
    db   $46, $46                                      ;; 07:46a8 ??
    db   $46, $53                                      ;; 07:46aa ??
    db   $46, $63                                      ;; 07:46ac ??
    db   $46, $66                                      ;; 07:46ae ??
    db   $ff, $ff                                      ;; 07:46b0 ??

map03_room00_06_script:
    SCRIPT_IDX script_00b5                             ;; 07:46b2 $b5 $00
    SCRIPT_AT_POS 6, 8, script_02ee                    ;; 07:46b4 $68 $ee $02
    SCRIPT_AT_POS 1, 8, script_02f1                    ;; 07:46b7 $18 $f1 $02
    db   $ff                                           ;; 07:46ba $ff

map03_room00_06_tiles:
    db   $02, $02, $00, $00                            ;; 07:46bb ????
    db   $11, $18                                      ;; 07:46bf ??
    db   $2b, $68                                      ;; 07:46c1 ??
    db   $ff, $ff                                      ;; 07:46c3 ??

map03_room01_06_script:
    SCRIPT_IDX script_00a0                             ;; 07:46c5 $a0 $00
    db   $ff                                           ;; 07:46c7 $ff

map03_room01_06_tiles:
    db   $02, $02, $00, $00                            ;; 07:46c8 ????
    db   $2a, $22                                      ;; 07:46cc ??
    db   $2a, $23                                      ;; 07:46ce ??
    db   $2a, $24                                      ;; 07:46d0 ??
    db   $2a, $25                                      ;; 07:46d2 ??
    db   $2a, $26                                      ;; 07:46d4 ??
    db   $2a, $27                                      ;; 07:46d6 ??
    db   $2a, $32                                      ;; 07:46d8 ??
    db   $2a, $37                                      ;; 07:46da ??
    db   $2a, $42                                      ;; 07:46dc ??
    db   $16, $44                                      ;; 07:46de ??
    db   $16, $45                                      ;; 07:46e0 ??
    db   $2a, $47                                      ;; 07:46e2 ??
    db   $2a, $63                                      ;; 07:46e4 ??
    db   $2a, $66                                      ;; 07:46e6 ??
    db   $ff, $ff                                      ;; 07:46e8 ??

map03_room02_06_script:
    SCRIPT_IDX script_009a                             ;; 07:46ea $9a $00
    SCRIPT_AT_POS 6, 8, script_031c                    ;; 07:46ec $68 $1c $03
    db   $ff                                           ;; 07:46ef $ff

map03_room02_06_tiles:
    db   $02, $02, $00, $02                            ;; 07:46f0 ????
    db   $2f, $11                                      ;; 07:46f4 ??
    db   $2f, $12                                      ;; 07:46f6 ??
    db   $2f, $13                                      ;; 07:46f8 ??
    db   $2f, $16                                      ;; 07:46fa ??
    db   $2f, $17                                      ;; 07:46fc ??
    db   $2f, $18                                      ;; 07:46fe ??
    db   $2f, $21                                      ;; 07:4700 ??
    db   $2f, $28                                      ;; 07:4702 ??
    db   $11, $68                                      ;; 07:4704 ??
    db   $ff, $ff                                      ;; 07:4706 ??

map03_room03_06_script:
    SCRIPT_IDX script_017b                             ;; 07:4708 $7b $01
    db   $ff                                           ;; 07:470a $ff

map03_room03_06_tiles:
    db   $02, $02, $02, $01                            ;; 07:470b ????
    db   $1a, $17                                      ;; 07:470f ??
    db   $1a, $18                                      ;; 07:4711 ??
    db   $1a, $28                                      ;; 07:4713 ??
    db   $ff, $ff                                      ;; 07:4715 ??

map03_room04_06_script:
    SCRIPT_IDX script_017e                             ;; 07:4717 $7e $01
    db   $ff                                           ;; 07:4719 $ff

map03_room04_06_tiles:
    db   $02, $02, $02, $01                            ;; 07:471a ????
    db   $0c, $11                                      ;; 07:471e ??
    db   $38, $12                                      ;; 07:4720 ??
    db   $36, $13                                      ;; 07:4722 ??
    db   $5c, $14                                      ;; 07:4724 ??
    db   $5d, $15                                      ;; 07:4726 ??
    db   $36, $16                                      ;; 07:4728 ??
    db   $38, $17                                      ;; 07:472a ??
    db   $0c, $18                                      ;; 07:472c ??
    db   $1c, $21                                      ;; 07:472e ??
    db   $38, $22                                      ;; 07:4730 ??
    db   $36, $23                                      ;; 07:4732 ??
    db   $5a, $24                                      ;; 07:4734 ??
    db   $5b, $25                                      ;; 07:4736 ??
    db   $36, $26                                      ;; 07:4738 ??
    db   $38, $27                                      ;; 07:473a ??
    db   $1c, $28                                      ;; 07:473c ??
    db   $38, $32                                      ;; 07:473e ??
    db   $38, $33                                      ;; 07:4740 ??
    db   $38, $34                                      ;; 07:4742 ??
    db   $38, $35                                      ;; 07:4744 ??
    db   $38, $36                                      ;; 07:4746 ??
    db   $38, $37                                      ;; 07:4748 ??
    db   $ff, $ff                                      ;; 07:474a ??

map03_room05_06_script:
    SCRIPT_IDX script_0184                             ;; 07:474c $84 $01
    db   $ff                                           ;; 07:474e $ff

map03_room05_06_tiles:
    db   $02, $02, $02, $01                            ;; 07:474f ????
    db   $ff, $ff                                      ;; 07:4753 ??

map03_room06_06_script:
    SCRIPT_IDX script_009d                             ;; 07:4755 $9d $00
    SCRIPT_AT_POS 6, 8, script_0316                    ;; 07:4757 $68 $16 $03
    db   $ff                                           ;; 07:475a $ff

map03_room06_06_tiles:
    db   $02, $02, $02, $01                            ;; 07:475b ????
    db   $1a, $43                                      ;; 07:475f ??
    db   $1a, $44                                      ;; 07:4761 ??
    db   $1a, $45                                      ;; 07:4763 ??
    db   $1a, $46                                      ;; 07:4765 ??
    db   $1a, $56                                      ;; 07:4767 ??
    db   $1a, $66                                      ;; 07:4769 ??
    db   $11, $68                                      ;; 07:476b ??
    db   $ff, $ff                                      ;; 07:476d ??

map03_room07_06_script:
    SCRIPT_IDX script_009d                             ;; 07:476f $9d $00
    db   $ff                                           ;; 07:4771 $ff

map03_room07_06_tiles:
    db   $02, $02, $00, $00                            ;; 07:4772 ????
    db   $37, $22                                      ;; 07:4776 ??
    db   $37, $23                                      ;; 07:4778 ??
    db   $37, $24                                      ;; 07:477a ??
    db   $37, $25                                      ;; 07:477c ??
    db   $37, $26                                      ;; 07:477e ??
    db   $37, $27                                      ;; 07:4780 ??
    db   $37, $41                                      ;; 07:4782 ??
    db   $37, $42                                      ;; 07:4784 ??
    db   $37, $47                                      ;; 07:4786 ??
    db   $37, $48                                      ;; 07:4788 ??
    db   $37, $54                                      ;; 07:478a ??
    db   $37, $55                                      ;; 07:478c ??
    db   $ff, $ff                                      ;; 07:478e ??

map03_room00_07_script:
    SCRIPT_IDX script_00a9                             ;; 07:4790 $a9 $00
    SCRIPT_AT_POS 5, 8, script_0403                    ;; 07:4792 $58 $03 $04
    SCRIPT_AT_POS 2, 8, script_0403                    ;; 07:4795 $28 $03 $04
    SCRIPT_AT_POS 5, 6, script_0403                    ;; 07:4798 $56 $03 $04
    SCRIPT_AT_POS 2, 6, script_0403                    ;; 07:479b $26 $03 $04
    db   $ff                                           ;; 07:479e $ff

map03_room00_07_tiles:
    db   $02, $02, $00, $02                            ;; 07:479f ????
    db   $0f, $16                                      ;; 07:47a3 ??
    db   $38, $17                                      ;; 07:47a5 ??
    db   $0f, $18                                      ;; 07:47a7 ??
    db   $0d, $22                                      ;; 07:47a9 ??
    db   $1d, $23                                      ;; 07:47ab ??
    db   $0d, $24                                      ;; 07:47ad ??
    db   $3f, $26                                      ;; 07:47af ??
    db   $38, $27                                      ;; 07:47b1 ??
    db   $3f, $28                                      ;; 07:47b3 ??
    db   $0f, $46                                      ;; 07:47b5 ??
    db   $38, $47                                      ;; 07:47b7 ??
    db   $0f, $48                                      ;; 07:47b9 ??
    db   $3f, $56                                      ;; 07:47bb ??
    db   $38, $57                                      ;; 07:47bd ??
    db   $3f, $58                                      ;; 07:47bf ??
    db   $ff, $ff                                      ;; 07:47c1 ??

map03_room01_07_script:
    SCRIPT_IDX script_009d                             ;; 07:47c3 $9d $00
    SCRIPT_AT_POS 6, 1, script_04fa                    ;; 07:47c5 $61 $fa $04
    db   $ff                                           ;; 07:47c8 $ff

map03_room01_07_tiles:
    db   $09, $02, $00, $02                            ;; 07:47c9 ????
    db   $16, $13                                      ;; 07:47cd ??
    db   $16, $23                                      ;; 07:47cf ??
    db   $16, $33                                      ;; 07:47d1 ??
    db   $16, $34                                      ;; 07:47d3 ??
    db   $16, $35                                      ;; 07:47d5 ??
    db   $16, $36                                      ;; 07:47d7 ??
    db   $16, $53                                      ;; 07:47d9 ??
    db   $29, $61                                      ;; 07:47db ??
    db   $16, $63                                      ;; 07:47dd ??
    db   $ff, $ff                                      ;; 07:47df ??

map03_room02_07_script:
    SCRIPT_IDX script_00dc                             ;; 07:47e1 $dc $00
    db   $ff                                           ;; 07:47e3 $ff

map03_room02_07_tiles:
    db   $02, $09, $02, $02                            ;; 07:47e4 ????
    db   $44, $24                                      ;; 07:47e8 ??
    db   $44, $25                                      ;; 07:47ea ??
    db   $44, $32                                      ;; 07:47ec ??
    db   $44, $37                                      ;; 07:47ee ??
    db   $44, $42                                      ;; 07:47f0 ??
    db   $44, $47                                      ;; 07:47f2 ??
    db   $44, $54                                      ;; 07:47f4 ??
    db   $44, $55                                      ;; 07:47f6 ??
    db   $ff, $ff                                      ;; 07:47f8 ??

map03_room03_07_script:
    SCRIPT_IDX script_003d                             ;; 07:47fa $3d $00
    db   $ff                                           ;; 07:47fc $ff

map03_room03_07_tiles:
    db   $00, $02, $05, $02                            ;; 07:47fd ????
    db   $2a, $17                                      ;; 07:4801 ??
    db   $2a, $23                                      ;; 07:4803 ??
    db   $2a, $26                                      ;; 07:4805 ??
    db   $2a, $34                                      ;; 07:4807 ??
    db   $2a, $35                                      ;; 07:4809 ??
    db   $2a, $45                                      ;; 07:480b ??
    db   $2a, $53                                      ;; 07:480d ??
    db   $2a, $56                                      ;; 07:480f ??
    db   $ff, $ff                                      ;; 07:4811 ??

map03_room04_07_script:
    SCRIPT_IDX script_0181                             ;; 07:4813 $81 $01
    db   $ff                                           ;; 07:4815 $ff

map03_room04_07_tiles:
    db   $00, $00, $01, $0c                            ;; 07:4816 ????
    db   $38, $13                                      ;; 07:481a ??
    db   $36, $14                                      ;; 07:481c ??
    db   $36, $15                                      ;; 07:481e ??
    db   $38, $16                                      ;; 07:4820 ??
    db   $0b, $22                                      ;; 07:4822 ??
    db   $38, $23                                      ;; 07:4824 ??
    db   $38, $24                                      ;; 07:4826 ??
    db   $38, $25                                      ;; 07:4828 ??
    db   $38, $26                                      ;; 07:482a ??
    db   $0b, $27                                      ;; 07:482c ??
    db   $1b, $32                                      ;; 07:482e ??
    db   $1b, $37                                      ;; 07:4830 ??
    db   $ff, $ff                                      ;; 07:4832 ??

map03_room05_07_script:
    SCRIPT_IDX script_003d                             ;; 07:4834 $3d $00
    db   $ff                                           ;; 07:4836 $ff

map03_room05_07_tiles:
    db   $02, $00, $0d, $02                            ;; 07:4837 ????
    db   $ff, $ff                                      ;; 07:483b ??

map03_room06_07_script:
    SCRIPT_IDX script_00a0                             ;; 07:483d $a0 $00
    db   $ff                                           ;; 07:483f $ff

map03_room06_07_tiles:
    db   $01, $02, $05, $02                            ;; 07:4840 ????
    db   $46, $18                                      ;; 07:4844 ??
    db   $46, $27                                      ;; 07:4846 ??
    db   $46, $33                                      ;; 07:4848 ??
    db   $46, $36                                      ;; 07:484a ??
    db   $46, $42                                      ;; 07:484c ??
    db   $46, $45                                      ;; 07:484e ??
    db   $46, $51                                      ;; 07:4850 ??
    db   $46, $54                                      ;; 07:4852 ??
    db   $ff, $ff                                      ;; 07:4854 ??

map03_room07_07_script:
    SCRIPT_IDX script_009a                             ;; 07:4856 $9a $00
    db   $ff                                           ;; 07:4858 $ff

map03_room07_07_tiles:
    db   $02, $05, $00, $02                            ;; 07:4859 ????
    db   $2a, $12                                      ;; 07:485d ??
    db   $2a, $17                                      ;; 07:485f ??
    db   $2a, $23                                      ;; 07:4861 ??
    db   $2a, $26                                      ;; 07:4863 ??
    db   $2a, $34                                      ;; 07:4865 ??
    db   $2a, $45                                      ;; 07:4867 ??
    db   $2a, $53                                      ;; 07:4869 ??
    db   $2a, $56                                      ;; 07:486b ??
    db   $2a, $62                                      ;; 07:486d ??
    db   $ff, $ff                                      ;; 07:486f ??
