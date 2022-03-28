;; Disassembled with BadBoy Disassembler: https://github.com/daid/BadBoy

INCLUDE "include/hardware.inc"
INCLUDE "include/macros.inc"
INCLUDE "include/charmaps.inc"

SECTION "bank07", ROMX[$4000], BANK[$07]

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

mapRoomPointers_0c:
    db   $01, $04, $08, $05                            ;; 07:6f97 ????
    dw   map0c_room_tile_template                      ;; 07:6f9b $55 $70
    ;;Door tile info
    db   $25, $35, $20, $30, $14, $03, $52, $53        ;; 07:6f9d ????????
    db   $24, $34, $21, $31, $12, $13, $42, $43        ;; 07:6fa5 ????????
    db   $15, $45, $10, $40, $01, $04, $51, $54        ;; 07:6fad ????????
    ;;Room data pointers
    dw   map0c_room00_00_script, map0c_room00_00_tiles ;; 07:6fb5 $81 $70 $87 $70
    dw   map0c_room01_00_script, map0c_room01_00_tiles ;; 07:6fb9 $af $70 $b2 $70
    dw   map0c_room02_00_script, map0c_room02_00_tiles ;; 07:6fbd $f4 $70 $f7 $70
    dw   map0c_room03_00_script, map0c_room03_00_tiles ;; 07:6fc1 $29 $71 $2c $71
    dw   map0c_room04_00_script, map0c_room04_00_tiles ;; 07:6fc5 $32 $71 $35 $71
    dw   map0c_room00_01_script, map0c_room00_01_tiles ;; 07:6fc9 $3b $71 $3e $71
    dw   map0c_room01_01_script, map0c_room01_01_tiles ;; 07:6fcd $70 $71 $76 $71
    dw   map0c_room02_01_script, map0c_room02_01_tiles ;; 07:6fd1 $9a $71 $9d $71
    dw   map0c_room03_01_script, map0c_room03_01_tiles ;; 07:6fd5 $cf $71 $d2 $71
    dw   map0c_room04_01_script, map0c_room04_01_tiles ;; 07:6fd9 $e0 $71 $e3 $71
    dw   map0c_room00_02_script, map0c_room00_02_tiles ;; 07:6fdd $e9 $71 $ec $71
    dw   map0c_room01_02_script, map0c_room01_02_tiles ;; 07:6fe1 $1e $72 $21 $72
    dw   map0c_room02_02_script, map0c_room02_02_tiles ;; 07:6fe5 $57 $72 $5a $72
    dw   map0c_room03_02_script, map0c_room03_02_tiles ;; 07:6fe9 $8a $72 $90 $72
    dw   map0c_room04_02_script, map0c_room04_02_tiles ;; 07:6fed $ac $72 $af $72
    dw   map0c_room00_03_script, map0c_room00_03_tiles ;; 07:6ff1 $b5 $72 $b8 $72
    dw   map0c_room01_03_script, map0c_room01_03_tiles ;; 07:6ff5 $be $72 $c1 $72
    dw   map0c_room02_03_script, map0c_room02_03_tiles ;; 07:6ff9 $fb $72 $fe $72
    dw   map0c_room03_03_script, map0c_room03_03_tiles ;; 07:6ffd $2a $73 $2d $73
    dw   map0c_room04_03_script, map0c_room04_03_tiles ;; 07:7001 $4d $73 $53 $73
    dw   map0c_room00_04_script, map0c_room00_04_tiles ;; 07:7005 $7b $73 $7e $73
    dw   map0c_room01_04_script, map0c_room01_04_tiles ;; 07:7009 $84 $73 $87 $73
    dw   map0c_room02_04_script, map0c_room02_04_tiles ;; 07:700d $8d $73 $90 $73
    dw   map0c_room03_04_script, map0c_room03_04_tiles ;; 07:7011 $a6 $73 $a9 $73
    dw   map0c_room04_04_script, map0c_room04_04_tiles ;; 07:7015 $c3 $73 $c6 $73
    dw   map0c_room00_05_script, map0c_room00_05_tiles ;; 07:7019 $cc $73 $cf $73
    dw   map0c_room01_05_script, map0c_room01_05_tiles ;; 07:701d $dd $73 $e0 $73
    dw   map0c_room02_05_script, map0c_room02_05_tiles ;; 07:7021 $0a $74 $0d $74
    dw   map0c_room03_05_script, map0c_room03_05_tiles ;; 07:7025 $2b $74 $2e $74
    dw   map0c_room04_05_script, map0c_room04_05_tiles ;; 07:7029 $54 $74 $57 $74
    dw   map0c_room00_06_script, map0c_room00_06_tiles ;; 07:702d $5d $74 $66 $74
    dw   map0c_room01_06_script, map0c_room01_06_tiles ;; 07:7031 $90 $74 $93 $74
    dw   map0c_room02_06_script, map0c_room02_06_tiles ;; 07:7035 $d5 $74 $d8 $74
    dw   map0c_room03_06_script, map0c_room03_06_tiles ;; 07:7039 $ee $74 $f1 $74
    dw   map0c_room04_06_script, map0c_room04_06_tiles ;; 07:703d $27 $75 $2d $75
    dw   map0c_room00_07_script, map0c_room00_07_tiles ;; 07:7041 $65 $75 $6e $75
    dw   map0c_room01_07_script, map0c_room01_07_tiles ;; 07:7045 $94 $75 $97 $75
    dw   map0c_room02_07_script, map0c_room02_07_tiles ;; 07:7049 $a5 $75 $a8 $75
    dw   map0c_room03_07_script, map0c_room03_07_tiles ;; 07:704d $be $75 $c1 $75
    dw   map0c_room04_07_script, map0c_room04_07_tiles ;; 07:7051 $c7 $75 $ca $75

map0c_room_tile_template:
    db   $16, $01, $01, $01, $14, $03, $04, $04, $04, $05 ;; 07:7055 ??????????
    db   $10,                $80,                $80, $15 ;; 07:705f ????
    db   $10,                $80,                $80, $15 ;; 07:7063 ????
    db   $20,                $80,                $80, $25 ;; 07:7067 ????
    db   $30,                $80,                $80, $35 ;; 07:706b ????
    db   $40,                $80,                $80, $45 ;; 07:706f ????
    db   $40,                $80,                $80, $45 ;; 07:7073 ????
    db   $50, $51, $51, $51, $52, $53, $54, $54, $54, $55 ;; 07:7077 ??????????

map0c_room00_00_script:
    SCRIPT_IDX script_0070                             ;; 07:7081 $70 $00
    SCRIPT_AT_POS 1, 8, script_036c                    ;; 07:7083 $18 $6c $03
    db   $ff                                           ;; 07:7086 $ff

map0c_room00_00_tiles:
    db   $00, $02, $02, $00                            ;; 07:7087 ????
    db   $02, $18                                      ;; 07:708b ??
    db   $1b, $29                                      ;; 07:708d ??
    db   $4f, $37                                      ;; 07:708f ??
    db   $56, $38                                      ;; 07:7091 ??
    db   $58, $39                                      ;; 07:7093 ??
    db   $4f, $47                                      ;; 07:7095 ??
    db   $59, $48                                      ;; 07:7097 ??
    db   $59, $49                                      ;; 07:7099 ??
    db   $4f, $54                                      ;; 07:709b ??
    db   $4f, $55                                      ;; 07:709d ??
    db   $3b, $59                                      ;; 07:709f ??
    db   $57, $64                                      ;; 07:70a1 ??
    db   $59, $65                                      ;; 07:70a3 ??
    db   $48, $73                                      ;; 07:70a5 ??
    db   $57, $74                                      ;; 07:70a7 ??
    db   $56, $75                                      ;; 07:70a9 ??
    db   $4a, $76                                      ;; 07:70ab ??
    db   $ff, $ff                                      ;; 07:70ad ??

map0c_room01_00_script:
    SCRIPT_IDX script_003d                             ;; 07:70af $3d $00
    db   $ff                                           ;; 07:70b1 $ff

map0c_room01_00_tiles:
    db   $00, $00, $02, $02                            ;; 07:70b2 ????
    db   $5c, $11                                      ;; 07:70b6 ??
    db   $17, $20                                      ;; 07:70b8 ??
    db   $5c, $21                                      ;; 07:70ba ??
    db   $5c, $22                                      ;; 07:70bc ??
    db   $1b, $29                                      ;; 07:70be ??
    db   $58, $30                                      ;; 07:70c0 ??
    db   $58, $31                                      ;; 07:70c2 ??
    db   $58, $32                                      ;; 07:70c4 ??
    db   $58, $33                                      ;; 07:70c6 ??
    db   $58, $34                                      ;; 07:70c8 ??
    db   $58, $35                                      ;; 07:70ca ??
    db   $58, $36                                      ;; 07:70cc ??
    db   $58, $37                                      ;; 07:70ce ??
    db   $58, $38                                      ;; 07:70d0 ??
    db   $58, $39                                      ;; 07:70d2 ??
    db   $59, $40                                      ;; 07:70d4 ??
    db   $59, $41                                      ;; 07:70d6 ??
    db   $59, $42                                      ;; 07:70d8 ??
    db   $59, $43                                      ;; 07:70da ??
    db   $59, $44                                      ;; 07:70dc ??
    db   $59, $45                                      ;; 07:70de ??
    db   $59, $46                                      ;; 07:70e0 ??
    db   $59, $47                                      ;; 07:70e2 ??
    db   $59, $48                                      ;; 07:70e4 ??
    db   $59, $49                                      ;; 07:70e6 ??
    db   $37, $50                                      ;; 07:70e8 ??
    db   $5c, $57                                      ;; 07:70ea ??
    db   $5c, $58                                      ;; 07:70ec ??
    db   $3b, $59                                      ;; 07:70ee ??
    db   $5c, $68                                      ;; 07:70f0 ??
    db   $ff, $ff                                      ;; 07:70f2 ??

map0c_room02_00_script:
    SCRIPT_IDX script_00bb                             ;; 07:70f4 $bb $00
    db   $ff                                           ;; 07:70f6 $ff

map0c_room02_00_tiles:
    db   $02, $00, $02, $00                            ;; 07:70f7 ????
    db   $17, $20                                      ;; 07:70fb ??
    db   $58, $30                                      ;; 07:70fd ??
    db   $58, $31                                      ;; 07:70ff ??
    db   $4f, $32                                      ;; 07:7101 ??
    db   $4f, $33                                      ;; 07:7103 ??
    db   $4f, $34                                      ;; 07:7105 ??
    db   $59, $40                                      ;; 07:7107 ??
    db   $59, $41                                      ;; 07:7109 ??
    db   $59, $42                                      ;; 07:710b ??
    db   $59, $43                                      ;; 07:710d ??
    db   $57, $44                                      ;; 07:710f ??
    db   $4f, $45                                      ;; 07:7111 ??
    db   $37, $50                                      ;; 07:7113 ??
    db   $4f, $53                                      ;; 07:7115 ??
    db   $57, $54                                      ;; 07:7117 ??
    db   $4f, $55                                      ;; 07:7119 ??
    db   $57, $64                                      ;; 07:711b ??
    db   $59, $65                                      ;; 07:711d ??
    db   $48, $73                                      ;; 07:711f ??
    db   $57, $74                                      ;; 07:7121 ??
    db   $56, $75                                      ;; 07:7123 ??
    db   $4a, $76                                      ;; 07:7125 ??
    db   $ff, $ff                                      ;; 07:7127 ??

map0c_room03_00_script:
    dw   $ffff                                         ;; 07:7129 $ff $ff
    db   $ff                                           ;; 07:712b $ff

map0c_room03_00_tiles:
    db   $00, $00, $00, $00                            ;; 07:712c ????
    db   $ff, $ff                                      ;; 07:7130 ??

map0c_room04_00_script:
    dw   $ffff                                         ;; 07:7132 $ff $ff
    db   $ff                                           ;; 07:7134 $ff

map0c_room04_00_tiles:
    db   $00, $00, $00, $00                            ;; 07:7135 ????
    db   $ff, $ff                                      ;; 07:7139 ??

map0c_room00_01_script:
    SCRIPT_IDX script_003d                             ;; 07:713b $3d $00
    db   $ff                                           ;; 07:713d $ff

map0c_room00_01_tiles:
    db   $02, $02, $00, $00                            ;; 07:713e ????
    db   $08, $03                                      ;; 07:7142 ??
    db   $57, $04                                      ;; 07:7144 ??
    db   $56, $05                                      ;; 07:7146 ??
    db   $0a, $06                                      ;; 07:7148 ??
    db   $57, $14                                      ;; 07:714a ??
    db   $56, $15                                      ;; 07:714c ??
    db   $4f, $22                                      ;; 07:714e ??
    db   $57, $24                                      ;; 07:7150 ??
    db   $56, $25                                      ;; 07:7152 ??
    db   $57, $34                                      ;; 07:7154 ??
    db   $56, $35                                      ;; 07:7156 ??
    db   $57, $44                                      ;; 07:7158 ??
    db   $56, $45                                      ;; 07:715a ??
    db   $57, $54                                      ;; 07:715c ??
    db   $56, $55                                      ;; 07:715e ??
    db   $57, $64                                      ;; 07:7160 ??
    db   $56, $65                                      ;; 07:7162 ??
    db   $4f, $68                                      ;; 07:7164 ??
    db   $48, $73                                      ;; 07:7166 ??
    db   $57, $74                                      ;; 07:7168 ??
    db   $56, $75                                      ;; 07:716a ??
    db   $4a, $76                                      ;; 07:716c ??
    db   $ff, $ff                                      ;; 07:716e ??

map0c_room01_01_script:
    SCRIPT_IDX script_00b2                             ;; 07:7170 $b2 $00
    SCRIPT_AT_POS 1, 8, script_036f                    ;; 07:7172 $18 $6f $03
    db   $ff                                           ;; 07:7175 $ff

map0c_room01_01_tiles:
    db   $02, $02, $02, $00                            ;; 07:7176 ????
    db   $11, $18                                      ;; 07:717a ??
    db   $4a, $33                                      ;; 07:717c ??
    db   $51, $34                                      ;; 07:717e ??
    db   $54, $35                                      ;; 07:7180 ??
    db   $54, $36                                      ;; 07:7182 ??
    db   $54, $37                                      ;; 07:7184 ??
    db   $54, $38                                      ;; 07:7186 ??
    db   $55, $39                                      ;; 07:7188 ??
    db   $0a, $43                                      ;; 07:718a ??
    db   $01, $44                                      ;; 07:718c ??
    db   $04, $45                                      ;; 07:718e ??
    db   $04, $46                                      ;; 07:7190 ??
    db   $04, $47                                      ;; 07:7192 ??
    db   $04, $48                                      ;; 07:7194 ??
    db   $05, $49                                      ;; 07:7196 ??
    db   $ff, $ff                                      ;; 07:7198 ??

map0c_room02_01_script:
    SCRIPT_IDX script_00b5                             ;; 07:719a $b5 $00
    db   $ff                                           ;; 07:719c $ff

map0c_room02_01_tiles:
    db   $00, $02, $00, $00                            ;; 07:719d ????
    db   $08, $03                                      ;; 07:71a1 ??
    db   $57, $04                                      ;; 07:71a3 ??
    db   $56, $05                                      ;; 07:71a5 ??
    db   $0a, $06                                      ;; 07:71a7 ??
    db   $57, $14                                      ;; 07:71a9 ??
    db   $56, $15                                      ;; 07:71ab ??
    db   $5e, $18                                      ;; 07:71ad ??
    db   $57, $24                                      ;; 07:71af ??
    db   $56, $25                                      ;; 07:71b1 ??
    db   $57, $34                                      ;; 07:71b3 ??
    db   $56, $35                                      ;; 07:71b5 ??
    db   $57, $44                                      ;; 07:71b7 ??
    db   $56, $45                                      ;; 07:71b9 ??
    db   $57, $54                                      ;; 07:71bb ??
    db   $56, $55                                      ;; 07:71bd ??
    db   $5e, $61                                      ;; 07:71bf ??
    db   $57, $64                                      ;; 07:71c1 ??
    db   $56, $65                                      ;; 07:71c3 ??
    db   $48, $73                                      ;; 07:71c5 ??
    db   $57, $74                                      ;; 07:71c7 ??
    db   $56, $75                                      ;; 07:71c9 ??
    db   $4a, $76                                      ;; 07:71cb ??
    db   $ff, $ff                                      ;; 07:71cd ??

map0c_room03_01_script:
    SCRIPT_IDX script_00b2                             ;; 07:71cf $b2 $00
    db   $ff                                           ;; 07:71d1 $ff

map0c_room03_01_tiles:
    db   $02, $00, $02, $00                            ;; 07:71d2 ????
    db   $4f, $33                                      ;; 07:71d6 ??
    db   $4f, $36                                      ;; 07:71d8 ??
    db   $4f, $43                                      ;; 07:71da ??
    db   $4f, $46                                      ;; 07:71dc ??
    db   $ff, $ff                                      ;; 07:71de ??

map0c_room04_01_script:
    dw   $ffff                                         ;; 07:71e0 $ff $ff
    db   $ff                                           ;; 07:71e2 $ff

map0c_room04_01_tiles:
    db   $00, $00, $00, $00                            ;; 07:71e3 ????
    db   $ff, $ff                                      ;; 07:71e7 ??

map0c_room00_02_script:
    SCRIPT_IDX script_00b5                             ;; 07:71e9 $b5 $00
    db   $ff                                           ;; 07:71eb $ff

map0c_room00_02_tiles:
    db   $00, $02, $00, $02                            ;; 07:71ec ????
    db   $08, $03                                      ;; 07:71f0 ??
    db   $57, $04                                      ;; 07:71f2 ??
    db   $56, $05                                      ;; 07:71f4 ??
    db   $0a, $06                                      ;; 07:71f6 ??
    db   $58, $14                                      ;; 07:71f8 ??
    db   $56, $15                                      ;; 07:71fa ??
    db   $4f, $24                                      ;; 07:71fc ??
    db   $56, $25                                      ;; 07:71fe ??
    db   $1b, $29                                      ;; 07:7200 ??
    db   $4f, $34                                      ;; 07:7202 ??
    db   $56, $35                                      ;; 07:7204 ??
    db   $58, $36                                      ;; 07:7206 ??
    db   $58, $37                                      ;; 07:7208 ??
    db   $58, $38                                      ;; 07:720a ??
    db   $58, $39                                      ;; 07:720c ??
    db   $4f, $44                                      ;; 07:720e ??
    db   $4f, $45                                      ;; 07:7210 ??
    db   $4f, $46                                      ;; 07:7212 ??
    db   $4f, $47                                      ;; 07:7214 ??
    db   $59, $48                                      ;; 07:7216 ??
    db   $59, $49                                      ;; 07:7218 ??
    db   $3b, $59                                      ;; 07:721a ??
    db   $ff, $ff                                      ;; 07:721c ??

map0c_room01_02_script:
    SCRIPT_IDX script_03df                             ;; 07:721e $df $03
    db   $ff                                           ;; 07:7220 $ff

map0c_room01_02_tiles:
    db   $02, $00, $02, $00                            ;; 07:7221 ????
    db   $44, $13                                      ;; 07:7225 ??
    db   $44, $16                                      ;; 07:7227 ??
    db   $17, $20                                      ;; 07:7229 ??
    db   $58, $30                                      ;; 07:722b ??
    db   $58, $31                                      ;; 07:722d ??
    db   $4f, $32                                      ;; 07:722f ??
    db   $4f, $33                                      ;; 07:7231 ??
    db   $4f, $34                                      ;; 07:7233 ??
    db   $4f, $35                                      ;; 07:7235 ??
    db   $59, $40                                      ;; 07:7237 ??
    db   $59, $41                                      ;; 07:7239 ??
    db   $59, $42                                      ;; 07:723b ??
    db   $59, $43                                      ;; 07:723d ??
    db   $57, $44                                      ;; 07:723f ??
    db   $4f, $45                                      ;; 07:7241 ??
    db   $37, $50                                      ;; 07:7243 ??
    db   $57, $54                                      ;; 07:7245 ??
    db   $4f, $55                                      ;; 07:7247 ??
    db   $57, $64                                      ;; 07:7249 ??
    db   $59, $65                                      ;; 07:724b ??
    db   $48, $73                                      ;; 07:724d ??
    db   $57, $74                                      ;; 07:724f ??
    db   $56, $75                                      ;; 07:7251 ??
    db   $4a, $76                                      ;; 07:7253 ??
    db   $ff, $ff                                      ;; 07:7255 ??

map0c_room02_02_script:
    SCRIPT_IDX script_0070                             ;; 07:7257 $70 $00
    db   $ff                                           ;; 07:7259 $ff

map0c_room02_02_tiles:
    db   $00, $02, $00, $00                            ;; 07:725a ????
    db   $08, $03                                      ;; 07:725e ??
    db   $57, $04                                      ;; 07:7260 ??
    db   $56, $05                                      ;; 07:7262 ??
    db   $0a, $06                                      ;; 07:7264 ??
    db   $57, $14                                      ;; 07:7266 ??
    db   $56, $15                                      ;; 07:7268 ??
    db   $57, $24                                      ;; 07:726a ??
    db   $56, $25                                      ;; 07:726c ??
    db   $5e, $28                                      ;; 07:726e ??
    db   $57, $34                                      ;; 07:7270 ??
    db   $56, $35                                      ;; 07:7272 ??
    db   $57, $44                                      ;; 07:7274 ??
    db   $56, $45                                      ;; 07:7276 ??
    db   $57, $54                                      ;; 07:7278 ??
    db   $56, $55                                      ;; 07:727a ??
    db   $57, $64                                      ;; 07:727c ??
    db   $56, $65                                      ;; 07:727e ??
    db   $48, $73                                      ;; 07:7280 ??
    db   $57, $74                                      ;; 07:7282 ??
    db   $56, $75                                      ;; 07:7284 ??
    db   $4a, $76                                      ;; 07:7286 ??
    db   $ff, $ff                                      ;; 07:7288 ??

map0c_room03_02_script:
    SCRIPT_IDX script_00b5                             ;; 07:728a $b5 $00
    SCRIPT_AT_POS 6, 8, script_036e                    ;; 07:728c $68 $6e $03
    db   $ff                                           ;; 07:728f $ff

map0c_room03_02_tiles:
    db   $02, $00, $00, $02                            ;; 07:7290 ????
    db   $5b, $11                                      ;; 07:7294 ??
    db   $5b, $12                                      ;; 07:7296 ??
    db   $19, $17                                      ;; 07:7298 ??
    db   $19, $18                                      ;; 07:729a ??
    db   $5b, $21                                      ;; 07:729c ??
    db   $19, $28                                      ;; 07:729e ??
    db   $5b, $57                                      ;; 07:72a0 ??
    db   $5b, $58                                      ;; 07:72a2 ??
    db   $5b, $66                                      ;; 07:72a4 ??
    db   $5b, $67                                      ;; 07:72a6 ??
    db   $6a, $68                                      ;; 07:72a8 ??
    db   $ff, $ff                                      ;; 07:72aa ??

map0c_room04_02_script:
    dw   $ffff                                         ;; 07:72ac $ff $ff
    db   $ff                                           ;; 07:72ae $ff

map0c_room04_02_tiles:
    db   $00, $00, $00, $00                            ;; 07:72af ????
    db   $ff, $ff                                      ;; 07:72b3 ??

map0c_room00_03_script:
    dw   $ffff                                         ;; 07:72b5 $ff $ff
    db   $ff                                           ;; 07:72b7 $ff

map0c_room00_03_tiles:
    db   $00, $00, $00, $00                            ;; 07:72b8 ????
    db   $ff, $ff                                      ;; 07:72bc ??

map0c_room01_03_script:
    SCRIPT_IDX script_003d                             ;; 07:72be $3d $00
    db   $ff                                           ;; 07:72c0 $ff

map0c_room01_03_tiles:
    db   $00, $02, $00, $02                            ;; 07:72c1 ????
    db   $08, $03                                      ;; 07:72c5 ??
    db   $57, $04                                      ;; 07:72c7 ??
    db   $56, $05                                      ;; 07:72c9 ??
    db   $0a, $06                                      ;; 07:72cb ??
    db   $57, $14                                      ;; 07:72cd ??
    db   $56, $15                                      ;; 07:72cf ??
    db   $4f, $18                                      ;; 07:72d1 ??
    db   $57, $24                                      ;; 07:72d3 ??
    db   $56, $25                                      ;; 07:72d5 ??
    db   $1b, $29                                      ;; 07:72d7 ??
    db   $57, $34                                      ;; 07:72d9 ??
    db   $56, $35                                      ;; 07:72db ??
    db   $58, $36                                      ;; 07:72dd ??
    db   $58, $37                                      ;; 07:72df ??
    db   $58, $38                                      ;; 07:72e1 ??
    db   $58, $39                                      ;; 07:72e3 ??
    db   $59, $44                                      ;; 07:72e5 ??
    db   $59, $45                                      ;; 07:72e7 ??
    db   $59, $46                                      ;; 07:72e9 ??
    db   $59, $47                                      ;; 07:72eb ??
    db   $59, $48                                      ;; 07:72ed ??
    db   $59, $49                                      ;; 07:72ef ??
    db   $4f, $51                                      ;; 07:72f1 ??
    db   $3b, $59                                      ;; 07:72f3 ??
    db   $4f, $61                                      ;; 07:72f5 ??
    db   $4f, $62                                      ;; 07:72f7 ??
    db   $ff, $ff                                      ;; 07:72f9 ??

map0c_room02_03_script:
    SCRIPT_IDX script_00bb                             ;; 07:72fb $bb $00
    db   $ff                                           ;; 07:72fd $ff

map0c_room02_03_tiles:
    db   $02, $00, $00, $02                            ;; 07:72fe ????
    db   $08, $03                                      ;; 07:7302 ??
    db   $57, $04                                      ;; 07:7304 ??
    db   $56, $05                                      ;; 07:7306 ??
    db   $0a, $06                                      ;; 07:7308 ??
    db   $57, $14                                      ;; 07:730a ??
    db   $56, $15                                      ;; 07:730c ??
    db   $17, $20                                      ;; 07:730e ??
    db   $57, $24                                      ;; 07:7310 ??
    db   $4f, $25                                      ;; 07:7312 ??
    db   $58, $30                                      ;; 07:7314 ??
    db   $58, $31                                      ;; 07:7316 ??
    db   $58, $32                                      ;; 07:7318 ??
    db   $58, $33                                      ;; 07:731a ??
    db   $58, $34                                      ;; 07:731c ??
    db   $4f, $35                                      ;; 07:731e ??
    db   $59, $40                                      ;; 07:7320 ??
    db   $57, $41                                      ;; 07:7322 ??
    db   $4f, $42                                      ;; 07:7324 ??
    db   $37, $50                                      ;; 07:7326 ??
    db   $ff, $ff                                      ;; 07:7328 ??

map0c_room03_03_script:
    SCRIPT_IDX script_0187                             ;; 07:732a $87 $01
    db   $ff                                           ;; 07:732c $ff

map0c_room03_03_tiles:
    db   $02, $02, $02, $01                            ;; 07:732d ????
    db   $19, $18                                      ;; 07:7331 ??
    db   $19, $28                                      ;; 07:7333 ??
    db   $01, $31                                      ;; 07:7335 ??
    db   $5d, $32                                      ;; 07:7337 ??
    db   $01, $33                                      ;; 07:7339 ??
    db   $01, $34                                      ;; 07:733b ??
    db   $01, $35                                      ;; 07:733d ??
    db   $05, $36                                      ;; 07:733f ??
    db   $15, $46                                      ;; 07:7341 ??
    db   $15, $56                                      ;; 07:7343 ??
    db   $19, $58                                      ;; 07:7345 ??
    db   $15, $66                                      ;; 07:7347 ??
    db   $19, $68                                      ;; 07:7349 ??
    db   $ff, $ff                                      ;; 07:734b ??

map0c_room04_03_script:
    SCRIPT_IDX script_00b8                             ;; 07:734d $b8 $00
    SCRIPT_AT_POS 1, 8, script_0377                    ;; 07:734f $18 $77 $03
    db   $ff                                           ;; 07:7352 $ff

map0c_room04_03_tiles:
    db   $02, $00, $02, $02                            ;; 07:7353 ????
    db   $22, $11                                      ;; 07:7357 ??
    db   $23, $12                                      ;; 07:7359 ??
    db   $22, $13                                      ;; 07:735b ??
    db   $23, $14                                      ;; 07:735d ??
    db   $22, $15                                      ;; 07:735f ??
    db   $23, $16                                      ;; 07:7361 ??
    db   $02, $18                                      ;; 07:7363 ??
    db   $23, $23                                      ;; 07:7365 ??
    db   $22, $24                                      ;; 07:7367 ??
    db   $23, $25                                      ;; 07:7369 ??
    db   $22, $26                                      ;; 07:736b ??
    db   $22, $33                                      ;; 07:736d ??
    db   $23, $34                                      ;; 07:736f ??
    db   $22, $35                                      ;; 07:7371 ??
    db   $23, $36                                      ;; 07:7373 ??
    db   $23, $45                                      ;; 07:7375 ??
    db   $22, $46                                      ;; 07:7377 ??
    db   $ff, $ff                                      ;; 07:7379 ??

map0c_room00_04_script:
    dw   $ffff                                         ;; 07:737b $ff $ff
    db   $ff                                           ;; 07:737d $ff

map0c_room00_04_tiles:
    db   $00, $00, $00, $00                            ;; 07:737e ????
    db   $ff, $ff                                      ;; 07:7382 ??

map0c_room01_04_script:
    dw   $ffff                                         ;; 07:7384 $ff $ff
    db   $ff                                           ;; 07:7386 $ff

map0c_room01_04_tiles:
    db   $00, $00, $00, $00                            ;; 07:7387 ????
    db   $ff, $ff                                      ;; 07:738b ??

map0c_room02_04_script:
    SCRIPT_IDX script_005e                             ;; 07:738d $5e $00
    db   $ff                                           ;; 07:738f $ff

map0c_room02_04_tiles:
    db   $01, $02, $02, $00                            ;; 07:7390 ????
    db   $5a, $23                                      ;; 07:7394 ??
    db   $5a, $26                                      ;; 07:7396 ??
    db   $5a, $43                                      ;; 07:7398 ??
    db   $5a, $46                                      ;; 07:739a ??
    db   $5a, $53                                      ;; 07:739c ??
    db   $5a, $56                                      ;; 07:739e ??
    db   $5a, $63                                      ;; 07:73a0 ??
    db   $5a, $66                                      ;; 07:73a2 ??
    db   $ff, $ff                                      ;; 07:73a4 ??

map0c_room03_04_script:
    SCRIPT_IDX script_009a                             ;; 07:73a6 $9a $00
    db   $ff                                           ;; 07:73a8 $ff

map0c_room03_04_tiles:
    db   $02, $01, $01, $01                            ;; 07:73a9 ????
    db   $5a, $13                                      ;; 07:73ad ??
    db   $5a, $23                                      ;; 07:73af ??
    db   $5a, $24                                      ;; 07:73b1 ??
    db   $5a, $25                                      ;; 07:73b3 ??
    db   $5a, $26                                      ;; 07:73b5 ??
    db   $5a, $53                                      ;; 07:73b7 ??
    db   $5a, $54                                      ;; 07:73b9 ??
    db   $5a, $55                                      ;; 07:73bb ??
    db   $5a, $56                                      ;; 07:73bd ??
    db   $5a, $66                                      ;; 07:73bf ??
    db   $ff, $ff                                      ;; 07:73c1 ??

map0c_room04_04_script:
    dw   $ffff                                         ;; 07:73c3 $ff $ff
    db   $ff                                           ;; 07:73c5 $ff

map0c_room04_04_tiles:
    db   $00, $00, $00, $00                            ;; 07:73c6 ????
    db   $ff, $ff                                      ;; 07:73ca ??

map0c_room00_05_script:
    SCRIPT_IDX script_00b8                             ;; 07:73cc $b8 $00
    db   $ff                                           ;; 07:73ce $ff

map0c_room00_05_tiles:
    db   $00, $02, $02, $02                            ;; 07:73cf ????
    db   $41, $12                                      ;; 07:73d3 ??
    db   $41, $27                                      ;; 07:73d5 ??
    db   $41, $36                                      ;; 07:73d7 ??
    db   $41, $52                                      ;; 07:73d9 ??
    db   $ff, $ff                                      ;; 07:73db ??

map0c_room01_05_script:
    SCRIPT_IDX script_0187                             ;; 07:73dd $87 $01
    db   $ff                                           ;; 07:73df $ff

map0c_room01_05_tiles:
    db   $02, $00, $02, $00                            ;; 07:73e0 ????
    db   $4f, $18                                      ;; 07:73e4 ??
    db   $23, $26                                      ;; 07:73e6 ??
    db   $2c, $27                                      ;; 07:73e8 ??
    db   $4f, $28                                      ;; 07:73ea ??
    db   $23, $35                                      ;; 07:73ec ??
    db   $22, $36                                      ;; 07:73ee ??
    db   $22, $41                                      ;; 07:73f0 ??
    db   $23, $42                                      ;; 07:73f2 ??
    db   $22, $43                                      ;; 07:73f4 ??
    db   $23, $44                                      ;; 07:73f6 ??
    db   $22, $45                                      ;; 07:73f8 ??
    db   $23, $53                                      ;; 07:73fa ??
    db   $2c, $55                                      ;; 07:73fc ??
    db   $4f, $58                                      ;; 07:73fe ??
    db   $23, $62                                      ;; 07:7400 ??
    db   $22, $63                                      ;; 07:7402 ??
    db   $2c, $66                                      ;; 07:7404 ??
    db   $4f, $68                                      ;; 07:7406 ??
    db   $ff, $ff                                      ;; 07:7408 ??

map0c_room02_05_script:
    SCRIPT_IDX script_00a9                             ;; 07:740a $a9 $00
    db   $ff                                           ;; 07:740c $ff

map0c_room02_05_tiles:
    db   $02, $00, $00, $02                            ;; 07:740d ????
    db   $04, $21                                      ;; 07:7411 ??
    db   $5d, $22                                      ;; 07:7413 ??
    db   $04, $23                                      ;; 07:7415 ??
    db   $04, $24                                      ;; 07:7417 ??
    db   $05, $25                                      ;; 07:7419 ??
    db   $15, $35                                      ;; 07:741b ??
    db   $45, $45                                      ;; 07:741d ??
    db   $54, $51                                      ;; 07:741f ??
    db   $54, $52                                      ;; 07:7421 ??
    db   $54, $53                                      ;; 07:7423 ??
    db   $54, $54                                      ;; 07:7425 ??
    db   $55, $55                                      ;; 07:7427 ??
    db   $ff, $ff                                      ;; 07:7429 ??

map0c_room03_05_script:
    SCRIPT_IDX script_005e                             ;; 07:742b $5e $00
    db   $ff                                           ;; 07:742d $ff

map0c_room03_05_tiles:
    db   $02, $02, $01, $01                            ;; 07:742e ????
    db   $16, $23                                      ;; 07:7432 ??
    db   $01, $24                                      ;; 07:7434 ??
    db   $04, $25                                      ;; 07:7436 ??
    db   $05, $26                                      ;; 07:7438 ??
    db   $10, $33                                      ;; 07:743a ??
    db   $22, $34                                      ;; 07:743c ??
    db   $23, $35                                      ;; 07:743e ??
    db   $15, $36                                      ;; 07:7440 ??
    db   $40, $43                                      ;; 07:7442 ??
    db   $23, $44                                      ;; 07:7444 ??
    db   $22, $45                                      ;; 07:7446 ??
    db   $45, $46                                      ;; 07:7448 ??
    db   $50, $53                                      ;; 07:744a ??
    db   $51, $54                                      ;; 07:744c ??
    db   $54, $55                                      ;; 07:744e ??
    db   $55, $56                                      ;; 07:7450 ??
    db   $ff, $ff                                      ;; 07:7452 ??

map0c_room04_05_script:
    dw   $ffff                                         ;; 07:7454 $ff $ff
    db   $ff                                           ;; 07:7456 $ff

map0c_room04_05_tiles:
    db   $00, $00, $00, $00                            ;; 07:7457 ????
    db   $ff, $ff                                      ;; 07:745b ??

map0c_room00_06_script:
    SCRIPT_IDX script_00bb                             ;; 07:745d $bb $00
    SCRIPT_AT_POS 1, 8, script_03a0                    ;; 07:745f $18 $a0 $03
    SCRIPT_AT_POS 6, 8, script_03a2                    ;; 07:7462 $68 $a2 $03
    db   $ff                                           ;; 07:7465 $ff

map0c_room00_06_tiles:
    db   $02, $02, $02, $02                            ;; 07:7466 ????
    db   $11, $18                                      ;; 07:746a ??
    db   $50, $30                                      ;; 07:746c ??
    db   $51, $31                                      ;; 07:746e ??
    db   $51, $32                                      ;; 07:7470 ??
    db   $48, $33                                      ;; 07:7472 ??
    db   $4a, $36                                      ;; 07:7474 ??
    db   $54, $37                                      ;; 07:7476 ??
    db   $54, $38                                      ;; 07:7478 ??
    db   $55, $39                                      ;; 07:747a ??
    db   $16, $40                                      ;; 07:747c ??
    db   $01, $41                                      ;; 07:747e ??
    db   $01, $42                                      ;; 07:7480 ??
    db   $08, $43                                      ;; 07:7482 ??
    db   $0a, $46                                      ;; 07:7484 ??
    db   $04, $47                                      ;; 07:7486 ??
    db   $04, $48                                      ;; 07:7488 ??
    db   $05, $49                                      ;; 07:748a ??
    db   $02, $68                                      ;; 07:748c ??
    db   $ff, $ff                                      ;; 07:748e ??

map0c_room01_06_script:
    SCRIPT_IDX script_009d                             ;; 07:7490 $9d $00
    db   $ff                                           ;; 07:7492 $ff

map0c_room01_06_tiles:
    db   $02, $02, $00, $05                            ;; 07:7493 ????
    db   $22, $11                                      ;; 07:7497 ??
    db   $23, $12                                      ;; 07:7499 ??
    db   $22, $13                                      ;; 07:749b ??
    db   $23, $21                                      ;; 07:749d ??
    db   $22, $22                                      ;; 07:749f ??
    db   $23, $23                                      ;; 07:74a1 ??
    db   $22, $31                                      ;; 07:74a3 ??
    db   $23, $32                                      ;; 07:74a5 ??
    db   $4a, $33                                      ;; 07:74a7 ??
    db   $51, $34                                      ;; 07:74a9 ??
    db   $54, $35                                      ;; 07:74ab ??
    db   $54, $36                                      ;; 07:74ad ??
    db   $54, $37                                      ;; 07:74af ??
    db   $54, $38                                      ;; 07:74b1 ??
    db   $55, $39                                      ;; 07:74b3 ??
    db   $23, $41                                      ;; 07:74b5 ??
    db   $22, $42                                      ;; 07:74b7 ??
    db   $0a, $43                                      ;; 07:74b9 ??
    db   $01, $44                                      ;; 07:74bb ??
    db   $04, $45                                      ;; 07:74bd ??
    db   $04, $46                                      ;; 07:74bf ??
    db   $04, $47                                      ;; 07:74c1 ??
    db   $04, $48                                      ;; 07:74c3 ??
    db   $05, $49                                      ;; 07:74c5 ??
    db   $22, $51                                      ;; 07:74c7 ??
    db   $23, $52                                      ;; 07:74c9 ??
    db   $22, $53                                      ;; 07:74cb ??
    db   $23, $61                                      ;; 07:74cd ??
    db   $22, $62                                      ;; 07:74cf ??
    db   $23, $63                                      ;; 07:74d1 ??
    db   $ff, $ff                                      ;; 07:74d3 ??

map0c_room02_06_script:
    SCRIPT_IDX script_00b8                             ;; 07:74d5 $b8 $00
    db   $ff                                           ;; 07:74d7 $ff

map0c_room02_06_tiles:
    db   $00, $02, $02, $00                            ;; 07:74d8 ????
    db   $5a, $26                                      ;; 07:74dc ??
    db   $5a, $36                                      ;; 07:74de ??
    db   $5a, $43                                      ;; 07:74e0 ??
    db   $5a, $44                                      ;; 07:74e2 ??
    db   $5a, $45                                      ;; 07:74e4 ??
    db   $5a, $46                                      ;; 07:74e6 ??
    db   $5a, $56                                      ;; 07:74e8 ??
    db   $5a, $66                                      ;; 07:74ea ??
    db   $ff, $ff                                      ;; 07:74ec ??

map0c_room03_06_script:
    SCRIPT_IDX script_00b8                             ;; 07:74ee $b8 $00
    db   $ff                                           ;; 07:74f0 $ff

map0c_room03_06_tiles:
    db   $00, $00, $01, $02                            ;; 07:74f1 ????
    db   $22, $11                                      ;; 07:74f5 ??
    db   $23, $12                                      ;; 07:74f7 ??
    db   $22, $13                                      ;; 07:74f9 ??
    db   $23, $16                                      ;; 07:74fb ??
    db   $22, $17                                      ;; 07:74fd ??
    db   $23, $18                                      ;; 07:74ff ??
    db   $23, $21                                      ;; 07:7501 ??
    db   $22, $22                                      ;; 07:7503 ??
    db   $23, $23                                      ;; 07:7505 ??
    db   $22, $24                                      ;; 07:7507 ??
    db   $23, $25                                      ;; 07:7509 ??
    db   $22, $26                                      ;; 07:750b ??
    db   $23, $27                                      ;; 07:750d ??
    db   $22, $28                                      ;; 07:750f ??
    db   $23, $32                                      ;; 07:7511 ??
    db   $22, $33                                      ;; 07:7513 ??
    db   $23, $34                                      ;; 07:7515 ??
    db   $22, $35                                      ;; 07:7517 ??
    db   $23, $36                                      ;; 07:7519 ??
    db   $22, $37                                      ;; 07:751b ??
    db   $23, $43                                      ;; 07:751d ??
    db   $22, $44                                      ;; 07:751f ??
    db   $23, $45                                      ;; 07:7521 ??
    db   $22, $46                                      ;; 07:7523 ??
    db   $ff, $ff                                      ;; 07:7525 ??

map0c_room04_06_script:
    SCRIPT_IDX script_00b8                             ;; 07:7527 $b8 $00
    SCRIPT_AT_POS 6, 8, script_0376                    ;; 07:7529 $68 $76 $03
    db   $ff                                           ;; 07:752c $ff

map0c_room04_06_tiles:
    db   $02, $00, $02, $02                            ;; 07:752d ????
    db   $16, $13                                      ;; 07:7531 ??
    db   $01, $14                                      ;; 07:7533 ??
    db   $04, $15                                      ;; 07:7535 ??
    db   $05, $16                                      ;; 07:7537 ??
    db   $10, $23                                      ;; 07:7539 ??
    db   $07, $24                                      ;; 07:753b ??
    db   $07, $25                                      ;; 07:753d ??
    db   $15, $26                                      ;; 07:753f ??
    db   $29, $33                                      ;; 07:7541 ??
    db   $29, $34                                      ;; 07:7543 ??
    db   $29, $35                                      ;; 07:7545 ??
    db   $29, $36                                      ;; 07:7547 ??
    db   $40, $43                                      ;; 07:7549 ??
    db   $07, $44                                      ;; 07:754b ??
    db   $07, $45                                      ;; 07:754d ??
    db   $45, $46                                      ;; 07:754f ??
    db   $40, $53                                      ;; 07:7551 ??
    db   $07, $54                                      ;; 07:7553 ??
    db   $07, $55                                      ;; 07:7555 ??
    db   $45, $56                                      ;; 07:7557 ??
    db   $50, $63                                      ;; 07:7559 ??
    db   $51, $64                                      ;; 07:755b ??
    db   $54, $65                                      ;; 07:755d ??
    db   $55, $66                                      ;; 07:755f ??
    db   $11, $68                                      ;; 07:7561 ??
    db   $ff, $ff                                      ;; 07:7563 ??

map0c_room00_07_script:
    SCRIPT_IDX script_00b8                             ;; 07:7565 $b8 $00
    SCRIPT_AT_POS 6, 8, script_03a4                    ;; 07:7567 $68 $a4 $03
    SCRIPT_AT_POS 1, 8, script_03a3                    ;; 07:756a $18 $a3 $03
    db   $ff                                           ;; 07:756d $ff

map0c_room00_07_tiles:
    db   $02, $02, $02, $02                            ;; 07:756e ????
    db   $11, $18                                      ;; 07:7572 ??
    db   $4a, $33                                      ;; 07:7574 ??
    db   $51, $34                                      ;; 07:7576 ??
    db   $54, $35                                      ;; 07:7578 ??
    db   $54, $36                                      ;; 07:757a ??
    db   $54, $37                                      ;; 07:757c ??
    db   $54, $38                                      ;; 07:757e ??
    db   $55, $39                                      ;; 07:7580 ??
    db   $0a, $43                                      ;; 07:7582 ??
    db   $01, $44                                      ;; 07:7584 ??
    db   $04, $45                                      ;; 07:7586 ??
    db   $04, $46                                      ;; 07:7588 ??
    db   $04, $47                                      ;; 07:758a ??
    db   $04, $48                                      ;; 07:758c ??
    db   $05, $49                                      ;; 07:758e ??
    db   $02, $68                                      ;; 07:7590 ??
    db   $ff, $ff                                      ;; 07:7592 ??

map0c_room01_07_script:
    SCRIPT_IDX script_0101                             ;; 07:7594 $01 $01
    db   $ff                                           ;; 07:7596 $ff

map0c_room01_07_tiles:
    db   $02, $02, $01, $02                            ;; 07:7597 ????
    db   $41, $51                                      ;; 07:759b ??
    db   $41, $58                                      ;; 07:759d ??
    db   $41, $62                                      ;; 07:759f ??
    db   $41, $67                                      ;; 07:75a1 ??
    db   $ff, $ff                                      ;; 07:75a3 ??

map0c_room02_07_script:
    SCRIPT_IDX script_009d                             ;; 07:75a5 $9d $00
    db   $ff                                           ;; 07:75a7 $ff

map0c_room02_07_tiles:
    db   $02, $02, $00, $02                            ;; 07:75a8 ????
    db   $5a, $23                                      ;; 07:75ac ??
    db   $5a, $26                                      ;; 07:75ae ??
    db   $5a, $32                                      ;; 07:75b0 ??
    db   $5a, $37                                      ;; 07:75b2 ??
    db   $5a, $42                                      ;; 07:75b4 ??
    db   $5a, $47                                      ;; 07:75b6 ??
    db   $5a, $53                                      ;; 07:75b8 ??
    db   $5a, $56                                      ;; 07:75ba ??
    db   $ff, $ff                                      ;; 07:75bc ??

map0c_room03_07_script:
    dw   $ffff                                         ;; 07:75be $ff $ff
    db   $ff                                           ;; 07:75c0 $ff

map0c_room03_07_tiles:
    db   $00, $00, $00, $00                            ;; 07:75c1 ????
    db   $ff, $ff                                      ;; 07:75c5 ??

map0c_room04_07_script:
    dw   $ffff                                         ;; 07:75c7 $ff $ff
    db   $ff                                           ;; 07:75c9 $ff

map0c_room04_07_tiles:
    db   $00, $00, $00, $00                            ;; 07:75ca ????
    db   $ff, $ff                                      ;; 07:75ce ??

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

mapRoomPointers_07:
    db   $00, $04, $02, $10                            ;; 07:7bb1 ....
    ;;Room data pointers
    dw   map07_room00_00_script, map07_room00_00_tiles ;; 07:7bb5 $35 $7c $38 $7c
    dw   map07_room01_00_script, map07_room01_00_tiles ;; 07:7bb9 $64 $7c $67 $7c
    dw   map07_room02_00_script, map07_room02_00_tiles ;; 07:7bbd $96 $7c $99 $7c
    dw   map07_room03_00_script, map07_room03_00_tiles ;; 07:7bc1 $b9 $7c $bc $7c
    dw   map07_room04_00_script, map07_room04_00_tiles ;; 07:7bc5 $dc $7c $df $7c
    dw   map07_room05_00_script, map07_room05_00_tiles ;; 07:7bc9 $ff $7c $02 $7d
    dw   map07_room06_00_script, map07_room06_00_tiles ;; 07:7bcd $22 $7d $25 $7d
    dw   map07_room07_00_script, map07_room07_00_tiles ;; 07:7bd1 $45 $7d $48 $7d
    dw   map07_room08_00_script, map07_room08_00_tiles ;; 07:7bd5 $68 $7d $6b $7d
    dw   map07_room09_00_script, map07_room09_00_tiles ;; 07:7bd9 $8b $7d $8e $7d
    dw   map07_room0a_00_script, map07_room0a_00_tiles ;; 07:7bdd $ae $7d $b1 $7d
    dw   map07_room0b_00_script, map07_room0b_00_tiles ;; 07:7be1 $d1 $7d $d4 $7d
    dw   map07_room0c_00_script, map07_room0c_00_tiles ;; 07:7be5 $f4 $7d $f7 $7d
    dw   map07_room0d_00_script, map07_room0d_00_tiles ;; 07:7be9 $17 $7e $1a $7e
    dw   map07_room0e_00_script, map07_room0e_00_tiles ;; 07:7bed $3a $7e $3d $7e
    dw   map07_room0f_00_script, map07_room0f_00_tiles ;; 07:7bf1 $75 $7e $78 $7e
    dw   map07_room00_01_script, map07_room00_01_tiles ;; 07:7bf5 $a7 $7e $aa $7e
    dw   map07_room01_01_script, map07_room01_01_tiles ;; 07:7bf9 $e2 $7e $e5 $7e
    dw   map07_room02_01_script, map07_room02_01_tiles ;; 07:7bfd $20 $7f $23 $7f
    dw   map07_room03_01_script, map07_room03_01_tiles ;; 07:7c01 $2b $7f $2e $7f
    dw   map07_room04_01_script, map07_room04_01_tiles ;; 07:7c05 $36 $7f $39 $7f
    dw   map07_room05_01_script, map07_room05_01_tiles ;; 07:7c09 $41 $7f $44 $7f
    dw   map07_room06_01_script, map07_room06_01_tiles ;; 07:7c0d $4c $7f $4f $7f
    dw   map07_room07_01_script, map07_room07_01_tiles ;; 07:7c11 $57 $7f $5a $7f
    dw   map07_room08_01_script, map07_room08_01_tiles ;; 07:7c15 $62 $7f $65 $7f
    dw   map07_room09_01_script, map07_room09_01_tiles ;; 07:7c19 $6d $7f $70 $7f
    dw   map07_room0a_01_script, map07_room0a_01_tiles ;; 07:7c1d $78 $7f $7b $7f
    dw   map07_room0b_01_script, map07_room0b_01_tiles ;; 07:7c21 $83 $7f $86 $7f
    dw   map07_room0c_01_script, map07_room0c_01_tiles ;; 07:7c25 $8e $7f $91 $7f
    dw   map07_room0d_01_script, map07_room0d_01_tiles ;; 07:7c29 $99 $7f $9c $7f
    dw   map07_room0e_01_script, map07_room0e_01_tiles ;; 07:7c2d $a4 $7f $a7 $7f
    dw   map07_room0f_01_script, map07_room0f_01_tiles ;; 07:7c31 $af $7f $b2 $7f

map07_room00_00_script:
    SCRIPT_IDX script_0000                             ;; 07:7c35 $00 $00
    db   $ff                                           ;; 07:7c37 $ff

map07_room00_00_tiles:
    db   $10,                $80,                $80, $10 ;; 07:7c38 ....
    db   $10,                $80, $02, $00, $00, $00, $10 ;; 07:7c3c .......
    db   $10,                $80,                $80, $10 ;; 07:7c43 ....
    db   $10,                $80, $04, $00, $00, $00, $10 ;; 07:7c47 .......
    db   $10, $02, $00, $04,                $80, $00, $10 ;; 07:7c4e .......
    db   $10,                $80,                $80, $10 ;; 07:7c55 ....
    db   $10,                $80, $00, $00, $02, $00, $10 ;; 07:7c59 .......
    db   $10,                $80,                $80, $10 ;; 07:7c60 ....

map07_room01_00_script:
    SCRIPT_IDX script_0000                             ;; 07:7c64 $00 $00
    db   $ff                                           ;; 07:7c66 $ff

map07_room01_00_tiles:
    db                  $90,                $90, $10, $10 ;; 07:7c67 ????
    db                  $90,                $90, $10, $10 ;; 07:7c6b ????
    db   $10, $10, $10,                $80, $10, $10, $10 ;; 07:7c6f ???????
    db   $10, $10, $10,                $80, $10, $10, $10 ;; 07:7c76 ???????
    db   $10, $10, $10, $08, $00, $00, $00, $10, $10, $10 ;; 07:7c7d ??????????
    db   $10, $10, $10,                $80, $10, $10, $10 ;; 07:7c87 ???????
    db                  $90,                $90, $10, $10 ;; 07:7c8e ????
    db                  $90,                $90, $10, $10 ;; 07:7c92 ????

map07_room02_00_script:
    SCRIPT_IDX script_0000                             ;; 07:7c96 $00 $00
    db   $ff                                           ;; 07:7c98 $ff

map07_room02_00_tiles:
    db                  $90,                $90, $10, $10 ;; 07:7c99 ????
    db                  $90,                $90, $10, $10 ;; 07:7c9d ????
    db                  $90,                $90, $10, $10 ;; 07:7ca1 ????
    db                  $90,                $90, $10, $10 ;; 07:7ca5 ????
    db                  $90,                $90, $10, $10 ;; 07:7ca9 ????
    db                  $90,                $90, $10, $10 ;; 07:7cad ????
    db                  $90,                $90, $10, $10 ;; 07:7cb1 ????
    db                  $90,                $90, $10, $10 ;; 07:7cb5 ????

map07_room03_00_script:
    SCRIPT_IDX script_0000                             ;; 07:7cb9 $00 $00
    db   $ff                                           ;; 07:7cbb $ff

map07_room03_00_tiles:
    db                  $90,                $90, $10, $10 ;; 07:7cbc ????
    db                  $90,                $90, $10, $10 ;; 07:7cc0 ????
    db                  $90,                $90, $10, $10 ;; 07:7cc4 ????
    db                  $90,                $90, $10, $10 ;; 07:7cc8 ????
    db                  $90,                $90, $10, $10 ;; 07:7ccc ????
    db                  $90,                $90, $10, $10 ;; 07:7cd0 ????
    db                  $90,                $90, $10, $10 ;; 07:7cd4 ????
    db                  $90,                $90, $10, $10 ;; 07:7cd8 ????

map07_room04_00_script:
    SCRIPT_IDX script_0000                             ;; 07:7cdc $00 $00
    db   $ff                                           ;; 07:7cde $ff

map07_room04_00_tiles:
    db                  $90,                $90, $10, $10 ;; 07:7cdf ????
    db                  $90,                $90, $10, $10 ;; 07:7ce3 ????
    db                  $90,                $90, $10, $10 ;; 07:7ce7 ????
    db                  $90,                $90, $10, $10 ;; 07:7ceb ????
    db                  $90,                $90, $10, $10 ;; 07:7cef ????
    db                  $90,                $90, $10, $10 ;; 07:7cf3 ????
    db                  $90,                $90, $10, $10 ;; 07:7cf7 ????
    db                  $90,                $90, $10, $10 ;; 07:7cfb ????

map07_room05_00_script:
    SCRIPT_IDX script_0000                             ;; 07:7cff $00 $00
    db   $ff                                           ;; 07:7d01 $ff

map07_room05_00_tiles:
    db                  $90,                $90, $10, $10 ;; 07:7d02 ????
    db                  $90,                $90, $10, $10 ;; 07:7d06 ????
    db                  $90,                $90, $10, $10 ;; 07:7d0a ????
    db                  $90,                $90, $10, $10 ;; 07:7d0e ????
    db                  $90,                $90, $10, $10 ;; 07:7d12 ????
    db                  $90,                $90, $10, $10 ;; 07:7d16 ????
    db                  $90,                $90, $10, $10 ;; 07:7d1a ????
    db                  $90,                $90, $10, $10 ;; 07:7d1e ????

map07_room06_00_script:
    SCRIPT_IDX script_0000                             ;; 07:7d22 $00 $00
    db   $ff                                           ;; 07:7d24 $ff

map07_room06_00_tiles:
    db                  $90,                $90, $10, $10 ;; 07:7d25 ????
    db                  $90,                $90, $10, $10 ;; 07:7d29 ????
    db                  $90,                $90, $10, $10 ;; 07:7d2d ????
    db                  $90,                $90, $10, $10 ;; 07:7d31 ????
    db                  $90,                $90, $10, $10 ;; 07:7d35 ????
    db                  $90,                $90, $10, $10 ;; 07:7d39 ????
    db                  $90,                $90, $10, $10 ;; 07:7d3d ????
    db                  $90,                $90, $10, $10 ;; 07:7d41 ????

map07_room07_00_script:
    SCRIPT_IDX script_0000                             ;; 07:7d45 $00 $00
    db   $ff                                           ;; 07:7d47 $ff

map07_room07_00_tiles:
    db                  $90,                $90, $10, $10 ;; 07:7d48 ????
    db                  $90,                $90, $10, $10 ;; 07:7d4c ????
    db                  $90,                $90, $10, $10 ;; 07:7d50 ????
    db                  $90,                $90, $10, $10 ;; 07:7d54 ????
    db                  $90,                $90, $10, $10 ;; 07:7d58 ????
    db                  $90,                $90, $10, $10 ;; 07:7d5c ????
    db                  $90,                $90, $10, $10 ;; 07:7d60 ????
    db                  $90,                $90, $10, $10 ;; 07:7d64 ????

map07_room08_00_script:
    SCRIPT_IDX script_0000                             ;; 07:7d68 $00 $00
    db   $ff                                           ;; 07:7d6a $ff

map07_room08_00_tiles:
    db                  $90,                $90, $10, $10 ;; 07:7d6b ????
    db                  $90,                $90, $10, $10 ;; 07:7d6f ????
    db                  $90,                $90, $10, $10 ;; 07:7d73 ????
    db                  $90,                $90, $10, $10 ;; 07:7d77 ????
    db                  $90,                $90, $10, $10 ;; 07:7d7b ????
    db                  $90,                $90, $10, $10 ;; 07:7d7f ????
    db                  $90,                $90, $10, $10 ;; 07:7d83 ????
    db                  $90,                $90, $10, $10 ;; 07:7d87 ????

map07_room09_00_script:
    SCRIPT_IDX script_0000                             ;; 07:7d8b $00 $00
    db   $ff                                           ;; 07:7d8d $ff

map07_room09_00_tiles:
    db                  $90,                $90, $10, $10 ;; 07:7d8e ????
    db                  $90,                $90, $10, $10 ;; 07:7d92 ????
    db                  $90,                $90, $10, $10 ;; 07:7d96 ????
    db                  $90,                $90, $10, $10 ;; 07:7d9a ????
    db                  $90,                $90, $10, $10 ;; 07:7d9e ????
    db                  $90,                $90, $10, $10 ;; 07:7da2 ????
    db                  $90,                $90, $10, $10 ;; 07:7da6 ????
    db                  $90,                $90, $10, $10 ;; 07:7daa ????

map07_room0a_00_script:
    SCRIPT_IDX script_0000                             ;; 07:7dae $00 $00
    db   $ff                                           ;; 07:7db0 $ff

map07_room0a_00_tiles:
    db                  $90,                $90, $10, $10 ;; 07:7db1 ????
    db                  $90,                $90, $10, $10 ;; 07:7db5 ????
    db                  $90,                $90, $10, $10 ;; 07:7db9 ????
    db                  $90,                $90, $10, $10 ;; 07:7dbd ????
    db                  $90,                $90, $10, $10 ;; 07:7dc1 ????
    db                  $90,                $90, $10, $10 ;; 07:7dc5 ????
    db                  $90,                $90, $10, $10 ;; 07:7dc9 ????
    db                  $90,                $90, $10, $10 ;; 07:7dcd ????

map07_room0b_00_script:
    SCRIPT_IDX script_0000                             ;; 07:7dd1 $00 $00
    db   $ff                                           ;; 07:7dd3 $ff

map07_room0b_00_tiles:
    db                  $90,                $90, $10, $10 ;; 07:7dd4 ????
    db                  $90,                $90, $10, $10 ;; 07:7dd8 ????
    db                  $90,                $90, $10, $10 ;; 07:7ddc ????
    db                  $90,                $90, $10, $10 ;; 07:7de0 ????
    db                  $90,                $90, $10, $10 ;; 07:7de4 ????
    db                  $90,                $90, $10, $10 ;; 07:7de8 ????
    db                  $90,                $90, $10, $10 ;; 07:7dec ????
    db                  $90,                $90, $10, $10 ;; 07:7df0 ????

map07_room0c_00_script:
    SCRIPT_IDX script_0000                             ;; 07:7df4 $00 $00
    db   $ff                                           ;; 07:7df6 $ff

map07_room0c_00_tiles:
    db                  $90,                $90, $10, $10 ;; 07:7df7 ????
    db                  $90,                $90, $10, $10 ;; 07:7dfb ????
    db                  $90,                $90, $10, $10 ;; 07:7dff ????
    db                  $90,                $90, $10, $10 ;; 07:7e03 ????
    db                  $90,                $90, $10, $10 ;; 07:7e07 ????
    db                  $90,                $90, $10, $10 ;; 07:7e0b ????
    db                  $90,                $90, $10, $10 ;; 07:7e0f ????
    db                  $90,                $90, $10, $10 ;; 07:7e13 ????

map07_room0d_00_script:
    SCRIPT_IDX script_0000                             ;; 07:7e17 $00 $00
    db   $ff                                           ;; 07:7e19 $ff

map07_room0d_00_tiles:
    db                  $90,                $90, $10, $10 ;; 07:7e1a ????
    db                  $90,                $90, $10, $10 ;; 07:7e1e ????
    db                  $90,                $90, $10, $10 ;; 07:7e22 ????
    db                  $90,                $90, $10, $10 ;; 07:7e26 ????
    db                  $90,                $90, $10, $10 ;; 07:7e2a ????
    db                  $90,                $90, $10, $10 ;; 07:7e2e ????
    db                  $90,                $90, $10, $10 ;; 07:7e32 ????
    db                  $90,                $90, $10, $10 ;; 07:7e36 ????

map07_room0e_00_script:
    SCRIPT_IDX script_0000                             ;; 07:7e3a $00 $00
    db   $ff                                           ;; 07:7e3c $ff

map07_room0e_00_tiles:
    db                  $90,                $90, $10, $10 ;; 07:7e3d ????
    db                  $90,                $90, $10, $10 ;; 07:7e41 ????
    db   $10, $10, $10, $0f, $00, $00, $00, $10, $10, $10 ;; 07:7e45 ??????????
    db   $10, $10, $10, $0c, $04, $0a, $04, $10, $10, $10 ;; 07:7e4f ??????????
    db   $10, $10, $10, $0f, $05, $00, $00, $10, $10, $10 ;; 07:7e59 ??????????
    db   $10, $10, $10, $0f, $05, $00, $00, $10, $10, $10 ;; 07:7e63 ??????????
    db                  $90,                $90, $10, $10 ;; 07:7e6d ????
    db                  $90,                $90, $10, $10 ;; 07:7e71 ????

map07_room0f_00_script:
    SCRIPT_IDX script_0000                             ;; 07:7e75 $00 $00
    db   $ff                                           ;; 07:7e77 $ff

map07_room0f_00_tiles:
    db                  $90,                $90, $10, $10 ;; 07:7e78 ????
    db                  $90,                $90, $10, $10 ;; 07:7e7c ????
    db   $10, $10, $10,                $80, $10, $10, $10 ;; 07:7e80 ???????
    db   $10, $10, $10,                $80, $10, $10, $10 ;; 07:7e87 ???????
    db   $10, $10, $10,                $80, $10, $10, $10 ;; 07:7e8e ???????
    db   $10, $10, $10, $0f, $0f, $01, $00, $10, $10, $10 ;; 07:7e95 ??????????
    db                  $90,                $90, $10, $10 ;; 07:7e9f ????
    db                  $90,                $90, $10, $10 ;; 07:7ea3 ????

map07_room00_01_script:
    SCRIPT_IDX script_003d                             ;; 07:7ea7 $3d $00
    db   $ff                                           ;; 07:7ea9 $ff

map07_room00_01_tiles:
    db   $24, $25, $26, $27,                $91, $11, $11 ;; 07:7eaa ???????
    db                  $91, $11, $11, $31, $32, $33, $11 ;; 07:7eb1 ???????
    db                  $91, $11, $11, $1b, $13, $14, $11 ;; 07:7eb8 ???????
    db                  $91, $11, $1a, $13, $13, $14, $11 ;; 07:7ebf ???????
    db   $15, $16, $17, $18, $19, $1b, $13, $13, $14, $11 ;; 07:7ec6 ??????????
    db                  $91, $1a, $13, $1d, $1e, $14, $11 ;; 07:7ed0 ???????
    db                  $91, $1f, $20, $21, $22, $23, $11 ;; 07:7ed7 ???????
    db                  $91,                $91, $11, $11 ;; 07:7ede ????

map07_room01_01_script:
    SCRIPT_IDX script_003d                             ;; 07:7ee2 $3d $00
    db   $ff                                           ;; 07:7ee4 $ff

map07_room01_01_tiles:
    db                  $93, $13, $13, $28, $13, $13, $13 ;; 07:7ee5 .......
    db   $13, $2c, $2d, $2e, $2f, $30, $35, $36, $37, $13 ;; 07:7eec ..........
    db   $13, $38, $39, $3a, $3b, $3c, $3d, $3e, $3f, $13 ;; 07:7ef6 ..........
    db   $13, $40, $41, $42, $43, $44, $45, $13, $47, $13 ;; 07:7f00 ..........
    db   $13, $46, $2b, $2a, $29, $48, $49, $13, $13, $13 ;; 07:7f0a ..........
    db                  $93,                $93, $13, $13 ;; 07:7f14 ....
    db                  $93,                $93, $13, $13 ;; 07:7f18 ....
    db                  $93,                $93, $13, $13 ;; 07:7f1c ....

map07_room02_01_script:
    dw   $ffff                                         ;; 07:7f20 $ff $ff
    db   $ff                                           ;; 07:7f22 $ff

map07_room02_01_tiles:
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 07:7f23 ????????

map07_room03_01_script:
    dw   $ffff                                         ;; 07:7f2b $ff $ff
    db   $ff                                           ;; 07:7f2d $ff

map07_room03_01_tiles:
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 07:7f2e ????????

map07_room04_01_script:
    dw   $ffff                                         ;; 07:7f36 $ff $ff
    db   $ff                                           ;; 07:7f38 $ff

map07_room04_01_tiles:
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 07:7f39 ????????

map07_room05_01_script:
    dw   $ffff                                         ;; 07:7f41 $ff $ff
    db   $ff                                           ;; 07:7f43 $ff

map07_room05_01_tiles:
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 07:7f44 ????????

map07_room06_01_script:
    dw   $ffff                                         ;; 07:7f4c $ff $ff
    db   $ff                                           ;; 07:7f4e $ff

map07_room06_01_tiles:
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 07:7f4f ????????

map07_room07_01_script:
    dw   $ffff                                         ;; 07:7f57 $ff $ff
    db   $ff                                           ;; 07:7f59 $ff

map07_room07_01_tiles:
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 07:7f5a ????????

map07_room08_01_script:
    dw   $ffff                                         ;; 07:7f62 $ff $ff
    db   $ff                                           ;; 07:7f64 $ff

map07_room08_01_tiles:
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 07:7f65 ????????

map07_room09_01_script:
    dw   $ffff                                         ;; 07:7f6d $ff $ff
    db   $ff                                           ;; 07:7f6f $ff

map07_room09_01_tiles:
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 07:7f70 ????????

map07_room0a_01_script:
    dw   $ffff                                         ;; 07:7f78 $ff $ff
    db   $ff                                           ;; 07:7f7a $ff

map07_room0a_01_tiles:
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 07:7f7b ????????

map07_room0b_01_script:
    dw   $ffff                                         ;; 07:7f83 $ff $ff
    db   $ff                                           ;; 07:7f85 $ff

map07_room0b_01_tiles:
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 07:7f86 ????????

map07_room0c_01_script:
    dw   $ffff                                         ;; 07:7f8e $ff $ff
    db   $ff                                           ;; 07:7f90 $ff

map07_room0c_01_tiles:
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 07:7f91 ????????

map07_room0d_01_script:
    dw   $ffff                                         ;; 07:7f99 $ff $ff
    db   $ff                                           ;; 07:7f9b $ff

map07_room0d_01_tiles:
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 07:7f9c ????????

map07_room0e_01_script:
    dw   $ffff                                         ;; 07:7fa4 $ff $ff
    db   $ff                                           ;; 07:7fa6 $ff

map07_room0e_01_tiles:
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 07:7fa7 ????????

map07_room0f_01_script:
    dw   $ffff                                         ;; 07:7faf $ff $ff
    db   $ff                                           ;; 07:7fb1 $ff

map07_room0f_01_tiles:
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 07:7fb2 ????????
    db   $89, $8a, $58, $87, $88, $86, $ff, $ff        ;; 07:7fba ????????
    db   $3b, $0c, $0d, $1c, $fe, $fd, $5f, $a5        ;; 07:7fc2 ????????
    db   $a9, $aa, $59, $60, $fc, $1f, $1f, $3c        ;; 07:7fca ????????
    db   $3d, $1c, $0c, $0d, $05, $06, $07, $d4        ;; 07:7fd2 ????????
    db   $d4, $d4, $05, $06, $07, $5d, $ff, $ff        ;; 07:7fda ????????
    db   $ff, $18, $4c, $0d, $5d, $1b, $3c, $3d        ;; 07:7fe2 ????????
    db   $1c, $0c, $ff, $ff, $ff, $ff, $ff, $ff        ;; 07:7fea ????????
    db   $ff, $ff, $4c, $ff, $ff, $ff, $ff, $ff        ;; 07:7ff2 ????????
    db   $ff, $ff, $4d, $5d, $5f, $60                  ;; 07:7ffa ??????
