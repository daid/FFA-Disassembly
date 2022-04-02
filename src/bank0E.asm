;; Disassembled with BadBoy Disassembler: https://github.com/daid/BadBoy

INCLUDE "include/hardware.inc"
INCLUDE "include/macros.inc"
INCLUDE "include/charmaps.inc"

SECTION "bank0e", ROMX[$4000], BANK[$0e]

script_0294:
    sIF_0B $c9                                         ;; 0e:4000 $0b $c9 $00 $33
      sIF_FLAG wScriptFlags0A.2, !wScriptFlags09.0     ;; 0e:4004 $08 $52 $c8 $00 $25
        sMSG                                           ;; 0e:4009 $04
          db "<10>Man:Didn't you\n come here to get\n the Mirror?<12>"
          db "<11>", $00 ;; 0e:400a
        sFOLLOWER_DELETE                               ;; 0e:402b $98
        sCLEAR_FLAG wScriptFlags0A.2                   ;; 0e:402c $db $52
      sENDIF                                           ;; 0e:402e
      sLOAD_ROOM 0, $e8, 10, 3                         ;; 0e:402e $f4 $00 $e8 $0a $03
      sSET_MUSIC 20                                    ;; 0e:4033 $f8 $14
      sUNK_AB                                          ;; 0e:4035 $ab
      sRUN_ROOM_SCRIPT                                 ;; 0e:4036 $ec
    sENDIF                                             ;; 0e:4037
    sEND                                               ;; 0e:4037 $00

script_0295:
    sIF_0B $c9, $c1                                    ;; 0e:4038 $0b $c9 $c1 $00 $12
      sLOAD_ROOM 0, $dc, 9, 8                          ;; 0e:403d $f4 $00 $dc $09 $08
      sIF_FLAG wScriptFlags02.0, !wScriptFlags02.1     ;; 0e:4042 $08 $10 $91 $00 $05
        sCALL script_053b                              ;; 0e:4047 $02 $6b $04
      sELSE                                            ;; 0e:404a $01 $03
        sSET_MUSIC 20                                  ;; 0e:404c $f8 $14
        sRUN_ROOM_SCRIPT                               ;; 0e:404e $ec
      sENDIF                                           ;; 0e:404f
    sENDIF                                             ;; 0e:404f
    sEND                                               ;; 0e:404f $00

script_0296:
    sEND                                               ;; 0e:4050 $00

script_0297:
    sIF_0B $c9                                         ;; 0e:4051 $0b $c9 $00 $09
      sLOAD_ROOM 0, $9e, 16, 4                         ;; 0e:4055 $f4 $00 $9e $10 $04
      sSET_MUSIC 20                                    ;; 0e:405a $f8 $14
      sUNK_AB                                          ;; 0e:405c $ab
      sRUN_ROOM_SCRIPT                                 ;; 0e:405d $ec
    sENDIF                                             ;; 0e:405e
    sEND                                               ;; 0e:405e $00

script_0298:
    sIF_0B $c9                                         ;; 0e:405f $0b $c9 $00 $09
      sLOAD_ROOM 0, $9b, 4, 6                          ;; 0e:4063 $f4 $00 $9b $04 $06
      sSET_MUSIC 20                                    ;; 0e:4068 $f8 $14
      sUNK_AB                                          ;; 0e:406a $ab
      sRUN_ROOM_SCRIPT                                 ;; 0e:406b $ec
    sENDIF                                             ;; 0e:406c
    sEND                                               ;; 0e:406c $00

script_0299:
    sIF_0B $c9                                         ;; 0e:406d $0b $c9 $00 $09
      sLOAD_ROOM 0, $8b, 12, 4                         ;; 0e:4071 $f4 $00 $8b $0c $04
      sSET_MUSIC 20                                    ;; 0e:4076 $f8 $14
      sUNK_AB                                          ;; 0e:4078 $ab
      sRUN_ROOM_SCRIPT                                 ;; 0e:4079 $ec
    sENDIF                                             ;; 0e:407a
    sEND                                               ;; 0e:407a $00

script_029a:
    sIF_0B $c9                                         ;; 0e:407b $0b $c9 $00 $37
      sLOAD_ROOM 0, $8d, 6, 8                          ;; 0e:407f $f4 $00 $8d $06 $08
      sSET_MUSIC 20                                    ;; 0e:4084 $f8 $14
      sIF_FLAG !wScriptFlags0A.4, !wScriptFlags02.6    ;; 0e:4086 $08 $d4 $96 $00 $2a
        sSET_NPC_TYPES 79                              ;; 0e:408b $fc $4f
        sSET_PLAYER_DIRECTION_DOWN                     ;; 0e:408d $85
        sLOOP 4, 2                                     ;; 0e:408e $03 $04 $02
          sPLAYER_STEP_FORWARD                         ;; 0e:4091 $80
        sEND                                           ;; 0e:4092 $00
        sMSG                                           ;; 0e:4093 $04
          db "<10> Wait, <BOY>!<12>"
          db "<11>", $00 ;; 0e:4094
        sDELAY 30                                      ;; 0e:409e $f0 $1e
        sSET_PLAYER_DIRECTION_UP                       ;; 0e:40a0 $84
        sDELAY 30                                      ;; 0e:40a1 $f0 $1e
        sSPAWN_NPC 2                                   ;; 0e:40a3 $fd $02
        sGIVE_FOLLOWER 4                               ;; 0e:40a5 $9c $04
        sFOLLOWER_STEP_FORWARD                         ;; 0e:40a7 $90
        sFOLLOWER_STEP_FORWARD                         ;; 0e:40a8 $90
        sMSG                                           ;; 0e:40a9 $04
          db "<10>", $00                               ;; 0e:40aa
        sCALL script_029b                              ;; 0e:40ac $02 $40 $b7
        sMSG                                           ;; 0e:40af $04
          db "<12>"
          db "<11>", $00           ;; 0e:40b0
        sSET_FLAG wScriptFlags0A.4                     ;; 0e:40b3 $da $54
      sENDIF                                           ;; 0e:40b5
      sUNK_AB                                          ;; 0e:40b5 $ab
    sENDIF                                             ;; 0e:40b6
    sEND                                               ;; 0e:40b6 $00

script_029b:
    sMSG                                               ;; 0e:40b7 $04
      db "<BOY>:Bogard!\n <GIRL> was taken\n by Glaive_<12>"
      db "<1b>Bogard:Cibba told\n me about that.\n Julius is good at<12>"
      db "<1b> disguising.\n But, don't worry.\n We can save her.<12>"
      db "<1b> Glaive's airship\n is refueling at\n a lake up north.<12>"
      db "<1b> I'll come with\n you and help!\n Let's go!", $00 ;; 0e:40b8
    sEND                                               ;; 0e:415b $00

script_029c:
    sIF_0B $c9                                         ;; 0e:415c $0b $c9 $00 $06
      sSET_ROOM_TILE $02, 8, 6                         ;; 0e:4160 $b0 $02 $08 $06
      sSFX 24                                          ;; 0e:4164 $f9 $18
    sENDIF                                             ;; 0e:4166
    sEND                                               ;; 0e:4166 $00

script_029d:
    sIF_0B $c9, $c1                                    ;; 0e:4167 $0b $c9 $c1 $00 $08
      sLOAD_ROOM 0, $49, 8, 2                          ;; 0e:416c $f4 $00 $49 $08 $02
      sSET_MUSIC 20                                    ;; 0e:4171 $f8 $14
      sRUN_ROOM_SCRIPT                                 ;; 0e:4173 $ec
    sENDIF                                             ;; 0e:4174
    sEND                                               ;; 0e:4174 $00

script_029e:
    sIF_0B $c9, $c1                                    ;; 0e:4175 $0b $c9 $c1 $00 $08
      sLOAD_ROOM 0, $18, 9, 8                          ;; 0e:417a $f4 $00 $18 $09 $08
      sSET_MUSIC 20                                    ;; 0e:417f $f8 $14
      sRUN_ROOM_SCRIPT                                 ;; 0e:4181 $ec
    sENDIF                                             ;; 0e:4182
    sEND                                               ;; 0e:4182 $00

script_029f:
    sIF_0B $c9                                         ;; 0e:4183 $0b $c9 $00 $33
      sIF_FLAG wScriptFlags0A.5, !wScriptFlags04.7     ;; 0e:4187 $08 $55 $a7 $00 $25
        sMSG                                           ;; 0e:418c $04
          db "<10>Amanda:Won't you\n come along with\n me, <BOY>?<12>"
          db "<11>", $00 ;; 0e:418d
        sFOLLOWER_DELETE                               ;; 0e:41ac $98
        sDELAY 30                                      ;; 0e:41ad $f0 $1e
        sCLEAR_FLAG wScriptFlags0A.5                   ;; 0e:41af $db $55
      sENDIF                                           ;; 0e:41b1
      sLOAD_ROOM 0, $2c, 14, 4                         ;; 0e:41b1 $f4 $00 $2c $0e $04
      sSET_MUSIC 20                                    ;; 0e:41b6 $f8 $14
      sUNK_AB                                          ;; 0e:41b8 $ab
      sRUN_ROOM_SCRIPT                                 ;; 0e:41b9 $ec
    sENDIF                                             ;; 0e:41ba
    sEND                                               ;; 0e:41ba $00

script_02a0:
    sIF_0B $c9                                         ;; 0e:41bb $0b $c9 $00 $10
      sIF_FLAG !wScriptFlags03.7                       ;; 0e:41bf $08 $9f $00 $07
        sLOAD_ROOM 15, $65, 4, 12                      ;; 0e:41c3 $f4 $0f $65 $04 $0c
      sELSE                                            ;; 0e:41c8 $01 $05
        sLOAD_ROOM 15, $00, 4, 12                      ;; 0e:41ca $f4 $0f $00 $04 $0c
      sENDIF                                           ;; 0e:41cf
    sENDIF                                             ;; 0e:41cf
    sEND                                               ;; 0e:41cf $00

script_02a1:
    sIF_0B $c9, $c1                                    ;; 0e:41d0 $0b $c9 $c1 $00 $08
      sLOAD_ROOM 0, $92, 10, 6                         ;; 0e:41d5 $f4 $00 $92 $0a $06
      sSET_MUSIC 25                                    ;; 0e:41da $f8 $19
      sRUN_ROOM_SCRIPT                                 ;; 0e:41dc $ec
    sENDIF                                             ;; 0e:41dd
    sEND                                               ;; 0e:41dd $00

script_02a2:
    sIF_0B $c9                                         ;; 0e:41de $0b $c9 $00 $05
      sLOAD_ROOM 14, $57, 2, 12                        ;; 0e:41e2 $f4 $0e $57 $02 $0c
    sENDIF                                             ;; 0e:41e7
    sEND                                               ;; 0e:41e7 $00

script_02a3:
    sIF_0B $c9                                         ;; 0e:41e8 $0b $c9 $00 $05
      sLOAD_ROOM 1, $07, 2, 2                          ;; 0e:41ec $f4 $01 $07 $02 $02
    sENDIF                                             ;; 0e:41f1
    sEND                                               ;; 0e:41f1 $00

script_02a4:
    sIF_0B $c9                                         ;; 0e:41f2 $0b $c9 $00 $09
      sLOAD_ROOM 0, $0e, 12, 12                        ;; 0e:41f6 $f4 $00 $0e $0c $0c
      sSET_MUSIC 25                                    ;; 0e:41fb $f8 $19
      sUNK_AB                                          ;; 0e:41fd $ab
      sRUN_ROOM_SCRIPT                                 ;; 0e:41fe $ec
    sENDIF                                             ;; 0e:41ff
    sEND                                               ;; 0e:41ff $00

script_02a5:
    sIF_0B $c9                                         ;; 0e:4200 $0b $c9 $00 $07
      sLOAD_ROOM 1, $52, 9, 4                          ;; 0e:4204 $f4 $01 $52 $09 $04
      sUNK_AB                                          ;; 0e:4209 $ab
      sRUN_ROOM_SCRIPT                                 ;; 0e:420a $ec
    sENDIF                                             ;; 0e:420b
    sEND                                               ;; 0e:420b $00

script_02a6:
    sIF_0B $c9                                         ;; 0e:420c $0b $c9 $00 $08
      sUNK_C5 0                                        ;; 0e:4210 $c5 $00
      sLOAD_ROOM 2, $00, 9, 12                         ;; 0e:4212 $f4 $02 $00 $09 $0c
      sRUN_ROOM_SCRIPT                                 ;; 0e:4217 $ec
    sENDIF                                             ;; 0e:4218
    sEND                                               ;; 0e:4218 $00

script_02a7:
    sIF_0B $c9                                         ;; 0e:4219 $0b $c9 $00 $08
      sUNK_C5 0                                        ;; 0e:421d $c5 $00
      sLOAD_ROOM 2, $01, 9, 12                         ;; 0e:421f $f4 $02 $01 $09 $0c
      sRUN_ROOM_SCRIPT                                 ;; 0e:4224 $ec
    sENDIF                                             ;; 0e:4225
    sEND                                               ;; 0e:4225 $00

script_02a8:
    sIF_0B $c9                                         ;; 0e:4226 $0b $c9 $00 $08
      sUNK_C5 12                                       ;; 0e:422a $c5 $0c
      sLOAD_ROOM 4, $01, 9, 12                         ;; 0e:422c $f4 $04 $01 $09 $0c
      sRUN_ROOM_SCRIPT                                 ;; 0e:4231 $ec
    sENDIF                                             ;; 0e:4232
    sEND                                               ;; 0e:4232 $00

script_02a9:
    sIF_0B $c9                                         ;; 0e:4233 $0b $c9 $00 $08
      sUNK_C5 12                                       ;; 0e:4237 $c5 $0c
      sLOAD_ROOM 3, $00, 9, 12                         ;; 0e:4239 $f4 $03 $00 $09 $0c
      sRUN_ROOM_SCRIPT                                 ;; 0e:423e $ec
    sENDIF                                             ;; 0e:423f
    sEND                                               ;; 0e:423f $00

script_02aa:
    sIF_0B $c9                                         ;; 0e:4240 $0b $c9 $00 $08
      sUNK_C5 10                                       ;; 0e:4244 $c5 $0a
      sLOAD_ROOM 3, $01, 9, 12                         ;; 0e:4246 $f4 $03 $01 $09 $0c
      sRUN_ROOM_SCRIPT                                 ;; 0e:424b $ec
    sENDIF                                             ;; 0e:424c
    sEND                                               ;; 0e:424c $00

script_02ab:
    sEND                                               ;; 0e:424d $00

script_02ac:
    sIF_0B $c9                                         ;; 0e:424e $0b $c9 $00 $08
      sUNK_C5 2                                        ;; 0e:4252 $c5 $02
      sLOAD_ROOM 2, $00, 9, 12                         ;; 0e:4254 $f4 $02 $00 $09 $0c
      sRUN_ROOM_SCRIPT                                 ;; 0e:4259 $ec
    sENDIF                                             ;; 0e:425a
    sEND                                               ;; 0e:425a $00

script_02ad:
    sIF_0B $c9                                         ;; 0e:425b $0b $c9 $00 $08
      sUNK_C5 1                                        ;; 0e:425f $c5 $01
      sLOAD_ROOM 2, $01, 9, 12                         ;; 0e:4261 $f4 $02 $01 $09 $0c
      sRUN_ROOM_SCRIPT                                 ;; 0e:4266 $ec
    sENDIF                                             ;; 0e:4267
    sEND                                               ;; 0e:4267 $00

script_02ae:
    sIF_0B $c9                                         ;; 0e:4268 $0b $c9 $00 $08
      sUNK_C5 13                                       ;; 0e:426c $c5 $0d
      sLOAD_ROOM 4, $01, 9, 12                         ;; 0e:426e $f4 $04 $01 $09 $0c
      sRUN_ROOM_SCRIPT                                 ;; 0e:4273 $ec
    sENDIF                                             ;; 0e:4274
    sEND                                               ;; 0e:4274 $00

script_02af:
    sIF_0B $c9                                         ;; 0e:4275 $0b $c9 $00 $08
      sUNK_C5 13                                       ;; 0e:4279 $c5 $0d
      sLOAD_ROOM 3, $00, 9, 12                         ;; 0e:427b $f4 $03 $00 $09 $0c
      sRUN_ROOM_SCRIPT                                 ;; 0e:4280 $ec
    sENDIF                                             ;; 0e:4281
    sEND                                               ;; 0e:4281 $00

script_02b0:
    sIF_0B $c9                                         ;; 0e:4282 $0b $c9 $00 $08
      sUNK_C5 11                                       ;; 0e:4286 $c5 $0b
      sLOAD_ROOM 3, $01, 9, 12                         ;; 0e:4288 $f4 $03 $01 $09 $0c
      sRUN_ROOM_SCRIPT                                 ;; 0e:428d $ec
    sENDIF                                             ;; 0e:428e
    sEND                                               ;; 0e:428e $00

script_02b1:
    sIF_0B $c9                                         ;; 0e:428f $0b $c9 $00 $08
      sUNK_C5 4                                        ;; 0e:4293 $c5 $04
      sLOAD_ROOM 2, $00, 9, 12                         ;; 0e:4295 $f4 $02 $00 $09 $0c
      sRUN_ROOM_SCRIPT                                 ;; 0e:429a $ec
    sENDIF                                             ;; 0e:429b
    sEND                                               ;; 0e:429b $00

script_02b2:
    sIF_0B $c9                                         ;; 0e:429c $0b $c9 $00 $08
      sUNK_C5 3                                        ;; 0e:42a0 $c5 $03
      sLOAD_ROOM 2, $01, 9, 12                         ;; 0e:42a2 $f4 $02 $01 $09 $0c
      sRUN_ROOM_SCRIPT                                 ;; 0e:42a7 $ec
    sENDIF                                             ;; 0e:42a8
    sEND                                               ;; 0e:42a8 $00

script_02b3:
    sIF_0B $c9                                         ;; 0e:42a9 $0b $c9 $00 $07
      sUNK_C5 7                                        ;; 0e:42ad $c5 $07
      sLOAD_ROOM 4, $00, 9, 12                         ;; 0e:42af $f4 $04 $00 $09 $0c
    sENDIF                                             ;; 0e:42b4
    sEND                                               ;; 0e:42b4 $00

script_02b4:
    sIF_0B $c9                                         ;; 0e:42b5 $0b $c9 $00 $08
      sUNK_C5 13                                       ;; 0e:42b9 $c5 $0d
      sLOAD_ROOM 3, $01, 9, 12                         ;; 0e:42bb $f4 $03 $01 $09 $0c
      sRUN_ROOM_SCRIPT                                 ;; 0e:42c0 $ec
    sENDIF                                             ;; 0e:42c1
    sEND                                               ;; 0e:42c1 $00

script_02b5:
    sIF_0B $c9                                         ;; 0e:42c2 $0b $c9 $00 $08
      sUNK_C5 5                                        ;; 0e:42c6 $c5 $05
      sLOAD_ROOM 2, $00, 9, 12                         ;; 0e:42c8 $f4 $02 $00 $09 $0c
      sRUN_ROOM_SCRIPT                                 ;; 0e:42cd $ec
    sENDIF                                             ;; 0e:42ce
    sEND                                               ;; 0e:42ce $00

script_02b6:
    sIF_0B $c9                                         ;; 0e:42cf $0b $c9 $00 $08
      sUNK_C5 4                                        ;; 0e:42d3 $c5 $04
      sLOAD_ROOM 2, $01, 9, 12                         ;; 0e:42d5 $f4 $02 $01 $09 $0c
      sRUN_ROOM_SCRIPT                                 ;; 0e:42da $ec
    sENDIF                                             ;; 0e:42db
    sEND                                               ;; 0e:42db $00

script_02b7:
    sIF_0B $c9                                         ;; 0e:42dc $0b $c9 $00 $08
      sUNK_C5 9                                        ;; 0e:42e0 $c5 $09
      sLOAD_ROOM 4, $01, 9, 12                         ;; 0e:42e2 $f4 $04 $01 $09 $0c
      sRUN_ROOM_SCRIPT                                 ;; 0e:42e7 $ec
    sENDIF                                             ;; 0e:42e8
    sEND                                               ;; 0e:42e8 $00

script_02b8:
    sIF_0B $c9                                         ;; 0e:42e9 $0b $c9 $00 $08
      sUNK_C5 14                                       ;; 0e:42ed $c5 $0e
      sLOAD_ROOM 3, $00, 9, 12                         ;; 0e:42ef $f4 $03 $00 $09 $0c
      sRUN_ROOM_SCRIPT                                 ;; 0e:42f4 $ec
    sENDIF                                             ;; 0e:42f5
    sEND                                               ;; 0e:42f5 $00

script_02b9:
    sIF_0B $c9                                         ;; 0e:42f6 $0b $c9 $00 $08
      sUNK_C5 12                                       ;; 0e:42fa $c5 $0c
      sLOAD_ROOM 3, $01, 9, 12                         ;; 0e:42fc $f4 $03 $01 $09 $0c
      sRUN_ROOM_SCRIPT                                 ;; 0e:4301 $ec
    sENDIF                                             ;; 0e:4302
    sEND                                               ;; 0e:4302 $00

script_02ba:
    sIF_0B $c9                                         ;; 0e:4303 $0b $c9 $00 $08
      sUNK_C5 15                                       ;; 0e:4307 $c5 $0f
      sLOAD_ROOM 2, $00, 9, 12                         ;; 0e:4309 $f4 $02 $00 $09 $0c
      sRUN_ROOM_SCRIPT                                 ;; 0e:430e $ec
    sENDIF                                             ;; 0e:430f
    sEND                                               ;; 0e:430f $00

script_02bb:
    sIF_0B $c9                                         ;; 0e:4310 $0b $c9 $00 $08
      sUNK_C5 6                                        ;; 0e:4314 $c5 $06
      sLOAD_ROOM 2, $01, 9, 12                         ;; 0e:4316 $f4 $02 $01 $09 $0c
      sRUN_ROOM_SCRIPT                                 ;; 0e:431b $ec
    sENDIF                                             ;; 0e:431c
    sEND                                               ;; 0e:431c $00

script_02bc:
    sIF_0B $c9                                         ;; 0e:431d $0b $c9 $00 $08
      sUNK_C5 11                                       ;; 0e:4321 $c5 $0b
      sLOAD_ROOM 4, $01, 9, 12                         ;; 0e:4323 $f4 $04 $01 $09 $0c
      sRUN_ROOM_SCRIPT                                 ;; 0e:4328 $ec
    sENDIF                                             ;; 0e:4329
    sEND                                               ;; 0e:4329 $00

script_02bd:
    sIF_0B $c9                                         ;; 0e:432a $0b $c9 $00 $08
      sUNK_C5 14                                       ;; 0e:432e $c5 $0e
      sLOAD_ROOM 3, $01, 9, 12                         ;; 0e:4330 $f4 $03 $01 $09 $0c
      sRUN_ROOM_SCRIPT                                 ;; 0e:4335 $ec
    sENDIF                                             ;; 0e:4336
    sEND                                               ;; 0e:4336 $00

script_02be:
    sIF_0B $c9                                         ;; 0e:4337 $0b $c9 $00 $22
      sUNK_C5 9                                        ;; 0e:433b $c5 $09
      sIF_FLAG wScriptFlags03.7, !wScriptFlags04.1     ;; 0e:433d $08 $1f $a1 $00 $15
        sSET_MUSIC 0                                   ;; 0e:4342 $f8 $00
        sSFX 22                                        ;; 0e:4344 $f9 $16
        sDELAY 70                                      ;; 0e:4346 $f0 $46
        sSFX 22                                        ;; 0e:4348 $f9 $16
        sDELAY 70                                      ;; 0e:434a $f0 $46
        sSFX 37                                        ;; 0e:434c $f9 $25
        sSHAKE_SCREEN                                  ;; 0e:434e $fb
        sMSG                                           ;; 0e:434f $04
          db "<10>  __?<12>"
          db "<11>", $00  ;; 0e:4350
      sENDIF                                           ;; 0e:4357
      sLOAD_ROOM 3, $01, 9, 12                         ;; 0e:4357 $f4 $03 $01 $09 $0c
      sRUN_ROOM_SCRIPT                                 ;; 0e:435c $ec
    sENDIF                                             ;; 0e:435d
    sEND                                               ;; 0e:435d $00

script_02bf:
    sIF_0B $c9                                         ;; 0e:435e $0b $c9 $00 $07
      sLOAD_ROOM 0, $9b, 4, 5                          ;; 0e:4362 $f4 $00 $9b $04 $05
      sSET_MUSIC 20                                    ;; 0e:4367 $f8 $14
    sENDIF                                             ;; 0e:4369
    sEND                                               ;; 0e:4369 $00

script_02c0:
    sIF_0B $c9                                         ;; 0e:436a $0b $c9 $00 $05
      sLOAD_ROOM 1, $57, 14, 12                        ;; 0e:436e $f4 $01 $57 $0e $0c
    sENDIF                                             ;; 0e:4373
    sEND                                               ;; 0e:4373 $00

script_02c1:
    sIF_0B $c9                                         ;; 0e:4374 $0b $c9 $00 $05
      sLOAD_ROOM 1, $71, 2, 6                          ;; 0e:4378 $f4 $01 $71 $02 $06
    sENDIF                                             ;; 0e:437d
    sEND                                               ;; 0e:437d $00

script_02c2:
    sIF_0B $c9                                         ;; 0e:437e $0b $c9 $00 $05
      sLOAD_ROOM 1, $71, 8, 4                          ;; 0e:4382 $f4 $01 $71 $08 $04
    sENDIF                                             ;; 0e:4387
    sEND                                               ;; 0e:4387 $00

script_02c3:
    sIF_0B $c9                                         ;; 0e:4388 $0b $c9 $00 $05
      sLOAD_ROOM 1, $71, 16, 6                         ;; 0e:438c $f4 $01 $71 $10 $06
    sENDIF                                             ;; 0e:4391
    sEND                                               ;; 0e:4391 $00

script_02c4:
    sIF_0B $c9                                         ;; 0e:4392 $0b $c9 $00 $20
      sLOAD_ROOM 1, $36, 14, 254                       ;; 0e:4396 $f4 $01 $36 $0e $fe
      sSET_PLAYER_DIRECTION_UP                         ;; 0e:439b $84
      sDELAY 30                                        ;; 0e:439c $f0 $1e
      sPLAYER_STEP_BACKWARD                            ;; 0e:439e $81
      sDELAY 60                                        ;; 0e:439f $f0 $3c
      sPLAYER_STEP_BACKWARD                            ;; 0e:43a1 $81
      sPLAYER_STEP_BACKWARD                            ;; 0e:43a2 $81
      sDELAY 10                                        ;; 0e:43a3 $f0 $0a
      sPLAYER_STEP_BACKWARD                            ;; 0e:43a5 $81
      sDELAY 70                                        ;; 0e:43a6 $f0 $46
      sSET_PLAYER_DIRECTION_DOWN                       ;; 0e:43a8 $85
      sSET_PLAYER_HURT_SPRITE                          ;; 0e:43a9 $a5
      sSET_FAST_MOVEMENT                               ;; 0e:43aa $88
      sSFX 12                                          ;; 0e:43ab $f9 $0c
      sLOOP 6, 2                                       ;; 0e:43ad $03 $06 $02
        sPLAYER_STEP_FORWARD                           ;; 0e:43b0 $80
      sEND                                             ;; 0e:43b1 $00
      sSET_PLAYER_NORMAL_SPRITE                        ;; 0e:43b2 $a4
      sCLEAR_FAST_MOVEMENT                             ;; 0e:43b3 $89
      sDELAY 20                                        ;; 0e:43b4 $f0 $14
    sENDIF                                             ;; 0e:43b6
    sEND                                               ;; 0e:43b6 $00

script_02c5:
    sEND                                               ;; 0e:43b7 $00

script_02c6:
    sIF_0B $c9, $c1                                    ;; 0e:43b8 $0b $c9 $c1 $00 $05
      sLOAD_ROOM 1, $46, 7, 8                          ;; 0e:43bd $f4 $01 $46 $07 $08
    sENDIF                                             ;; 0e:43c2
    sEND                                               ;; 0e:43c2 $00

script_02c7:
    sIF_0B $c9                                         ;; 0e:43c3 $0b $c9 $00 $05
      sLOAD_ROOM 1, $45, 7, 12                         ;; 0e:43c7 $f4 $01 $45 $07 $0c
    sENDIF                                             ;; 0e:43cc
    sEND                                               ;; 0e:43cc $00

script_02c8:
    sIF_0B $c9                                         ;; 0e:43cd $0b $c9 $00 $05
      sLOAD_ROOM 15, $04, 14, 12                       ;; 0e:43d1 $f4 $0f $04 $0e $0c
    sENDIF                                             ;; 0e:43d6
    sEND                                               ;; 0e:43d6 $00

script_02c9:
    sIF_0B $c9                                         ;; 0e:43d7 $0b $c9 $00 $05
      sLOAD_ROOM 1, $24, 6, 2                          ;; 0e:43db $f4 $01 $24 $06 $02
    sENDIF                                             ;; 0e:43e0
    sEND                                               ;; 0e:43e0 $00

script_02ca:
    sIF_0B $c9                                         ;; 0e:43e1 $0b $c9 $00 $05
      sLOAD_ROOM 15, $32, 16, 10                       ;; 0e:43e5 $f4 $0f $32 $10 $0a
    sENDIF                                             ;; 0e:43ea
    sEND                                               ;; 0e:43ea $00

script_02cb:
    sIF_0B $c9                                         ;; 0e:43eb $0b $c9 $00 $05
      sLOAD_ROOM 15, $33, 14, 12                       ;; 0e:43ef $f4 $0f $33 $0e $0c
    sENDIF                                             ;; 0e:43f4
    sEND                                               ;; 0e:43f4 $00

script_02cc:
    sIF_0B $c9                                         ;; 0e:43f5 $0b $c9 $00 $05
      sLOAD_ROOM 5, $02, 16, 12                        ;; 0e:43f9 $f4 $05 $02 $10 $0c
    sENDIF                                             ;; 0e:43fe
    sEND                                               ;; 0e:43fe $00

script_02cd:
    sIF_0B $c9                                         ;; 0e:43ff $0b $c9 $00 $05
      sLOAD_ROOM 4, $02, 16, 12                        ;; 0e:4403 $f4 $04 $02 $10 $0c
    sENDIF                                             ;; 0e:4408
    sEND                                               ;; 0e:4408 $00

script_02ce:
    sIF_0B $c9                                         ;; 0e:4409 $0b $c9 $00 $05
      sLOAD_ROOM 6, $03, 16, 2                         ;; 0e:440d $f4 $06 $03 $10 $02
    sENDIF                                             ;; 0e:4412
    sEND                                               ;; 0e:4412 $00

script_02cf:
    sIF_0B $c9                                         ;; 0e:4413 $0b $c9 $00 $05
      sLOAD_ROOM 5, $03, 16, 2                         ;; 0e:4417 $f4 $05 $03 $10 $02
    sENDIF                                             ;; 0e:441c
    sEND                                               ;; 0e:441c $00

script_02d0:
    sIF_0B $c9                                         ;; 0e:441d $0b $c9 $00 $05
      sLOAD_ROOM 6, $42, 16, 2                         ;; 0e:4421 $f4 $06 $42 $10 $02
    sENDIF                                             ;; 0e:4426
    sEND                                               ;; 0e:4426 $00

script_02d1:
    sIF_0B $c9                                         ;; 0e:4427 $0b $c9 $00 $06
      sLOAD_ROOM 5, $42, 16, 2                         ;; 0e:442b $f4 $05 $42 $10 $02
      sRUN_ROOM_SCRIPT                                 ;; 0e:4430 $ec
    sENDIF                                             ;; 0e:4431
    sEND                                               ;; 0e:4431 $00

script_02d2:
    sIF_0B $c9                                         ;; 0e:4432 $0b $c9 $00 $05
      sLOAD_ROOM 5, $51, 16, 2                         ;; 0e:4436 $f4 $05 $51 $10 $02
    sENDIF                                             ;; 0e:443b
    sEND                                               ;; 0e:443b $00

script_02d3:
    sIF_0B $c9                                         ;; 0e:443c $0b $c9 $00 $05
      sLOAD_ROOM 4, $51, 16, 2                         ;; 0e:4440 $f4 $04 $51 $10 $02
    sENDIF                                             ;; 0e:4445
    sEND                                               ;; 0e:4445 $00

script_02d4:
    sIF_0B $c9                                         ;; 0e:4446 $0b $c9 $00 $05
      sLOAD_ROOM 5, $32, 16, 12                        ;; 0e:444a $f4 $05 $32 $10 $0c
    sENDIF                                             ;; 0e:444f
    sEND                                               ;; 0e:444f $00

script_02d5:
    sIF_0B $c9                                         ;; 0e:4450 $0b $c9 $00 $05
      sLOAD_ROOM 4, $32, 16, 12                        ;; 0e:4454 $f4 $04 $32 $10 $0c
    sENDIF                                             ;; 0e:4459
    sEND                                               ;; 0e:4459 $00

script_02d6:
    sIF_0B $c9                                         ;; 0e:445a $0b $c9 $00 $05
      sLOAD_ROOM 4, $21, 10, 8                         ;; 0e:445e $f4 $04 $21 $0a $08
    sENDIF                                             ;; 0e:4463
    sEND                                               ;; 0e:4463 $00

script_02d7:
    sIF_0B $c9                                         ;; 0e:4464 $0b $c9 $00 $05
      sLOAD_ROOM 5, $21, 10, 6                         ;; 0e:4468 $f4 $05 $21 $0a $06
    sENDIF                                             ;; 0e:446d
    sEND                                               ;; 0e:446d $00

script_02d8:
    sIF_0B $c9                                         ;; 0e:446e $0b $c9 $00 $05
      sLOAD_ROOM 6, $71, 2, 2                          ;; 0e:4472 $f4 $06 $71 $02 $02
    sENDIF                                             ;; 0e:4477
    sEND                                               ;; 0e:4477 $00

script_02d9:
    sIF_0B $c9                                         ;; 0e:4478 $0b $c9 $00 $05
      sLOAD_ROOM 15, $30, 14, 6                        ;; 0e:447c $f4 $0f $30 $0e $06
    sENDIF                                             ;; 0e:4481
    sEND                                               ;; 0e:4481 $00

script_02da:
    sIF_0B $c9                                         ;; 0e:4482 $0b $c9 $00 $05
      sLOAD_ROOM 15, $54, 2, 12                        ;; 0e:4486 $f4 $0f $54 $02 $0c
    sENDIF                                             ;; 0e:448b
    sEND                                               ;; 0e:448b $00

script_02db:
    sIF_0B $c9                                         ;; 0e:448c $0b $c9 $00 $05
      sLOAD_ROOM 15, $64, 14, 2                        ;; 0e:4490 $f4 $0f $64 $0e $02
    sENDIF                                             ;; 0e:4495
    sEND                                               ;; 0e:4495 $00

script_02dc:
    sIF_0B $c9                                         ;; 0e:4496 $0b $c9 $00 $05
      sLOAD_ROOM 5, $72, 16, 12                        ;; 0e:449a $f4 $05 $72 $10 $0c
    sENDIF                                             ;; 0e:449f
    sEND                                               ;; 0e:449f $00

script_02dd:
    sIF_0B $c9                                         ;; 0e:44a0 $0b $c9 $00 $05
      sLOAD_ROOM 5, $70, 16, 12                        ;; 0e:44a4 $f4 $05 $70 $10 $0c
    sENDIF                                             ;; 0e:44a9
    sEND                                               ;; 0e:44a9 $00

script_02de:
    sIF_0B $c9                                         ;; 0e:44aa $0b $c9 $00 $05
      sLOAD_ROOM 5, $70, 16, 2                         ;; 0e:44ae $f4 $05 $70 $10 $02
    sENDIF                                             ;; 0e:44b3
    sEND                                               ;; 0e:44b3 $00

script_02df:
    sIF_0B $c9                                         ;; 0e:44b4 $0b $c9 $00 $05
      sLOAD_ROOM 15, $31, 10, 4                        ;; 0e:44b8 $f4 $0f $31 $0a $04
    sENDIF                                             ;; 0e:44bd
    sEND                                               ;; 0e:44bd $00

script_02e0:
    sIF_0B $c9                                         ;; 0e:44be $0b $c9 $00 $05
      sLOAD_ROOM 1, $03, 9, 4                          ;; 0e:44c2 $f4 $01 $03 $09 $04
    sENDIF                                             ;; 0e:44c7
    sEND                                               ;; 0e:44c7 $00

script_02e1:
    sIF_0B $c9                                         ;; 0e:44c8 $0b $c9 $00 $08
      sUNK_C5 6                                        ;; 0e:44cc $c5 $06
      sLOAD_ROOM 5, $00, 9, 12                         ;; 0e:44ce $f4 $05 $00 $09 $0c
      sRUN_ROOM_SCRIPT                                 ;; 0e:44d3 $ec
    sENDIF                                             ;; 0e:44d4
    sEND                                               ;; 0e:44d4 $00

script_02e2:
    sIF_0B $c9                                         ;; 0e:44d5 $0b $c9 $00 $05
      sLOAD_ROOM 15, $02, 16, 8                        ;; 0e:44d9 $f4 $0f $02 $10 $08
    sENDIF                                             ;; 0e:44de
    sEND                                               ;; 0e:44de $00

script_02e3:
    sIF_0B $c9                                         ;; 0e:44df $0b $c9 $00 $05
      sLOAD_ROOM 4, $04, 16, 12                        ;; 0e:44e3 $f4 $04 $04 $10 $0c
    sENDIF                                             ;; 0e:44e8
    sEND                                               ;; 0e:44e8 $00

script_02e4:
    sIF_0B $c9                                         ;; 0e:44e9 $0b $c9 $00 $05
      sLOAD_ROOM 1, $03, 9, 4                          ;; 0e:44ed $f4 $01 $03 $09 $04
    sENDIF                                             ;; 0e:44f2
    sEND                                               ;; 0e:44f2 $00

script_02e5:
    sIF_0B $c9                                         ;; 0e:44f3 $0b $c9 $00 $05
      sLOAD_ROOM 1, $33, 11, 4                         ;; 0e:44f7 $f4 $01 $33 $0b $04
    sENDIF                                             ;; 0e:44fc
    sEND                                               ;; 0e:44fc $00

script_02e6:
    sEND                                               ;; 0e:44fd $00

script_02e7:
    sIF_0B $c9                                         ;; 0e:44fe $0b $c9 $00 $05
      sLOAD_ROOM 15, $62, 2, 4                         ;; 0e:4502 $f4 $0f $62 $02 $04
    sENDIF                                             ;; 0e:4507
    sEND                                               ;; 0e:4507 $00

script_02e8:
    sIF_0B $c9                                         ;; 0e:4508 $0b $c9 $00 $05
      sLOAD_ROOM 15, $63, 2, 6                         ;; 0e:450c $f4 $0f $63 $02 $06
    sENDIF                                             ;; 0e:4511
    sEND                                               ;; 0e:4511 $00

script_02e9:
    sIF_0B $c9                                         ;; 0e:4512 $0b $c9 $00 $05
      sLOAD_ROOM 5, $14, 2, 2                          ;; 0e:4516 $f4 $05 $14 $02 $02
    sENDIF                                             ;; 0e:451b
    sEND                                               ;; 0e:451b $00

script_02ea:
    sIF_0B $c9                                         ;; 0e:451c $0b $c9 $00 $05
      sLOAD_ROOM 6, $14, 16, 2                         ;; 0e:4520 $f4 $06 $14 $10 $02
    sENDIF                                             ;; 0e:4525
    sEND                                               ;; 0e:4525 $00

script_02eb:
    sIF_0B $c9                                         ;; 0e:4526 $0b $c9 $00 $05
      sLOAD_ROOM 15, $53, 16, 6                        ;; 0e:452a $f4 $0f $53 $10 $06
    sENDIF                                             ;; 0e:452f
    sEND                                               ;; 0e:452f $00

script_02ec:
    sIF_0B $c9                                         ;; 0e:4530 $0b $c9 $00 $05
      sLOAD_ROOM 15, $52, 16, 4                        ;; 0e:4534 $f4 $0f $52 $10 $04
    sENDIF                                             ;; 0e:4539
    sEND                                               ;; 0e:4539 $00

script_02ed:
    sIF_0B $c9                                         ;; 0e:453a $0b $c9 $00 $09
      sLOAD_ROOM 3, $06, 16, 12                        ;; 0e:453e $f4 $03 $06 $10 $0c
      sSET_ROOM_TILE $02, 8, 6                         ;; 0e:4543 $b0 $02 $08 $06
    sENDIF                                             ;; 0e:4547
    sEND                                               ;; 0e:4547 $00

script_02ee:
    sIF_0B $c9                                         ;; 0e:4548 $0b $c9 $00 $05
      sLOAD_ROOM 4, $06, 16, 12                        ;; 0e:454c $f4 $04 $06 $10 $0c
    sENDIF                                             ;; 0e:4551
    sEND                                               ;; 0e:4551 $00

script_02ef:
    sEND                                               ;; 0e:4552 $00

script_02f0:
    sEND                                               ;; 0e:4553 $00

script_02f1:
    sIF_0B $c9                                         ;; 0e:4554 $0b $c9 $00 $06
      sLOAD_ROOM 2, $06, 16, 2                         ;; 0e:4558 $f4 $02 $06 $10 $02
      sRUN_ROOM_SCRIPT                                 ;; 0e:455d $ec
    sENDIF                                             ;; 0e:455e
    sEND                                               ;; 0e:455e $00

script_02f2:
    sIF_0B $c9                                         ;; 0e:455f $0b $c9 $00 $05
      sLOAD_ROOM 3, $06, 16, 2                         ;; 0e:4563 $f4 $03 $06 $10 $02
    sENDIF                                             ;; 0e:4568
    sEND                                               ;; 0e:4568 $00

script_02f3:
    sIF_0B $c9                                         ;; 0e:4569 $0b $c9 $00 $05
      sLOAD_ROOM 2, $05, 16, 2                         ;; 0e:456d $f4 $02 $05 $10 $02
    sENDIF                                             ;; 0e:4572
    sEND                                               ;; 0e:4572 $00

script_02f4:
    sIF_0B $c9                                         ;; 0e:4573 $0b $c9 $00 $05
      sLOAD_ROOM 1, $40, 14, 1                         ;; 0e:4577 $f4 $01 $40 $0e $01
    sENDIF                                             ;; 0e:457c
    sEND                                               ;; 0e:457c $00

script_02f5:
    sIF_0B $c9, $c1                                    ;; 0e:457d $0b $c9 $c1 $00 $2a
      sIF_FLAG wScriptFlags0E.2, wScriptFlags0E.3, !wScriptFlags0E.4, wScriptFlags0E.5, !wScriptFlags0E.6, wScriptFlags0E.7 ;; 0e:4582 $08 $72 $73 $f4 $75 $f6 $77 $00 $05
        sLOAD_ROOM 2, $74, 14, 4                       ;; 0e:458b $f4 $02 $74 $0e $04
      sENDIF                                           ;; 0e:4590
      sIF_FLAG wScriptFlags0E.2, wScriptFlags0E.3, !wScriptFlags0E.4, wScriptFlags0E.5, wScriptFlags0E.6, !wScriptFlags0E.7 ;; 0e:4590 $08 $72 $73 $f4 $75 $76 $f7 $00 $05
        sLOAD_ROOM 4, $47, 16, 12                      ;; 0e:4599 $f4 $04 $47 $10 $0c
      sENDIF                                           ;; 0e:459e
      sIF_FLAG wScriptFlags0E.2, wScriptFlags0E.3, !wScriptFlags0E.4, wScriptFlags0E.5, wScriptFlags0E.6, wScriptFlags0E.7 ;; 0e:459e $08 $72 $73 $f4 $75 $76 $77 $00 $05
        sLOAD_ROOM 6, $64, 16, 12                      ;; 0e:45a7 $f4 $06 $64 $10 $0c
      sENDIF                                           ;; 0e:45ac
    sENDIF                                             ;; 0e:45ac
    sEND                                               ;; 0e:45ac $00

script_02f6:
    sIF_0B $c9                                         ;; 0e:45ad $0b $c9 $00 $06
      sSET_ROOM_TILE $02, 8, 6                         ;; 0e:45b1 $b0 $02 $08 $06
      sSFX 24                                          ;; 0e:45b5 $f9 $18
    sENDIF                                             ;; 0e:45b7
    sEND                                               ;; 0e:45b7 $00

script_02f7:
    sIF_0B $c9                                         ;; 0e:45b8 $0b $c9 $00 $05
      sLOAD_ROOM 2, $52, 16, 2                         ;; 0e:45bc $f4 $02 $52 $10 $02
    sENDIF                                             ;; 0e:45c1
    sEND                                               ;; 0e:45c1 $00

script_02f8:
    sEND                                               ;; 0e:45c2 $00

script_02f9:
    sEND                                               ;; 0e:45c3 $00

script_02fa:
    sEND                                               ;; 0e:45c4 $00

script_02fb:
    sIF_0B $c9                                         ;; 0e:45c5 $0b $c9 $00 $05
      sLOAD_ROOM 15, $35, 14, 6                        ;; 0e:45c9 $f4 $0f $35 $0e $06
    sENDIF                                             ;; 0e:45ce
    sEND                                               ;; 0e:45ce $00

script_02fc:
    sIF_0B $c9                                         ;; 0e:45cf $0b $c9 $00 $05
      sLOAD_ROOM 2, $16, 16, 12                        ;; 0e:45d3 $f4 $02 $16 $10 $0c
    sENDIF                                             ;; 0e:45d8
    sEND                                               ;; 0e:45d8 $00

script_02fd:
    sIF_0B $c9                                         ;; 0e:45d9 $0b $c9 $00 $05
      sLOAD_ROOM 8, $62, 16, 2                         ;; 0e:45dd $f4 $08 $62 $10 $02
    sENDIF                                             ;; 0e:45e2
    sEND                                               ;; 0e:45e2 $00

script_02fe:
    sIF_0B $c9                                         ;; 0e:45e3 $0b $c9 $00 $05
      sLOAD_ROOM 14, $36, 8, 5                         ;; 0e:45e7 $f4 $0e $36 $08 $05
    sENDIF                                             ;; 0e:45ec
    sEND                                               ;; 0e:45ec $00

script_02ff:
    sIF_0B $c9                                         ;; 0e:45ed $0b $c9 $00 $05
      sLOAD_ROOM 2, $50, 16, 2                         ;; 0e:45f1 $f4 $02 $50 $10 $02
    sENDIF                                             ;; 0e:45f6
    sEND                                               ;; 0e:45f6 $00

script_0300:
    sIF_0B $c9                                         ;; 0e:45f7 $0b $c9 $00 $05
      sLOAD_ROOM 3, $50, 16, 2                         ;; 0e:45fb $f4 $03 $50 $10 $02
    sENDIF                                             ;; 0e:4600
    sEND                                               ;; 0e:4600 $00

script_0301:
    sIF_0B $c9                                         ;; 0e:4601 $0b $c9 $00 $05
      sLOAD_ROOM 2, $62, 16, 12                        ;; 0e:4605 $f4 $02 $62 $10 $0c
    sENDIF                                             ;; 0e:460a
    sEND                                               ;; 0e:460a $00

script_0302:
    sIF_0B $c9                                         ;; 0e:460b $0b $c9 $00 $05
      sLOAD_ROOM 3, $62, 16, 12                        ;; 0e:460f $f4 $03 $62 $10 $0c
    sENDIF                                             ;; 0e:4614
    sEND                                               ;; 0e:4614 $00

script_0303:
    sIF_0B $c9                                         ;; 0e:4615 $0b $c9 $00 $05
      sLOAD_ROOM 2, $10, 16, 2                         ;; 0e:4619 $f4 $02 $10 $10 $02
    sENDIF                                             ;; 0e:461e
    sEND                                               ;; 0e:461e $00

script_0304:
    sIF_0B $c9                                         ;; 0e:461f $0b $c9 $00 $05
      sLOAD_ROOM 3, $10, 16, 2                         ;; 0e:4623 $f4 $03 $10 $10 $02
    sENDIF                                             ;; 0e:4628
    sEND                                               ;; 0e:4628 $00

script_0305:
    sIF_0B $c9                                         ;; 0e:4629 $0b $c9 $00 $05
      sLOAD_ROOM 2, $20, 16, 2                         ;; 0e:462d $f4 $02 $20 $10 $02
    sENDIF                                             ;; 0e:4632
    sEND                                               ;; 0e:4632 $00

script_0306:
    sIF_0B $c9                                         ;; 0e:4633 $0b $c9 $00 $06
      sLOAD_ROOM 3, $20, 16, 2                         ;; 0e:4637 $f4 $03 $20 $10 $02
      sRUN_ROOM_SCRIPT                                 ;; 0e:463c $ec
    sENDIF                                             ;; 0e:463d
    sEND                                               ;; 0e:463d $00

script_0307:
    sIF_0B $c9                                         ;; 0e:463e $0b $c9 $00 $05
      sLOAD_ROOM 5, $20, 16, 12                        ;; 0e:4642 $f4 $05 $20 $10 $0c
    sENDIF                                             ;; 0e:4647
    sEND                                               ;; 0e:4647 $00

script_0308:
    sIF_0B $c9                                         ;; 0e:4648 $0b $c9 $00 $09
      sLOAD_ROOM 3, $20, 16, 12                        ;; 0e:464c $f4 $03 $20 $10 $0c
      sSET_ROOM_TILE $02, 8, 6                         ;; 0e:4651 $b0 $02 $08 $06
    sENDIF                                             ;; 0e:4655
    sEND                                               ;; 0e:4655 $00

script_0309:
    sIF_0B $c9                                         ;; 0e:4656 $0b $c9 $00 $05
      sLOAD_ROOM 14, $51, 8, 6                         ;; 0e:465a $f4 $0e $51 $08 $06
    sENDIF                                             ;; 0e:465f
    sEND                                               ;; 0e:465f $00

script_030a:
    sIF_0B $c9                                         ;; 0e:4660 $0b $c9 $00 $05
      sLOAD_ROOM 2, $73, 16, 2                         ;; 0e:4664 $f4 $02 $73 $10 $02
    sENDIF                                             ;; 0e:4669
    sEND                                               ;; 0e:4669 $00

script_030b:
    sIF_0B $c9                                         ;; 0e:466a $0b $c9 $00 $05
      sLOAD_ROOM 3, $04, 16, 12                        ;; 0e:466e $f4 $03 $04 $10 $0c
    sENDIF                                             ;; 0e:4673
    sEND                                               ;; 0e:4673 $00

script_030c:
    sIF_0B $c9                                         ;; 0e:4674 $0b $c9 $00 $05
      sLOAD_ROOM 2, $04, 16, 12                        ;; 0e:4678 $f4 $02 $04 $10 $0c
    sENDIF                                             ;; 0e:467d
    sEND                                               ;; 0e:467d $00

script_030d:
    sIF_0B $c9                                         ;; 0e:467e $0b $c9 $00 $05
      sLOAD_ROOM 3, $32, 16, 2                         ;; 0e:4682 $f4 $03 $32 $10 $02
    sENDIF                                             ;; 0e:4687
    sEND                                               ;; 0e:4687 $00

script_030e:
    sIF_0B $c9                                         ;; 0e:4688 $0b $c9 $00 $05
      sLOAD_ROOM 2, $32, 16, 2                         ;; 0e:468c $f4 $02 $32 $10 $02
    sENDIF                                             ;; 0e:4691
    sEND                                               ;; 0e:4691 $00

script_030f:
    sIF_0B $c9                                         ;; 0e:4692 $0b $c9 $00 $05
      sLOAD_ROOM 4, $43, 16, 12                        ;; 0e:4696 $f4 $04 $43 $10 $0c
    sENDIF                                             ;; 0e:469b
    sEND                                               ;; 0e:469b $00

script_0310:
    sIF_0B $c9                                         ;; 0e:469c $0b $c9 $00 $05
      sLOAD_ROOM 3, $52, 16, 2                         ;; 0e:46a0 $f4 $03 $52 $10 $02
    sENDIF                                             ;; 0e:46a5
    sEND                                               ;; 0e:46a5 $00

script_0311:
    sIF_0B $c9                                         ;; 0e:46a6 $0b $c9 $00 $0d
      sUNK_C5 3                                        ;; 0e:46aa $c5 $03
      sCLEAR_FLAG wScriptFlags0F.0                     ;; 0e:46ac $db $78
      sCLEAR_FLAG wScriptFlags0F.1                     ;; 0e:46ae $db $79
      sLOAD_ROOM 3, $35, 9, 12                         ;; 0e:46b0 $f4 $03 $35 $09 $0c
      sSET_MUSIC 14                                    ;; 0e:46b5 $f8 $0e
    sENDIF                                             ;; 0e:46b7
    sEND                                               ;; 0e:46b7 $00

script_0312:
    sIF_0B $c9                                         ;; 0e:46b8 $0b $c9 $00 $05
      sLOAD_ROOM 2, $35, 16, 2                         ;; 0e:46bc $f4 $02 $35 $10 $02
    sENDIF                                             ;; 0e:46c1
    sEND                                               ;; 0e:46c1 $00

script_0313:
    sIF_0B $c9                                         ;; 0e:46c2 $0b $c9 $00 $05
      sLOAD_ROOM 3, $35, 16, 2                         ;; 0e:46c6 $f4 $03 $35 $10 $02
    sENDIF                                             ;; 0e:46cb
    sEND                                               ;; 0e:46cb $00

script_0314:
    sIF_0B $c9                                         ;; 0e:46cc $0b $c9 $00 $06
      sLOAD_ROOM 2, $55, 16, 12                        ;; 0e:46d0 $f4 $02 $55 $10 $0c
      sRUN_ROOM_SCRIPT                                 ;; 0e:46d5 $ec
    sENDIF                                             ;; 0e:46d6
    sEND                                               ;; 0e:46d6 $00

script_0315:
    sIF_0B $c9                                         ;; 0e:46d7 $0b $c9 $00 $07
      sLOAD_ROOM 3, $55, 16, 12                        ;; 0e:46db $f4 $03 $55 $10 $0c
      sCLEAR_FLAG wScriptFlags0F.0                     ;; 0e:46e0 $db $78
    sENDIF                                             ;; 0e:46e2
    sEND                                               ;; 0e:46e2 $00

script_0316:
    sIF_0B $c9                                         ;; 0e:46e3 $0b $c9 $00 $06
      sLOAD_ROOM 2, $66, 16, 12                        ;; 0e:46e7 $f4 $02 $66 $10 $0c
      sRUN_ROOM_SCRIPT                                 ;; 0e:46ec $ec
    sENDIF                                             ;; 0e:46ed
    sEND                                               ;; 0e:46ed $00

script_0317:
    sIF_0B $c9                                         ;; 0e:46ee $0b $c9 $00 $05
      sLOAD_ROOM 3, $66, 16, 12                        ;; 0e:46f2 $f4 $03 $66 $10 $0c
    sENDIF                                             ;; 0e:46f7
    sEND                                               ;; 0e:46f7 $00

script_0318:
    sIF_0B $c9                                         ;; 0e:46f8 $0b $c9 $00 $05
      sLOAD_ROOM 2, $64, 16, 2                         ;; 0e:46fc $f4 $02 $64 $10 $02
    sENDIF                                             ;; 0e:4701
    sEND                                               ;; 0e:4701 $00

script_0319:
    sIF_0B $c9                                         ;; 0e:4702 $0b $c9 $00 $05
      sLOAD_ROOM 3, $64, 16, 2                         ;; 0e:4706 $f4 $03 $64 $10 $02
    sENDIF                                             ;; 0e:470b
    sEND                                               ;; 0e:470b $00

script_031a:
    sIF_0B $c9                                         ;; 0e:470c $0b $c9 $00 $05
      sLOAD_ROOM 2, $24, 16, 12                        ;; 0e:4710 $f4 $02 $24 $10 $0c
    sENDIF                                             ;; 0e:4715
    sEND                                               ;; 0e:4715 $00

script_031b:
    sIF_0B $c9                                         ;; 0e:4716 $0b $c9 $00 $05
      sLOAD_ROOM 3, $24, 16, 12                        ;; 0e:471a $f4 $03 $24 $10 $0c
    sENDIF                                             ;; 0e:471f
    sEND                                               ;; 0e:471f $00

script_031c:
    sIF_0B $c9                                         ;; 0e:4720 $0b $c9 $00 $05
      sLOAD_ROOM 2, $26, 16, 12                        ;; 0e:4724 $f4 $02 $26 $10 $0c
    sENDIF                                             ;; 0e:4729
    sEND                                               ;; 0e:4729 $00

script_031d:
    sIF_0B $c9                                         ;; 0e:472a $0b $c9 $00 $05
      sLOAD_ROOM 3, $26, 16, 12                        ;; 0e:472e $f4 $03 $26 $10 $0c
    sENDIF                                             ;; 0e:4733
    sEND                                               ;; 0e:4733 $00

script_031e:
    sIF_0B $c9                                         ;; 0e:4734 $0b $c9 $00 $05
      sLOAD_ROOM 2, $25, 16, 2                         ;; 0e:4738 $f4 $02 $25 $10 $02
    sENDIF                                             ;; 0e:473d
    sEND                                               ;; 0e:473d $00

script_031f:
    sIF_0B $c9                                         ;; 0e:473e $0b $c9 $00 $2a
      sIF_FLAG wScriptFlags0E.2, wScriptFlags0E.3, !wScriptFlags0E.4, wScriptFlags0E.5, wScriptFlags0E.6, wScriptFlags0E.7 ;; 0e:4742 $08 $72 $73 $f4 $75 $76 $77 $00 $05
        sLOAD_ROOM 1, $10, 6, 8                        ;; 0e:474b $f4 $01 $10 $06 $08
      sENDIF                                           ;; 0e:4750
      sIF_FLAG wScriptFlags0E.2, wScriptFlags0E.3, !wScriptFlags0E.4, wScriptFlags0E.5, wScriptFlags0E.6, !wScriptFlags0E.7 ;; 0e:4750 $08 $72 $73 $f4 $75 $76 $f7 $00 $05
        sLOAD_ROOM 1, $61, 12, 8                       ;; 0e:4759 $f4 $01 $61 $0c $08
      sENDIF                                           ;; 0e:475e
      sIF_FLAG wScriptFlags0E.2, wScriptFlags0E.3, !wScriptFlags0E.4, wScriptFlags0E.5, !wScriptFlags0E.6, wScriptFlags0E.7 ;; 0e:475e $08 $72 $73 $f4 $75 $f6 $77 $00 $05
        sLOAD_ROOM 1, $75, 12, 12                      ;; 0e:4767 $f4 $01 $75 $0c $0c
      sENDIF                                           ;; 0e:476c
    sENDIF                                             ;; 0e:476c
    sEND                                               ;; 0e:476c $00

script_0320:
    sIF_0B $c9                                         ;; 0e:476d $0b $c9 $00 $05
      sLOAD_ROOM 1, $20, 12, 8                         ;; 0e:4771 $f4 $01 $20 $0c $08
    sENDIF                                             ;; 0e:4776
    sEND                                               ;; 0e:4776 $00

script_0321:
    sIF_0B $c9                                         ;; 0e:4777 $0b $c9 $00 $05
      sLOAD_ROOM 6, $75, 9, 7                          ;; 0e:477b $f4 $06 $75 $09 $07
    sENDIF                                             ;; 0e:4780
    sEND                                               ;; 0e:4780 $00

script_0322:
    sIF_0B $c9                                         ;; 0e:4781 $0b $c9 $00 $05
      sLOAD_ROOM 6, $44, 9, 7                          ;; 0e:4785 $f4 $06 $44 $09 $07
    sENDIF                                             ;; 0e:478a
    sEND                                               ;; 0e:478a $00

script_0323:
    sIF_0B $c9                                         ;; 0e:478b $0b $c9 $00 $05
      sLOAD_ROOM 1, $21, 12, 8                         ;; 0e:478f $f4 $01 $21 $0c $08
    sENDIF                                             ;; 0e:4794
    sEND                                               ;; 0e:4794 $00

script_0324:
    sIF_0B $c9                                         ;; 0e:4795 $0b $c9 $00 $05
      sLOAD_ROOM 1, $11, 6, 8                          ;; 0e:4799 $f4 $01 $11 $06 $08
    sENDIF                                             ;; 0e:479e
    sEND                                               ;; 0e:479e $00

script_0325:
    sIF_0B $c9                                         ;; 0e:479f $0b $c9 $00 $05
      sLOAD_ROOM 1, $50, 6, 8                          ;; 0e:47a3 $f4 $01 $50 $06 $08
    sENDIF                                             ;; 0e:47a8
    sEND                                               ;; 0e:47a8 $00

script_0326:
    sIF_0B $c9                                         ;; 0e:47a9 $0b $c9 $00 $05
      sLOAD_ROOM 1, $60, 12, 8                         ;; 0e:47ad $f4 $01 $60 $0c $08
    sENDIF                                             ;; 0e:47b2
    sEND                                               ;; 0e:47b2 $00

script_0327:
    sIF_0B $c9                                         ;; 0e:47b3 $0b $c9 $00 $05
      sLOAD_ROOM 4, $67, 9, 7                          ;; 0e:47b7 $f4 $04 $67 $09 $07
    sENDIF                                             ;; 0e:47bc
    sEND                                               ;; 0e:47bc $00

script_0328:
    sIF_0B $c9                                         ;; 0e:47bd $0b $c9 $00 $05
      sLOAD_ROOM 6, $53, 9, 7                          ;; 0e:47c1 $f4 $06 $53 $09 $07
    sENDIF                                             ;; 0e:47c6
    sEND                                               ;; 0e:47c6 $00

script_0329:
    sIF_0B $c9                                         ;; 0e:47c7 $0b $c9 $00 $05
      sLOAD_ROOM 4, $45, 9, 7                          ;; 0e:47cb $f4 $04 $45 $09 $07
    sENDIF                                             ;; 0e:47d0
    sEND                                               ;; 0e:47d0 $00

script_032a:
    sIF_0B $c9                                         ;; 0e:47d1 $0b $c9 $00 $05
      sLOAD_ROOM 5, $46, 9, 7                          ;; 0e:47d5 $f4 $05 $46 $09 $07
    sENDIF                                             ;; 0e:47da
    sEND                                               ;; 0e:47da $00

script_032b:
    sIF_0B $c9                                         ;; 0e:47db $0b $c9 $00 $05
      sLOAD_ROOM 4, $65, 9, 7                          ;; 0e:47df $f4 $04 $65 $09 $07
    sENDIF                                             ;; 0e:47e4
    sEND                                               ;; 0e:47e4 $00

script_032c:
    sIF_0B $c9                                         ;; 0e:47e5 $0b $c9 $00 $05
      sLOAD_ROOM 5, $63, 9, 7                          ;; 0e:47e9 $f4 $05 $63 $09 $07
    sENDIF                                             ;; 0e:47ee
    sEND                                               ;; 0e:47ee $00

script_032d:
    sIF_0B $c9                                         ;; 0e:47ef $0b $c9 $00 $05
      sLOAD_ROOM 5, $40, 9, 7                          ;; 0e:47f3 $f4 $05 $40 $09 $07
    sENDIF                                             ;; 0e:47f8
    sEND                                               ;; 0e:47f8 $00

script_032e:
    sIF_0B $c9                                         ;; 0e:47f9 $0b $c9 $00 $05
      sLOAD_ROOM 5, $52, 9, 7                          ;; 0e:47fd $f4 $05 $52 $09 $07
    sENDIF                                             ;; 0e:4802
    sEND                                               ;; 0e:4802 $00

script_032f:
    sEND                                               ;; 0e:4803 $00

script_0330:
    sIF_0B $c9                                         ;; 0e:4804 $0b $c9 $00 $05
      sLOAD_ROOM 1, $51, 6, 8                          ;; 0e:4808 $f4 $01 $51 $06 $08
    sENDIF                                             ;; 0e:480d
    sEND                                               ;; 0e:480d $00

script_0331:
    sIF_0B $c9                                         ;; 0e:480e $0b $c9 $00 $05
      sLOAD_ROOM 2, $46, 9, 7                          ;; 0e:4812 $f4 $02 $46 $09 $07
    sENDIF                                             ;; 0e:4817
    sEND                                               ;; 0e:4817 $00

script_0332:
    sIF_0B $c9                                         ;; 0e:4818 $0b $c9 $00 $05
      sLOAD_ROOM 3, $33, 9, 7                          ;; 0e:481c $f4 $03 $33 $09 $07
    sENDIF                                             ;; 0e:4821
    sEND                                               ;; 0e:4821 $00

script_0333:
    sIF_0B $c9                                         ;; 0e:4822 $0b $c9 $00 $05
      sLOAD_ROOM 1, $02, 6, 8                          ;; 0e:4826 $f4 $01 $02 $06 $08
    sENDIF                                             ;; 0e:482b
    sEND                                               ;; 0e:482b $00

script_0334:
    sIF_0B $c9                                         ;; 0e:482c $0b $c9 $00 $05
      sLOAD_ROOM 1, $12, 12, 8                         ;; 0e:4830 $f4 $01 $12 $0c $08
    sENDIF                                             ;; 0e:4835
    sEND                                               ;; 0e:4835 $00

script_0335:
    sIF_0B $c9                                         ;; 0e:4836 $0b $c9 $00 $05
      sLOAD_ROOM 1, $16, 12, 8                         ;; 0e:483a $f4 $01 $16 $0c $08
    sENDIF                                             ;; 0e:483f
    sEND                                               ;; 0e:483f $00

script_0336:
    sIF_0B $c9                                         ;; 0e:4840 $0b $c9 $00 $05
      sLOAD_ROOM 1, $06, 6, 8                          ;; 0e:4844 $f4 $01 $06 $06 $08
    sENDIF                                             ;; 0e:4849
    sEND                                               ;; 0e:4849 $00

script_0337:
    sIF_0B $c9                                         ;; 0e:484a $0b $c9 $00 $05
      sLOAD_ROOM 2, $17, 9, 7                          ;; 0e:484e $f4 $02 $17 $09 $07
    sENDIF                                             ;; 0e:4853
    sEND                                               ;; 0e:4853 $00

script_0338:
    sIF_0B $c9                                         ;; 0e:4854 $0b $c9 $00 $05
      sLOAD_ROOM 6, $21, 9, 7                          ;; 0e:4858 $f4 $06 $21 $09 $07
    sENDIF                                             ;; 0e:485d
    sEND                                               ;; 0e:485d $00

script_0339:
    sIF_0B $c9                                         ;; 0e:485e $0b $c9 $00 $05
      sLOAD_ROOM 15, $56, 14, 4                        ;; 0e:4862 $f4 $0f $56 $0e $04
    sENDIF                                             ;; 0e:4867
    sEND                                               ;; 0e:4867 $00

script_033a:
    sIF_0B $c9                                         ;; 0e:4868 $0b $c9 $00 $05
      sLOAD_ROOM 3, $56, 16, 2                         ;; 0e:486c $f4 $03 $56 $10 $02
    sENDIF                                             ;; 0e:4871
    sEND                                               ;; 0e:4871 $00

script_033b:
    sIF_0B $c9, $c1                                    ;; 0e:4872 $0b $c9 $c1 $00 $06
      sLOAD_ROOM 1, $15, 9, 12                         ;; 0e:4877 $f4 $01 $15 $09 $0c
      sRUN_ROOM_SCRIPT                                 ;; 0e:487c $ec
    sENDIF                                             ;; 0e:487d
    sEND                                               ;; 0e:487d $00

script_033c:
    sIF_0B $c9, $c1                                    ;; 0e:487e $0b $c9 $c1 $00 $06
      sLOAD_ROOM 14, $16, 9, 2                         ;; 0e:4883 $f4 $0e $16 $09 $02
      sRUN_ROOM_SCRIPT                                 ;; 0e:4888 $ec
    sENDIF                                             ;; 0e:4889
    sEND                                               ;; 0e:4889 $00

script_033d:
    sIF_0B $c9                                         ;; 0e:488a $0b $c9 $00 $07
      sUNK_C5 5                                        ;; 0e:488e $c5 $05
      sLOAD_ROOM 4, $63, 9, 12                         ;; 0e:4890 $f4 $04 $63 $09 $0c
    sENDIF                                             ;; 0e:4895
    sEND                                               ;; 0e:4895 $00

script_033e:
    sIF_0B $c9                                         ;; 0e:4896 $0b $c9 $00 $07
      sUNK_C5 35                                       ;; 0e:489a $c5 $23
      sLOAD_ROOM 6, $46, 16, 2                         ;; 0e:489c $f4 $06 $46 $10 $02
    sENDIF                                             ;; 0e:48a1
    sEND                                               ;; 0e:48a1 $00

script_033f:
    sIF_0B $c9                                         ;; 0e:48a2 $0b $c9 $00 $05
      sLOAD_ROOM 2, $46, 16, 2                         ;; 0e:48a6 $f4 $02 $46 $10 $02
    sENDIF                                             ;; 0e:48ab
    sEND                                               ;; 0e:48ab $00

script_0340:
    sIF_0B $c9                                         ;; 0e:48ac $0b $c9 $00 $05
      sLOAD_ROOM 4, $67, 16, 2                         ;; 0e:48b0 $f4 $04 $67 $10 $02
    sENDIF                                             ;; 0e:48b5
    sEND                                               ;; 0e:48b5 $00

script_0341:
    sIF_0B $c9                                         ;; 0e:48b6 $0b $c9 $00 $05
      sLOAD_ROOM 4, $65, 16, 2                         ;; 0e:48ba $f4 $04 $65 $10 $02
    sENDIF                                             ;; 0e:48bf
    sEND                                               ;; 0e:48bf $00

script_0342:
    sIF_0B $c9                                         ;; 0e:48c0 $0b $c9 $00 $05
      sLOAD_ROOM 6, $75, 16, 2                         ;; 0e:48c4 $f4 $06 $75 $10 $02
    sENDIF                                             ;; 0e:48c9
    sEND                                               ;; 0e:48c9 $00

script_0343:
    sIF_0B $c9                                         ;; 0e:48ca $0b $c9 $00 $05
      sLOAD_ROOM 15, $66, 8, 8                         ;; 0e:48ce $f4 $0f $66 $08 $08
    sENDIF                                             ;; 0e:48d3
    sEND                                               ;; 0e:48d3 $00

script_0344:
    sIF_0B $c9, $c1                                    ;; 0e:48d4 $0b $c9 $c1 $00 $05
      sLOAD_ROOM 1, $72, 10, 2                         ;; 0e:48d9 $f4 $01 $72 $0a $02
    sENDIF                                             ;; 0e:48de
    sEND                                               ;; 0e:48de $00

script_0345:
    sIF_0B $c9                                         ;; 0e:48df $0b $c9 $00 $05
      sLOAD_ROOM 1, $74, 16, 12                        ;; 0e:48e3 $f4 $01 $74 $10 $0c
    sENDIF                                             ;; 0e:48e8
    sEND                                               ;; 0e:48e8 $00

script_0346:
    sIF_0B $c9                                         ;; 0e:48e9 $0b $c9 $00 $05
      sLOAD_ROOM 6, $57, 16, 2                         ;; 0e:48ed $f4 $06 $57 $10 $02
    sENDIF                                             ;; 0e:48f2
    sEND                                               ;; 0e:48f2 $00

script_0347:
    sIF_0B $c9                                         ;; 0e:48f3 $0b $c9 $00 $06
      sLOAD_ROOM 1, $14, 16, 12                        ;; 0e:48f7 $f4 $01 $14 $10 $0c
      sRUN_ROOM_SCRIPT                                 ;; 0e:48fc $ec
    sENDIF                                             ;; 0e:48fd
    sEND                                               ;; 0e:48fd $00

script_0348:
    sIF_0B $c9                                         ;; 0e:48fe $0b $c9 $00 $05
      sLOAD_ROOM 1, $03, 2, 12                         ;; 0e:4902 $f4 $01 $03 $02 $0c
    sENDIF                                             ;; 0e:4907
    sEND                                               ;; 0e:4907 $00

script_0349:
    sEND                                               ;; 0e:4908 $00

script_034a:
    sIF_0B $c9                                         ;; 0e:4909 $0b $c9 $00 $05
      sLOAD_ROOM 1, $04, 6, 4                          ;; 0e:490d $f4 $01 $04 $06 $04
    sENDIF                                             ;; 0e:4912
    sEND                                               ;; 0e:4912 $00

script_034b:
    sEND                                               ;; 0e:4913 $00

script_034c:
    sIF_0B $c9                                         ;; 0e:4914 $0b $c9 $00 $07
      sUNK_C5 53                                       ;; 0e:4918 $c5 $35
      sLOAD_ROOM 1, $01, 16, 12                        ;; 0e:491a $f4 $01 $01 $10 $0c
    sENDIF                                             ;; 0e:491f
    sEND                                               ;; 0e:491f $00

script_034d:
    sEND                                               ;; 0e:4920 $00

script_034e:
    sEND                                               ;; 0e:4921 $00

script_034f:
    sEND                                               ;; 0e:4922 $00

script_0350:
    sEND                                               ;; 0e:4923 $00

script_0351:
    sEND                                               ;; 0e:4924 $00

script_0352:
    sIF_0B $c9                                         ;; 0e:4925 $0b $c9 $00 $60
      sIF_FLAG !wScriptFlags06.7                       ;; 0e:4929 $08 $b7 $00 $55
        sSFX 37                                        ;; 0e:492d $f9 $25
        sSHAKE_SCREEN                                  ;; 0e:492f $fb
        sMSG                                           ;; 0e:4930 $04
          db "<10>__?<12>"
          db "<11>", $00    ;; 0e:4931
        sPLAYER_STEP_BACKWARD                          ;; 0e:4937 $81
        sPLAYER_STEP_BACKWARD                          ;; 0e:4938 $81
        sSET_PLAYER_DIRECTION_LEFT                     ;; 0e:4939 $87
        sSFX 20                                        ;; 0e:493a $f9 $14
        sSET_ROOM_TILE $64, 0, 2                       ;; 0e:493c $b0 $64 $00 $02
        sDELAY 15                                      ;; 0e:4940 $f0 $0f
        sSFX 20                                        ;; 0e:4942 $f9 $14
        sSET_ROOM_TILE $64, 1, 2                       ;; 0e:4944 $b0 $64 $01 $02
        sDELAY 15                                      ;; 0e:4948 $f0 $0f
        sSFX 20                                        ;; 0e:494a $f9 $14
        sSET_ROOM_TILE $64, 2, 2                       ;; 0e:494c $b0 $64 $02 $02
        sDELAY 15                                      ;; 0e:4950 $f0 $0f
        sSFX 20                                        ;; 0e:4952 $f9 $14
        sSET_ROOM_TILE $64, 3, 2                       ;; 0e:4954 $b0 $64 $03 $02
        sDELAY 15                                      ;; 0e:4958 $f0 $0f
        sSFX 20                                        ;; 0e:495a $f9 $14
        sSET_ROOM_TILE $64, 4, 2                       ;; 0e:495c $b0 $64 $04 $02
        sDELAY 15                                      ;; 0e:4960 $f0 $0f
        sSFX 20                                        ;; 0e:4962 $f9 $14
        sSET_ROOM_TILE $64, 5, 2                       ;; 0e:4964 $b0 $64 $05 $02
        sDELAY 60                                      ;; 0e:4968 $f0 $3c
        sMSG                                           ;; 0e:496a $04
          db "<10> I can't go back\n anymore __<12>"
          db "<11>", $00 ;; 0e:496b
        sSET_FLAG wScriptFlags06.7                     ;; 0e:4980 $da $37
      sENDIF                                           ;; 0e:4982
      sLOAD_ROOM 1, $26, 12, 4                         ;; 0e:4982 $f4 $01 $26 $0c $04
      sSET_MUSIC 14                                    ;; 0e:4987 $f8 $0e
    sENDIF                                             ;; 0e:4989
    sEND                                               ;; 0e:4989 $00

script_0353:
    sIF_0B $c9                                         ;; 0e:498a $0b $c9 $00 $05
      sLOAD_ROOM 9, $40, 16, 2                         ;; 0e:498e $f4 $09 $40 $10 $02
    sENDIF                                             ;; 0e:4993
    sEND                                               ;; 0e:4993 $00

script_0354:
    sEND                                               ;; 0e:4994 $00

script_0355:
    sEND                                               ;; 0e:4995 $00

script_0356:
    sIF_0B $c9                                         ;; 0e:4996 $0b $c9 $00 $09
      sLOAD_ROOM 0, $51, 14, 8                         ;; 0e:499a $f4 $00 $51 $0e $08
      sSET_MUSIC 20                                    ;; 0e:499f $f8 $14
      sUNK_AB                                          ;; 0e:49a1 $ab
      sRUN_ROOM_SCRIPT                                 ;; 0e:49a2 $ec
    sENDIF                                             ;; 0e:49a3
    sEND                                               ;; 0e:49a3 $00

script_0357:
    sIF_0B $c9                                         ;; 0e:49a4 $0b $c9 $00 $05
      sLOAD_ROOM 1, $34, 2, 12                         ;; 0e:49a8 $f4 $01 $34 $02 $0c
    sENDIF                                             ;; 0e:49ad
    sEND                                               ;; 0e:49ad $00

script_0358:
    sIF_0B $c9                                         ;; 0e:49ae $0b $c9 $00 $05
      sLOAD_ROOM 14, $55, 16, 4                        ;; 0e:49b2 $f4 $0e $55 $10 $04
    sENDIF                                             ;; 0e:49b7
    sEND                                               ;; 0e:49b7 $00

script_0359:
    sIF_0B $c9                                         ;; 0e:49b8 $0b $c9 $00 $06
      sLOAD_ROOM 9, $41, 16, 2                         ;; 0e:49bc $f4 $09 $41 $10 $02
      sRUN_ROOM_SCRIPT                                 ;; 0e:49c1 $ec
    sENDIF                                             ;; 0e:49c2
    sEND                                               ;; 0e:49c2 $00

script_035a:
    sIF_0B $c9                                         ;; 0e:49c3 $0b $c9 $00 $05
      sLOAD_ROOM 8, $24, 16, 2                         ;; 0e:49c7 $f4 $08 $24 $10 $02
    sENDIF                                             ;; 0e:49cc
    sEND                                               ;; 0e:49cc $00

script_035b:
    sIF_0B $c9, $c1                                    ;; 0e:49cd $0b $c9 $c1 $00 $05
      sLOAD_ROOM 11, $36, 16, 12                       ;; 0e:49d2 $f4 $0b $36 $10 $0c
    sENDIF                                             ;; 0e:49d7
    sEND                                               ;; 0e:49d7 $00

script_035c:
    sIF_0B $c9                                         ;; 0e:49d8 $0b $c9 $00 $05
      sLOAD_ROOM 14, $56, 10, 2                        ;; 0e:49dc $f4 $0e $56 $0a $02
    sENDIF                                             ;; 0e:49e1
    sEND                                               ;; 0e:49e1 $00

script_035d:
    sIF_0B $c9                                         ;; 0e:49e2 $0b $c9 $00 $05
      sLOAD_ROOM 8, $51, 16, 2                         ;; 0e:49e6 $f4 $08 $51 $10 $02
    sENDIF                                             ;; 0e:49eb
    sEND                                               ;; 0e:49eb $00

script_035e:
    sIF_0B $c9                                         ;; 0e:49ec $0b $c9 $00 $05
      sLOAD_ROOM 8, $57, 16, 2                         ;; 0e:49f0 $f4 $08 $57 $10 $02
    sENDIF                                             ;; 0e:49f5
    sEND                                               ;; 0e:49f5 $00

script_035f:
    sIF_0B $c9                                         ;; 0e:49f6 $0b $c9 $00 $05
      sLOAD_ROOM 3, $43, 16, 12                        ;; 0e:49fa $f4 $03 $43 $10 $0c
    sENDIF                                             ;; 0e:49ff
    sEND                                               ;; 0e:49ff $00

script_0360:
    sIF_0B $c9                                         ;; 0e:4a00 $0b $c9 $00 $05
      sLOAD_ROOM 11, $17, 9, 7                         ;; 0e:4a04 $f4 $0b $17 $09 $07
    sENDIF                                             ;; 0e:4a09
    sEND                                               ;; 0e:4a09 $00

script_0361:
    sIF_0B $c9                                         ;; 0e:4a0a $0b $c9 $00 $05
      sLOAD_ROOM 15, $56, 16, 2                        ;; 0e:4a0e $f4 $0f $56 $10 $02
    sENDIF                                             ;; 0e:4a13
    sEND                                               ;; 0e:4a13 $00

script_0362:
    sIF_0B $c9                                         ;; 0e:4a14 $0b $c9 $00 $05
      sLOAD_ROOM 15, $47, 4, 6                         ;; 0e:4a18 $f4 $0f $47 $04 $06
    sENDIF                                             ;; 0e:4a1d
    sEND                                               ;; 0e:4a1d $00

script_0363:
    sIF_0B $c9                                         ;; 0e:4a1e $0b $c9 $00 $05
      sLOAD_ROOM 15, $66, 4, 2                         ;; 0e:4a22 $f4 $0f $66 $04 $02
    sENDIF                                             ;; 0e:4a27
    sEND                                               ;; 0e:4a27 $00

script_0364:
    sIF_0B $c9                                         ;; 0e:4a28 $0b $c9 $00 $05
      sLOAD_ROOM 15, $66, 14, 10                       ;; 0e:4a2c $f4 $0f $66 $0e $0a
    sENDIF                                             ;; 0e:4a31
    sEND                                               ;; 0e:4a31 $00

script_0365:
    sIF_0B $c9                                         ;; 0e:4a32 $0b $c9 $00 $06
      sLOAD_ROOM 10, $51, 16, 2                        ;; 0e:4a36 $f4 $0a $51 $10 $02
      sRUN_ROOM_SCRIPT                                 ;; 0e:4a3b $ec
    sENDIF                                             ;; 0e:4a3c
    sEND                                               ;; 0e:4a3c $00

script_0366:
    sIF_0B $c9                                         ;; 0e:4a3d $0b $c9 $00 $05
      sLOAD_ROOM 9, $21, 16, 2                         ;; 0e:4a41 $f4 $09 $21 $10 $02
    sENDIF                                             ;; 0e:4a46
    sEND                                               ;; 0e:4a46 $00

script_0367:
    sIF_0B $c9                                         ;; 0e:4a47 $0b $c9 $00 $05
      sLOAD_ROOM 15, $67, 4, 2                         ;; 0e:4a4b $f4 $0f $67 $04 $02
    sENDIF                                             ;; 0e:4a50
    sEND                                               ;; 0e:4a50 $00

script_0368:
    sIF_0B $c9, $c1                                    ;; 0e:4a51 $0b $c9 $c1 $00 $06
      sLOAD_ROOM 10, $41, 16, 12                       ;; 0e:4a56 $f4 $0a $41 $10 $0c
      sRUN_ROOM_SCRIPT                                 ;; 0e:4a5b $ec
    sENDIF                                             ;; 0e:4a5c
    sEND                                               ;; 0e:4a5c $00

script_0369:
    sIF_0B $c9                                         ;; 0e:4a5d $0b $c9 $00 $09
      sLOAD_ROOM 0, $12, 12, 6                         ;; 0e:4a61 $f4 $00 $12 $0c $06
      sUNK_AB                                          ;; 0e:4a66 $ab
      sSET_MUSIC 20                                    ;; 0e:4a67 $f8 $14
      sRUN_ROOM_SCRIPT                                 ;; 0e:4a69 $ec
    sENDIF                                             ;; 0e:4a6a
    sEND                                               ;; 0e:4a6a $00

script_036a:
    sIF_0B $c9                                         ;; 0e:4a6b $0b $c9 $00 $05
      sLOAD_ROOM 9, $33, 16, 2                         ;; 0e:4a6f $f4 $09 $33 $10 $02
    sENDIF                                             ;; 0e:4a74
    sEND                                               ;; 0e:4a74 $00

script_036b:
    sIF_0B $c9                                         ;; 0e:4a75 $0b $c9 $00 $05
      sLOAD_ROOM 12, $00, 16, 2                        ;; 0e:4a79 $f4 $0c $00 $10 $02
    sENDIF                                             ;; 0e:4a7e
    sEND                                               ;; 0e:4a7e $00

script_036c:
    sIF_0B $c9                                         ;; 0e:4a7f $0b $c9 $00 $05
      sLOAD_ROOM 13, $00, 16, 2                        ;; 0e:4a83 $f4 $0d $00 $10 $02
    sENDIF                                             ;; 0e:4a88
    sEND                                               ;; 0e:4a88 $00

script_036d:
    sIF_0B $c9                                         ;; 0e:4a89 $0b $c9 $00 $09
      sLOAD_ROOM 12, $32, 16, 12                       ;; 0e:4a8d $f4 $0c $32 $10 $0c
      sSET_ROOM_TILE $02, 8, 6                         ;; 0e:4a92 $b0 $02 $08 $06
    sENDIF                                             ;; 0e:4a96
    sEND                                               ;; 0e:4a96 $00

script_036e:
    sIF_0B $c9                                         ;; 0e:4a97 $0b $c9 $00 $05
      sLOAD_ROOM 13, $32, 16, 12                       ;; 0e:4a9b $f4 $0d $32 $10 $0c
    sENDIF                                             ;; 0e:4aa0
    sEND                                               ;; 0e:4aa0 $00

script_036f:
    sIF_0B $c9                                         ;; 0e:4aa1 $0b $c9 $00 $06
      sLOAD_ROOM 11, $11, 16, 2                        ;; 0e:4aa5 $f4 $0b $11 $10 $02
      sRUN_ROOM_SCRIPT                                 ;; 0e:4aaa $ec
    sENDIF                                             ;; 0e:4aab
    sEND                                               ;; 0e:4aab $00

script_0370:
    sIF_0B $c9                                         ;; 0e:4aac $0b $c9 $00 $05
      sLOAD_ROOM 12, $11, 16, 2                        ;; 0e:4ab0 $f4 $0c $11 $10 $02
    sENDIF                                             ;; 0e:4ab5
    sEND                                               ;; 0e:4ab5 $00

script_0371:
    sIF_0B $c9                                         ;; 0e:4ab6 $0b $c9 $00 $05
      sLOAD_ROOM 14, $44, 4, 4                         ;; 0e:4aba $f4 $0e $44 $04 $04
    sENDIF                                             ;; 0e:4abf
    sEND                                               ;; 0e:4abf $00

script_0372:
    sIF_0B $c9                                         ;; 0e:4ac0 $0b $c9 $00 $05
      sLOAD_ROOM 14, $54, 14, 2                        ;; 0e:4ac4 $f4 $0e $54 $0e $02
    sENDIF                                             ;; 0e:4ac9
    sEND                                               ;; 0e:4ac9 $00

script_0373:
    sIF_0B $c9                                         ;; 0e:4aca $0b $c9 $00 $05
      sLOAD_ROOM 1, $33, 8, 2                          ;; 0e:4ace $f4 $01 $33 $08 $02
    sENDIF                                             ;; 0e:4ad3
    sEND                                               ;; 0e:4ad3 $00

script_0374:
    sIF_0B $c9                                         ;; 0e:4ad4 $0b $c9 $00 $05
      sLOAD_ROOM 1, $23, 16, 12                        ;; 0e:4ad8 $f4 $01 $23 $10 $0c
    sENDIF                                             ;; 0e:4add
    sEND                                               ;; 0e:4add $00

script_0375:
    sIF_0B $c9                                         ;; 0e:4ade $0b $c9 $00 $05
      sLOAD_ROOM 1, $41, 14, 8                         ;; 0e:4ae2 $f4 $01 $41 $0e $08
    sENDIF                                             ;; 0e:4ae7
    sEND                                               ;; 0e:4ae7 $00

script_0376:
    sIF_0B $c9                                         ;; 0e:4ae8 $0b $c9 $00 $05
      sLOAD_ROOM 1, $31, 6, 2                          ;; 0e:4aec $f4 $01 $31 $06 $02
    sENDIF                                             ;; 0e:4af1
    sEND                                               ;; 0e:4af1 $00

script_0377:
    sIF_0B $c9                                         ;; 0e:4af2 $0b $c9 $00 $05
      sLOAD_ROOM 1, $70, 6, 6                          ;; 0e:4af6 $f4 $01 $70 $06 $06
    sENDIF                                             ;; 0e:4afb
    sEND                                               ;; 0e:4afb $00

script_0378:
    sIF_0B $c9                                         ;; 0e:4afc $0b $c9 $00 $05
      sLOAD_ROOM 1, $70, 12, 2                         ;; 0e:4b00 $f4 $01 $70 $0c $02
    sENDIF                                             ;; 0e:4b05
    sEND                                               ;; 0e:4b05 $00

script_0379:
    sIF_0B $c9                                         ;; 0e:4b06 $0b $c9 $00 $05
      sLOAD_ROOM 1, $71, 8, 12                         ;; 0e:4b0a $f4 $01 $71 $08 $0c
    sENDIF                                             ;; 0e:4b0f
    sEND                                               ;; 0e:4b0f $00

script_037a:
    sIF_0B $c9                                         ;; 0e:4b10 $0b $c9 $00 $09
      sLOAD_ROOM 13, $73, 16, 12                       ;; 0e:4b14 $f4 $0d $73 $10 $0c
      sSET_ROOM_TILE $02, 8, 6                         ;; 0e:4b19 $b0 $02 $08 $06
    sENDIF                                             ;; 0e:4b1d
    sEND                                               ;; 0e:4b1d $00

script_037b:
    sIF_0B $c9                                         ;; 0e:4b1e $0b $c9 $00 $05
      sLOAD_ROOM 14, $12, 10, 2                        ;; 0e:4b22 $f4 $0e $12 $0a $02
    sENDIF                                             ;; 0e:4b27
    sEND                                               ;; 0e:4b27 $00

script_037c:
    sIF_0B $c9                                         ;; 0e:4b28 $0b $c9 $00 $05
      sLOAD_ROOM 14, $45, 2, 8                         ;; 0e:4b2c $f4 $0e $45 $02 $08
    sENDIF                                             ;; 0e:4b31
    sEND                                               ;; 0e:4b31 $00

script_037d:
    sEND                                               ;; 0e:4b32 $00

script_037e:
    sEND                                               ;; 0e:4b33 $00

script_037f:
    sEND                                               ;; 0e:4b34 $00

script_0380:
    sIF_0B $c9                                         ;; 0e:4b35 $0b $c9 $00 $08
      sUNK_C5 11                                       ;; 0e:4b39 $c5 $0b
      sLOAD_ROOM 3, $00, 9, 12                         ;; 0e:4b3b $f4 $03 $00 $09 $0c
      sRUN_ROOM_SCRIPT                                 ;; 0e:4b40 $ec
    sENDIF                                             ;; 0e:4b41
    sEND                                               ;; 0e:4b41 $00

script_0381:
    sIF_0B $c9                                         ;; 0e:4b42 $0b $c9 $00 $08
      sUNK_C5 7                                        ;; 0e:4b46 $c5 $07
      sLOAD_ROOM 2, $00, 9, 12                         ;; 0e:4b48 $f4 $02 $00 $09 $0c
      sRUN_ROOM_SCRIPT                                 ;; 0e:4b4d $ec
    sENDIF                                             ;; 0e:4b4e
    sEND                                               ;; 0e:4b4e $00

script_0382:
    sIF_0B $c9                                         ;; 0e:4b4f $0b $c9 $00 $08
      sUNK_C5 6                                        ;; 0e:4b53 $c5 $06
      sLOAD_ROOM 2, $00, 9, 12                         ;; 0e:4b55 $f4 $02 $00 $09 $0c
      sRUN_ROOM_SCRIPT                                 ;; 0e:4b5a $ec
    sENDIF                                             ;; 0e:4b5b
    sEND                                               ;; 0e:4b5b $00

script_0383:
    sIF_0B $c9                                         ;; 0e:4b5c $0b $c9 $00 $08
      sUNK_C5 7                                        ;; 0e:4b60 $c5 $07
      sLOAD_ROOM 2, $01, 9, 12                         ;; 0e:4b62 $f4 $02 $01 $09 $0c
      sRUN_ROOM_SCRIPT                                 ;; 0e:4b67 $ec
    sENDIF                                             ;; 0e:4b68
    sEND                                               ;; 0e:4b68 $00

script_0384:
    sIF_0B $c9                                         ;; 0e:4b69 $0b $c9 $00 $08
      sUNK_C5 10                                       ;; 0e:4b6d $c5 $0a
      sLOAD_ROOM 3, $00, 9, 12                         ;; 0e:4b6f $f4 $03 $00 $09 $0c
      sRUN_ROOM_SCRIPT                                 ;; 0e:4b74 $ec
    sENDIF                                             ;; 0e:4b75
    sEND                                               ;; 0e:4b75 $00

script_0385:
    sIF_0B $c9                                         ;; 0e:4b76 $0b $c9 $00 $08
      sUNK_C5 9                                        ;; 0e:4b7a $c5 $09
      sLOAD_ROOM 3, $00, 9, 12                         ;; 0e:4b7c $f4 $03 $00 $09 $0c
      sRUN_ROOM_SCRIPT                                 ;; 0e:4b81 $ec
    sENDIF                                             ;; 0e:4b82
    sEND                                               ;; 0e:4b82 $00

script_0386:
    sIF_0B $c9                                         ;; 0e:4b83 $0b $c9 $00 $08
      sUNK_C5 8                                        ;; 0e:4b87 $c5 $08
      sLOAD_ROOM 3, $00, 9, 12                         ;; 0e:4b89 $f4 $03 $00 $09 $0c
      sRUN_ROOM_SCRIPT                                 ;; 0e:4b8e $ec
    sENDIF                                             ;; 0e:4b8f
    sEND                                               ;; 0e:4b8f $00

script_0387:
    sIF_0B $c9                                         ;; 0e:4b90 $0b $c9 $00 $08
      sUNK_C5 14                                       ;; 0e:4b94 $c5 $0e
      sLOAD_ROOM 4, $01, 9, 12                         ;; 0e:4b96 $f4 $04 $01 $09 $0c
      sRUN_ROOM_SCRIPT                                 ;; 0e:4b9b $ec
    sENDIF                                             ;; 0e:4b9c
    sEND                                               ;; 0e:4b9c $00

script_0388:
    sIF_0B $c9                                         ;; 0e:4b9d $0b $c9 $00 $08
      sUNK_C5 2                                        ;; 0e:4ba1 $c5 $02
      sLOAD_ROOM 2, $01, 9, 12                         ;; 0e:4ba3 $f4 $02 $01 $09 $0c
      sRUN_ROOM_SCRIPT                                 ;; 0e:4ba8 $ec
    sENDIF                                             ;; 0e:4ba9
    sEND                                               ;; 0e:4ba9 $00

script_0389:
    sIF_0B $c9                                         ;; 0e:4baa $0b $c9 $00 $08
      sUNK_C5 8                                        ;; 0e:4bae $c5 $08
      sLOAD_ROOM 2, $00, 9, 12                         ;; 0e:4bb0 $f4 $02 $00 $09 $0c
      sRUN_ROOM_SCRIPT                                 ;; 0e:4bb5 $ec
    sENDIF                                             ;; 0e:4bb6
    sEND                                               ;; 0e:4bb6 $00

script_038a:
    sIF_0B $c9                                         ;; 0e:4bb7 $0b $c9 $00 $08
      sUNK_C5 15                                       ;; 0e:4bbb $c5 $0f
      sLOAD_ROOM 4, $01, 9, 12                         ;; 0e:4bbd $f4 $04 $01 $09 $0c
      sRUN_ROOM_SCRIPT                                 ;; 0e:4bc2 $ec
    sENDIF                                             ;; 0e:4bc3
    sEND                                               ;; 0e:4bc3 $00

script_038b:
    sIF_0B $c9                                         ;; 0e:4bc4 $0b $c9 $00 $08
      sUNK_C5 10                                       ;; 0e:4bc8 $c5 $0a
      sLOAD_ROOM 4, $01, 9, 12                         ;; 0e:4bca $f4 $04 $01 $09 $0c
      sRUN_ROOM_SCRIPT                                 ;; 0e:4bcf $ec
    sENDIF                                             ;; 0e:4bd0
    sEND                                               ;; 0e:4bd0 $00

script_038c:
    sIF_0B $c9                                         ;; 0e:4bd1 $0b $c9 $00 $08
      sUNK_C5 8                                        ;; 0e:4bd5 $c5 $08
      sLOAD_ROOM 2, $01, 9, 12                         ;; 0e:4bd7 $f4 $02 $01 $09 $0c
      sRUN_ROOM_SCRIPT                                 ;; 0e:4bdc $ec
    sENDIF                                             ;; 0e:4bdd
    sEND                                               ;; 0e:4bdd $00

script_038d:
    sIF_0B $c9                                         ;; 0e:4bde $0b $c9 $00 $08
      sUNK_C5 3                                        ;; 0e:4be2 $c5 $03
      sLOAD_ROOM 2, $00, 9, 12                         ;; 0e:4be4 $f4 $02 $00 $09 $0c
      sRUN_ROOM_SCRIPT                                 ;; 0e:4be9 $ec
    sENDIF                                             ;; 0e:4bea
    sEND                                               ;; 0e:4bea $00

script_038e:
    sEND                                               ;; 0e:4beb $00

script_038f:
    sEND                                               ;; 0e:4bec $00

script_0390:
    sIF_0B $c9                                         ;; 0e:4bed $0b $c9 $00 $05
      sLOAD_ROOM 3, $02, 16, 12                        ;; 0e:4bf1 $f4 $03 $02 $10 $0c
    sENDIF                                             ;; 0e:4bf6
    sEND                                               ;; 0e:4bf6 $00

script_0391:
    sIF_0B $c9                                         ;; 0e:4bf7 $0b $c9 $00 $05
      sLOAD_ROOM 14, $31, 4, 2                         ;; 0e:4bfb $f4 $0e $31 $04 $02
    sENDIF                                             ;; 0e:4c00
    sEND                                               ;; 0e:4c00 $00

script_0392:
    sIF_0B $c9                                         ;; 0e:4c01 $0b $c9 $00 $05
      sLOAD_ROOM 2, $02, 16, 12                        ;; 0e:4c05 $f4 $02 $02 $10 $0c
    sENDIF                                             ;; 0e:4c0a
    sEND                                               ;; 0e:4c0a $00

script_0393:
    sIF_0B $c9                                         ;; 0e:4c0b $0b $c9 $00 $05
      sLOAD_ROOM 2, $02, 16, 2                         ;; 0e:4c0f $f4 $02 $02 $10 $02
    sENDIF                                             ;; 0e:4c14
    sEND                                               ;; 0e:4c14 $00

script_0394:
    sEND                                               ;; 0e:4c15 $00

script_0395:
    sEND                                               ;; 0e:4c16 $00

script_0396:
    sIF_0B $c9                                         ;; 0e:4c17 $0b $c9 $00 $07
      sUNK_C5 54                                       ;; 0e:4c1b $c5 $36
      sLOAD_ROOM 1, $01, 16, 12                        ;; 0e:4c1d $f4 $01 $01 $10 $0c
    sENDIF                                             ;; 0e:4c22
    sEND                                               ;; 0e:4c22 $00

script_0397:
    sIF_0B $c9                                         ;; 0e:4c23 $0b $c9 $00 $07
      sUNK_C5 55                                       ;; 0e:4c27 $c5 $37
      sLOAD_ROOM 1, $01, 16, 12                        ;; 0e:4c29 $f4 $01 $01 $10 $0c
    sENDIF                                             ;; 0e:4c2e
    sEND                                               ;; 0e:4c2e $00

script_0398:
    sIF_0B $c9                                         ;; 0e:4c2f $0b $c9 $00 $09
      sLOAD_ROOM 0, $43, 16, 8                         ;; 0e:4c33 $f4 $00 $43 $10 $08
      sUNK_AB                                          ;; 0e:4c38 $ab
      sSET_MUSIC 20                                    ;; 0e:4c39 $f8 $14
      sRUN_ROOM_SCRIPT                                 ;; 0e:4c3b $ec
    sENDIF                                             ;; 0e:4c3c
    sEND                                               ;; 0e:4c3c $00

script_0399:
    sIF_0B $c9                                         ;; 0e:4c3d $0b $c9 $00 $06
      sLOAD_ROOM 13, $37, 2, 12                        ;; 0e:4c41 $f4 $0d $37 $02 $0c
      sRUN_ROOM_SCRIPT                                 ;; 0e:4c46 $ec
    sENDIF                                             ;; 0e:4c47
    sEND                                               ;; 0e:4c47 $00

script_039a:
    sIF_0B $c9                                         ;; 0e:4c48 $0b $c9 $00 $05
      sLOAD_ROOM 15, $25, 12, 6                        ;; 0e:4c4c $f4 $0f $25 $0c $06
    sENDIF                                             ;; 0e:4c51
    sEND                                               ;; 0e:4c51 $00

script_039b:
    sIF_0B $c9                                         ;; 0e:4c52 $0b $c9 $00 $05
      sLOAD_ROOM 13, $05, 16, 2                        ;; 0e:4c56 $f4 $0d $05 $10 $02
    sENDIF                                             ;; 0e:4c5b
    sEND                                               ;; 0e:4c5b $00

script_039c:
    sIF_0B $c9                                         ;; 0e:4c5c $0b $c9 $00 $05
      sLOAD_ROOM 13, $07, 16, 12                       ;; 0e:4c60 $f4 $0d $07 $10 $0c
    sENDIF                                             ;; 0e:4c65
    sEND                                               ;; 0e:4c65 $00

script_039d:
    sIF_0B $c9                                         ;; 0e:4c66 $0b $c9 $00 $06
      sLOAD_ROOM 0, $95, 12, 8                         ;; 0e:4c6a $f4 $00 $95 $0c $08
      sUNK_AB                                          ;; 0e:4c6f $ab
    sENDIF                                             ;; 0e:4c70
    sEND                                               ;; 0e:4c70 $00

script_039e:
    sIF_0B $c9                                         ;; 0e:4c71 $0b $c9 $00 $06
      sLOAD_ROOM 0, $96, 12, 2                         ;; 0e:4c75 $f4 $00 $96 $0c $02
      sUNK_AB                                          ;; 0e:4c7a $ab
    sENDIF                                             ;; 0e:4c7b
    sEND                                               ;; 0e:4c7b $00

script_039f:
    sIF_0B $c9                                         ;; 0e:4c7c $0b $c9 $00 $11
      sIF_FLAG wScriptFlags0B.0                        ;; 0e:4c80 $08 $58 $00 $05
        sCALL script_0473                              ;; 0e:4c84 $02 $5a $e2
        sSET_FLAG wScriptFlags0D.1                     ;; 0e:4c87 $da $69
      sENDIF                                           ;; 0e:4c89
      sLOAD_ROOM 12, $06, 16, 2                        ;; 0e:4c89 $f4 $0c $06 $10 $02
      sSET_MUSIC 7                                     ;; 0e:4c8e $f8 $07
      sRUN_ROOM_SCRIPT                                 ;; 0e:4c90 $ec
    sENDIF                                             ;; 0e:4c91
    sEND                                               ;; 0e:4c91 $00

script_03a0:
    sIF_0B $c9                                         ;; 0e:4c92 $0b $c9 $00 $09
      sLOAD_ROOM 0, $3e, 12, 6                         ;; 0e:4c96 $f4 $00 $3e $0c $06
      sSET_MUSIC 25                                    ;; 0e:4c9b $f8 $19
      sUNK_AB                                          ;; 0e:4c9d $ab
      sRUN_ROOM_SCRIPT                                 ;; 0e:4c9e $ec
    sENDIF                                             ;; 0e:4c9f
    sEND                                               ;; 0e:4c9f $00

script_03a1:
    sIF_0B $c9                                         ;; 0e:4ca0 $0b $c9 $00 $08
      sLOAD_ROOM 2, $00, 9, 12                         ;; 0e:4ca4 $f4 $02 $00 $09 $0c
      sUNK_C5 1                                        ;; 0e:4ca9 $c5 $01
      sRUN_ROOM_SCRIPT                                 ;; 0e:4cab $ec
    sENDIF                                             ;; 0e:4cac
    sEND                                               ;; 0e:4cac $00

script_03a2:
    sIF_0B $c9                                         ;; 0e:4cad $0b $c9 $00 $06
      sLOAD_ROOM 12, $07, 16, 2                        ;; 0e:4cb1 $f4 $0c $07 $10 $02
      sRUN_ROOM_SCRIPT                                 ;; 0e:4cb6 $ec
    sENDIF                                             ;; 0e:4cb7
    sEND                                               ;; 0e:4cb7 $00

script_03a3:
    sIF_0B $c9                                         ;; 0e:4cb8 $0b $c9 $00 $05
      sLOAD_ROOM 12, $06, 16, 12                       ;; 0e:4cbc $f4 $0c $06 $10 $0c
    sENDIF                                             ;; 0e:4cc1
    sEND                                               ;; 0e:4cc1 $00

script_03a4:
    sIF_0B $c9                                         ;; 0e:4cc2 $0b $c9 $00 $06
      sLOAD_ROOM 14, $35, 16, 1                        ;; 0e:4cc6 $f4 $0e $35 $10 $01
      sRUN_ROOM_SCRIPT                                 ;; 0e:4ccb $ec
    sENDIF                                             ;; 0e:4ccc
    sEND                                               ;; 0e:4ccc $00

script_03a5:
    sIF_0B $c9, $c1                                    ;; 0e:4ccd $0b $c9 $c1 $00 $05
      sLOAD_ROOM 12, $07, 16, 12                       ;; 0e:4cd2 $f4 $0c $07 $10 $0c
    sENDIF                                             ;; 0e:4cd7
    sEND                                               ;; 0e:4cd7 $00

script_03a6:
    sIF_0B $c9                                         ;; 0e:4cd8 $0b $c9 $00 $07
      sLOAD_ROOM 0, $69, 14, 2                         ;; 0e:4cdc $f4 $00 $69 $0e $02
      sSET_MUSIC 20                                    ;; 0e:4ce1 $f8 $14
    sENDIF                                             ;; 0e:4ce3
    sEND                                               ;; 0e:4ce3 $00

script_03a7:
    sIF_0B $c9                                         ;; 0e:4ce4 $0b $c9 $00 $09
      sLOAD_ROOM 0, $d3, 12, 5                         ;; 0e:4ce8 $f4 $00 $d3 $0c $05
      sSET_MUSIC 25                                    ;; 0e:4ced $f8 $19
      sUNK_AB                                          ;; 0e:4cef $ab
      sRUN_ROOM_SCRIPT                                 ;; 0e:4cf0 $ec
    sENDIF                                             ;; 0e:4cf1
    sEND                                               ;; 0e:4cf1 $00

script_03a8:
    sIF_0B $c9, $c1                                    ;; 0e:4cf2 $0b $c9 $c1 $00 $05
      sLOAD_ROOM 4, $50, 16, 2                         ;; 0e:4cf7 $f4 $04 $50 $10 $02
    sENDIF                                             ;; 0e:4cfc
    sEND                                               ;; 0e:4cfc $00

script_03a9:
    sIF_0B $c9                                         ;; 0e:4cfd $0b $c9 $00 $05
      sLOAD_ROOM 6, $46, 16, 2                         ;; 0e:4d01 $f4 $06 $46 $10 $02
    sENDIF                                             ;; 0e:4d06
    sEND                                               ;; 0e:4d06 $00

script_03aa:
    sIF_0B $c9                                         ;; 0e:4d07 $0b $c9 $00 $08
      sUNK_C5 55                                       ;; 0e:4d0b $c5 $37
      sLOAD_ROOM 1, $00, 16, 2                         ;; 0e:4d0d $f4 $01 $00 $10 $02
      sRUN_ROOM_SCRIPT                                 ;; 0e:4d12 $ec
    sENDIF                                             ;; 0e:4d13
    sEND                                               ;; 0e:4d13 $00

script_03ab:
    sIF_0B $c9                                         ;; 0e:4d14 $0b $c9 $00 $05
      sLOAD_ROOM 6, $72, 9, 7                          ;; 0e:4d18 $f4 $06 $72 $09 $07
    sENDIF                                             ;; 0e:4d1d
    sEND                                               ;; 0e:4d1d $00

script_03ac:
    sIF_0B $c9                                         ;; 0e:4d1e $0b $c9 $00 $05
      sLOAD_ROOM 6, $60, 9, 7                          ;; 0e:4d22 $f4 $06 $60 $09 $07
    sENDIF                                             ;; 0e:4d27
    sEND                                               ;; 0e:4d27 $00

script_03ad:
    sIF_0B $c9                                         ;; 0e:4d28 $0b $c9 $00 $05
      sLOAD_ROOM 5, $71, 9, 7                          ;; 0e:4d2c $f4 $05 $71 $09 $07
    sENDIF                                             ;; 0e:4d31
    sEND                                               ;; 0e:4d31 $00

script_03ae:
    sIF_0B $c9                                         ;; 0e:4d32 $0b $c9 $00 $05
      sLOAD_ROOM 6, $41, 9, 7                          ;; 0e:4d36 $f4 $06 $41 $09 $07
    sENDIF                                             ;; 0e:4d3b
    sEND                                               ;; 0e:4d3b $00

script_03af:
    sIF_0B $c9                                         ;; 0e:4d3c $0b $c9 $00 $05
      sLOAD_ROOM 5, $74, 9, 7                          ;; 0e:4d40 $f4 $05 $74 $09 $07
    sENDIF                                             ;; 0e:4d45
    sEND                                               ;; 0e:4d45 $00

script_03b0:
    sIF_0B $c9                                         ;; 0e:4d46 $0b $c9 $00 $08
      sUNK_C5 54                                       ;; 0e:4d4a $c5 $36
      sLOAD_ROOM 1, $00, 16, 2                         ;; 0e:4d4c $f4 $01 $00 $10 $02
      sRUN_ROOM_SCRIPT                                 ;; 0e:4d51 $ec
    sENDIF                                             ;; 0e:4d52
    sEND                                               ;; 0e:4d52 $00

script_03b1:
    sIF_0B $c9                                         ;; 0e:4d53 $0b $c9 $00 $05
      sLOAD_ROOM 3, $45, 9, 7                          ;; 0e:4d57 $f4 $03 $45 $09 $07
    sENDIF                                             ;; 0e:4d5c
    sEND                                               ;; 0e:4d5c $00

script_03b2:
    sIF_0B $c9                                         ;; 0e:4d5d $0b $c9 $00 $05
      sLOAD_ROOM 3, $53, 9, 7                          ;; 0e:4d61 $f4 $03 $53 $09 $07
    sENDIF                                             ;; 0e:4d66
    sEND                                               ;; 0e:4d66 $00

script_03b3:
    sIF_0B $c9                                         ;; 0e:4d67 $0b $c9 $00 $05
      sLOAD_ROOM 6, $00, 9, 7                          ;; 0e:4d6b $f4 $06 $00 $09 $07
    sENDIF                                             ;; 0e:4d70
    sEND                                               ;; 0e:4d70 $00

script_03b4:
    sIF_0B $c9                                         ;; 0e:4d71 $0b $c9 $00 $05
      sLOAD_ROOM 6, $12, 9, 7                          ;; 0e:4d75 $f4 $06 $12 $09 $07
    sENDIF                                             ;; 0e:4d7a
    sEND                                               ;; 0e:4d7a $00

script_03b5:
    sIF_0B $c9                                         ;; 0e:4d7b $0b $c9 $00 $05
      sLOAD_ROOM 2, $27, 9, 7                          ;; 0e:4d7f $f4 $02 $27 $09 $07
    sENDIF                                             ;; 0e:4d84
    sEND                                               ;; 0e:4d84 $00

script_03b6:
    sIF_0B $c9                                         ;; 0e:4d85 $0b $c9 $00 $05
      sLOAD_ROOM 13, $43, 16, 2                        ;; 0e:4d89 $f4 $0d $43 $10 $02
    sENDIF                                             ;; 0e:4d8e
    sEND                                               ;; 0e:4d8e $00

script_03b7:
    sIF_0B $c9                                         ;; 0e:4d8f $0b $c9 $00 $05
      sLOAD_ROOM 12, $43, 16, 2                        ;; 0e:4d93 $f4 $0c $43 $10 $02
    sENDIF                                             ;; 0e:4d98
    sEND                                               ;; 0e:4d98 $00

script_03b8:
    sIF_0B $c9, $c1                                    ;; 0e:4d99 $0b $c9 $c1 $00 $09
      sLOAD_ROOM 13, $73, 16, 12                       ;; 0e:4d9e $f4 $0d $73 $10 $0c
      sSET_ROOM_TILE $02, 8, 6                         ;; 0e:4da3 $b0 $02 $08 $06
    sENDIF                                             ;; 0e:4da7
    sEND                                               ;; 0e:4da7 $00

script_03b9:
    sIF_0B $c9                                         ;; 0e:4da8 $0b $c9 $00 $05
      sLOAD_ROOM 13, $54, 16, 2                        ;; 0e:4dac $f4 $0d $54 $10 $02
    sENDIF                                             ;; 0e:4db1
    sEND                                               ;; 0e:4db1 $00

script_03ba:
    sIF_0B $c9                                         ;; 0e:4db2 $0b $c9 $00 $05
      sLOAD_ROOM 13, $74, 16, 2                        ;; 0e:4db6 $f4 $0d $74 $10 $02
    sENDIF                                             ;; 0e:4dbb
    sEND                                               ;; 0e:4dbb $00

script_03bb:
    sIF_0B $c9                                         ;; 0e:4dbc $0b $c9 $00 $05
      sLOAD_ROOM 13, $50, 16, 2                        ;; 0e:4dc0 $f4 $0d $50 $10 $02
    sENDIF                                             ;; 0e:4dc5
    sEND                                               ;; 0e:4dc5 $00

script_03bc:
    sIF_0B $c9, $c1                                    ;; 0e:4dc6 $0b $c9 $c1 $00 $08
      sUNK_C5 53                                       ;; 0e:4dcb $c5 $35
      sLOAD_ROOM 1, $00, 16, 2                         ;; 0e:4dcd $f4 $01 $00 $10 $02
      sRUN_ROOM_SCRIPT                                 ;; 0e:4dd2 $ec
    sENDIF                                             ;; 0e:4dd3
    sEND                                               ;; 0e:4dd3 $00

script_03bd:
    sIF_0B $c9, $c1                                    ;; 0e:4dd4 $0b $c9 $c1 $00 $05
      sLOAD_ROOM 15, $73, 8, 8                         ;; 0e:4dd9 $f4 $0f $73 $08 $08
    sENDIF                                             ;; 0e:4dde
    sEND                                               ;; 0e:4dde $00

script_03be:
    sEND                                               ;; 0e:4ddf $00

script_03bf:
    sEND                                               ;; 0e:4de0 $00

script_03c0:
    sIF_0B $c9                                         ;; 0e:4de1 $0b $c9 $00 $05
      sLOAD_ROOM 9, $40, 16, 2                         ;; 0e:4de5 $f4 $09 $40 $10 $02
    sENDIF                                             ;; 0e:4dea
    sEND                                               ;; 0e:4dea $00

script_03c1:
    sIF_0B $c9                                         ;; 0e:4deb $0b $c9 $00 $05
      sLOAD_ROOM 12, $46, 16, 12                       ;; 0e:4def $f4 $0c $46 $10 $0c
    sENDIF                                             ;; 0e:4df4
    sEND                                               ;; 0e:4df4 $00

script_03c2:
    sIF_0B $c9                                         ;; 0e:4df5 $0b $c9 $00 $05
      sLOAD_ROOM 11, $46, 16, 12                       ;; 0e:4df9 $f4 $0b $46 $10 $0c
    sENDIF                                             ;; 0e:4dfe
    sEND                                               ;; 0e:4dfe $00

script_03c3:
    sIF_0B $c9, $c1                                    ;; 0e:4dff $0b $c9 $c1 $00 $05
      sLOAD_ROOM 11, $32, 16, 2                        ;; 0e:4e04 $f4 $0b $32 $10 $02
    sENDIF                                             ;; 0e:4e09
    sEND                                               ;; 0e:4e09 $00

script_03c4:
    sIF_0B $c9                                         ;; 0e:4e0a $0b $c9 $00 $09
      sLOAD_ROOM 0, $0e, 14, 4                         ;; 0e:4e0e $f4 $00 $0e $0e $04
      sUNK_AB                                          ;; 0e:4e13 $ab
      sSET_MUSIC 25                                    ;; 0e:4e14 $f8 $19
      sRUN_ROOM_SCRIPT                                 ;; 0e:4e16 $ec
    sENDIF                                             ;; 0e:4e17
    sEND                                               ;; 0e:4e17 $00

script_03c5:
    sIF_0B $c9                                         ;; 0e:4e18 $0b $c9 $00 $05
      sLOAD_ROOM 8, $47, 16, 2                         ;; 0e:4e1c $f4 $08 $47 $10 $02
    sENDIF                                             ;; 0e:4e21
    sEND                                               ;; 0e:4e21 $00

script_03c6:
    sIF_0B $c9, $c1                                    ;; 0e:4e22 $0b $c9 $c1 $00 $95
      sLOAD_ROOM 4, $10, 16, 2                         ;; 0e:4e27 $f4 $04 $10 $10 $02
      sIF_FLAG wScriptFlags05.4, !wScriptFlags03.7     ;; 0e:4e2c $08 $2c $9f $00 $8b
        sSET_PLAYER_DIRECTION_DOWN                     ;; 0e:4e31 $85
        sLOOP 4, 2                                     ;; 0e:4e32 $03 $04 $02
          sPLAYER_STEP_FORWARD                         ;; 0e:4e35 $80
        sEND                                           ;; 0e:4e36 $00
        sDELAY 60                                      ;; 0e:4e37 $f0 $3c
        sSET_PLAYER_DIRECTION_RIGHT                    ;; 0e:4e39 $86
        sDELAY 60                                      ;; 0e:4e3a $f0 $3c
        sSET_PLAYER_DIRECTION_LEFT                     ;; 0e:4e3c $87
        sDELAY 60                                      ;; 0e:4e3d $f0 $3c
        sSET_PLAYER_DIRECTION_DOWN                     ;; 0e:4e3f $85
        sMSG                                           ;; 0e:4e40 $04
          db "<10><GIRL>? __ <GIRL>?!\nWhere could she\nbe_? _", $00 ;; 0e:4e41
        sDELAY 60                                      ;; 0e:4e5c $f0 $3c
        sMSG                                           ;; 0e:4e5e $04
          db " Julius_ ?!<12>"
          db "<1b>Where is he___?\n  !!  Must be at\nthe Waterfalls!!<12>"
          db "<11>", $00 ;; 0e:4e5f
        sLOAD_ROOM 1, $46, 7, 9                        ;; 0e:4e8d $f4 $01 $46 $07 $09
        sUNK_AB                                        ;; 0e:4e92 $ab
        sSET_NPC_TYPES 40                              ;; 0e:4e93 $fc $28
        sSPAWN_NPC 0                                   ;; 0e:4e95 $fd $00
        sSET_NPC_1_DIRECTION_LEFT                      ;; 0e:4e97 $17
        sLOOP 4, 2                                     ;; 0e:4e98 $03 $04 $02
          sNPC_1_STEP_FORWARD                          ;; 0e:4e9b $10
        sEND                                           ;; 0e:4e9c $00
        sMSG                                           ;; 0e:4e9d $04
          db "<10><BOY>:<GIRL>!!<12>"
          db "<11>", $00 ;; 0e:4e9e
        sSET_NPC_1_DIRECTION_UP                        ;; 0e:4ea7 $14
        sDELAY 60                                      ;; 0e:4ea8 $f0 $3c
        sSET_NPC_1_DIRECTION_LEFT                      ;; 0e:4eaa $17
        sLOOP 6, 2                                     ;; 0e:4eab $03 $06 $02
          sNPC_1_STEP_FORWARD                          ;; 0e:4eae $10
        sEND                                           ;; 0e:4eaf $00
        sDEL_NPC_1                                     ;; 0e:4eb0 $18
        sMSG                                           ;; 0e:4eb1 $04
          db "<10><BOY>:__ <GIRL>?<12>"
          db "<11>", $00 ;; 0e:4eb2
      sENDIF                                           ;; 0e:4ebc
    sENDIF                                             ;; 0e:4ebc
    sEND                                               ;; 0e:4ebc $00

script_03c7:
    sIF_0B $c9                                         ;; 0e:4ebd $0b $c9 $00 $05
      sLOAD_ROOM 10, $62, 16, 2                        ;; 0e:4ec1 $f4 $0a $62 $10 $02
    sENDIF                                             ;; 0e:4ec6
    sEND                                               ;; 0e:4ec6 $00

script_03c8:
    sIF_0B $c9, $c1                                    ;; 0e:4ec7 $0b $c9 $c1 $00 $05
      sLOAD_ROOM 8, $63, 10, 6                         ;; 0e:4ecc $f4 $08 $63 $0a $06
    sENDIF                                             ;; 0e:4ed1
    sEND                                               ;; 0e:4ed1 $00

script_03c9:
    sIF_0B $c9, $c1                                    ;; 0e:4ed2 $0b $c9 $c1 $00 $0b
      sLOAD_ROOM 2, $22, 16, 2                         ;; 0e:4ed7 $f4 $02 $22 $10 $02
      sSET_NPC_TYPES 7                                 ;; 0e:4edc $fc $07
      sSPAWN_NPC 0                                     ;; 0e:4ede $fd $00
      sSPAWN_NPC 2                                     ;; 0e:4ee0 $fd $02
    sENDIF                                             ;; 0e:4ee2
    sEND                                               ;; 0e:4ee2 $00

script_03ca:
    sIF_0B $c9, $c1                                    ;; 0e:4ee3 $0b $c9 $c1 $00 $05
      sLOAD_ROOM 2, $62, 16, 2                         ;; 0e:4ee8 $f4 $02 $62 $10 $02
    sENDIF                                             ;; 0e:4eed
    sEND                                               ;; 0e:4eed $00

script_03cb:
    sIF_0B $c9                                         ;; 0e:4eee $0b $c9 $00 $05
      sLOAD_ROOM 13, $40, 16, 2                        ;; 0e:4ef2 $f4 $0d $40 $10 $02
    sENDIF                                             ;; 0e:4ef7
    sEND                                               ;; 0e:4ef7 $00

script_03cc:
    sIF_0B $c9                                         ;; 0e:4ef8 $0b $c9 $00 $05
      sLOAD_ROOM 11, $20, 16, 2                        ;; 0e:4efc $f4 $0b $20 $10 $02
    sENDIF                                             ;; 0e:4f01
    sEND                                               ;; 0e:4f01 $00

script_03cd:
    sIF_0B $c9                                         ;; 0e:4f02 $0b $c9 $00 $05
      sLOAD_ROOM 10, $20, 16, 2                        ;; 0e:4f06 $f4 $0a $20 $10 $02
    sENDIF                                             ;; 0e:4f0b
    sEND                                               ;; 0e:4f0b $00

script_03ce:
    sIF_0B $c9                                         ;; 0e:4f0c $0b $c9 $00 $05
      sLOAD_ROOM 10, $14, 16, 2                        ;; 0e:4f10 $f4 $0a $14 $10 $02
    sENDIF                                             ;; 0e:4f15
    sEND                                               ;; 0e:4f15 $00

script_03cf:
    sIF_0B $c9                                         ;; 0e:4f16 $0b $c9 $00 $05
      sLOAD_ROOM 10, $53, 16, 2                        ;; 0e:4f1a $f4 $0a $53 $10 $02
    sENDIF                                             ;; 0e:4f1f
    sEND                                               ;; 0e:4f1f $00

script_03d0:
    sSET_NPC_TYPES 21                                  ;; 0e:4f20 $fc $15
    sSPAWN_NPC 1                                       ;; 0e:4f22 $fd $01
    sEND                                               ;; 0e:4f24 $00

script_03d1:
    sIF_FLAG wScriptFlags.2                            ;; 0e:4f25 $08 $02 $00 $03
      sUNK_EF $00, $03                                 ;; 0e:4f29 $ef $00 $03
    sENDIF                                             ;; 0e:4f2c
    sEND                                               ;; 0e:4f2c $00

script_03d2:
    sEND                                               ;; 0e:4f2d $00

script_03d3:
    sCLEAR_FLAG wScriptFlags0F.0                       ;; 0e:4f2e $db $78
    sCLEAR_FLAG wScriptFlags0F.1                       ;; 0e:4f30 $db $79
    sCLEAR_FLAG wScriptFlags0F.2                       ;; 0e:4f32 $db $7a
    sCLEAR_FLAG wScriptFlags0F.3                       ;; 0e:4f34 $db $7b
    sEND                                               ;; 0e:4f36 $00

script_03d4:
    sEND                                               ;; 0e:4f37 $00

script_03d5:
    sEND                                               ;; 0e:4f38 $00

script_03d6:
    sIF_FLAG !wScriptFlags05.0                         ;; 0e:4f39 $08 $a8 $00 $31
      sPLAYER_STEP_FORWARD                             ;; 0e:4f3d $80
      sPLAYER_STEP_FORWARD                             ;; 0e:4f3e $80
      sFADE_TO_BLACK                                   ;; 0e:4f3f $bd
      sIF_FLAG wScriptFlags0D.7                        ;; 0e:4f40 $08 $6f $00 $03
        sCALL script_0470                              ;; 0e:4f44 $02 $5a $3f
      sENDIF                                           ;; 0e:4f47
      sLOAD_ROOM_INSTANT 15, $55, 20, 0                ;; 0e:4f47 $f3 $0f $55 $14 $00
      sFADE_TO_NORMAL                                  ;; 0e:4f4c $bc
      sMSG                                             ;; 0e:4f4d $04
        db "<10> AAARGH!!\n Poison gas!!<12>"
        db "<11>", $00 ;; 0e:4f4e
      sFADE_TO_BLACK                                   ;; 0e:4f65 $bd
      sLOAD_ROOM_INSTANT 0, $28, 11, 6                 ;; 0e:4f66 $f3 $00 $28 $0b $06
      sFADE_TO_NORMAL                                  ;; 0e:4f6b $bc
      sPLAYER_GIVE_STATUS 1                            ;; 0e:4f6c $c4 $01
    sENDIF                                             ;; 0e:4f6e
    sEND                                               ;; 0e:4f6e $00

script_03d7:
    sEND                                               ;; 0e:4f6f $00

script_03d8:
    sEND                                               ;; 0e:4f70 $00

script_03d9:
    sIF_FLAG !wScriptFlags01.3                         ;; 0e:4f71 $08 $8b $00 $14
      sSET_ROOM_TILE $0f, 3, 2                         ;; 0e:4f75 $b0 $0f $03 $02
      sSET_ROOM_TILE $0f, 4, 2                         ;; 0e:4f79 $b0 $0f $04 $02
      sSET_ROOM_TILE $1f, 3, 3                         ;; 0e:4f7d $b0 $1f $03 $03
      sSET_ROOM_TILE $1f, 4, 3                         ;; 0e:4f81 $b0 $1f $04 $03
      sDELAY 5                                         ;; 0e:4f85 $f0 $05
      sSFX 16                                          ;; 0e:4f87 $f9 $10
    sENDIF                                             ;; 0e:4f89
    sEND                                               ;; 0e:4f89 $00

script_03da:
    sEND                                               ;; 0e:4f8a $00

script_03db:
    sEND                                               ;; 0e:4f8b $00

script_03dc:
    sSET_NPC_TYPES 21                                  ;; 0e:4f8c $fc $15
    sSPAWN_NPC 2                                       ;; 0e:4f8e $fd $02
    sSPAWN_NPC 0                                       ;; 0e:4f90 $fd $00
    sEND                                               ;; 0e:4f92 $00

script_03dd:
    sEND                                               ;; 0e:4f93 $00

script_03de:
    sEND                                               ;; 0e:4f94 $00

script_03df:
    sSET_NPC_TYPES 7                                   ;; 0e:4f95 $fc $07
    sSPAWN_NPC 2                                       ;; 0e:4f97 $fd $02
    sSPAWN_NPC 0                                       ;; 0e:4f99 $fd $00
    sEND                                               ;; 0e:4f9b $00

script_03e0:
    sEND                                               ;; 0e:4f9c $00

script_03e1:
    sEND                                               ;; 0e:4f9d $00

script_03e2:
    sSET_NPC_TYPES 32                                  ;; 0e:4f9e $fc $20
    sSPAWN_NPC 0                                       ;; 0e:4fa0 $fd $00
    sSPAWN_NPC 2                                       ;; 0e:4fa2 $fd $02
    sEND                                               ;; 0e:4fa4 $00

script_03e3:
    sEND                                               ;; 0e:4fa5 $00

script_03e4:
    sEND                                               ;; 0e:4fa6 $00

script_03e5:
    sSET_NPC_TYPES 99                                  ;; 0e:4fa7 $fc $63
    sSPAWN_NPC 0                                       ;; 0e:4fa9 $fd $00
    sEND                                               ;; 0e:4fab $00

script_03e6:
    sEND                                               ;; 0e:4fac $00

script_03e7:
    sEND                                               ;; 0e:4fad $00

script_03e8:
    sIF_FLAG wScriptFlags04.2                          ;; 0e:4fae $08 $22 $00 $fb
      sIF_FLAG !wScriptFlags02.2                       ;; 0e:4fb2 $08 $92 $00 $f4
        sSET_MUSIC 0                                   ;; 0e:4fb6 $f8 $00
        sIF_FLAG wScriptFlags0D.7                      ;; 0e:4fb8 $08 $6f $00 $03
          sCALL script_0470                            ;; 0e:4fbc $02 $5a $3f
        sENDIF                                         ;; 0e:4fbf
        sPLAYER_STEP_FORWARD                           ;; 0e:4fbf $80
        sPLAYER_STEP_FORWARD                           ;; 0e:4fc0 $80
        sDELAY 40                                      ;; 0e:4fc1 $f0 $28
        sSHAKE_SCREEN                                  ;; 0e:4fc3 $fb
        sFLASH_SCREEN                                  ;; 0e:4fc4 $bf
        sSFX 37                                        ;; 0e:4fc5 $f9 $25
        sFLASH_SCREEN                                  ;; 0e:4fc7 $bf
        sFLASH_SCREEN                                  ;; 0e:4fc8 $bf
        sCREATE_EFFECT $10, $06, $04                   ;; 0e:4fc9 $ba $10 $06 $04
        sCREATE_EFFECT $10, $0a, $03                   ;; 0e:4fcd $ba $10 $0a $03
        sCREATE_EFFECT $10, $08, $05                   ;; 0e:4fd1 $ba $10 $08 $05
        sCREATE_EFFECT $10, $0c, $04                   ;; 0e:4fd5 $ba $10 $0c $04
        sSFX 37                                        ;; 0e:4fd9 $f9 $25
        sSET_ROOM_TILE $6c, 3, 2                       ;; 0e:4fdb $b0 $6c $03 $02
        sSET_ROOM_TILE $66, 4, 2                       ;; 0e:4fdf $b0 $66 $04 $02
        sSET_ROOM_TILE $6c, 5, 2                       ;; 0e:4fe3 $b0 $6c $05 $02
        sSET_ROOM_TILE $66, 6, 2                       ;; 0e:4fe7 $b0 $66 $06 $02
        sSET_ROOM_TILE $6c, 7, 2                       ;; 0e:4feb $b0 $6c $07 $02
        sDELAY 5                                       ;; 0e:4fef $f0 $05
        sFLASH_SCREEN                                  ;; 0e:4ff1 $bf
        sSFX 37                                        ;; 0e:4ff2 $f9 $25
        sSET_ROOM_TILE $6c, 3, 1                       ;; 0e:4ff4 $b0 $6c $03 $01
        sSET_ROOM_TILE $66, 4, 1                       ;; 0e:4ff8 $b0 $66 $04 $01
        sSET_ROOM_TILE $6c, 5, 1                       ;; 0e:4ffc $b0 $6c $05 $01
        sSET_ROOM_TILE $66, 6, 1                       ;; 0e:5000 $b0 $66 $06 $01
        sSET_ROOM_TILE $6c, 7, 1                       ;; 0e:5004 $b0 $6c $07 $01
        sSET_ROOM_TILE $6c, 3, 2                       ;; 0e:5008 $b0 $6c $03 $02
        sSET_ROOM_TILE $65, 4, 2                       ;; 0e:500c $b0 $65 $04 $02
        sSET_ROOM_TILE $65, 5, 2                       ;; 0e:5010 $b0 $65 $05 $02
        sSET_ROOM_TILE $65, 6, 2                       ;; 0e:5014 $b0 $65 $06 $02
        sSET_ROOM_TILE $6c, 7, 2                       ;; 0e:5018 $b0 $6c $07 $02
        sDELAY 5                                       ;; 0e:501c $f0 $05
        sFLASH_SCREEN                                  ;; 0e:501e $bf
        sSFX 37                                        ;; 0e:501f $f9 $25
        sSET_ROOM_TILE $6c, 3, 0                       ;; 0e:5021 $b0 $6c $03 $00
        sSET_ROOM_TILE $66, 4, 0                       ;; 0e:5025 $b0 $66 $04 $00
        sSET_ROOM_TILE $6c, 5, 0                       ;; 0e:5029 $b0 $6c $05 $00
        sSET_ROOM_TILE $66, 6, 0                       ;; 0e:502d $b0 $66 $06 $00
        sSET_ROOM_TILE $6c, 7, 0                       ;; 0e:5031 $b0 $6c $07 $00
        sSET_ROOM_TILE $6c, 3, 1                       ;; 0e:5035 $b0 $6c $03 $01
        sSET_ROOM_TILE $65, 4, 1                       ;; 0e:5039 $b0 $65 $04 $01
        sSET_ROOM_TILE $65, 5, 1                       ;; 0e:503d $b0 $65 $05 $01
        sSET_ROOM_TILE $65, 6, 1                       ;; 0e:5041 $b0 $65 $06 $01
        sSET_ROOM_TILE $6c, 7, 1                       ;; 0e:5045 $b0 $6c $07 $01
        sSET_ROOM_TILE $6c, 3, 2                       ;; 0e:5049 $b0 $6c $03 $02
        sSET_ROOM_TILE $72, 4, 2                       ;; 0e:504d $b0 $72 $04 $02
        sSET_ROOM_TILE $6c, 5, 2                       ;; 0e:5051 $b0 $6c $05 $02
        sSET_ROOM_TILE $72, 6, 2                       ;; 0e:5055 $b0 $72 $06 $02
        sSET_ROOM_TILE $6c, 7, 2                       ;; 0e:5059 $b0 $6c $07 $02
        sDELAY 5                                       ;; 0e:505d $f0 $05
        sFLASH_SCREEN                                  ;; 0e:505f $bf
        sSFX 37                                        ;; 0e:5060 $f9 $25
        sSET_ROOM_TILE $6c, 3, 0                       ;; 0e:5062 $b0 $6c $03 $00
        sSET_ROOM_TILE $65, 4, 0                       ;; 0e:5066 $b0 $65 $04 $00
        sSET_ROOM_TILE $65, 5, 0                       ;; 0e:506a $b0 $65 $05 $00
        sSET_ROOM_TILE $65, 6, 0                       ;; 0e:506e $b0 $65 $06 $00
        sSET_ROOM_TILE $6c, 7, 0                       ;; 0e:5072 $b0 $6c $07 $00
        sSET_ROOM_TILE $6c, 3, 1                       ;; 0e:5076 $b0 $6c $03 $01
        sSET_ROOM_TILE $72, 4, 1                       ;; 0e:507a $b0 $72 $04 $01
        sSET_ROOM_TILE $6c, 5, 1                       ;; 0e:507e $b0 $6c $05 $01
        sSET_ROOM_TILE $72, 6, 1                       ;; 0e:5082 $b0 $72 $06 $01
        sSET_ROOM_TILE $6c, 7, 1                       ;; 0e:5086 $b0 $6c $07 $01
        sSET_ROOM_TILE $09, 3, 2                       ;; 0e:508a $b0 $09 $03 $02
        sSET_ROOM_TILE $55, 4, 2                       ;; 0e:508e $b0 $55 $04 $02
        sSET_ROOM_TILE $55, 5, 2                       ;; 0e:5092 $b0 $55 $05 $02
        sSET_ROOM_TILE $55, 6, 2                       ;; 0e:5096 $b0 $55 $06 $02
        sSET_ROOM_TILE $0a, 7, 2                       ;; 0e:509a $b0 $0a $07 $02
        sDELAY 5                                       ;; 0e:509e $f0 $05
        sFLASH_SCREEN                                  ;; 0e:50a0 $bf
        sSFX 37                                        ;; 0e:50a1 $f9 $25
        sCALL script_0544                              ;; 0e:50a3 $02 $77 $b1
        sSET_FLAG wScriptFlags02.2                     ;; 0e:50a6 $da $12
      sELSE                                            ;; 0e:50a8 $01 $03
        sCALL script_0547                              ;; 0e:50aa $02 $79 $86
      sENDIF                                           ;; 0e:50ad
    sENDIF                                             ;; 0e:50ad
    sIF_FLAG wScriptFlags0B.5                          ;; 0e:50ad $08 $5d $00 $03
      sCALL script_0475                                ;; 0e:50b1 $02 $5b $01
    sENDIF                                             ;; 0e:50b4
    sEND                                               ;; 0e:50b4 $00

script_03e9:
    sIF_FLAG !wScriptFlags0D.7                         ;; 0e:50b5 $08 $ef $00 $02
      sSET_MUSIC 25                                    ;; 0e:50b9 $f8 $19
    sENDIF                                             ;; 0e:50bb
    sEND                                               ;; 0e:50bb $00

script_03ea:
    sEND                                               ;; 0e:50bc $00

script_03eb:
    sSET_NPC_TYPES 95                                  ;; 0e:50bd $fc $5f
    sSPAWN_NPC 0                                       ;; 0e:50bf $fd $00
    sEND                                               ;; 0e:50c1 $00

script_03ec:
    sEND                                               ;; 0e:50c2 $00

script_03ed:
    sEND                                               ;; 0e:50c3 $00

script_03ee:
    sEND                                               ;; 0e:50c4 $00

script_03ef:
    sIF_FLAG wScriptFlags.1                            ;; 0e:50c5 $08 $01 $00 $03
      sUNK_EF $00, $03                                 ;; 0e:50c9 $ef $00 $03
    sENDIF                                             ;; 0e:50cc
    sIF_FLAG wScriptFlags.2                            ;; 0e:50cc $08 $02 $00 $03
      sUNK_EF $00, $03                                 ;; 0e:50d0 $ef $00 $03
    sENDIF                                             ;; 0e:50d3
    sEND                                               ;; 0e:50d3 $00

script_03f0:
    sEND                                               ;; 0e:50d4 $00

script_03f1:
    sUNK_C9 $03, $f3                                   ;; 0e:50d5 $c9 $03 $f3
    sEND                                               ;; 0e:50d8 $00

script_03f2:
    sEND                                               ;; 0e:50d9 $00

script_03f3:
    sSET_ROOM_TILE $65, 5, 3                           ;; 0e:50da $b0 $65 $05 $03
    sSET_ROOM_TILE $73, 7, 4                           ;; 0e:50de $b0 $73 $07 $04
    sEND                                               ;; 0e:50e2 $00

script_03f4:
    sUNK_C9 $03, $f6                                   ;; 0e:50e3 $c9 $03 $f6
    sEND                                               ;; 0e:50e6 $00

script_03f5:
    sEND                                               ;; 0e:50e7 $00

script_03f6:
    sSET_ROOM_TILE $70, 6, 3                           ;; 0e:50e8 $b0 $70 $06 $03
    sSET_ROOM_TILE $73, 3, 2                           ;; 0e:50ec $b0 $73 $03 $02
    sEND                                               ;; 0e:50f0 $00

script_03f7:
    sUNK_C9 $03, $f9                                   ;; 0e:50f1 $c9 $03 $f9
    sEND                                               ;; 0e:50f4 $00

script_03f8:
    sEND                                               ;; 0e:50f5 $00

script_03f9:
    sSET_ROOM_TILE $4b, 6, 5                           ;; 0e:50f6 $b0 $4b $06 $05
    sSET_ROOM_TILE $73, 7, 2                           ;; 0e:50fa $b0 $73 $07 $02
    sEND                                               ;; 0e:50fe $00

script_03fa:
    sIF_FLAG wScriptFlags02.6                          ;; 0e:50ff $08 $16 $00 $0c
      sSET_ROOM_TILE $5c, 6, 7                         ;; 0e:5103 $b0 $5c $06 $07
      sSET_ROOM_TILE $5c, 6, 6                         ;; 0e:5107 $b0 $5c $06 $06
      sSET_ROOM_TILE $5c, 6, 5                         ;; 0e:510b $b0 $5c $06 $05
    sENDIF                                             ;; 0e:510f
    sEND                                               ;; 0e:510f $00

script_03fb:
    sEND                                               ;; 0e:5110 $00

script_03fc:
    sEND                                               ;; 0e:5111 $00

script_03fd:
    sSET_NPC_TYPES 95                                  ;; 0e:5112 $fc $5f
    sSPAWN_NPC 2                                       ;; 0e:5114 $fd $02
    sEND                                               ;; 0e:5116 $00

script_03fe:
    sEND                                               ;; 0e:5117 $00

script_03ff:
    sEND                                               ;; 0e:5118 $00

script_0400:
    sIF_0B $c9                                         ;; 0e:5119 $0b $c9 $00 $15
      sSET_PLAYER_POSITION 8, 3                        ;; 0e:511d $8a $08 $03
      sSET_PLAYER_DIRECTION_RIGHT                      ;; 0e:5120 $86
      sDELAY 10                                        ;; 0e:5121 $f0 $0a
      sFADE_TO_BLACK                                   ;; 0e:5123 $bd
      sDELAY 40                                        ;; 0e:5124 $f0 $28
      sIF_FLAG !wScriptFlags01.5                       ;; 0e:5126 $08 $8d $00 $05
        sCALL script_0548                              ;; 0e:512a $02 $79 $c3
      sELSE                                            ;; 0e:512d $01 $01
        sFADE_TO_NORMAL                                ;; 0e:512f $bc
      sENDIF                                           ;; 0e:5130
      sFULL_HP                                         ;; 0e:5130 $c0
      sFULL_MANA                                       ;; 0e:5131 $c1
    sENDIF                                             ;; 0e:5132
    sEND                                               ;; 0e:5132 $00

script_0401:
    sIF_0B $c9                                         ;; 0e:5133 $0b $c9 $00 $b6
      sSFX 12                                          ;; 0e:5137 $f9 $0c
      sSET_PLAYER_DIRECTION_LEFT                       ;; 0e:5139 $87
      sSET_FAST_MOVEMENT                               ;; 0e:513a $88
      sPLAYER_JUMP 112                                 ;; 0e:513b $8b $70
      sCLEAR_FAST_MOVEMENT                             ;; 0e:513d $89
      sSFX 9                                           ;; 0e:513e $f9 $09
      sLOOP 6, 5                                       ;; 0e:5140 $03 $06 $05
        sSET_PLAYER_DIRECTION_UP                       ;; 0e:5143 $84
        sSET_PLAYER_DIRECTION_RIGHT                    ;; 0e:5144 $86
        sSET_PLAYER_DIRECTION_DOWN                     ;; 0e:5145 $85
        sSET_PLAYER_DIRECTION_LEFT                     ;; 0e:5146 $87
      sEND                                             ;; 0e:5147 $00
      sSET_PLAYER_POSITION 20, 0                       ;; 0e:5148 $8a $14 $00
      sDELAY 60                                        ;; 0e:514b $f0 $3c
      sFADE_TO_BLACK                                   ;; 0e:514d $bd
      sSET_PLAYER_LAYDOWN_SPRITE                       ;; 0e:514e $a6
      sLOAD_ROOM_INSTANT 11, $17, 8, 10                ;; 0e:514f $f3 $0b $17 $08 $0a
      sIF_FLAG !wScriptFlags04.6                       ;; 0e:5154 $08 $a6 $00 $8e
        sSET_NPC_TYPES 48                              ;; 0e:5158 $fc $30
        sSPAWN_NPC 0                                   ;; 0e:515a $fd $00
        sDELAY 60                                      ;; 0e:515c $f0 $3c
        sFADE_TO_NORMAL                                ;; 0e:515e $bc
        sDELAY 60                                      ;; 0e:515f $f0 $3c
        sMSG                                           ;; 0e:5161 $04
          db "<10>Watts:Wow!?\n Are you okay?\n<BOY>:_ Ouch!_ Oh_<12>"
          db "<11>", $00 ;; 0e:5162
        sNPC_1_STEP_FORWARD                            ;; 0e:5189 $10
        sNPC_1_STEP_FORWARD                            ;; 0e:518a $10
        sSET_NPC_1_DIRECTION_LEFT                      ;; 0e:518b $17
        sLOOP 4, 2                                     ;; 0e:518c $03 $04 $02
          sNPC_1_STEP_FORWARD                          ;; 0e:518f $10
        sEND                                           ;; 0e:5190 $00
        sDELAY 30                                      ;; 0e:5191 $f0 $1e
        sSET_PLAYER_NORMAL_SPRITE                      ;; 0e:5193 $a4
        sSET_PLAYER_DIRECTION_RIGHT                    ;; 0e:5194 $86
        sDELAY 60                                      ;; 0e:5195 $f0 $3c
        sMSG                                           ;; 0e:5197 $04
          db "<10><BOY>:Thanks.\n Do you know this\n cave well?<12>"
          db "<1b>Watts:Looking for\n Silver? Let's go\n together, then!<12>"
          db "<11>", $00 ;; 0e:5198
        sSET_NPC_TYPES 78                              ;; 0e:51db $fc $4e
        sDEL_NPC_1                                     ;; 0e:51dd $18
        sSPAWN_NPC 2                                   ;; 0e:51de $fd $02
        sGIVE_FOLLOWER 3                               ;; 0e:51e0 $9c $03
        sSET_FLAG wScriptFlags0A.3                     ;; 0e:51e2 $da $53
      sELSE                                            ;; 0e:51e4 $01 $07
        sFADE_TO_NORMAL                                ;; 0e:51e6 $bc
        sDELAY 30                                      ;; 0e:51e7 $f0 $1e
        sSET_PLAYER_NORMAL_SPRITE                      ;; 0e:51e9 $a4
        sSET_PLAYER_DIRECTION_RIGHT                    ;; 0e:51ea $86
        sDELAY 60                                      ;; 0e:51eb $f0 $3c
      sENDIF                                           ;; 0e:51ed
    sENDIF                                             ;; 0e:51ed
    sEND                                               ;; 0e:51ed $00

script_0402:
    sEND                                               ;; 0e:51ee $00

script_0403:
    sIF_0B $c9                                         ;; 0e:51ef $0b $c9 $00 $06
      sFADE_TO_BLACK                                   ;; 0e:51f3 $bd
      sFULL_HP                                         ;; 0e:51f4 $c0
      sFULL_MANA                                       ;; 0e:51f5 $c1
      sDELAY 60                                        ;; 0e:51f6 $f0 $3c
      sFADE_TO_NORMAL                                  ;; 0e:51f8 $bc
    sENDIF                                             ;; 0e:51f9
    sEND                                               ;; 0e:51f9 $00

script_0404:
    sEND                                               ;; 0e:51fa $00

script_0405:
    sSET_MUSIC 0                                       ;; 0e:51fb $f8 $00
    sMSG                                               ;; 0e:51fd $04
      db "<1b> Good night!<12>"
      db "<11>", $00   ;; 0e:51fe
    sFADE_TO_BLACK                                     ;; 0e:5209 $bd
    sSET_MUSIC 17                                      ;; 0e:520a $f8 $11
    sFULL_HP                                           ;; 0e:520c $c0
    sFULL_MANA                                         ;; 0e:520d $c1
    sDELAY 60                                          ;; 0e:520e $f0 $3c
    sFADE_TO_NORMAL                                    ;; 0e:5210 $bc
    sEND                                               ;; 0e:5211 $00

script_0406:
    sIF_0B $c9                                         ;; 0e:5212 $0b $c9 $00 $0a
      sSFX 24                                          ;; 0e:5216 $f9 $18
      sSET_ROOM_TILE $46, 4, 6                         ;; 0e:5218 $b0 $46 $04 $06
      sSET_ROOM_TILE $46, 5, 6                         ;; 0e:521c $b0 $46 $05 $06
    sENDIF                                             ;; 0e:5220
    sEND                                               ;; 0e:5220 $00

script_0407:
    sIF_0B $c9                                         ;; 0e:5221 $0b $c9 $00 $0a
      sSFX 24                                          ;; 0e:5225 $f9 $18
      sSET_ROOM_TILE $00, 4, 6                         ;; 0e:5227 $b0 $00 $04 $06
      sSET_ROOM_TILE $00, 5, 6                         ;; 0e:522b $b0 $00 $05 $06
    sENDIF                                             ;; 0e:522f
    sEND                                               ;; 0e:522f $00

script_0408:
    sEND                                               ;; 0e:5230 $00

script_0409:
    sEND                                               ;; 0e:5231 $00

script_040a:
    sIF_0B $c9                                         ;; 0e:5232 $0b $c9 $00 $68
      sIF_EQUIPED $4f                                  ;; 0e:5236 $09 $4f $00 $64
        sSET_MUSIC 0                                   ;; 0e:523a $f8 $00
        sMSG                                           ;; 0e:523c $04
          db "<10>   Rusty sword\n  released it's\n  mystic power__<12>"
          db "<11>", $00 ;; 0e:523d
        sDELAY 120                                     ;; 0e:5260 $f0 $78
        sSFX 37                                        ;; 0e:5262 $f9 $25
        sSHAKE_SCREEN                                  ;; 0e:5264 $fb
        sSFX 37                                        ;; 0e:5265 $f9 $25
        sSHAKE_SCREEN                                  ;; 0e:5267 $fb
        sSET_FLAG wScriptFlags04.2                     ;; 0e:5268 $da $22
        sLOAD_ROOM 0, $70, 14, 11                      ;; 0e:526a $f4 $00 $70 $0e $0b
        sSFX 37                                        ;; 0e:526f $f9 $25
        sSHAKE_SCREEN                                  ;; 0e:5271 $fb
        sMSG                                           ;; 0e:5272 $04
          db "<10>Tower of Dime will\n appear somewhere\n in this desert!!<12>"
          db "<11>", $00 ;; 0e:5273
        sSET_MUSIC 25                                  ;; 0e:529a $f8 $19
        sUNK_AB                                        ;; 0e:529c $ab
        sRUN_ROOM_SCRIPT                               ;; 0e:529d $ec
      sENDIF                                           ;; 0e:529e
    sENDIF                                             ;; 0e:529e
    sEND                                               ;; 0e:529e $00

script_040b:
    sEND                                               ;; 0e:529f $00

script_040c:
    sIF_0B $c9                                         ;; 0e:52a0 $0b $c9 $00 $19
      sIF_FLAG wScriptFlags0F.0, wScriptFlags0F.1, wScriptFlags0F.2, !wScriptFlags0F.3 ;; 0e:52a4 $08 $78 $79 $7a $fb $00 $0a
        sCREATE_EFFECT $10, $0e, $02                   ;; 0e:52ab $ba $10 $0e $02
        sSET_ROOM_TILE $4c, 7, 1                       ;; 0e:52af $b0 $4c $07 $01
      sELSE                                            ;; 0e:52b3 $01 $08
        sCLEAR_FLAG wScriptFlags0F.0                   ;; 0e:52b5 $db $78
        sCLEAR_FLAG wScriptFlags0F.1                   ;; 0e:52b7 $db $79
        sCLEAR_FLAG wScriptFlags0F.2                   ;; 0e:52b9 $db $7a
        sCLEAR_FLAG wScriptFlags0F.3                   ;; 0e:52bb $db $7b
      sENDIF                                           ;; 0e:52bd
    sENDIF                                             ;; 0e:52bd
    sEND                                               ;; 0e:52bd $00

script_040d:
    sIF_0B $c9                                         ;; 0e:52be $0b $c9 $00 $1e
      sIF_FLAG !wScriptFlags0F.0, !wScriptFlags0F.1, !wScriptFlags0F.2, !wScriptFlags0F.3 ;; 0e:52c2 $08 $f8 $f9 $fa $fb $00 $04
        sSET_FLAG wScriptFlags0F.0                     ;; 0e:52c9 $da $78
      sELSE                                            ;; 0e:52cb $01 $13
        sIF_FLAG wScriptFlags0F.0, wScriptFlags0F.1, !wScriptFlags0F.2, !wScriptFlags0F.3 ;; 0e:52cd $08 $78 $79 $fa $fb $00 $04
          sSET_FLAG wScriptFlags0F.2                   ;; 0e:52d4 $da $7a
        sELSE                                          ;; 0e:52d6 $01 $08
          sCLEAR_FLAG wScriptFlags0F.0                 ;; 0e:52d8 $db $78
          sCLEAR_FLAG wScriptFlags0F.1                 ;; 0e:52da $db $79
          sCLEAR_FLAG wScriptFlags0F.2                 ;; 0e:52dc $db $7a
          sCLEAR_FLAG wScriptFlags0F.3                 ;; 0e:52de $db $7b
        sENDIF                                         ;; 0e:52e0
      sENDIF                                           ;; 0e:52e0
    sENDIF                                             ;; 0e:52e0
    sEND                                               ;; 0e:52e0 $00

script_040e:
    sIF_0B $c9                                         ;; 0e:52e1 $0b $c9 $00 $13
      sIF_FLAG wScriptFlags0F.0, !wScriptFlags0F.1, !wScriptFlags0F.2, !wScriptFlags0F.3 ;; 0e:52e5 $08 $78 $f9 $fa $fb $00 $04
        sSET_FLAG wScriptFlags0F.1                     ;; 0e:52ec $da $79
      sELSE                                            ;; 0e:52ee $01 $08
        sCLEAR_FLAG wScriptFlags0F.0                   ;; 0e:52f0 $db $78
        sCLEAR_FLAG wScriptFlags0F.1                   ;; 0e:52f2 $db $79
        sCLEAR_FLAG wScriptFlags0F.2                   ;; 0e:52f4 $db $7a
        sCLEAR_FLAG wScriptFlags0F.3                   ;; 0e:52f6 $db $7b
      sENDIF                                           ;; 0e:52f8
    sENDIF                                             ;; 0e:52f8
    sEND                                               ;; 0e:52f8 $00

script_0410:
    sIF_FLAG !wScriptFlags08.1                         ;; 0e:52f9 $08 $c1 $00 $07
      sSET_NPC_TYPES 89                                ;; 0e:52fd $fc $59
      sSPAWN_NPC 0                                     ;; 0e:52ff $fd $00
      sUNK_C9 $04, $2e                                 ;; 0e:5301 $c9 $04 $2e
    sENDIF                                             ;; 0e:5304
    sEND                                               ;; 0e:5304 $00

script_0411:
    sEND                                               ;; 0e:5305 $00

script_0412:
    sEND                                               ;; 0e:5306 $00

script_0413:
    sIF_FLAG !wScriptFlags08.0                         ;; 0e:5307 $08 $c0 $00 $07
      sSET_NPC_TYPES 89                                ;; 0e:530b $fc $59
      sSPAWN_NPC 0                                     ;; 0e:530d $fd $00
      sUNK_C9 $04, $2f                                 ;; 0e:530f $c9 $04 $2f
    sENDIF                                             ;; 0e:5312
    sEND                                               ;; 0e:5312 $00

script_0414:
    sEND                                               ;; 0e:5313 $00

script_0415:
    sEND                                               ;; 0e:5314 $00

script_0416:
    sIF_FLAG !wScriptFlags09.4                         ;; 0e:5315 $08 $cc $00 $07
      sSET_NPC_TYPES 89                                ;; 0e:5319 $fc $59
      sSPAWN_NPC 0                                     ;; 0e:531b $fd $00
      sUNK_C9 $04, $30                                 ;; 0e:531d $c9 $04 $30
    sENDIF                                             ;; 0e:5320
    sEND                                               ;; 0e:5320 $00

script_0417:
    sEND                                               ;; 0e:5321 $00

script_0418:
    sEND                                               ;; 0e:5322 $00

script_0419:
    sIF_FLAG !wScriptFlags08.3                         ;; 0e:5323 $08 $c3 $00 $07
      sSET_NPC_TYPES 89                                ;; 0e:5327 $fc $59
      sSPAWN_NPC 0                                     ;; 0e:5329 $fd $00
      sUNK_C9 $04, $31                                 ;; 0e:532b $c9 $04 $31
    sENDIF                                             ;; 0e:532e
    sEND                                               ;; 0e:532e $00

script_041a:
    sEND                                               ;; 0e:532f $00

script_041b:
    sEND                                               ;; 0e:5330 $00

script_041c:
    sIF_FLAG !wScriptFlags08.4                         ;; 0e:5331 $08 $c4 $00 $07
      sSET_NPC_TYPES 89                                ;; 0e:5335 $fc $59
      sSPAWN_NPC 0                                     ;; 0e:5337 $fd $00
      sUNK_C9 $04, $32                                 ;; 0e:5339 $c9 $04 $32
    sENDIF                                             ;; 0e:533c
    sEND                                               ;; 0e:533c $00

script_041d:
    sEND                                               ;; 0e:533d $00

script_041e:
    sEND                                               ;; 0e:533e $00

script_041f:
    sIF_FLAG !wScriptFlags.7                           ;; 0e:533f $08 $87 $00 $04
      sSET_NPC_TYPES 26                                ;; 0e:5343 $fc $1a
      sSPAWN_NPC 1                                     ;; 0e:5345 $fd $01
    sENDIF                                             ;; 0e:5347
    sEND                                               ;; 0e:5347 $00

script_0420:
    sEND                                               ;; 0e:5348 $00

script_0421:
    sSET_NPC_TYPES 89                                  ;; 0e:5349 $fc $59
    sSPAWN_NPC 0                                       ;; 0e:534b $fd $00
    sUNK_C9 $04, $46                                   ;; 0e:534d $c9 $04 $46
    sEND                                               ;; 0e:5350 $00

script_0422:
    sIF_FLAG !wScriptFlags08.6                         ;; 0e:5351 $08 $c6 $00 $07
      sSET_NPC_TYPES 89                                ;; 0e:5355 $fc $59
      sSPAWN_NPC 0                                     ;; 0e:5357 $fd $00
      sUNK_C9 $04, $34                                 ;; 0e:5359 $c9 $04 $34
    sENDIF                                             ;; 0e:535c
    sEND                                               ;; 0e:535c $00

script_0423:
    sEND                                               ;; 0e:535d $00

script_0424:
    sEND                                               ;; 0e:535e $00

script_0425:
    sIF_FLAG !wScriptFlags09.2                         ;; 0e:535f $08 $ca $00 $07
      sSET_NPC_TYPES 89                                ;; 0e:5363 $fc $59
      sSPAWN_NPC 0                                     ;; 0e:5365 $fd $00
      sUNK_C9 $04, $66                                 ;; 0e:5367 $c9 $04 $66
    sENDIF                                             ;; 0e:536a
    sEND                                               ;; 0e:536a $00

script_0426:
    sEND                                               ;; 0e:536b $00

script_0427:
    sEND                                               ;; 0e:536c $00

script_0428:
    sIF_FLAG !wScriptFlags.7                           ;; 0e:536d $08 $87 $00 $04
      sSET_NPC_TYPES 28                                ;; 0e:5371 $fc $1c
      sSPAWN_NPC 2                                     ;; 0e:5373 $fd $02
    sENDIF                                             ;; 0e:5375
    sEND                                               ;; 0e:5375 $00

script_0429:
    sEND                                               ;; 0e:5376 $00

script_042a:
    sSET_NPC_TYPES 89                                  ;; 0e:5377 $fc $59
    sSPAWN_NPC 0                                       ;; 0e:5379 $fd $00
    sUNK_C9 $04, $46                                   ;; 0e:537b $c9 $04 $46
    sEND                                               ;; 0e:537e $00

script_042b:
    sSET_NPC_TYPES 89                                  ;; 0e:537f $fc $59
    sSPAWN_NPC 0                                       ;; 0e:5381 $fd $00
    sUNK_C9 $04, $37                                   ;; 0e:5383 $c9 $04 $37
    sEND                                               ;; 0e:5386 $00

script_042c:
    sEND                                               ;; 0e:5387 $00

script_042d:
    sEND                                               ;; 0e:5388 $00

script_042e:
    sGIVE_EQUIPMENT 2                                  ;; 0e:5389 $d8 $02
    sIF_FLAG !wScriptFlags.5                           ;; 0e:538b $08 $85 $00 $13
      sSFX 15                                          ;; 0e:538f $f9 $0f
      sUNK_AF                                          ;; 0e:5391 $af
      sMSG                                             ;; 0e:5392 $04
        db "<10>Found <SICKLE>Sickle!<12>"
        db "<11>", $00 ;; 0e:5393
      sSET_FLAG wScriptFlags08.1                       ;; 0e:53a0 $da $41
    sENDIF                                             ;; 0e:53a2
    sEND                                               ;; 0e:53a2 $00

script_042f:
    sGIVE_EQUIPMENT 3                                  ;; 0e:53a3 $d8 $03
    sIF_FLAG !wScriptFlags.5                           ;; 0e:53a5 $08 $85 $00 $12
      sSFX 15                                          ;; 0e:53a9 $f9 $0f
      sUNK_AF                                          ;; 0e:53ab $af
      sMSG                                             ;; 0e:53ac $04
        db "<10>Found <WHIP>Chain!<12>"
        db "<11>", $00 ;; 0e:53ad
      sSET_FLAG wScriptFlags08.0                       ;; 0e:53b9 $da $40
    sENDIF                                             ;; 0e:53bb
    sEND                                               ;; 0e:53bb $00

script_0430:
    sGIVE_EQUIPMENT 9                                  ;; 0e:53bc $d8 $09
    sIF_FLAG !wScriptFlags.5                           ;; 0e:53be $08 $85 $00 $14
      sSFX 15                                          ;; 0e:53c2 $f9 $0f
      sUNK_AF                                          ;; 0e:53c4 $af
      sMSG                                             ;; 0e:53c5 $04
        db "<10>Found <SWORD>Dragon!<12>"
        db "<11>", $00 ;; 0e:53c6
      sSET_FLAG wScriptFlags09.4                       ;; 0e:53d4 $da $4c
    sENDIF                                             ;; 0e:53d6
    sEND                                               ;; 0e:53d6 $00

script_0431:
    sGIVE_EQUIPMENT 32                                 ;; 0e:53d7 $d8 $20
    sIF_FLAG !wScriptFlags.5                           ;; 0e:53d9 $08 $85 $00 $14
      sSFX 15                                          ;; 0e:53dd $f9 $0f
      sUNK_AF                                          ;; 0e:53df $af
      sMSG                                             ;; 0e:53e0 $04
        db "<10>Found <SHIELD>Dragon!<12>"
        db "<11>", $00 ;; 0e:53e1
      sSET_FLAG wScriptFlags08.3                       ;; 0e:53ef $da $43
    sENDIF                                             ;; 0e:53f1
    sEND                                               ;; 0e:53f1 $00

script_0432:
    sGIVE_EQUIPMENT 22                                 ;; 0e:53f2 $d8 $16
    sIF_FLAG !wScriptFlags.5                           ;; 0e:53f4 $08 $85 $00 $14
      sSFX 15                                          ;; 0e:53f8 $f9 $0f
      sUNK_AF                                          ;; 0e:53fa $af
      sMSG                                             ;; 0e:53fb $04
        db "<10>Found <ARMOR>Dragon!<12>"
        db "<11>", $00 ;; 0e:53fc
      sSET_FLAG wScriptFlags08.4                       ;; 0e:540a $da $44
    sENDIF                                             ;; 0e:540c
    sEND                                               ;; 0e:540c $00

script_0433:
    sEND                                               ;; 0e:540d $00

script_0434:
    sGIVE_EQUIPMENT 15                                 ;; 0e:540e $d8 $0f
    sIF_FLAG !wScriptFlags.5                           ;; 0e:5410 $08 $85 $00 $13
      sSFX 15                                          ;; 0e:5414 $f9 $0f
      sUNK_AF                                          ;; 0e:5416 $af
      sMSG                                             ;; 0e:5417 $04
        db "<10>Found <SWORD>????!<12>"
        db "<11>", $00 ;; 0e:5418
      sSET_FLAG wScriptFlags08.6                       ;; 0e:5425 $da $46
    sENDIF                                             ;; 0e:5427
    sEND                                               ;; 0e:5427 $00

script_0435:
    sSFX 15                                            ;; 0e:5428 $f9 $0f
    sUNK_AF                                            ;; 0e:542a $af
    sMSG                                               ;; 0e:542b $04
      db "<10>Found Silver!<12>"
      db "<11>", $00  ;; 0e:542c
    sSET_FLAG wScriptFlags02.4                         ;; 0e:5438 $da $14
    sDELAY 60                                          ;; 0e:543a $f0 $3c
    sLOAD_ROOM 0, $9b, 4, 5                            ;; 0e:543c $f4 $00 $9b $04 $05
    sSET_PLAYER_DIRECTION_RIGHT                        ;; 0e:5441 $86
    sFOLLOWER_DIRECTION_LEFT                           ;; 0e:5442 $97
    sFOLLOWER_SET_POSITION 7, 5                        ;; 0e:5443 $99 $07 $05
    sDELAY 80                                          ;; 0e:5446 $f0 $50
    sMSG                                               ;; 0e:5448 $04
      db "<10>Watts:I'll take it\n back and forge\n armor and swords!<12>"
      db "<1b> Gaia will let you\n in if you wear\n Silver stuff!<12>"
      db "<1b> Come see me at\n the Dwarf Cave!<12>"
      db "<11>", $00 ;; 0e:5449
    sFOLLOWER_DIRECTION_RIGHT                          ;; 0e:54a5 $96
    sUNK_9A                                            ;; 0e:54a6 $9a
    sLOOP 9, 2                                         ;; 0e:54a7 $03 $09 $02
      sFOLLOWER_STEP_FORWARD                           ;; 0e:54aa $90
    sEND                                               ;; 0e:54ab $00
    sFOLLOWER_DIRECTION_UP                             ;; 0e:54ac $94
    sFOLLOWER_STEP_FORWARD                             ;; 0e:54ad $90
    sFOLLOWER_DIRECTION_RIGHT                          ;; 0e:54ae $96
    sFOLLOWER_STEP_FORWARD                             ;; 0e:54af $90
    sFOLLOWER_STEP_FORWARD                             ;; 0e:54b0 $90
    sUNK_9B                                            ;; 0e:54b1 $9b
    sFOLLOWER_DELETE                                   ;; 0e:54b2 $98
    sCLEAR_FLAG wScriptFlags0A.3                       ;; 0e:54b3 $db $53
    sSET_MUSIC 20                                      ;; 0e:54b5 $f8 $14
    sUNK_AB                                            ;; 0e:54b7 $ab
    sEND                                               ;; 0e:54b8 $00

script_0436:
    sEND                                               ;; 0e:54b9 $00

script_0437:
    sGIVE_EQUIPMENT 13                                 ;; 0e:54ba $d8 $0d
    sIF_FLAG !wScriptFlags.5                           ;; 0e:54bc $08 $85 $00 $3e
      sSFX 15                                          ;; 0e:54c0 $f9 $0f
      sUNK_AF                                          ;; 0e:54c2 $af
      sMSG                                             ;; 0e:54c3 $04
        db "<10>Received <SWORD>Rusty!<12>"
        db "<1b><BOY>:Rusty sword?\n Is this the\n Excalibur_?<12>"
        db "<11>", $00 ;; 0e:54c4
      sSET_FLAG wScriptFlags07.3                       ;; 0e:54f3 $da $3b
      sLOAD_ROOM 0, $f0, 8, 9                          ;; 0e:54f5 $f4 $00 $f0 $08 $09
      sSET_MUSIC 25                                    ;; 0e:54fa $f8 $19
      sUNK_AB                                          ;; 0e:54fc $ab
      sRUN_ROOM_SCRIPT                                 ;; 0e:54fd $ec
    sENDIF                                             ;; 0e:54fe
    sEND                                               ;; 0e:54fe $00

script_0438:
    sGIVE_ITEM 20                                      ;; 0e:54ff $d4 $14
    sIF_FLAG !wScriptFlags.5                           ;; 0e:5501 $08 $85 $00 $11
      sSFX 15                                          ;; 0e:5505 $f9 $0f
      sUNK_AF                                          ;; 0e:5507 $af
      sMSG                                             ;; 0e:5508 $04
        db "<10>Found <CANDY>Candy.<12>"
        db "<11>", $00 ;; 0e:5509
    sENDIF                                             ;; 0e:5516
    sEND                                               ;; 0e:5516 $00

script_0439:
    sUNK_C7                                            ;; 0e:5517 $c7
    sIF_FLAG !wScriptFlags0F.6, !wScriptFlags0F.7      ;; 0e:5518 $08 $fe $ff $00 $19
      sGIVE_ITEM 45                                    ;; 0e:551d $d4 $2d
      sIF_FLAG !wScriptFlags.5                         ;; 0e:551f $08 $85 $00 $11
        sSFX 15                                        ;; 0e:5523 $f9 $0f
        sUNK_AF                                        ;; 0e:5525 $af
        sMSG                                           ;; 0e:5526 $04
          db "<10>Found <ae>Wisdom.<12>"
          db "<11>", $00 ;; 0e:5527
      sENDIF                                           ;; 0e:5534
    sELSE                                              ;; 0e:5534 $01 $03
      sCALL script_0440                                ;; 0e:5536 $02 $55 $af
    sENDIF                                             ;; 0e:5539
    sEND                                               ;; 0e:5539 $00

script_043a:
    sGIVE_ITEM 0                                       ;; 0e:553a $d4 $00
    sIF_FLAG !wScriptFlags.5                           ;; 0e:553c $08 $85 $00 $0f
      sSFX 15                                          ;; 0e:5540 $f9 $0f
      sUNK_AF                                          ;; 0e:5542 $af
      sMSG                                             ;; 0e:5543 $04
        db "<10>Found <POT>Cure.<12>"
        db "<11>", $00 ;; 0e:5544
    sENDIF                                             ;; 0e:554f
    sEND                                               ;; 0e:554f $00

script_043b:
    sGIVE_ITEM 6                                       ;; 0e:5550 $d4 $06
    sIF_FLAG !wScriptFlags.5                           ;; 0e:5552 $08 $85 $00 $12
      sSFX 15                                          ;; 0e:5556 $f9 $0f
      sUNK_AF                                          ;; 0e:5558 $af
      sMSG                                             ;; 0e:5559 $04
        db "<10>Found <POT>Eyedrop.<12>"
        db "<11>", $00 ;; 0e:555a
    sENDIF                                             ;; 0e:5568
    sEND                                               ;; 0e:5568 $00

script_043c:
    sGIVE_ITEM 5                                       ;; 0e:5569 $d4 $05
    sIF_FLAG !wScriptFlags.5                           ;; 0e:556b $08 $85 $00 $0f
      sSFX 15                                          ;; 0e:556f $f9 $0f
      sUNK_AF                                          ;; 0e:5571 $af
      sMSG                                             ;; 0e:5572 $04
        db "<10>Found <POT>Pure.<12>"
        db "<11>", $00 ;; 0e:5573
    sENDIF                                             ;; 0e:557e
    sEND                                               ;; 0e:557e $00

script_043d:
    sGIVE_ITEM 7                                       ;; 0e:557f $d4 $07
    sIF_FLAG !wScriptFlags.5                           ;; 0e:5581 $08 $85 $00 $10
      sSFX 15                                          ;; 0e:5585 $f9 $0f
      sUNK_AF                                          ;; 0e:5587 $af
      sMSG                                             ;; 0e:5588 $04
        db "<10>Found <POT>Soft.<12>"
        db "<11>", $00 ;; 0e:5589
    sENDIF                                             ;; 0e:5595
    sEND                                               ;; 0e:5595 $00

script_043e:
    sGIVE_ITEM 1                                       ;; 0e:5596 $d4 $01
    sIF_FLAG !wScriptFlags.5                           ;; 0e:5598 $08 $85 $00 $11
      sSFX 15                                          ;; 0e:559c $f9 $0f
      sUNK_AF                                          ;; 0e:559e $af
      sMSG                                             ;; 0e:559f $04
        db "<10>Found <POT>X-Cure.<12>"
        db "<11>", $00 ;; 0e:55a0
    sENDIF                                             ;; 0e:55ad
    sEND                                               ;; 0e:55ad $00

script_043f:
    sEND                                               ;; 0e:55ae $00

script_0440:
    sGIVE_ITEM 2                                       ;; 0e:55af $d4 $02
    sIF_FLAG !wScriptFlags.5                           ;; 0e:55b1 $08 $85 $00 $10
      sSFX 15                                          ;; 0e:55b5 $f9 $0f
      sUNK_AF                                          ;; 0e:55b7 $af
      sMSG                                             ;; 0e:55b8 $04
        db "<10>Found <POT>Ether.<12>"
        db "<11>", $00 ;; 0e:55b9
    sENDIF                                             ;; 0e:55c5
    sEND                                               ;; 0e:55c5 $00

script_0441:
    sGIVE_ITEM 24                                      ;; 0e:55c6 $d4 $18
    sIF_FLAG !wScriptFlags.5                           ;; 0e:55c8 $08 $85 $00 $11
      sSFX 15                                          ;; 0e:55cc $f9 $0f
      sUNK_AF                                          ;; 0e:55ce $af
      sMSG                                             ;; 0e:55cf $04
        db "<10>Found <KEY>Bronze!<12>"
        db "<11>", $00 ;; 0e:55d0
    sENDIF                                             ;; 0e:55dd
    sEND                                               ;; 0e:55dd $00

script_0442:
    sGIVE_ITEM 22                                      ;; 0e:55de $d4 $16
    sIF_FLAG !wScriptFlags.5                           ;; 0e:55e0 $08 $85 $00 $10
      sSFX 15                                          ;; 0e:55e4 $f9 $0f
      sUNK_AF                                          ;; 0e:55e6 $af
      sMSG                                             ;; 0e:55e7 $04
        db "<10>Found <KEY>Key.<12>"
        db "<11>", $00 ;; 0e:55e8
    sENDIF                                             ;; 0e:55f4
    sEND                                               ;; 0e:55f4 $00

script_0443:
    sGIVE_ITEM 53                                      ;; 0e:55f5 $d4 $35
    sIF_FLAG !wScriptFlags.5                           ;; 0e:55f7 $08 $85 $00 $13
      sSFX 15                                          ;; 0e:55fb $f9 $0f
      sUNK_AF                                          ;; 0e:55fd $af
      sMSG                                             ;; 0e:55fe $04
        db "<10>Found <ac>Mattock.<12>"
        db "<11>", $00 ;; 0e:55ff
      sSET_FLAG wScriptFlags09.5                       ;; 0e:560c $da $4d
    sENDIF                                             ;; 0e:560e
    sEND                                               ;; 0e:560e $00

script_0444:
    sUNK_C7                                            ;; 0e:560f $c7
    sIF_FLAG !wScriptFlags0F.6                         ;; 0e:5610 $08 $fe $00 $18
      sGIVE_ITEM 50                                    ;; 0e:5614 $d4 $32
      sIF_FLAG !wScriptFlags.5                         ;; 0e:5616 $08 $85 $00 $10
        sSFX 15                                        ;; 0e:561a $f9 $0f
        sUNK_AF                                        ;; 0e:561c $af
        sMSG                                           ;; 0e:561d $04
          db "<10>Found <ad>Fang!<12>"
          db "<11>", $00 ;; 0e:561e
      sENDIF                                           ;; 0e:562a
    sELSE                                              ;; 0e:562a $01 $0e
      sSFX 15                                          ;; 0e:562c $f9 $0f
      sUNK_AF                                          ;; 0e:562e $af
      sMSG                                             ;; 0e:562f $04
        db "<10>Empty.<12>"
        db "<11>", $00     ;; 0e:5630
    sENDIF                                             ;; 0e:563a
    sEND                                               ;; 0e:563a $00

script_0445:
    sUNK_C7                                            ;; 0e:563b $c7
    sIF_FLAG !wScriptFlags0F.6                         ;; 0e:563c $08 $fe $00 $19
      sGIVE_ITEM 49                                    ;; 0e:5640 $d4 $31
      sIF_FLAG !wScriptFlags.5                         ;; 0e:5642 $08 $85 $00 $11
        sSFX 15                                        ;; 0e:5646 $f9 $0f
        sUNK_AF                                        ;; 0e:5648 $af
        sMSG                                           ;; 0e:5649 $04
          db "<10>Found <ad>Gold.<12>"
          db "<11>", $00 ;; 0e:564a
      sENDIF                                           ;; 0e:5657
    sELSE                                              ;; 0e:5657 $01 $03
      sCALL script_0438                                ;; 0e:5659 $02 $54 $ff
    sENDIF                                             ;; 0e:565c
    sEND                                               ;; 0e:565c $00

script_0446:
    sGIVE_ITEM 4                                       ;; 0e:565d $d4 $04
    sIF_FLAG !wScriptFlags.5                           ;; 0e:565f $08 $85 $00 $11
      sSFX 15                                          ;; 0e:5663 $f9 $0f
      sUNK_AF                                          ;; 0e:5665 $af
      sMSG                                             ;; 0e:5666 $04
        db "<10>Found <POT>Elixir.<12>"
        db "<11>", $00 ;; 0e:5667
    sENDIF                                             ;; 0e:5674
    sEND                                               ;; 0e:5674 $00

script_0447:
    sGIVE_ITEM 41                                      ;; 0e:5675 $d4 $29
    sIF_FLAG !wScriptFlags.5                           ;; 0e:5677 $08 $85 $00 $12
      sSFX 15                                          ;; 0e:567b $f9 $0f
      sUNK_AF                                          ;; 0e:567d $af
      sMSG                                             ;; 0e:567e $04
        db "<10>Found <ae>Crystal.<12>"
        db "<11>", $00 ;; 0e:567f
    sENDIF                                             ;; 0e:568d
    sEND                                               ;; 0e:568d $00

script_0448:
    sGIVE_ITEM 8                                       ;; 0e:568e $d4 $08
    sIF_FLAG !wScriptFlags.5                           ;; 0e:5690 $08 $85 $00 $11
      sSFX 15                                          ;; 0e:5694 $f9 $0f
      sUNK_AF                                          ;; 0e:5696 $af
      sMSG                                             ;; 0e:5697 $04
        db "<10>Found <POT>Moogle.<12>"
        db "<11>", $00 ;; 0e:5698
    sENDIF                                             ;; 0e:56a5
    sEND                                               ;; 0e:56a5 $00

script_0449:
    sGIVE_ITEM 3                                       ;; 0e:56a6 $d4 $03
    sIF_FLAG !wScriptFlags.5                           ;; 0e:56a8 $08 $85 $00 $12
      sSFX 15                                          ;; 0e:56ac $f9 $0f
      sUNK_AF                                          ;; 0e:56ae $af
      sMSG                                             ;; 0e:56af $04
        db "<10>Found <POT>X-Ether.<12>"
        db "<11>", $00 ;; 0e:56b0
    sENDIF                                             ;; 0e:56be
    sEND                                               ;; 0e:56be $00

script_044a:
    sGIVE_ITEM 9                                       ;; 0e:56bf $d4 $09
    sIF_FLAG !wScriptFlags.5                           ;; 0e:56c1 $08 $85 $00 $13
      sSFX 15                                          ;; 0e:56c5 $f9 $0f
      sUNK_AF                                          ;; 0e:56c7 $af
      sMSG                                             ;; 0e:56c8 $04
        db "<10>Found <POT>Unicorn.<12>"
        db "<11>", $00 ;; 0e:56c9
    sENDIF                                             ;; 0e:56d8
    sEND                                               ;; 0e:56d8 $00

script_044b:
    sUNK_C7                                            ;; 0e:56d9 $c7
    sIF_FLAG !wScriptFlags0F.6, !wScriptFlags0F.7      ;; 0e:56da $08 $fe $ff $00 $18
      sGIVE_ITEM 46                                    ;; 0e:56df $d4 $2e
      sIF_FLAG !wScriptFlags.5                         ;; 0e:56e1 $08 $85 $00 $10
        sSFX 15                                        ;; 0e:56e5 $f9 $0f
        sUNK_AF                                        ;; 0e:56e7 $af
        sMSG                                           ;; 0e:56e8 $04
          db "<10>Found <ae>Will.<12>"
          db "<11>", $00 ;; 0e:56e9
      sENDIF                                           ;; 0e:56f5
    sELSE                                              ;; 0e:56f5 $01 $03
      sCALL script_0440                                ;; 0e:56f7 $02 $55 $af
    sENDIF                                             ;; 0e:56fa
    sEND                                               ;; 0e:56fa $00

script_044c:
    sCALL script_0438                                  ;; 0e:56fb $02 $54 $ff
    sEND                                               ;; 0e:56fe $00

script_044d:
    sUNK_C7                                            ;; 0e:56ff $c7
    sIF_FLAG !wScriptFlags0F.6, wScriptFlags0F.7       ;; 0e:5700 $08 $fe $7f $00 $19
      sGIVE_EQUIPMENT 33                               ;; 0e:5705 $d8 $21
      sIF_FLAG !wScriptFlags.5                         ;; 0e:5707 $08 $85 $00 $11
        sSFX 15                                        ;; 0e:570b $f9 $0f
        sUNK_AF                                        ;; 0e:570d $af
        sMSG                                           ;; 0e:570e $04
          db "<10>Found <SHIELD>Aegis!<12>"
          db "<11>", $00 ;; 0e:570f
      sENDIF                                           ;; 0e:571c
    sELSE                                              ;; 0e:571c $01 $19
      sGIVE_ITEM 9                                     ;; 0e:571e $d4 $09
      sIF_FLAG !wScriptFlags.5                         ;; 0e:5720 $08 $85 $00 $13
        sSFX 15                                        ;; 0e:5724 $f9 $0f
        sUNK_AF                                        ;; 0e:5726 $af
        sMSG                                           ;; 0e:5727 $04
          db "<10>Found <POT>Unicorn.<12>"
          db "<11>", $00 ;; 0e:5728
      sENDIF                                           ;; 0e:5737
    sENDIF                                             ;; 0e:5737
    sEND                                               ;; 0e:5737 $00

script_044e:
    sUNK_C7                                            ;; 0e:5738 $c7
    sIF_FLAG !wScriptFlags0F.6, wScriptFlags0F.7       ;; 0e:5739 $08 $fe $7f $00 $1a
      sGIVE_EQUIPMENT 23                               ;; 0e:573e $d8 $17
      sIF_FLAG !wScriptFlags.5                         ;; 0e:5740 $08 $85 $00 $12
        sSFX 15                                        ;; 0e:5744 $f9 $0f
        sUNK_AF                                        ;; 0e:5746 $af
        sMSG                                           ;; 0e:5747 $04
          db "<10>Found <ARMOR>Samurai!<12>"
          db "<11>", $00 ;; 0e:5748
      sENDIF                                           ;; 0e:5756
    sELSE                                              ;; 0e:5756 $01 $17
      sGIVE_ITEM 4                                     ;; 0e:5758 $d4 $04
      sIF_FLAG !wScriptFlags.5                         ;; 0e:575a $08 $85 $00 $11
        sSFX 15                                        ;; 0e:575e $f9 $0f
        sUNK_AF                                        ;; 0e:5760 $af
        sMSG                                           ;; 0e:5761 $04
          db "<10>Found <POT>Elixir.<12>"
          db "<11>", $00 ;; 0e:5762
      sENDIF                                           ;; 0e:576f
    sENDIF                                             ;; 0e:576f
    sEND                                               ;; 0e:576f $00

script_044f:
    sUNK_C7                                            ;; 0e:5770 $c7
    sIF_FLAG !wScriptFlags0F.6, wScriptFlags0F.7       ;; 0e:5771 $08 $fe $7f $00 $1a
      sGIVE_EQUIPMENT 43                               ;; 0e:5776 $d8 $2b
      sIF_FLAG !wScriptFlags.5                         ;; 0e:5778 $08 $85 $00 $12
        sSFX 15                                        ;; 0e:577c $f9 $0f
        sUNK_AF                                        ;; 0e:577e $af
        sMSG                                           ;; 0e:577f $04
          db "<10>Found <HELM>Samurai!<12>"
          db "<11>", $00 ;; 0e:5780
      sENDIF                                           ;; 0e:578e
    sELSE                                              ;; 0e:578e $01 $18
      sGIVE_ITEM 3                                     ;; 0e:5790 $d4 $03
      sIF_FLAG !wScriptFlags.5                         ;; 0e:5792 $08 $85 $00 $12
        sSFX 15                                        ;; 0e:5796 $f9 $0f
        sUNK_AF                                        ;; 0e:5798 $af
        sMSG                                           ;; 0e:5799 $04
          db "<10>Found <POT>X-Ether.<12>"
          db "<11>", $00 ;; 0e:579a
      sENDIF                                           ;; 0e:57a8
    sENDIF                                             ;; 0e:57a8
    sEND                                               ;; 0e:57a8 $00

script_0450:
    sGIVE_MAGIC 4                                      ;; 0e:57a9 $d6 $04
    sUNK_AF                                            ;; 0e:57ab $af
    sMSG                                               ;; 0e:57ac $04
      db "<10>Found the Magic\nBook of Fire.\nLearned Fire!<12>"
      db "<11>", $00 ;; 0e:57ad
    sSET_FLAG wScriptFlags09.1                         ;; 0e:57cc $da $49
    sEND                                               ;; 0e:57ce $00

script_0451:
    sGIVE_ITEM 30                                      ;; 0e:57cf $d4 $1e
    sIF_FLAG !wScriptFlags.5                           ;; 0e:57d1 $08 $85 $00 $62
      sUNK_AF                                          ;; 0e:57d5 $af
      sMSG                                             ;; 0e:57d6 $04
        db "<10>Found the Mirror!<12>"
        db "<11>", $00 ;; 0e:57d7
      sSET_FLAG wScriptFlags09.0                       ;; 0e:57e5 $da $48
      sIF_FLAG wScriptFlags0A.2                        ;; 0e:57e7 $08 $52 $00 $42
        sMSG                                           ;; 0e:57eb $04
          db "<10>Man:Show it to the\n guy at Kett's!<12>"
          db "<1b> He'll scream and\n show his true \n colors!<12>"
          db "<1b> Bye!<12>"
          db "<11>", $00 ;; 0e:57ec
        sFOLLOWER_DELETE                               ;; 0e:582a $98
        sCLEAR_FLAG wScriptFlags0A.2                   ;; 0e:582b $db $52
      sENDIF                                           ;; 0e:582d
      sDELAY 60                                        ;; 0e:582d $f0 $3c
      sLOAD_ROOM 0, $e8, 10, 2                         ;; 0e:582f $f4 $00 $e8 $0a $02
      sUNK_AB                                          ;; 0e:5834 $ab
      sSET_MUSIC 20                                    ;; 0e:5835 $f8 $14
    sENDIF                                             ;; 0e:5837
    sEND                                               ;; 0e:5837 $00

script_0452:
    sGIVE_ITEM 19                                      ;; 0e:5838 $d4 $13
    sIF_FLAG !wScriptFlags.5                           ;; 0e:583a $08 $85 $00 $11
      sSFX 15                                          ;; 0e:583e $f9 $0f
      sUNK_AF                                          ;; 0e:5840 $af
      sMSG                                             ;; 0e:5841 $04
        db "<10>Found <af>Thunder.<12>"
        db "<11>", $00 ;; 0e:5842
    sENDIF                                             ;; 0e:584f
    sEND                                               ;; 0e:584f $00

script_0453:
    sGIVE_ITEM 11                                      ;; 0e:5850 $d4 $0b
    sIF_FLAG !wScriptFlags.5                           ;; 0e:5852 $08 $85 $00 $11
      sSFX 15                                          ;; 0e:5856 $f9 $0f
      sUNK_AF                                          ;; 0e:5858 $af
      sMSG                                             ;; 0e:5859 $04
        db "<10>Found <af>Pillow.<12>"
        db "<11>", $00 ;; 0e:585a
    sENDIF                                             ;; 0e:5867
    sEND                                               ;; 0e:5867 $00

script_0454:
    sEND                                               ;; 0e:5868 $00

script_0455:
    sGIVE_ITEM 54                                      ;; 0e:5869 $d4 $36
    sIF_FLAG !wScriptFlags.5                           ;; 0e:586b $08 $85 $00 $11
      sSFX 15                                          ;; 0e:586f $f9 $0f
      sUNK_AF                                          ;; 0e:5871 $af
      sMSG                                             ;; 0e:5872 $04
        db "<10>Found <ad>Ruby.<12>"
        db "<11>", $00 ;; 0e:5873
    sENDIF                                             ;; 0e:5880
    sEND                                               ;; 0e:5880 $00

script_0456:
    sGIVE_ITEM 55                                      ;; 0e:5881 $d4 $37
    sIF_FLAG !wScriptFlags.5                           ;; 0e:5883 $08 $85 $00 $10
      sSFX 15                                          ;; 0e:5887 $f9 $0f
      sUNK_AF                                          ;; 0e:5889 $af
      sMSG                                             ;; 0e:588a $04
        db "<10>Found <ad>Opal.<12>"
        db "<11>", $00 ;; 0e:588b
    sENDIF                                             ;; 0e:5897
    sEND                                               ;; 0e:5897 $00

script_0457:
    sGIVE_ITEM 14                                      ;; 0e:5898 $d4 $0e
    sIF_FLAG !wScriptFlags.5                           ;; 0e:589a $08 $85 $00 $11
      sSFX 15                                          ;; 0e:589e $f9 $0f
      sUNK_AF                                          ;; 0e:58a0 $af
      sMSG                                             ;; 0e:58a1 $04
        db "<10>Found <af>Flame.<12>"
        db "<11>", $00 ;; 0e:58a2
    sENDIF                                             ;; 0e:58af
    sEND                                               ;; 0e:58af $00

script_0458:
    sGIVE_ITEM 16                                      ;; 0e:58b0 $d4 $10
    sIF_FLAG !wScriptFlags.5                           ;; 0e:58b2 $08 $85 $00 $13
      sSFX 15                                          ;; 0e:58b6 $f9 $0f
      sUNK_AF                                          ;; 0e:58b8 $af
      sMSG                                             ;; 0e:58b9 $04
        db "<10>Found <af>Blizzard.<12>"
        db "<11>", $00 ;; 0e:58ba
    sENDIF                                             ;; 0e:58c9
    sEND                                               ;; 0e:58c9 $00

script_0459:
    sGIVE_ITEM 43                                      ;; 0e:58ca $d4 $2b
    sIF_FLAG !wScriptFlags.5                           ;; 0e:58cc $08 $85 $00 $12
      sSFX 15                                          ;; 0e:58d0 $f9 $0f
      sUNK_AF                                          ;; 0e:58d2 $af
      sMSG                                             ;; 0e:58d3 $04
        db "<10>Found <ae>Nectar.<12>"
        db "<11>", $00 ;; 0e:58d4
    sENDIF                                             ;; 0e:58e2
    sEND                                               ;; 0e:58e2 $00

script_045a:
    sGIVE_ITEM 44                                      ;; 0e:58e3 $d4 $2c
    sIF_FLAG !wScriptFlags.5                           ;; 0e:58e5 $08 $85 $00 $12
      sSFX 15                                          ;; 0e:58e9 $f9 $0f
      sUNK_AF                                          ;; 0e:58eb $af
      sMSG                                             ;; 0e:58ec $04
        db "<10>Found <ae>Stamina.<12>"
        db "<11>", $00 ;; 0e:58ed
    sENDIF                                             ;; 0e:58fb
    sEND                                               ;; 0e:58fb $00

script_045b:
    sGIVE_ITEM 45                                      ;; 0e:58fc $d4 $2d
    sIF_FLAG !wScriptFlags.5                           ;; 0e:58fe $08 $85 $00 $11
      sSFX 15                                          ;; 0e:5902 $f9 $0f
      sUNK_AF                                          ;; 0e:5904 $af
      sMSG                                             ;; 0e:5905 $04
        db "<10>Found <ae>Wisdom.<12>"
        db "<11>", $00 ;; 0e:5906
    sENDIF                                             ;; 0e:5913
    sEND                                               ;; 0e:5913 $00

script_045c:
    sGIVE_ITEM 46                                      ;; 0e:5914 $d4 $2e
    sIF_FLAG !wScriptFlags.5                           ;; 0e:5916 $08 $85 $00 $10
      sSFX 15                                          ;; 0e:591a $f9 $0f
      sUNK_AF                                          ;; 0e:591c $af
      sMSG                                             ;; 0e:591d $04
        db "<10>Found <ae>Will.<12>"
        db "<11>", $00 ;; 0e:591e
    sENDIF                                             ;; 0e:592a
    sEND                                               ;; 0e:592a $00

script_045d:
    sGIVE_EQUIPMENT 7                                  ;; 0e:592b $d8 $07
    sIF_FLAG !wScriptFlags.5                           ;; 0e:592d $08 $85 $00 $12
      sSFX 15                                          ;; 0e:5931 $f9 $0f
      sUNK_AF                                          ;; 0e:5933 $af
      sMSG                                             ;; 0e:5934 $04
        db "<10>Found <MSTAR>Star!<12>"
        db "<11>", $00 ;; 0e:5935
      sSET_FLAG wScriptFlags09.6                       ;; 0e:5941 $da $4e
    sENDIF                                             ;; 0e:5943
    sEND                                               ;; 0e:5943 $00

script_045e:
    sGIVE_EQUIPMENT 28                                 ;; 0e:5944 $d8 $1c
    sIF_FLAG !wScriptFlags.5                           ;; 0e:5946 $08 $85 $00 $12
      sSFX 15                                          ;; 0e:594a $f9 $0f
      sUNK_AF                                          ;; 0e:594c $af
      sMSG                                             ;; 0e:594d $04
        db "<10>Found <SHIELD>Iron.<12>"
        db "<11>", $00 ;; 0e:594e
      sSET_FLAG wScriptFlags09.7                       ;; 0e:595a $da $4f
    sENDIF                                             ;; 0e:595c
    sEND                                               ;; 0e:595c $00

script_045f:
    sGIVE_EQUIPMENT 19                                 ;; 0e:595d $d8 $13
    sIF_FLAG !wScriptFlags.5                           ;; 0e:595f $08 $85 $00 $13
      sSFX 15                                          ;; 0e:5963 $f9 $0f
      sUNK_AF                                          ;; 0e:5965 $af
      sMSG                                             ;; 0e:5966 $04
        db "<10>Found <ARMOR>Gold.<12>"
        db "<11>", $00 ;; 0e:5967
      sSET_FLAG wScriptFlags07.1                       ;; 0e:5974 $da $39
    sENDIF                                             ;; 0e:5976
    sEND                                               ;; 0e:5976 $00

script_0460:
    sGIVE_EQUIPMENT 6                                  ;; 0e:5977 $d8 $06
    sIF_FLAG !wScriptFlags.5                           ;; 0e:5979 $08 $85 $00 $11
      sSFX 15                                          ;; 0e:597d $f9 $0f
      sUNK_AF                                          ;; 0e:597f $af
      sMSG                                             ;; 0e:5980 $04
        db "<10>Found <AXE>Were.<12>"
        db "<11>", $00 ;; 0e:5981
      sSET_FLAG wScriptFlags07.7                       ;; 0e:598c $da $3f
    sENDIF                                             ;; 0e:598e
    sEND                                               ;; 0e:598e $00

script_0461:
    sGIVE_EQUIPMENT 12                                 ;; 0e:598f $d8 $0c
    sIF_FLAG !wScriptFlags.5                           ;; 0e:5991 $08 $85 $00 $12
      sSFX 15                                          ;; 0e:5995 $f9 $0f
      sUNK_AF                                          ;; 0e:5997 $af
      sMSG                                             ;; 0e:5998 $04
        db "<10>Found <AXE>Zeus.<12>"
        db "<11>", $00 ;; 0e:5999
      sSET_FLAG wScriptFlags07.6                       ;; 0e:59a5 $da $3e
    sENDIF                                             ;; 0e:59a7
    sEND                                               ;; 0e:59a7 $00

script_0462:
    sGIVE_EQUIPMENT 33                                 ;; 0e:59a8 $d8 $21
    sIF_FLAG !wScriptFlags.5                           ;; 0e:59aa $08 $85 $00 $13
      sSFX 15                                          ;; 0e:59ae $f9 $0f
      sUNK_AF                                          ;; 0e:59b0 $af
      sMSG                                             ;; 0e:59b1 $04
        db "<10>Found <SHIELD>Aegis!<12>"
        db "<11>", $00 ;; 0e:59b2
      sSET_FLAG wScriptFlags07.5                       ;; 0e:59bf $da $3d
    sENDIF                                             ;; 0e:59c1
    sEND                                               ;; 0e:59c1 $00

script_0463:
    sGIVE_EQUIPMENT 8                                  ;; 0e:59c2 $d8 $08
    sIF_FLAG !wScriptFlags.5                           ;; 0e:59c4 $08 $85 $00 $13
      sSFX 15                                          ;; 0e:59c8 $f9 $0f
      sUNK_AF                                          ;; 0e:59ca $af
      sMSG                                             ;; 0e:59cb $04
        db "<10>Found <SWORD>Blood.<12>"
        db "<11>", $00 ;; 0e:59cc
      sSET_FLAG wScriptFlags07.4                       ;; 0e:59d9 $da $3c
    sENDIF                                             ;; 0e:59db
    sEND                                               ;; 0e:59db $00

script_0464:
    sGIVE_EQUIPMENT 11                                 ;; 0e:59dc $d8 $0b
    sIF_FLAG !wScriptFlags.5                           ;; 0e:59de $08 $85 $00 $1c
      sSFX 15                                          ;; 0e:59e2 $f9 $0f
      sUNK_AF                                          ;; 0e:59e4 $af
      sMSG                                             ;; 0e:59e5 $04
        db "<10>Found <SWORD>Ice.<12>"
        db "<11>", $00 ;; 0e:59e6
      sSET_FLAG wScriptFlags07.2                       ;; 0e:59f1 $da $3a
      sDELAY 40                                        ;; 0e:59f3 $f0 $28
      sLOAD_ROOM 0, $d3, 12, 6                         ;; 0e:59f5 $f4 $00 $d3 $0c $06
      sSET_MUSIC 25                                    ;; 0e:59fa $f8 $19
      sUNK_AB                                          ;; 0e:59fc $ab
      sRUN_ROOM_SCRIPT                                 ;; 0e:59fd $ec
    sENDIF                                             ;; 0e:59fe
    sEND                                               ;; 0e:59fe $00

script_0465:
    sEND                                               ;; 0e:59ff $00

script_0466:
    sGIVE_MAGIC 5                                      ;; 0e:5a00 $d6 $05
    sSFX 15                                            ;; 0e:5a02 $f9 $0f
    sUNK_AF                                            ;; 0e:5a04 $af
    sMSG                                               ;; 0e:5a05 $04
      db "<10>Found the Magic\nBook of Ice.\nLearned Ice!<12>"
      db "<11>", $00 ;; 0e:5a06
    sSET_FLAG wScriptFlags09.2                         ;; 0e:5a24 $da $4a
    sEND                                               ;; 0e:5a26 $00

script_0467:
    sGIVE_ITEM 10                                      ;; 0e:5a27 $d4 $0a
    sIF_FLAG !wScriptFlags.5                           ;; 0e:5a29 $08 $85 $00 $11
      sSFX 15                                          ;; 0e:5a2d $f9 $0f
      sUNK_AF                                          ;; 0e:5a2f $af
      sMSG                                             ;; 0e:5a30 $04
        db "<10>Found <af>Silence.<12>"
        db "<11>", $00 ;; 0e:5a31
    sENDIF                                             ;; 0e:5a3e
    sEND                                               ;; 0e:5a3e $00

script_0470:
    sIF_FLAG wScriptFlags0D.7                          ;; 0e:5a3f $08 $6f $00 $22
      sIF_FLAG !wScriptFlags0E.0                       ;; 0e:5a43 $08 $f0 $00 $05
        sCALL script_0471                              ;; 0e:5a47 $02 $5a $7c
      sELSE                                            ;; 0e:5a4a $01 $17
        sMSG                                           ;; 0e:5a4c $04
          db "<10>  Cannot land on\n    the water.<12>"
          db "<11>", $00 ;; 0e:5a4d
      sENDIF                                           ;; 0e:5a63
    sELSE                                              ;; 0e:5a63 $01 $16
      sUNK_C2 8                                        ;; 0e:5a65 $c2 $08
      sSFX 7                                           ;; 0e:5a67 $f9 $07
      sDELAY 7                                         ;; 0e:5a69 $f0 $07
      sSFX 7                                           ;; 0e:5a6b $f9 $07
      sIF_FLAG !wScriptFlags04.1                       ;; 0e:5a6d $08 $a1 $00 $01
        sUNK_A0                                        ;; 0e:5a71 $a0
      sENDIF                                           ;; 0e:5a72
      sIF_FLAG wScriptFlags04.1                        ;; 0e:5a72 $08 $21 $00 $01
        sUNK_A1                                        ;; 0e:5a76 $a1
      sENDIF                                           ;; 0e:5a77
      sSET_MUSIC 6                                     ;; 0e:5a77 $f8 $06
      sSET_FLAG wScriptFlags0D.7                       ;; 0e:5a79 $da $6f
    sENDIF                                             ;; 0e:5a7b
    sEND                                               ;; 0e:5a7b $00

script_0471:
    sSET_PLAYER_NORMAL_SPRITE                          ;; 0e:5a7c $a4
    sIF_FLAG !wScriptFlags03.7                         ;; 0e:5a7d $08 $9f $00 $04
      sSET_MUSIC 20                                    ;; 0e:5a81 $f8 $14
    sELSE                                              ;; 0e:5a83 $01 $02
      sSET_MUSIC 25                                    ;; 0e:5a85 $f8 $19
    sENDIF                                             ;; 0e:5a87
    sSFX 7                                             ;; 0e:5a87 $f9 $07
    sDELAY 7                                           ;; 0e:5a89 $f0 $07
    sSFX 7                                             ;; 0e:5a8b $f9 $07
    sCLEAR_FLAG wScriptFlags0D.7                       ;; 0e:5a8d $db $6f
    sEND                                               ;; 0e:5a8f $00

script_0472:
    sMSG                                               ;; 0e:5a90 $04
      db "<10>Take your\nChocobo with you?<12>"
      db "<13>", $00 ;; 0e:5a91
    sIF_FLAG !wScriptFlags0F.7                         ;; 0e:5aa8 $08 $ff $00 $2c
      sGIVE_FOLLOWER 9                                 ;; 0e:5aac $9c $09
      sSET_FLAG wScriptFlags0B.0                       ;; 0e:5aae $da $58
      sCLEAR_FLAG wScriptFlags0B.3                     ;; 0e:5ab0 $db $5b
      sCLEAR_FLAG wScriptFlags0B.4                     ;; 0e:5ab2 $db $5c
      sCLEAR_FLAG wScriptFlags0B.5                     ;; 0e:5ab4 $db $5d
      sCLEAR_FLAG wScriptFlags0B.6                     ;; 0e:5ab6 $db $5e
      sCLEAR_FLAG wScriptFlags0B.7                     ;; 0e:5ab8 $db $5f
      sCLEAR_FLAG wScriptFlags0C.0                     ;; 0e:5aba $db $60
      sCLEAR_FLAG wScriptFlags0C.1                     ;; 0e:5abc $db $61
      sCLEAR_FLAG wScriptFlags0C.2                     ;; 0e:5abe $db $62
      sCLEAR_FLAG wScriptFlags0C.3                     ;; 0e:5ac0 $db $63
      sCLEAR_FLAG wScriptFlags0C.4                     ;; 0e:5ac2 $db $64
      sCLEAR_FLAG wScriptFlags0C.5                     ;; 0e:5ac4 $db $65
      sCLEAR_FLAG wScriptFlags0C.6                     ;; 0e:5ac6 $db $66
      sCLEAR_FLAG wScriptFlags0C.7                     ;; 0e:5ac8 $db $67
      sCLEAR_FLAG wScriptFlags0D.0                     ;; 0e:5aca $db $68
      sCLEAR_FLAG wScriptFlags0D.1                     ;; 0e:5acc $db $69
      sCLEAR_FLAG wScriptFlags0D.2                     ;; 0e:5ace $db $6a
      sCLEAR_FLAG wScriptFlags0D.3                     ;; 0e:5ad0 $db $6b
      sCLEAR_FLAG wScriptFlags0D.4                     ;; 0e:5ad2 $db $6c
      sCLEAR_FLAG wScriptFlags0D.5                     ;; 0e:5ad4 $db $6d
      sCLEAR_FLAG wScriptFlags0D.6                     ;; 0e:5ad6 $db $6e
    sENDIF                                             ;; 0e:5ad8
    sMSG                                               ;; 0e:5ad8 $04
      db "<11>", $00                                   ;; 0e:5ad9
    sSFX 7                                             ;; 0e:5adb $f9 $07
    sDELAY 7                                           ;; 0e:5add $f0 $07
    sSFX 7                                             ;; 0e:5adf $f9 $07
    sEND                                               ;; 0e:5ae1 $00

script_0473:
    sMSG                                               ;; 0e:5ae2 $04
      db "<10> Wait for me!<12>"
      db "<11>", $00  ;; 0e:5ae3
    sFOLLOWER_DELETE                                   ;; 0e:5aee $98
    sCLEAR_FLAG wScriptFlags0B.0                       ;; 0e:5aef $db $58
    sEND                                               ;; 0e:5af1 $00

script_0474:
    sIF_0B $f1                                         ;; 0e:5af2 $0b $f1 $00 $03
      sUNK_A2                                          ;; 0e:5af6 $a2
      sSET_FLAG wScriptFlags0E.0                       ;; 0e:5af7 $da $70
    sENDIF                                             ;; 0e:5af9
    sIF_0B $f5                                         ;; 0e:5af9 $0b $f5 $00 $03
      sUNK_A1                                          ;; 0e:5afd $a1
      sCLEAR_FLAG wScriptFlags0E.0                     ;; 0e:5afe $db $70
    sENDIF                                             ;; 0e:5b00
    sEND                                               ;; 0e:5b00 $00

script_0475:
    sIF_FLAG !wScriptFlags0B.0                         ;; 0e:5b01 $08 $d8 $00 $12
      sIF_FLAG !wScriptFlags04.1                       ;; 0e:5b05 $08 $a1 $00 $08
        sSET_NPC_TYPES 80                              ;; 0e:5b09 $fc $50
        sDELAY 6                                       ;; 0e:5b0b $f0 $06
        sSPAWN_NPC 2                                   ;; 0e:5b0d $fd $02
      sELSE                                            ;; 0e:5b0f $01 $06
        sSET_NPC_TYPES 101                             ;; 0e:5b11 $fc $65
        sDELAY 6                                       ;; 0e:5b13 $f0 $06
        sSPAWN_NPC 0                                   ;; 0e:5b15 $fd $00
      sENDIF                                           ;; 0e:5b17
    sENDIF                                             ;; 0e:5b17
    sEND                                               ;; 0e:5b17 $00

script_0476:
    sIF_FLAG wScriptFlags0B.7                          ;; 0e:5b18 $08 $5f $00 $03
      sCALL script_0475                                ;; 0e:5b1c $02 $5b $01
    sENDIF                                             ;; 0e:5b1f
    sEND                                               ;; 0e:5b1f $00

script_0477:
    sEND                                               ;; 0e:5b20 $00

script_0478:
    sEND                                               ;; 0e:5b21 $00

script_0479:
    sIF_FLAG wScriptFlags0B.3                          ;; 0e:5b22 $08 $5b $00 $03
      sCALL script_0475                                ;; 0e:5b26 $02 $5b $01
    sENDIF                                             ;; 0e:5b29
    sEND                                               ;; 0e:5b29 $00

script_047a:
    sEND                                               ;; 0e:5b2a $00

script_047b:
    sEND                                               ;; 0e:5b2b $00

script_047c:
    sIF_FLAG wScriptFlags0B.4                          ;; 0e:5b2c $08 $5c $00 $03
      sCALL script_0475                                ;; 0e:5b30 $02 $5b $01
    sENDIF                                             ;; 0e:5b33
    sCLEAR_FLAG wScriptFlags0F.0                       ;; 0e:5b33 $db $78
    sCLEAR_FLAG wScriptFlags0F.1                       ;; 0e:5b35 $db $79
    sCLEAR_FLAG wScriptFlags0F.2                       ;; 0e:5b37 $db $7a
    sCLEAR_FLAG wScriptFlags0F.3                       ;; 0e:5b39 $db $7b
    sEND                                               ;; 0e:5b3b $00

script_047d:
    sEND                                               ;; 0e:5b3c $00

script_047e:
    sEND                                               ;; 0e:5b3d $00

script_047f:
    sEND                                               ;; 0e:5b3e $00

script_0480:
    sEND                                               ;; 0e:5b3f $00

script_0481:
    sEND                                               ;; 0e:5b40 $00

script_0482:
    sIF_FLAG wScriptFlags0B.6                          ;; 0e:5b41 $08 $5e $00 $03
      sCALL script_0475                                ;; 0e:5b45 $02 $5b $01
    sENDIF                                             ;; 0e:5b48
    sEND                                               ;; 0e:5b48 $00

script_0483:
    sEND                                               ;; 0e:5b49 $00

script_0484:
    sEND                                               ;; 0e:5b4a $00

script_0485:
    sIF_FLAG wScriptFlags0C.0                          ;; 0e:5b4b $08 $60 $00 $03
      sCALL script_0475                                ;; 0e:5b4f $02 $5b $01
    sENDIF                                             ;; 0e:5b52
    sEND                                               ;; 0e:5b52 $00

script_0486:
    sEND                                               ;; 0e:5b53 $00

script_0487:
    sEND                                               ;; 0e:5b54 $00

script_0488:
    sIF_FLAG wScriptFlags0C.1                          ;; 0e:5b55 $08 $61 $00 $03
      sCALL script_0475                                ;; 0e:5b59 $02 $5b $01
    sENDIF                                             ;; 0e:5b5c
    sEND                                               ;; 0e:5b5c $00

script_0489:
    sEND                                               ;; 0e:5b5d $00

script_048a:
    sEND                                               ;; 0e:5b5e $00

script_048b:
    sIF_FLAG wScriptFlags0C.2                          ;; 0e:5b5f $08 $62 $00 $03
      sCALL script_0475                                ;; 0e:5b63 $02 $5b $01
    sENDIF                                             ;; 0e:5b66
    sEND                                               ;; 0e:5b66 $00

script_048c:
    sEND                                               ;; 0e:5b67 $00

script_048d:
    sEND                                               ;; 0e:5b68 $00

script_048e:
    sIF_FLAG wScriptFlags0C.3                          ;; 0e:5b69 $08 $63 $00 $03
      sCALL script_0475                                ;; 0e:5b6d $02 $5b $01
    sENDIF                                             ;; 0e:5b70
    sEND                                               ;; 0e:5b70 $00

script_048f:
    sEND                                               ;; 0e:5b71 $00

script_0490:
    sEND                                               ;; 0e:5b72 $00

script_0491:
    sIF_FLAG wScriptFlags0C.4                          ;; 0e:5b73 $08 $64 $00 $03
      sCALL script_0475                                ;; 0e:5b77 $02 $5b $01
    sENDIF                                             ;; 0e:5b7a
    sEND                                               ;; 0e:5b7a $00

script_0492:
    sEND                                               ;; 0e:5b7b $00

script_0493:
    sEND                                               ;; 0e:5b7c $00

script_0494:
    sIF_FLAG wScriptFlags0C.5                          ;; 0e:5b7d $08 $65 $00 $03
      sCALL script_0475                                ;; 0e:5b81 $02 $5b $01
    sENDIF                                             ;; 0e:5b84
    sEND                                               ;; 0e:5b84 $00

script_0495:
    sEND                                               ;; 0e:5b85 $00

script_0496:
    sEND                                               ;; 0e:5b86 $00

script_0497:
    sIF_FLAG wScriptFlags0C.6                          ;; 0e:5b87 $08 $66 $00 $03
      sCALL script_0475                                ;; 0e:5b8b $02 $5b $01
    sENDIF                                             ;; 0e:5b8e
    sEND                                               ;; 0e:5b8e $00

script_0498:
    sEND                                               ;; 0e:5b8f $00

script_0499:
    sEND                                               ;; 0e:5b90 $00

script_049a:
    sIF_FLAG wScriptFlags0C.7                          ;; 0e:5b91 $08 $67 $00 $03
      sCALL script_0475                                ;; 0e:5b95 $02 $5b $01
    sENDIF                                             ;; 0e:5b98
    sIF_FLAG !wScriptFlags06.6                         ;; 0e:5b98 $08 $b6 $00 $08
      sSET_NPC_TYPES 52                                ;; 0e:5b9c $fc $34
      sDELAY 10                                        ;; 0e:5b9e $f0 $0a
      sSPAWN_NPC 2                                     ;; 0e:5ba0 $fd $02
    sELSE                                              ;; 0e:5ba2 $01 $04
      sSET_ROOM_TILE $4b, 7, 5                         ;; 0e:5ba4 $b0 $4b $07 $05
    sENDIF                                             ;; 0e:5ba8
    sEND                                               ;; 0e:5ba8 $00

script_049b:
    sEND                                               ;; 0e:5ba9 $00

script_049c:
    sEND                                               ;; 0e:5baa $00

script_049d:
    sIF_FLAG wScriptFlags0D.0                          ;; 0e:5bab $08 $68 $00 $03
      sCALL script_0475                                ;; 0e:5baf $02 $5b $01
    sENDIF                                             ;; 0e:5bb2
    sEND                                               ;; 0e:5bb2 $00

script_049e:
    sEND                                               ;; 0e:5bb3 $00

script_049f:
    sEND                                               ;; 0e:5bb4 $00

script_04a0:
    sIF_FLAG wScriptFlags0D.1                          ;; 0e:5bb5 $08 $69 $00 $03
      sCALL script_0475                                ;; 0e:5bb9 $02 $5b $01
    sENDIF                                             ;; 0e:5bbc
    sEND                                               ;; 0e:5bbc $00

script_04a1:
    sEND                                               ;; 0e:5bbd $00

script_04a2:
    sEND                                               ;; 0e:5bbe $00

script_04a3:
    sIF_FLAG wScriptFlags0D.2                          ;; 0e:5bbf $08 $6a $00 $03
      sCALL script_0475                                ;; 0e:5bc3 $02 $5b $01
    sENDIF                                             ;; 0e:5bc6
    sEND                                               ;; 0e:5bc6 $00

script_04a4:
    sEND                                               ;; 0e:5bc7 $00

script_04a5:
    sEND                                               ;; 0e:5bc8 $00

script_04a6:
    sIF_FLAG wScriptFlags0D.3                          ;; 0e:5bc9 $08 $6b $00 $03
      sCALL script_04af                                ;; 0e:5bcd $02 $5b $e7
    sENDIF                                             ;; 0e:5bd0
    sEND                                               ;; 0e:5bd0 $00

script_04a7:
    sEND                                               ;; 0e:5bd1 $00

script_04a8:
    sEND                                               ;; 0e:5bd2 $00

script_04a9:
    sIF_FLAG wScriptFlags0D.4                          ;; 0e:5bd3 $08 $6c $00 $03
      sCALL script_0475                                ;; 0e:5bd7 $02 $5b $01
    sENDIF                                             ;; 0e:5bda
    sEND                                               ;; 0e:5bda $00

script_04aa:
    sEND                                               ;; 0e:5bdb $00

script_04ab:
    sEND                                               ;; 0e:5bdc $00

script_04ac:
    sIF_FLAG wScriptFlags0D.5                          ;; 0e:5bdd $08 $6d $00 $03
      sCALL script_0475                                ;; 0e:5be1 $02 $5b $01
    sENDIF                                             ;; 0e:5be4
    sEND                                               ;; 0e:5be4 $00

script_04ad:
    sEND                                               ;; 0e:5be5 $00

script_04ae:
    sEND                                               ;; 0e:5be6 $00

script_04af:
    sIF_FLAG !wScriptFlags0B.0                         ;; 0e:5be7 $08 $d8 $00 $12
      sIF_FLAG !wScriptFlags04.1                       ;; 0e:5beb $08 $a1 $00 $08
        sSET_NPC_TYPES 83                              ;; 0e:5bef $fc $53
        sDELAY 6                                       ;; 0e:5bf1 $f0 $06
        sSPAWN_NPC 0                                   ;; 0e:5bf3 $fd $00
      sELSE                                            ;; 0e:5bf5 $01 $06
        sSET_NPC_TYPES 101                             ;; 0e:5bf7 $fc $65
        sDELAY 6                                       ;; 0e:5bf9 $f0 $06
        sSPAWN_NPC 2                                   ;; 0e:5bfb $fd $02
      sENDIF                                           ;; 0e:5bfd
    sENDIF                                             ;; 0e:5bfd
    sEND                                               ;; 0e:5bfd $00

script_04b0:
    sIF_0B $f1                                         ;; 0e:5bfe $0b $f1 $00 $03
      sCALL script_0470                                ;; 0e:5c02 $02 $5a $3f
    sENDIF                                             ;; 0e:5c05
    sIF_0B $c9, $c1, $f1                               ;; 0e:5c05 $0b $c9 $c1 $f1 $00 $32
      sIF_FLAG wScriptFlags0B.0                        ;; 0e:5c0b $08 $58 $00 $2e
        sMSG                                           ;; 0e:5c0f $04
          db "<10>It's too cold for\nyou ahead.\nWait for me here.<12>"
          db "<11>", $00 ;; 0e:5c10
        sFOLLOWER_DIRECTION_DOWN                       ;; 0e:5c32 $95
        sLOOP 4, 2                                     ;; 0e:5c33 $03 $04 $02
          sFOLLOWER_STEP_FORWARD                       ;; 0e:5c36 $90
        sEND                                           ;; 0e:5c37 $00
        sFOLLOWER_DELETE                               ;; 0e:5c38 $98
        sCLEAR_FLAG wScriptFlags0B.0                   ;; 0e:5c39 $db $58
        sSET_FLAG wScriptFlags0B.6                     ;; 0e:5c3b $da $5e
      sENDIF                                           ;; 0e:5c3d
    sENDIF                                             ;; 0e:5c3d
    sEND                                               ;; 0e:5c3d $00

script_04d0:
    sIF_0B $a9                                         ;; 0e:5c3e $0b $a9 $00 $03
      sSFX 16                                          ;; 0e:5c42 $f9 $10
      sOPEN_EAST_DOOR                                  ;; 0e:5c44 $e4
    sENDIF                                             ;; 0e:5c45
    sEND                                               ;; 0e:5c45 $00

script_04d1:
    sEND                                               ;; 0e:5c46 $00

script_04d2:
    sIF_0B $c9, $c1                                    ;; 0e:5c47 $0b $c9 $c1 $00 $05
      sLOAD_ROOM 4, $57, 16, 12                        ;; 0e:5c4c $f4 $04 $57 $10 $0c
    sENDIF                                             ;; 0e:5c51
    sEND                                               ;; 0e:5c51 $00

script_04d3:
    sIF_0B $c9, $c1                                    ;; 0e:5c52 $0b $c9 $c1 $00 $0c
      sLOAD_ROOM 0, $70, 14, 10                        ;; 0e:5c57 $f4 $00 $70 $0e $0a
      sSET_MUSIC 25                                    ;; 0e:5c5c $f8 $19
      sSET_ROOM_TILE $4b, 7, 5                         ;; 0e:5c5e $b0 $4b $07 $05
      sRUN_ROOM_SCRIPT                                 ;; 0e:5c62 $ec
    sENDIF                                             ;; 0e:5c63
    sEND                                               ;; 0e:5c63 $00

script_04d4:
    sIF_0B $c9                                         ;; 0e:5c64 $0b $c9 $00 $05
      sLOAD_ROOM 5, $27, 8, 6                          ;; 0e:5c68 $f4 $05 $27 $08 $06
    sENDIF                                             ;; 0e:5c6d
    sEND                                               ;; 0e:5c6d $00

script_04d5:
    sIF_0B $c9                                         ;; 0e:5c6e $0b $c9 $00 $05
      sLOAD_ROOM 4, $27, 8, 8                          ;; 0e:5c72 $f4 $04 $27 $08 $08
    sENDIF                                             ;; 0e:5c77
    sEND                                               ;; 0e:5c77 $00

script_04d6:
    sIF_0B $c9                                         ;; 0e:5c78 $0b $c9 $00 $05
      sLOAD_ROOM 6, $34, 16, 2                         ;; 0e:5c7c $f4 $06 $34 $10 $02
    sENDIF                                             ;; 0e:5c81
    sEND                                               ;; 0e:5c81 $00

script_04d7:
    sIF_0B $c9                                         ;; 0e:5c82 $0b $c9 $00 $05
      sLOAD_ROOM 5, $34, 16, 2                         ;; 0e:5c86 $f4 $05 $34 $10 $02
    sENDIF                                             ;; 0e:5c8b
    sEND                                               ;; 0e:5c8b $00

script_04d8:
    sIF_0B $c9, $c1                                    ;; 0e:5c8c $0b $c9 $c1 $00 $05
      sLOAD_ROOM 8, $00, 2, 2                          ;; 0e:5c91 $f4 $08 $00 $02 $02
    sENDIF                                             ;; 0e:5c96
    sEND                                               ;; 0e:5c96 $00

script_04d9:
    sIF_0B $c9, $c1                                    ;; 0e:5c97 $0b $c9 $c1 $00 $74
      sLOAD_ROOM 5, $72, 16, 2                         ;; 0e:5c9c $f4 $05 $72 $10 $02
      sIF_FLAG !wScriptFlags03.6                       ;; 0e:5ca1 $08 $9e $00 $6b
        sSET_NPC_TYPES 50                              ;; 0e:5ca5 $fc $32
        sSPAWN_NPC 1                                   ;; 0e:5ca7 $fd $01
        sSET_PLAYER_DIRECTION_DOWN                     ;; 0e:5ca9 $85
        sSET_NPC_1_DIRECTION_UP                        ;; 0e:5caa $14
        sLOOP 4, 3                                     ;; 0e:5cab $03 $04 $03
          sPLAYER_STEP_FORWARD                         ;; 0e:5cae $80
          sNPC_1_STEP_FORWARD                          ;; 0e:5caf $10
        sEND                                           ;; 0e:5cb0 $00
        sSET_PLAYER_DIRECTION_LEFT                     ;; 0e:5cb1 $87
        sSET_NPC_1_DIRECTION_RIGHT                     ;; 0e:5cb2 $16
        sPLAYER_STEP_FORWARD                           ;; 0e:5cb3 $80
        sNPC_1_STEP_FORWARD                            ;; 0e:5cb4 $10
        sPLAYER_STEP_FORWARD                           ;; 0e:5cb5 $80
        sNPC_1_STEP_FORWARD                            ;; 0e:5cb6 $10
        sMSG                                           ;; 0e:5cb7 $04
          db "<10><BOY>:<GIRL>!\n They took the\n Pendant! <12>"
          db "<1b><GIRL>:We have to\n get it back!\n __ Let's go!<12>"
          db "<1b> Dark Lord's room\n is on the top\n floor!<12>"
          db "<11>", $00 ;; 0e:5cb8
        sGIVE_FOLLOWER 1                               ;; 0e:5d0a $9c $01
        sSET_FLAG wScriptFlags03.6                     ;; 0e:5d0c $da $1e
        sSET_FLAG wScriptFlags0A.1                     ;; 0e:5d0e $da $51
      sENDIF                                           ;; 0e:5d10
    sENDIF                                             ;; 0e:5d10
    sEND                                               ;; 0e:5d10 $00

script_04da:
    sIF_0B $c9, $c1                                    ;; 0e:5d11 $0b $c9 $c1 $00 $05
      sLOAD_ROOM 6, $71, 16, 2                         ;; 0e:5d16 $f4 $06 $71 $10 $02
    sENDIF                                             ;; 0e:5d1b
    sEND                                               ;; 0e:5d1b $00

script_04db:
    sIF_0B $c9                                         ;; 0e:5d1c $0b $c9 $00 $05
      sLOAD_ROOM 10, $40, 16, 2                        ;; 0e:5d20 $f4 $0a $40 $10 $02
    sENDIF                                             ;; 0e:5d25
    sEND                                               ;; 0e:5d25 $00

script_04dc:
    sIF_0B $c9, $c1                                    ;; 0e:5d26 $0b $c9 $c1 $00 $09
      sLOAD_ROOM 9, $10, 16, 2                         ;; 0e:5d2b $f4 $09 $10 $10 $02
      sSET_ROOM_TILE $02, 8, 1                         ;; 0e:5d30 $b0 $02 $08 $01
    sENDIF                                             ;; 0e:5d34
    sEND                                               ;; 0e:5d34 $00

script_04dd:
    sIF_0B $c9                                         ;; 0e:5d35 $0b $c9 $00 $05
      sLOAD_ROOM 9, $20, 2, 2                          ;; 0e:5d39 $f4 $09 $20 $02 $02
    sENDIF                                             ;; 0e:5d3e
    sEND                                               ;; 0e:5d3e $00

script_04de:
    sIF_0B $c9                                         ;; 0e:5d3f $0b $c9 $00 $05
      sLOAD_ROOM 10, $50, 2, 2                         ;; 0e:5d43 $f4 $0a $50 $02 $02
    sENDIF                                             ;; 0e:5d48
    sEND                                               ;; 0e:5d48 $00

script_04df:
    sIF_0B $c9                                         ;; 0e:5d49 $0b $c9 $00 $08
      sUNK_C5 5                                        ;; 0e:5d4d $c5 $05
      sLOAD_ROOM 2, $01, 9, 12                         ;; 0e:5d4f $f4 $02 $01 $09 $0c
      sRUN_ROOM_SCRIPT                                 ;; 0e:5d54 $ec
    sENDIF                                             ;; 0e:5d55
    sEND                                               ;; 0e:5d55 $00

script_04e0:
    sIF_0B $c9, $91, $a9                               ;; 0e:5d56 $0b $c9 $91 $a9 $00 $06
      sSFX 24                                          ;; 0e:5d5c $f9 $18
      sSET_ROOM_TILE $02, 8, 1                         ;; 0e:5d5e $b0 $02 $08 $01
    sENDIF                                             ;; 0e:5d62
    sIF_0C $c9, $91, $a9                               ;; 0e:5d62 $0c $c9 $91 $a9 $00 $06
      sSFX 24                                          ;; 0e:5d68 $f9 $18
      sSET_ROOM_TILE $00, 8, 1                         ;; 0e:5d6a $b0 $00 $08 $01
    sENDIF                                             ;; 0e:5d6e
    sEND                                               ;; 0e:5d6e $00

script_04e1:
    sIF_0B $c9                                         ;; 0e:5d6f $0b $c9 $00 $02
      sSET_FLAG wScriptFlags0F.0                       ;; 0e:5d73 $da $78
    sENDIF                                             ;; 0e:5d75
    sEND                                               ;; 0e:5d75 $00

script_04e2:
    sIF_0B $c9                                         ;; 0e:5d76 $0b $c9 $00 $0a
      sSET_FLAG wScriptFlags0F.1                       ;; 0e:5d7a $da $79
      sIF_FLAG !wScriptFlags0F.0                       ;; 0e:5d7c $08 $f8 $00 $04
        sCLEAR_FLAG wScriptFlags0F.1                   ;; 0e:5d80 $db $79
        sCLEAR_FLAG wScriptFlags0F.2                   ;; 0e:5d82 $db $7a
      sENDIF                                           ;; 0e:5d84
    sENDIF                                             ;; 0e:5d84
    sEND                                               ;; 0e:5d84 $00

script_04e3:
    sIF_0B $c9                                         ;; 0e:5d85 $0b $c9 $00 $12
      sSET_FLAG wScriptFlags0F.2                       ;; 0e:5d89 $da $7a
      sIF_FLAG !wScriptFlags0F.0                       ;; 0e:5d8b $08 $f8 $00 $04
        sCLEAR_FLAG wScriptFlags0F.1                   ;; 0e:5d8f $db $79
        sCLEAR_FLAG wScriptFlags0F.2                   ;; 0e:5d91 $db $7a
      sENDIF                                           ;; 0e:5d93
      sIF_FLAG !wScriptFlags0F.1                       ;; 0e:5d93 $08 $f9 $00 $04
        sCLEAR_FLAG wScriptFlags0F.0                   ;; 0e:5d97 $db $78
        sCLEAR_FLAG wScriptFlags0F.2                   ;; 0e:5d99 $db $7a
      sENDIF                                           ;; 0e:5d9b
    sENDIF                                             ;; 0e:5d9b
    sEND                                               ;; 0e:5d9b $00

script_04e4:
    sIF_0B $c9                                         ;; 0e:5d9c $0b $c9 $00 $14
      sIF_FLAG wScriptFlags0F.0, wScriptFlags0F.1, wScriptFlags0F.2 ;; 0e:5da0 $08 $78 $79 $7a $00 $08
        sSFX 24                                        ;; 0e:5da6 $f9 $18
        sSET_ROOM_TILE $02, 8, 6                       ;; 0e:5da8 $b0 $02 $08 $06
      sELSE                                            ;; 0e:5dac $01 $06
        sCLEAR_FLAG wScriptFlags0F.0                   ;; 0e:5dae $db $78
        sCLEAR_FLAG wScriptFlags0F.1                   ;; 0e:5db0 $db $79
        sCLEAR_FLAG wScriptFlags0F.2                   ;; 0e:5db2 $db $7a
      sENDIF                                           ;; 0e:5db4
    sENDIF                                             ;; 0e:5db4
    sEND                                               ;; 0e:5db4 $00

script_04e5:
    sIF_0B $c9                                         ;; 0e:5db5 $0b $c9 $00 $06
      sSFX 24                                          ;; 0e:5db9 $f9 $18
      sSET_ROOM_TILE $00, 8, 1                         ;; 0e:5dbb $b0 $00 $08 $01
    sENDIF                                             ;; 0e:5dbf
    sEND                                               ;; 0e:5dbf $00

script_04e6:
    sIF_0B $c9                                         ;; 0e:5dc0 $0b $c9 $00 $06
      sSFX 24                                          ;; 0e:5dc4 $f9 $18
      sSET_ROOM_TILE $02, 8, 1                         ;; 0e:5dc6 $b0 $02 $08 $01
    sENDIF                                             ;; 0e:5dca
    sEND                                               ;; 0e:5dca $00

script_04e7:
    sIF_0B $c9                                         ;; 0e:5dcb $0b $c9 $00 $1a
      sSFX 16                                          ;; 0e:5dcf $f9 $10
      sSET_ROOM_TILE $00, 2, 1                         ;; 0e:5dd1 $b0 $00 $02 $01
      sSET_ROOM_TILE $00, 2, 2                         ;; 0e:5dd5 $b0 $00 $02 $02
      sSET_ROOM_TILE $00, 2, 3                         ;; 0e:5dd9 $b0 $00 $02 $03
      sSET_ROOM_TILE $00, 2, 4                         ;; 0e:5ddd $b0 $00 $02 $04
      sSET_ROOM_TILE $00, 2, 5                         ;; 0e:5de1 $b0 $00 $02 $05
      sSET_ROOM_TILE $00, 2, 6                         ;; 0e:5de5 $b0 $00 $02 $06
    sENDIF                                             ;; 0e:5de9
    sEND                                               ;; 0e:5de9 $00

script_04e8:
    sIF_0B $c9                                         ;; 0e:5dea $0b $c9 $00 $06
      sSFX 24                                          ;; 0e:5dee $f9 $18
      sSET_ROOM_TILE $02, 8, 6                         ;; 0e:5df0 $b0 $02 $08 $06
    sENDIF                                             ;; 0e:5df4
    sEND                                               ;; 0e:5df4 $00

script_04e9:
    sIF_0B $c9                                         ;; 0e:5df5 $0b $c9 $00 $04
      sSET_ROOM_TILE $02, 8, 6                         ;; 0e:5df9 $b0 $02 $08 $06
    sENDIF                                             ;; 0e:5dfd
    sEND                                               ;; 0e:5dfd $00

script_04ea:
    sIF_0B $a9, $a9                                    ;; 0e:5dfe $0b $a9 $a9 $00 $0c
      sSET_FLAG wScriptFlags0F.0                       ;; 0e:5e03 $da $78
      sIF_FLAG wScriptFlags0F.1                        ;; 0e:5e05 $08 $79 $00 $06
        sSFX 24                                        ;; 0e:5e09 $f9 $18
        sSET_ROOM_TILE $02, 8, 6                       ;; 0e:5e0b $b0 $02 $08 $06
      sENDIF                                           ;; 0e:5e0f
    sENDIF                                             ;; 0e:5e0f
    sIF_0C $a9, $a9                                    ;; 0e:5e0f $0c $a9 $a9 $00 $02
      sCLEAR_FLAG wScriptFlags0F.0                     ;; 0e:5e14 $db $78
    sENDIF                                             ;; 0e:5e16
    sEND                                               ;; 0e:5e16 $00

script_04eb:
    sIF_0B $a9, $a9                                    ;; 0e:5e17 $0b $a9 $a9 $00 $0c
      sSET_FLAG wScriptFlags0F.1                       ;; 0e:5e1c $da $79
      sIF_FLAG wScriptFlags0F.0                        ;; 0e:5e1e $08 $78 $00 $06
        sSFX 24                                        ;; 0e:5e22 $f9 $18
        sSET_ROOM_TILE $02, 8, 6                       ;; 0e:5e24 $b0 $02 $08 $06
      sENDIF                                           ;; 0e:5e28
    sENDIF                                             ;; 0e:5e28
    sIF_0C $a9, $a9                                    ;; 0e:5e28 $0c $a9 $a9 $00 $02
      sCLEAR_FLAG wScriptFlags0F.1                     ;; 0e:5e2d $db $79
    sENDIF                                             ;; 0e:5e2f
    sEND                                               ;; 0e:5e2f $00

script_04ec:
    sIF_0C $a9                                         ;; 0e:5e30 $0c $a9 $00 $04
      sSET_ROOM_TILE $00, 8, 1                         ;; 0e:5e34 $b0 $00 $08 $01
    sENDIF                                             ;; 0e:5e38
    sEND                                               ;; 0e:5e38 $00

script_04ed:
    sSET_NPC_TYPES 94                                  ;; 0e:5e39 $fc $5e
    sSPAWN_NPC 0                                       ;; 0e:5e3b $fd $00
    sSPAWN_NPC 1                                       ;; 0e:5e3d $fd $01
    sEND                                               ;; 0e:5e3f $00

script_04ee:
    sEND                                               ;; 0e:5e40 $00

script_04ef:
    sEND                                               ;; 0e:5e41 $00

script_04f0:
    sIF_0B $c9                                         ;; 0e:5e42 $0b $c9 $00 $02
      sSET_FLAG wScriptFlags0F.0                       ;; 0e:5e46 $da $78
    sENDIF                                             ;; 0e:5e48
    sEND                                               ;; 0e:5e48 $00

script_04f1:
    sIF_0B $c9                                         ;; 0e:5e49 $0b $c9 $00 $0a
      sIF_FLAG wScriptFlags0F.0                        ;; 0e:5e4d $08 $78 $00 $06
        sSFX 24                                        ;; 0e:5e51 $f9 $18
        sSET_ROOM_TILE $02, 8, 6                       ;; 0e:5e53 $b0 $02 $08 $06
      sENDIF                                           ;; 0e:5e57
    sENDIF                                             ;; 0e:5e57
    sEND                                               ;; 0e:5e57 $00

script_04f2:
    sSET_NPC_TYPES 105                                 ;; 0e:5e58 $fc $69
    sSPAWN_NPC 0                                       ;; 0e:5e5a $fd $00
    sCLEAR_FLAG wScriptFlags0F.0                       ;; 0e:5e5c $db $78
    sCLEAR_FLAG wScriptFlags0F.1                       ;; 0e:5e5e $db $79
    sEND                                               ;; 0e:5e60 $00

script_04f3:
    sEND                                               ;; 0e:5e61 $00

script_04f4:
    sEND                                               ;; 0e:5e62 $00

script_04f5:
    sIF_0B $87, $a9                                    ;; 0e:5e63 $0b $87 $a9 $00 $0c
      sSET_FLAG wScriptFlags0F.0                       ;; 0e:5e68 $da $78
      sIF_FLAG wScriptFlags0F.1                        ;; 0e:5e6a $08 $79 $00 $06
        sSFX 24                                        ;; 0e:5e6e $f9 $18
        sSET_ROOM_TILE $02, 8, 1                       ;; 0e:5e70 $b0 $02 $08 $01
      sENDIF                                           ;; 0e:5e74
    sENDIF                                             ;; 0e:5e74
    sEND                                               ;; 0e:5e74 $00

script_04f6:
    sIF_0B $87, $a9                                    ;; 0e:5e75 $0b $87 $a9 $00 $0c
      sSET_FLAG wScriptFlags0F.1                       ;; 0e:5e7a $da $79
      sIF_FLAG wScriptFlags0F.0                        ;; 0e:5e7c $08 $78 $00 $06
        sSFX 24                                        ;; 0e:5e80 $f9 $18
        sSET_ROOM_TILE $02, 8, 1                       ;; 0e:5e82 $b0 $02 $08 $01
      sENDIF                                           ;; 0e:5e86
    sENDIF                                             ;; 0e:5e86
    sEND                                               ;; 0e:5e86 $00

script_04f7:
    sIF_0B $a9                                         ;; 0e:5e87 $0b $a9 $00 $09
      sSET_FLAG wScriptFlags0F.0                       ;; 0e:5e8b $da $78
      sIF_FLAG wScriptFlags0F.1                        ;; 0e:5e8d $08 $79 $00 $03
        sSFX 16                                        ;; 0e:5e91 $f9 $10
        sOPEN_NORTH_DOOR                               ;; 0e:5e93 $e0
      sENDIF                                           ;; 0e:5e94
    sENDIF                                             ;; 0e:5e94
    sIF_0C $a9                                         ;; 0e:5e94 $0c $a9 $00 $02
      sCLEAR_FLAG wScriptFlags0F.0                     ;; 0e:5e98 $db $78
    sENDIF                                             ;; 0e:5e9a
    sEND                                               ;; 0e:5e9a $00

script_04f8:
    sIF_0B $a9                                         ;; 0e:5e9b $0b $a9 $00 $09
      sSET_FLAG wScriptFlags0F.1                       ;; 0e:5e9f $da $79
      sIF_FLAG wScriptFlags0F.0                        ;; 0e:5ea1 $08 $78 $00 $03
        sSFX 16                                        ;; 0e:5ea5 $f9 $10
        sOPEN_NORTH_DOOR                               ;; 0e:5ea7 $e0
      sENDIF                                           ;; 0e:5ea8
    sENDIF                                             ;; 0e:5ea8
    sIF_0C $a9                                         ;; 0e:5ea8 $0c $a9 $00 $02
      sCLEAR_FLAG wScriptFlags0F.1                     ;; 0e:5eac $db $79
    sENDIF                                             ;; 0e:5eae
    sEND                                               ;; 0e:5eae $00

script_04f9:
    sIF_0B $a9, $87                                    ;; 0e:5eaf $0b $a9 $87 $00 $03
      sSFX 16                                          ;; 0e:5eb4 $f9 $10
      sOPEN_NORTH_DOOR                                 ;; 0e:5eb6 $e0
    sENDIF                                             ;; 0e:5eb7
    sIF_0C $a9, $87                                    ;; 0e:5eb7 $0c $a9 $87 $00 $03
      sSFX 16                                          ;; 0e:5ebc $f9 $10
      sCLOSE_NORTH_DOOR                                ;; 0e:5ebe $e1
    sENDIF                                             ;; 0e:5ebf
    sEND                                               ;; 0e:5ebf $00

script_04fa:
    sIF_0B $a9, $87                                    ;; 0e:5ec0 $0b $a9 $87 $00 $03
      sSFX 16                                          ;; 0e:5ec5 $f9 $10
      sOPEN_EAST_DOOR                                  ;; 0e:5ec7 $e4
    sENDIF                                             ;; 0e:5ec8
    sIF_0C $a9, $87                                    ;; 0e:5ec8 $0c $a9 $87 $00 $03
      sSFX 16                                          ;; 0e:5ecd $f9 $10
      sCLOSE_EAST_DOOR                                 ;; 0e:5ecf $e5
    sENDIF                                             ;; 0e:5ed0
    sEND                                               ;; 0e:5ed0 $00

script_04fb:
    sIF_0C $91                                         ;; 0e:5ed1 $0c $91 $00 $0b
      sSET_FLAG wScriptFlags0F.0                       ;; 0e:5ed5 $da $78
      sIF_FLAG wScriptFlags0F.1                        ;; 0e:5ed7 $08 $79 $00 $03
        sSFX 16                                        ;; 0e:5edb $f9 $10
        sOPEN_EAST_DOOR                                ;; 0e:5edd $e4
      sENDIF                                           ;; 0e:5ede
    sELSE                                              ;; 0e:5ede $01 $02
      sCLEAR_FLAG wScriptFlags0F.0                     ;; 0e:5ee0 $db $78
    sENDIF                                             ;; 0e:5ee2
    sEND                                               ;; 0e:5ee2 $00

script_04fc:
    sIF_0C $91                                         ;; 0e:5ee3 $0c $91 $00 $0b
      sSET_FLAG wScriptFlags0F.1                       ;; 0e:5ee7 $da $79
      sIF_FLAG wScriptFlags0F.0                        ;; 0e:5ee9 $08 $78 $00 $03
        sSFX 16                                        ;; 0e:5eed $f9 $10
        sOPEN_EAST_DOOR                                ;; 0e:5eef $e4
      sENDIF                                           ;; 0e:5ef0
    sELSE                                              ;; 0e:5ef0 $01 $02
      sCLEAR_FLAG wScriptFlags0F.1                     ;; 0e:5ef2 $db $79
    sENDIF                                             ;; 0e:5ef4
    sEND                                               ;; 0e:5ef4 $00

script_04fd:
    sIF_0B $c9                                         ;; 0e:5ef5 $0b $c9 $00 $02
      sSET_FLAG wScriptFlags0F.0                       ;; 0e:5ef9 $da $78
    sENDIF                                             ;; 0e:5efb
    sIF_FLAG wScriptFlags0F.1, wScriptFlags0F.2, wScriptFlags0F.3 ;; 0e:5efb $08 $79 $7a $7b $00 $03
      sSFX 16                                          ;; 0e:5f01 $f9 $10
      sOPEN_NORTH_DOOR                                 ;; 0e:5f03 $e0
    sENDIF                                             ;; 0e:5f04
    sEND                                               ;; 0e:5f04 $00

script_04fe:
    sIF_0B $c9                                         ;; 0e:5f05 $0b $c9 $00 $02
      sSET_FLAG wScriptFlags0F.1                       ;; 0e:5f09 $da $79
    sENDIF                                             ;; 0e:5f0b
    sIF_FLAG wScriptFlags0F.0, wScriptFlags0F.2, wScriptFlags0F.3 ;; 0e:5f0b $08 $78 $7a $7b $00 $03
      sSFX 16                                          ;; 0e:5f11 $f9 $10
      sOPEN_NORTH_DOOR                                 ;; 0e:5f13 $e0
    sENDIF                                             ;; 0e:5f14
    sEND                                               ;; 0e:5f14 $00

script_04ff:
    sIF_0B $c9                                         ;; 0e:5f15 $0b $c9 $00 $02
      sSET_FLAG wScriptFlags0F.2                       ;; 0e:5f19 $da $7a
    sENDIF                                             ;; 0e:5f1b
    sIF_FLAG wScriptFlags0F.0, wScriptFlags0F.1, wScriptFlags0F.3 ;; 0e:5f1b $08 $78 $79 $7b $00 $03
      sSFX 16                                          ;; 0e:5f21 $f9 $10
      sOPEN_NORTH_DOOR                                 ;; 0e:5f23 $e0
    sENDIF                                             ;; 0e:5f24
    sEND                                               ;; 0e:5f24 $00

script_0500:
    sIF_0B $c9                                         ;; 0e:5f25 $0b $c9 $00 $02
      sSET_FLAG wScriptFlags0F.3                       ;; 0e:5f29 $da $7b
    sENDIF                                             ;; 0e:5f2b
    sIF_FLAG wScriptFlags0F.0, wScriptFlags0F.1, wScriptFlags0F.2 ;; 0e:5f2b $08 $78 $79 $7a $00 $03
      sSFX 16                                          ;; 0e:5f31 $f9 $10
      sOPEN_NORTH_DOOR                                 ;; 0e:5f33 $e0
    sENDIF                                             ;; 0e:5f34
    sEND                                               ;; 0e:5f34 $00

script_0501:
    sIF_0B $c9                                         ;; 0e:5f35 $0b $c9 $00 $03
      sSFX 16                                          ;; 0e:5f39 $f9 $10
      sOPEN_EAST_DOOR                                  ;; 0e:5f3b $e4
    sENDIF                                             ;; 0e:5f3c
    sEND                                               ;; 0e:5f3c $00

script_0502:
    sIF_0B $c9                                         ;; 0e:5f3d $0b $c9 $00 $03
      sSFX 16                                          ;; 0e:5f41 $f9 $10
      sCLOSE_EAST_DOOR                                 ;; 0e:5f43 $e5
    sENDIF                                             ;; 0e:5f44
    sEND                                               ;; 0e:5f44 $00

script_0503:
    sIF_0C $a9                                         ;; 0e:5f45 $0c $a9 $00 $03
      sSFX 16                                          ;; 0e:5f49 $f9 $10
      sOPEN_NORTH_DOOR                                 ;; 0e:5f4b $e0
    sENDIF                                             ;; 0e:5f4c
    sEND                                               ;; 0e:5f4c $00

script_0504:
    sIF_0B $c9, $a9                                    ;; 0e:5f4d $0b $c9 $a9 $00 $03
      sSFX 16                                          ;; 0e:5f52 $f9 $10
      sOPEN_NORTH_DOOR                                 ;; 0e:5f54 $e0
    sENDIF                                             ;; 0e:5f55
    sIF_0C $c9, $a9                                    ;; 0e:5f55 $0c $c9 $a9 $00 $03
      sSFX 16                                          ;; 0e:5f5a $f9 $10
      sCLOSE_NORTH_DOOR                                ;; 0e:5f5c $e1
    sENDIF                                             ;; 0e:5f5d
    sEND                                               ;; 0e:5f5d $00

script_0505:
    sEND                                               ;; 0e:5f5e $00

script_0506:
    sEND                                               ;; 0e:5f5f $00

script_0507:
    sIF_0B $c9                                         ;; 0e:5f60 $0b $c9 $00 $0c
      sSET_ROOM_TILE $00, 1, 5                         ;; 0e:5f64 $b0 $00 $01 $05
      sSET_ROOM_TILE $00, 4, 1                         ;; 0e:5f68 $b0 $00 $04 $01
      sSET_ROOM_TILE $00, 5, 1                         ;; 0e:5f6c $b0 $00 $05 $01
    sENDIF                                             ;; 0e:5f70
    sEND                                               ;; 0e:5f70 $00

script_0508:
    sIF_0B $c9                                         ;; 0e:5f71 $0b $c9 $00 $03
      sSFX 16                                          ;; 0e:5f75 $f9 $10
      sOPEN_SOUTH_DOOR                                 ;; 0e:5f77 $e2
    sENDIF                                             ;; 0e:5f78
    sEND                                               ;; 0e:5f78 $00

script_0509:
    sIF_0B $c9                                         ;; 0e:5f79 $0b $c9 $00 $10
      sSET_ROOM_TILE $00, 4, 3                         ;; 0e:5f7d $b0 $00 $04 $03
      sSET_ROOM_TILE $00, 5, 3                         ;; 0e:5f81 $b0 $00 $05 $03
      sSET_ROOM_TILE $00, 4, 4                         ;; 0e:5f85 $b0 $00 $04 $04
      sSET_ROOM_TILE $00, 5, 4                         ;; 0e:5f89 $b0 $00 $05 $04
    sENDIF                                             ;; 0e:5f8d
    sEND                                               ;; 0e:5f8d $00

script_050a:
    sIF_0B $c9                                         ;; 0e:5f8e $0b $c9 $00 $13
      sSFX 16                                          ;; 0e:5f92 $f9 $10
      sOPEN_EAST_DOOR                                  ;; 0e:5f94 $e4
      sSET_ROOM_TILE $00, 4, 3                         ;; 0e:5f95 $b0 $00 $04 $03
      sSET_ROOM_TILE $00, 5, 3                         ;; 0e:5f99 $b0 $00 $05 $03
      sSET_ROOM_TILE $00, 4, 4                         ;; 0e:5f9d $b0 $00 $04 $04
      sSET_ROOM_TILE $00, 5, 4                         ;; 0e:5fa1 $b0 $00 $05 $04
    sENDIF                                             ;; 0e:5fa5
    sEND                                               ;; 0e:5fa5 $00

script_050b:
    sIF_0B $a9                                         ;; 0e:5fa6 $0b $a9 $00 $03
      sSFX 16                                          ;; 0e:5faa $f9 $10
      sOPEN_EAST_DOOR                                  ;; 0e:5fac $e4
    sENDIF                                             ;; 0e:5fad
    sIF_0B $c9                                         ;; 0e:5fad $0b $c9 $00 $06
      sSFX 24                                          ;; 0e:5fb1 $f9 $18
      sSET_ROOM_TILE $59, 4, 4                         ;; 0e:5fb3 $b0 $59 $04 $04
    sENDIF                                             ;; 0e:5fb7
    sEND                                               ;; 0e:5fb7 $00

script_050c:
    sIF_0B $c9                                         ;; 0e:5fb8 $0b $c9 $00 $14
      sIF_0B $c9                                       ;; 0e:5fbc $0b $c9 $00 $10
        sIF_FLAG wScriptFlags0F.0                      ;; 0e:5fc0 $08 $78 $00 $07
          sCLEAR_FLAG wScriptFlags0F.0                 ;; 0e:5fc4 $db $78
          sSFX 16                                      ;; 0e:5fc6 $f9 $10
          sOPEN_SOUTH_DOOR                             ;; 0e:5fc8 $e2
        sELSE                                          ;; 0e:5fc9 $01 $05
          sSET_FLAG wScriptFlags0F.0                   ;; 0e:5fcb $da $78
          sSFX 16                                      ;; 0e:5fcd $f9 $10
          sCLOSE_SOUTH_DOOR                            ;; 0e:5fcf $e3
        sENDIF                                         ;; 0e:5fd0
      sENDIF                                           ;; 0e:5fd0
    sENDIF                                             ;; 0e:5fd0
    sEND                                               ;; 0e:5fd0 $00

script_050d:
    sSET_NPC_TYPES 14                                  ;; 0e:5fd1 $fc $0e
    sLOOP 4, 3                                         ;; 0e:5fd3 $03 $04 $03
      sSPAWN_NPC 2                                     ;; 0e:5fd6 $fd $02
    sEND                                               ;; 0e:5fd8 $00
    sEND                                               ;; 0e:5fd9 $00

script_050e:
    sEND                                               ;; 0e:5fda $00

script_050f:
    sEND                                               ;; 0e:5fdb $00

script_0510:
    sIF_FLAG !wScriptFlags02.3                         ;; 0e:5fdc $08 $93 $00 $0e
      sDELAY 20                                        ;; 0e:5fe0 $f0 $14
      sSFX 20                                          ;; 0e:5fe2 $f9 $14
      sFLASH_SCREEN                                    ;; 0e:5fe4 $bf
      sSFX 20                                          ;; 0e:5fe5 $f9 $14
      sFLASH_SCREEN                                    ;; 0e:5fe7 $bf
      sSPAWN_BOSS 18                                   ;; 0e:5fe8 $fe $12
      sSET_MUSIC 15                                    ;; 0e:5fea $f8 $0f
    sELSE                                              ;; 0e:5fec $01 $06
      sSFX 24                                          ;; 0e:5fee $f9 $18
      sSET_ROOM_TILE $02, 1, 6                         ;; 0e:5ff0 $b0 $02 $01 $06
    sENDIF                                             ;; 0e:5ff4
    sEND                                               ;; 0e:5ff4 $00

script_0511:
    sSET_MUSIC 8                                       ;; 0e:5ff5 $f8 $08
    sEND                                               ;; 0e:5ff7 $00

script_0512:
    sSET_MUSIC 0                                       ;; 0e:5ff8 $f8 $00
    sMSG                                               ;; 0e:5ffa $04
      db "<10>Defeated\n    Metal Crab!<12>"
      db "<11>", $00 ;; 0e:5ffb
    sSFX 24                                            ;; 0e:6011 $f9 $18
    sSET_ROOM_TILE $02, 1, 6                           ;; 0e:6013 $b0 $02 $01 $06
    sSET_FLAG wScriptFlags02.3                         ;; 0e:6017 $da $13
    sSET_MUSIC 8                                       ;; 0e:6019 $f8 $08
    sEND                                               ;; 0e:601b $00

script_0513:
    sIF_FLAG !wScriptFlags02.5                         ;; 0e:601c $08 $95 $00 $0e
      sDELAY 20                                        ;; 0e:6020 $f0 $14
      sSFX 20                                          ;; 0e:6022 $f9 $14
      sFLASH_SCREEN                                    ;; 0e:6024 $bf
      sSFX 20                                          ;; 0e:6025 $f9 $14
      sFLASH_SCREEN                                    ;; 0e:6027 $bf
      sSPAWN_BOSS 19                                   ;; 0e:6028 $fe $13
      sSET_MUSIC 15                                    ;; 0e:602a $f8 $0f
    sELSE                                              ;; 0e:602c $01 $03
      sSFX 16                                          ;; 0e:602e $f9 $10
      sOPEN_EAST_DOOR                                  ;; 0e:6030 $e4
    sENDIF                                             ;; 0e:6031
    sEND                                               ;; 0e:6031 $00

script_0514:
    sSET_MUSIC 8                                       ;; 0e:6032 $f8 $08
    sEND                                               ;; 0e:6034 $00

script_0515:
    sSET_MUSIC 0                                       ;; 0e:6035 $f8 $00
    sMSG                                               ;; 0e:6037 $04
      db "<10>Defeated\n    Mantis Ant!<12>"
      db "<11>", $00 ;; 0e:6038
    sSFX 16                                            ;; 0e:604c $f9 $10
    sOPEN_EAST_DOOR                                    ;; 0e:604e $e4
    sSET_FLAG wScriptFlags02.5                         ;; 0e:604f $da $15
    sSET_MUSIC 8                                       ;; 0e:6051 $f8 $08
    sEND                                               ;; 0e:6053 $00

script_0516:
    sIF_FLAG !wScriptFlags07.0                         ;; 0e:6054 $08 $b8 $00 $04
      sSET_NPC_TYPES 107                               ;; 0e:6058 $fc $6b
      sSPAWN_NPC 0                                     ;; 0e:605a $fd $00
    sENDIF                                             ;; 0e:605c
    sEND                                               ;; 0e:605c $00

script_0517:
    sEND                                               ;; 0e:605d $00

script_0518:
    sEND                                               ;; 0e:605e $00

script_0519:
    sSET_NPC_TYPES 84                                  ;; 0e:605f $fc $54
    sSPAWN_NPC 1                                       ;; 0e:6061 $fd $01
    sIF_FLAG !wScriptFlags0E.4, !wScriptFlags0E.5, wScriptFlags0E.6, wScriptFlags0E.7, !wScriptFlags02.1 ;; 0e:6063 $08 $f4 $f5 $76 $77 $91 $00 $02
    sELSE                                              ;; 0e:606b $01 $02
      sSPAWN_NPC 0                                     ;; 0e:606d $fd $00
    sENDIF                                             ;; 0e:606f
    sEND                                               ;; 0e:606f $00

script_051a:
    sEND                                               ;; 0e:6070 $00

script_051b:
    sEND                                               ;; 0e:6071 $00

script_051c:
    sSET_NPC_TYPES 91                                  ;; 0e:6072 $fc $5b
    sSPAWN_NPC 0                                       ;; 0e:6074 $fd $00
    sSPAWN_NPC 1                                       ;; 0e:6076 $fd $01
    sEND                                               ;; 0e:6078 $00

script_051d:
    sEND                                               ;; 0e:6079 $00

script_051e:
    sEND                                               ;; 0e:607a $00

script_051f:
    sSET_NPC_TYPES 85                                  ;; 0e:607b $fc $55
    sSPAWN_NPC 0                                       ;; 0e:607d $fd $00
    sSPAWN_NPC 1                                       ;; 0e:607f $fd $01
    sEND                                               ;; 0e:6081 $00

script_0520:
    sEND                                               ;; 0e:6082 $00

script_0521:
    sEND                                               ;; 0e:6083 $00

script_0522:
    sIF_FLAG !wScriptFlags0E.5                         ;; 0e:6084 $08 $f5 $00 $06
      sSET_NPC_TYPES 106                               ;; 0e:6088 $fc $6a
      sSPAWN_NPC 0                                     ;; 0e:608a $fd $00
    sELSE                                              ;; 0e:608c $01 $1d
      sIF_FLAG !wScriptFlags0E.6, !wScriptFlags0E.7    ;; 0e:608e $08 $f6 $f7 $00 $06
        sSET_NPC_TYPES 44                              ;; 0e:6093 $fc $2c
        sSPAWN_NPC 0                                   ;; 0e:6095 $fd $00
        sSPAWN_NPC 1                                   ;; 0e:6097 $fd $01
      sENDIF                                           ;; 0e:6099
      sIF_FLAG !wScriptFlags0E.6, wScriptFlags0E.7     ;; 0e:6099 $08 $f6 $77 $00 $04
        sSET_NPC_TYPES 51                              ;; 0e:609e $fc $33
        sSPAWN_NPC 2                                   ;; 0e:60a0 $fd $02
      sENDIF                                           ;; 0e:60a2
      sIF_FLAG wScriptFlags0E.6, !wScriptFlags0E.7     ;; 0e:60a2 $08 $76 $f7 $00 $04
        sSET_NPC_TYPES 61                              ;; 0e:60a7 $fc $3d
        sSPAWN_NPC 0                                   ;; 0e:60a9 $fd $00
      sENDIF                                           ;; 0e:60ab
    sENDIF                                             ;; 0e:60ab
    sEND                                               ;; 0e:60ab $00

script_0523:
    sEND                                               ;; 0e:60ac $00

script_0524:
    sEND                                               ;; 0e:60ad $00

script_0525:
    sIF_FLAG !wScriptFlags0E.5, !wScriptFlags0E.6, wScriptFlags0E.7 ;; 0e:60ae $08 $f5 $f6 $77 $00 $12
      sSET_NPC_TYPES 74                                ;; 0e:60b4 $fc $4a
      sIF_FLAG wScriptFlags03.7, !wScriptFlags04.1     ;; 0e:60b6 $08 $1f $a1 $00 $09
        sSPAWN_NPC 1                                   ;; 0e:60bb $fd $01
        sSPAWN_NPC 2                                   ;; 0e:60bd $fd $02
        sCALL script_053e                              ;; 0e:60bf $02 $6e $c6
      sELSE                                            ;; 0e:60c2 $01 $02
        sSPAWN_NPC 2                                   ;; 0e:60c4 $fd $02
      sENDIF                                           ;; 0e:60c6
    sENDIF                                             ;; 0e:60c6
    sIF_FLAG !wScriptFlags0E.5, wScriptFlags0E.6, !wScriptFlags0E.7 ;; 0e:60c6 $08 $f5 $76 $f7 $00 $04
      sSET_NPC_TYPES 43                                ;; 0e:60cc $fc $2b
      sSPAWN_NPC 2                                     ;; 0e:60ce $fd $02
    sENDIF                                             ;; 0e:60d0
    sIF_FLAG !wScriptFlags0E.5, wScriptFlags0E.6, wScriptFlags0E.7 ;; 0e:60d0 $08 $f5 $76 $77 $00 $04
      sSET_NPC_TYPES 52                                ;; 0e:60d6 $fc $34
      sSPAWN_NPC 1                                     ;; 0e:60d8 $fd $01
    sENDIF                                             ;; 0e:60da
    sIF_FLAG wScriptFlags0E.5, !wScriptFlags0E.6, !wScriptFlags0E.7 ;; 0e:60da $08 $75 $f6 $f7 $00 $04
      sSET_NPC_TYPES 60                                ;; 0e:60e0 $fc $3c
      sSPAWN_NPC 2                                     ;; 0e:60e2 $fd $02
    sENDIF                                             ;; 0e:60e4
    sIF_FLAG wScriptFlags0E.5, !wScriptFlags0E.6, wScriptFlags0E.7 ;; 0e:60e4 $08 $75 $f6 $77 $00 $06
      sSET_NPC_TYPES 58                                ;; 0e:60ea $fc $3a
      sSPAWN_NPC 0                                     ;; 0e:60ec $fd $00
      sSPAWN_NPC 1                                     ;; 0e:60ee $fd $01
    sENDIF                                             ;; 0e:60f0
    sIF_FLAG wScriptFlags0E.5, wScriptFlags0E.6, !wScriptFlags0E.7 ;; 0e:60f0 $08 $75 $76 $f7 $00 $17
      sSET_NPC_TYPES 76                                ;; 0e:60f6 $fc $4c
      sIF_FLAG !wScriptFlags03.7                       ;; 0e:60f8 $08 $9f $00 $02
        sSPAWN_NPC 1                                   ;; 0e:60fc $fd $01
      sENDIF                                           ;; 0e:60fe
      sIF_FLAG wScriptFlags03.7, !wScriptFlags04.0     ;; 0e:60fe $08 $1f $a0 $00 $02
        sSPAWN_NPC 0                                   ;; 0e:6103 $fd $00
      sENDIF                                           ;; 0e:6105
      sIF_FLAG wScriptFlags04.0                        ;; 0e:6105 $08 $20 $00 $04
        sSPAWN_NPC 0                                   ;; 0e:6109 $fd $00
        sSPAWN_NPC 1                                   ;; 0e:610b $fd $01
      sENDIF                                           ;; 0e:610d
    sENDIF                                             ;; 0e:610d
    sEND                                               ;; 0e:610d $00

script_0526:
    sEND                                               ;; 0e:610e $00

script_0527:
    sEND                                               ;; 0e:610f $00

script_0528:
    sSET_NPC_TYPES 106                                 ;; 0e:6110 $fc $6a
    sSPAWN_NPC 0                                       ;; 0e:6112 $fd $00
    sEND                                               ;; 0e:6114 $00

script_0529:
    sEND                                               ;; 0e:6115 $00

script_052a:
    sEND                                               ;; 0e:6116 $00

script_052b:
    sSFX 16                                            ;; 0e:6117 $f9 $10
    sCLOSE_EAST_DOOR                                   ;; 0e:6119 $e5
    sCLOSE_SOUTH_DOOR                                  ;; 0e:611a $e3
    sSET_NPC_TYPES 3                                   ;; 0e:611b $fc $03
    sSPAWN_NPC 2                                       ;; 0e:611d $fd $02
    sEND                                               ;; 0e:611f $00

script_052c:
    sEND                                               ;; 0e:6120 $00

script_052d:
    sSFX 16                                            ;; 0e:6121 $f9 $10
    sOPEN_EAST_DOOR                                    ;; 0e:6123 $e4
    sOPEN_SOUTH_DOOR                                   ;; 0e:6124 $e2
    sEND                                               ;; 0e:6125 $00

script_052e:
    sEND                                               ;; 0e:6126 $00

script_052f:
    sEND                                               ;; 0e:6127 $00

script_0530:
    sEND                                               ;; 0e:6128 $00

script_0531:
    sIF_FLAG !wScriptFlags01.0                         ;; 0e:6129 $08 $88 $00 $71
      sSET_MUSIC 0                                     ;; 0e:612d $f8 $00
      sUNK_DC                                          ;; 0e:612f $dc
      sDELAY 90                                        ;; 0e:6130 $f0 $5a
      sMSG                                             ;; 0e:6132 $04
        db "<10><BOY> was a fighter\nof Empire Glaive.", $00 ;; 0e:6133
      sDELAY 80                                        ;; 0e:614a $f0 $50
      sMSG                                             ;; 0e:614c $04
        db "<11>", $00                                 ;; 0e:614d
      sFULL_HP                                         ;; 0e:614f $c0
      sFADE_TO_BLACK                                   ;; 0e:6150 $bd
      sLOAD_ROOM_INSTANT 15, $55, 20, 0                ;; 0e:6151 $f3 $0f $55 $14 $00
      sFADE_TO_NORMAL                                  ;; 0e:6156 $bc
      sDELAY 50                                        ;; 0e:6157 $f0 $32
      sUNK_DD                                          ;; 0e:6159 $dd
      sMSG                                             ;; 0e:615a $04
        db "<10><BOY> and friends\nwere forced to\nfight everyday<12>"
        db "<1b>just for the\nentertainment of\nDark Lord.<12>"
        db "<1b>", $00 ;; 0e:615b
      sCALL script_0532                                ;; 0e:6198 $02 $61 $9f
      sCALL script_0533                                ;; 0e:619b $02 $61 $fa
    sENDIF                                             ;; 0e:619e
    sEND                                               ;; 0e:619e $00

script_0532:
    sMSG                                               ;; 0e:619f $04
      db "Many fighters have\nfallen from their\nwounds.<12>"
      db "<11>", $00 ;; 0e:61a0
    sFADE_TO_BLACK                                     ;; 0e:61be $bd
    sLOAD_ROOM_INSTANT 4, $41, 10, 10                  ;; 0e:61bf $f3 $04 $41 $0a $0a
    sSET_MUSIC 23                                      ;; 0e:61c4 $f8 $17
    sSET_PLAYER_DIRECTION_LEFT                         ;; 0e:61c6 $87
    sSET_NPC_TYPES 36                                  ;; 0e:61c7 $fc $24
    sSPAWN_NPC 2                                       ;; 0e:61c9 $fd $02
    sDELAY 100                                         ;; 0e:61cb $f0 $64
    sFADE_TO_NORMAL                                    ;; 0e:61cd $bc
    sDELAY 30                                          ;; 0e:61ce $f0 $1e
    sMSG                                               ;; 0e:61d0 $04
      db "<10><BOY>:__ Willy!\nWilly:<BOY>_", $00      ;; 0e:61d1
    sDELAY 50                                          ;; 0e:61e3 $f0 $32
    sMSG                                               ;; 0e:61e5 $04
      db "  Mana\n is in danger now_<12>"
      db "<1b>", $00 ;; 0e:61e6
    sEND                                               ;; 0e:61f9 $00

script_0533:
    sMSG                                               ;; 0e:61fa $04
      db " We must let the\n Gemma Knights\n know about it.<12>"
      db "<1b><BOY>:_ Gemma_?\nWilly:See Bogard\n at the Falls.<12>"
      db "<1b> He is a Gemma\n Knight. He should\n know what to do.<12>"
      db "<1b><BOY>:Gemma?", $00 ;; 0e:61fb
    sDELAY 30                                          ;; 0e:626c $f0 $1e
    sMSG                                               ;; 0e:626e $04
      db " Mana?\n What are they? _", $00              ;; 0e:626f
    sDELAY 30                                          ;; 0e:6280 $f0 $1e
    sMSG                                               ;; 0e:6282 $04
      db "\n _ Willy?", $00                            ;; 0e:6283
    sDELAY 60                                          ;; 0e:628c $f0 $3c
    sMSG                                               ;; 0e:628e $04
      db "_ Willy!!<12>"
      db "<11>", $00          ;; 0e:628f
    sDELAY 60                                          ;; 0e:6299 $f0 $3c
    sMSG                                               ;; 0e:629b $04
      db "<10>\nWilly passed away.<12>"
      db "<11>", $00 ;; 0e:629c
    sDELAY 60                                          ;; 0e:62ad $f0 $3c
    sSET_FLAG wScriptFlags01.0                         ;; 0e:62af $da $08
    sEND                                               ;; 0e:62b1 $00

script_0534:
    sSET_MUSIC 0                                       ;; 0e:62b2 $f8 $00
    sSET_NPC_TYPES 39                                  ;; 0e:62b4 $fc $27
    sSPAWN_NPC 0                                       ;; 0e:62b6 $fd $00
    sSET_NPC_1_DIRECTION_UP                            ;; 0e:62b8 $14
    sSPAWN_NPC 1                                       ;; 0e:62b9 $fd $01
    sSET_NPC_2_DIRECTION_UP                            ;; 0e:62bb $24
    sPLAYER_STEP_FORWARD                               ;; 0e:62bc $80
    sDELAY 30                                          ;; 0e:62bd $f0 $1e
    sMSG                                               ;; 0e:62bf $04
      db "<10><BOY>:Dark Lord and\n Julius__\n _What's going on?<12>"
      db "<11>", $00 ;; 0e:62c0
    sSET_MUSIC 10                                      ;; 0e:62e4 $f8 $0a
    sDELAY 30                                          ;; 0e:62e6 $f0 $1e
    sSET_NPC_1_DIRECTION_RIGHT                         ;; 0e:62e8 $16
    sMSG                                               ;; 0e:62e9 $04
      db "<10>Dark Lord:You say\n the Mana Tree is\n above the Falls_?<12>"
      db "<11>", $00 ;; 0e:62ea
    sDELAY 10                                          ;; 0e:6313 $f0 $0a
    sSET_NPC_2_DIRECTION_LEFT                          ;; 0e:6315 $27
    sDELAY 10                                          ;; 0e:6316 $f0 $0a
    sMSG                                               ;; 0e:6318 $04
      db "<10>Julius:Yes, Sir.\n The tree is in a\n shrine up there.<12>"
      db "<1b>", $00 ;; 0e:6319
    sSET_NPC_1_DIRECTION_RIGHT                         ;; 0e:633e $16
    sMSG                                               ;; 0e:633f $04
      db "Dark Lord:How do\n I get there?", $00        ;; 0e:6340
    sDELAY 30                                          ;; 0e:6356 $f0 $1e
    sSET_NPC_1_DIRECTION_UP                            ;; 0e:6358 $14
    sDELAY 20                                          ;; 0e:6359 $f0 $14
    sMSG                                               ;; 0e:635b $04
      db "\n __ Up the falls?<12>"
      db "<1b>Julius:Miracles\n occur sometimes,\n Sir Dark Lord__", $00 ;; 0e:635c
    sSET_NPC_1_DIRECTION_RIGHT                         ;; 0e:638f $16
    sMSG                                               ;; 0e:6390 $04
      db "<12>"
      db "<1b>Dark Lord:_ How?\nJulius:A girl has\n the key to it.<12>"
      db "<1b>Dark Lord:__Good.\n Work hard on it.\nJulius:Yes, Sir!", $00 ;; 0e:6391
    sEND                                               ;; 0e:63dd $00

script_0535:
    sMSG                                               ;; 0e:63de $04
      db "<12>"
      db "<11>", $00                   ;; 0e:63df
    sDELAY 60                                          ;; 0e:63e2 $f0 $3c
    sLOOP 8, 5                                         ;; 0e:63e4 $03 $08 $05
      sSET_NPC_2_DIRECTION_RIGHT                       ;; 0e:63e7 $26
      sSET_NPC_2_DIRECTION_DOWN                        ;; 0e:63e8 $25
      sSET_NPC_2_DIRECTION_LEFT                        ;; 0e:63e9 $27
      sSET_NPC_2_DIRECTION_UP                          ;; 0e:63ea $24
    sEND                                               ;; 0e:63eb $00
    sDEL_NPC_2                                         ;; 0e:63ec $28
    sSFX 20                                            ;; 0e:63ed $f9 $14
    sFLASH_SCREEN                                      ;; 0e:63ef $bf
    sSFX 20                                            ;; 0e:63f0 $f9 $14
    sFLASH_SCREEN                                      ;; 0e:63f2 $bf
    sFLASH_SCREEN                                      ;; 0e:63f3 $bf
    sDELAY 60                                          ;; 0e:63f4 $f0 $3c
    sMSG                                               ;; 0e:63f6 $04
      db "<10>Dark Lord:_ What?\n Who is it?\n<BOY>:__ !!<12>"
      db "<11>", $00 ;; 0e:63f7
    sNPC_1_STEP_FORWARD                                ;; 0e:6417 $10
    sNPC_1_STEP_FORWARD                                ;; 0e:6418 $10
    sSET_MUSIC 9                                       ;; 0e:6419 $f8 $09
    sSET_PLAYER_DIRECTION_RIGHT                        ;; 0e:641b $86
    sPLAYER_STEP_FORWARD                               ;; 0e:641c $80
    sPLAYER_STEP_FORWARD                               ;; 0e:641d $80
    sSCROLL_ROOM_RIGHT                                 ;; 0e:641e $eb
    sLOOP 7, 2                                         ;; 0e:641f $03 $07 $02
      sPLAYER_STEP_FORWARD                             ;; 0e:6422 $80
    sEND                                               ;; 0e:6423 $00
    sSET_PLAYER_DIRECTION_DOWN                         ;; 0e:6424 $85
    sLOOP 4, 2                                         ;; 0e:6425 $03 $04 $02
      sPLAYER_STEP_FORWARD                             ;; 0e:6428 $80
    sEND                                               ;; 0e:6429 $00
    sSCROLL_ROOM_DOWN                                  ;; 0e:642a $e8
    sLOOP 7, 2                                         ;; 0e:642b $03 $07 $02
      sPLAYER_STEP_FORWARD                             ;; 0e:642e $80
    sEND                                               ;; 0e:642f $00
    sSET_PLAYER_DIRECTION_LEFT                         ;; 0e:6430 $87
    sLOOP 7, 2                                         ;; 0e:6431 $03 $07 $02
      sPLAYER_STEP_FORWARD                             ;; 0e:6434 $80
    sEND                                               ;; 0e:6435 $00
    sSCROLL_ROOM_LEFT                                  ;; 0e:6436 $ea
    sSET_FLAG wScriptFlags01.1                         ;; 0e:6437 $da $09
    sEND                                               ;; 0e:6439 $00

script_0536:
    sSET_NPC_TYPES 41                                  ;; 0e:643a $fc $29
    sLOOP 7, 2                                         ;; 0e:643c $03 $07 $02
      sPLAYER_STEP_FORWARD                             ;; 0e:643f $80
    sEND                                               ;; 0e:6440 $00
    sDELAY 30                                          ;; 0e:6441 $f0 $1e
    sSPAWN_NPC 1                                       ;; 0e:6443 $fd $01
    sSET_NPC_1_DIRECTION_LEFT                          ;; 0e:6445 $17
    sDELAY 30                                          ;; 0e:6446 $f0 $1e
    sSET_PLAYER_DIRECTION_RIGHT                        ;; 0e:6448 $86
    sDELAY 30                                          ;; 0e:6449 $f0 $1e
    sMSG                                               ;; 0e:644b $04
      db "<10>Dark Lord:I won't\n let you leave\n here alive!<12>"
      db "<11>", $00 ;; 0e:644c
    sLOOP 5, 2                                         ;; 0e:646d $03 $05 $02
      sNPC_1_STEP_FORWARD                              ;; 0e:6470 $10
    sEND                                               ;; 0e:6471 $00
    sSFX 20                                            ;; 0e:6472 $f9 $14
    sLOOP 2, 2                                         ;; 0e:6474 $03 $02 $02
      sFLASH_SCREEN                                    ;; 0e:6477 $bf
    sEND                                               ;; 0e:6478 $00
    sPLAYER_STEP_BACKWARD                              ;; 0e:6479 $81
    sPLAYER_STEP_BACKWARD                              ;; 0e:647a $81
    sSET_PLAYER_DIRECTION_DOWN                         ;; 0e:647b $85
    sSET_PLAYER_HURT_SPRITE                            ;; 0e:647c $a5
    sSET_FAST_MOVEMENT                                 ;; 0e:647d $88
    sSFX 12                                            ;; 0e:647e $f9 $0c
    sLOOP 11, 2                                        ;; 0e:6480 $03 $0b $02
      sPLAYER_STEP_FORWARD                             ;; 0e:6483 $80
    sEND                                               ;; 0e:6484 $00
    sLOAD_ROOM 14, $72, 9, 0                           ;; 0e:6485 $f4 $0e $72 $09 $00
    sLOOP 15, 2                                        ;; 0e:648a $03 $0f $02
      sPLAYER_STEP_FORWARD                             ;; 0e:648d $80
    sEND                                               ;; 0e:648e $00
    sLOOP 3, 10                                        ;; 0e:648f $03 $03 $0a
      sUNK_EF $07, $02                                 ;; 0e:6492 $ef $07 $02
      sSCROLL_ROOM_DOWN                                ;; 0e:6495 $e8
      sLOOP 16, 2                                      ;; 0e:6496 $03 $10 $02
        sPLAYER_STEP_FORWARD                           ;; 0e:6499 $80
      sEND                                             ;; 0e:649a $00
    sEND                                               ;; 0e:649b $00
    sPLAYER_STEP_FORWARD                               ;; 0e:649c $80
    sPLAYER_STEP_FORWARD                               ;; 0e:649d $80
    sCLEAR_FAST_MOVEMENT                               ;; 0e:649e $89
    sDELAY 20                                          ;; 0e:649f $f0 $14
    sSET_PLAYER_LAYDOWN_SPRITE                         ;; 0e:64a1 $a6
    sFADE_TO_BLACK                                     ;; 0e:64a2 $bd
    sSET_MUSIC 0                                       ;; 0e:64a3 $f8 $00
    sLOAD_ROOM_INSTANT 0, $56, 8, 8                    ;; 0e:64a5 $f3 $00 $56 $08 $08
    sDELAY 144                                         ;; 0e:64aa $f0 $90
    sFADE_TO_NORMAL                                    ;; 0e:64ac $bc
    sDELAY 100                                         ;; 0e:64ad $f0 $64
    sMSG                                               ;; 0e:64af $04
      db "<10><BOY>:_ _ Ouch!\n _ Where am I?\n _ Where is this?<12>"
      db "<11>", $00 ;; 0e:64b0
    sDELAY 80                                          ;; 0e:64d4 $f0 $50
    sSET_PLAYER_NORMAL_SPRITE                          ;; 0e:64d6 $a4
    sSET_MUSIC 20                                      ;; 0e:64d7 $f8 $14
    sEND                                               ;; 0e:64d9 $00

script_0537:
    sSET_NPC_TYPES 40                                  ;; 0e:64da $fc $28
    sPLAYER_STEP_FORWARD                               ;; 0e:64dc $80
    sSPAWN_NPC 0                                       ;; 0e:64dd $fd $00
    sDELAY 60                                          ;; 0e:64df $f0 $3c
    sMSG                                               ;; 0e:64e1 $04
      db "<10><BOY>:<GIRL>!\n _ What's wrong?<12>"
      db "<11>", $00 ;; 0e:64e2
    sSET_MUSIC 0                                       ;; 0e:64f5 $f8 $00
    sDELAY 80                                          ;; 0e:64f7 $f0 $50
    sMSG                                               ;; 0e:64f9 $04
      db "<10>Julius:It's too\n late, <BOY>.\n She's mine__", $00 ;; 0e:64fa
    sSET_MUSIC 10                                      ;; 0e:6515 $f8 $0a
    sMSG                                               ;; 0e:6517 $04
      db "<12>"
      db "<11>", $00                   ;; 0e:6518
    sDELAY 90                                          ;; 0e:651b $f0 $5a
    sSFX 20                                            ;; 0e:651d $f9 $14
    sFLASH_SCREEN                                      ;; 0e:651f $bf
    sSFX 20                                            ;; 0e:6520 $f9 $14
    sFLASH_SCREEN                                      ;; 0e:6522 $bf
    sSPAWN_NPC 1                                       ;; 0e:6523 $fd $01
    sSET_NPC_2_DIRECTION_RIGHT                         ;; 0e:6525 $26
    sFLASH_SCREEN                                      ;; 0e:6526 $bf
    sDELAY 120                                         ;; 0e:6527 $f0 $78
    sMSG                                               ;; 0e:6529 $04
      db "<10><BOY>:What?!<12>"
      db "", $00       ;; 0e:652a
    sSET_NPC_2_DIRECTION_DOWN                          ;; 0e:6534 $25
    sDELAY 30                                          ;; 0e:6535 $f0 $1e
    sSET_NPC_2_DIRECTION_LEFT                          ;; 0e:6537 $27
    sMSG                                               ;; 0e:6538 $04
      db "<1b>Julius:Use this\n Pendant and cast\n the spell, <GIRL>.<12>"
      db "<1b><BOY>:<GIRL>!  Don't!\n Come over here!\n", $00 ;; 0e:6539
    sDELAY 30                                          ;; 0e:6572 $f0 $1e
    sMSG                                               ;; 0e:6574 $04
      db "<GIRL>:__", $00                              ;; 0e:6575
    sDELAY 60                                          ;; 0e:6579 $f0 $3c
    sMSG                                               ;; 0e:657b $04
      db "____<12>"
      db "<1b><BOY>:<GIRL>?", $00  ;; 0e:657c
    sDELAY 60                                          ;; 0e:6585 $f0 $3c
    sMSG                                               ;; 0e:6587 $04
      db "\n What did you do\n to her, Julius?", $00   ;; 0e:6588
    sDELAY 40                                          ;; 0e:659f $f0 $28
    sSET_NPC_2_DIRECTION_DOWN                          ;; 0e:65a1 $25
    sDELAY 20                                          ;; 0e:65a2 $f0 $14
    sSET_NPC_2_DIRECTION_RIGHT                         ;; 0e:65a4 $26
    sDELAY 20                                          ;; 0e:65a5 $f0 $14
    sMSG                                               ;; 0e:65a7 $04
      db "<12>"
      db "<1b>Julius:I am the\n last one left of\n Empire Vandole.<12>"
      db "", $00 ;; 0e:65a8
    sSET_NPC_2_DIRECTION_DOWN                          ;; 0e:65cd $25
    sDELAY 40                                          ;; 0e:65ce $f0 $28
    sMSG                                               ;; 0e:65d0 $04
      db "<1b> I shall receive\n the power of\n Mana again!<12>"
      db "<1b> Now, <GIRL>!\n Reverse the\n Waterfalls!<12>"
      db "", $00 ;; 0e:65d1
    sSET_MUSIC 10                                      ;; 0e:660a $f8 $0a
    sSET_NPC_2_DIRECTION_LEFT                          ;; 0e:660c $27
    sMSG                                               ;; 0e:660d $04
      db "<1b><GIRL>:Klnka Imra\n Miryon Tin Qua_ _<12>"
      db "<11>", $00 ;; 0e:660e
    sDELAY 40                                          ;; 0e:662b $f0 $28
    sSFX 37                                            ;; 0e:662d $f9 $25
    sSHAKE_SCREEN                                      ;; 0e:662f $fb
    sSHAKE_SCREEN                                      ;; 0e:6630 $fb
    sLOOP 8, 4                                         ;; 0e:6631 $03 $08 $04
      sFLASH_SCREEN                                    ;; 0e:6634 $bf
      sSFX 20                                          ;; 0e:6635 $f9 $14
    sEND                                               ;; 0e:6637 $00
    sDELAY 20                                          ;; 0e:6638 $f0 $14
    sCALL script_0543                                  ;; 0e:663a $02 $77 $4e
    sDELAY 20                                          ;; 0e:663d $f0 $14
    sSET_NPC_2_DIRECTION_DOWN                          ;; 0e:663f $25
    sLOOP 6, 3                                         ;; 0e:6640 $03 $06 $03
      sNPC_1_STEP_BACKWARDS                            ;; 0e:6643 $11
      sNPC_2_STEP_BACKWARDS                            ;; 0e:6644 $21
    sEND                                               ;; 0e:6645 $00
    sLOOP 6, 2                                         ;; 0e:6646 $03 $06 $02
      sPLAYER_STEP_FORWARD                             ;; 0e:6649 $80
    sEND                                               ;; 0e:664a $00
    sSET_PLAYER_DIRECTION_UP                           ;; 0e:664b $84
    sMSG                                               ;; 0e:664c $04
      db "<10><BOY>:Wait!\n\nJulius:HA!<12>"
      db "<11>", $00 ;; 0e:664d
    sDELAY 20                                          ;; 0e:6661 $f0 $14
    sLOOP 3, 4                                         ;; 0e:6663 $03 $03 $04
      sSFX 20                                          ;; 0e:6666 $f9 $14
      sFLASH_SCREEN                                    ;; 0e:6668 $bf
    sEND                                               ;; 0e:6669 $00
    sCREATE_EFFECT $10, $0c, $0c                       ;; 0e:666a $ba $10 $0c $0c
    sSET_PLAYER_HURT_SPRITE                            ;; 0e:666e $a5
    sLOOP 5, 2                                         ;; 0e:666f $03 $05 $02
      sPLAYER_STEP_BACKWARD                            ;; 0e:6672 $81
    sEND                                               ;; 0e:6673 $00
    sDELAY 60                                          ;; 0e:6674 $f0 $3c
    sLOOP 6, 3                                         ;; 0e:6676 $03 $06 $03
      sNPC_1_STEP_BACKWARDS                            ;; 0e:6679 $11
      sNPC_2_STEP_BACKWARDS                            ;; 0e:667a $21
    sEND                                               ;; 0e:667b $00
    sDEL_NPC_1                                         ;; 0e:667c $18
    sDEL_NPC_2                                         ;; 0e:667d $28
    sFADE_TO_WHITE                                     ;; 0e:667e $be
    sEND                                               ;; 0e:667f $00

script_0538:
    sSET_PLAYER_LAYDOWN_SPRITE                         ;; 0e:6680 $a6
    sDELAY 100                                         ;; 0e:6681 $f0 $64
    sSET_MUSIC 0                                       ;; 0e:6683 $f8 $00
    sLOAD_ROOM_INSTANT 0, $82, 9, 7                    ;; 0e:6685 $f3 $00 $82 $09 $07
    sDELAY 200                                         ;; 0e:668a $f0 $c8
    sFADE_TO_NORMAL                                    ;; 0e:668c $bc
    sMSG                                               ;; 0e:668d $04
      db "<10><BOY>:Ou_ _", $00                        ;; 0e:668e
    sDELAY 40                                          ;; 0e:6697 $f0 $28
    sMSG                                               ;; 0e:6699 $04
      db " ouch_\n Can't_ _ move_ _<12>"
      db "<11>", $00 ;; 0e:669a
    sDELAY 40                                          ;; 0e:66b1 $f0 $28
    sSFX 7                                             ;; 0e:66b3 $f9 $07
    sDELAY 10                                          ;; 0e:66b5 $f0 $0a
    sSFX 7                                             ;; 0e:66b7 $f9 $07
    sSET_NPC_TYPES 83                                  ;; 0e:66b9 $fc $53
    sMSG                                               ;; 0e:66bb $04
      db "<10>_", $00                                  ;; 0e:66bc
    sDELAY 40                                          ;; 0e:66bf $f0 $28
    sMSG                                               ;; 0e:66c1 $04
      db "__", $00                                     ;; 0e:66c2
    sDELAY 40                                          ;; 0e:66c4 $f0 $28
    sMSG                                               ;; 0e:66c6 $04
      db "__?<12>"
      db "<11>", $00                ;; 0e:66c7
    sSPAWN_NPC 0                                       ;; 0e:66cc $fd $00
    sSET_NPC_1_DIRECTION_LEFT                          ;; 0e:66ce $17
    sDELAY 30                                          ;; 0e:66cf $f0 $1e
    sUNK_1A                                            ;; 0e:66d1 $1a
    sLOOP 7, 2                                         ;; 0e:66d2 $03 $07 $02
      sNPC_1_STEP_FORWARD                              ;; 0e:66d5 $10
    sEND                                               ;; 0e:66d6 $00
    sDELAY 100                                         ;; 0e:66d7 $f0 $64
    sSFX 7                                             ;; 0e:66d9 $f9 $07
    sDELAY 10                                          ;; 0e:66db $f0 $0a
    sSFX 7                                             ;; 0e:66dd $f9 $07
    sNPC_1_STEP_FORWARD                                ;; 0e:66df $10
    sNPC_1_STEP_FORWARD                                ;; 0e:66e0 $10
    sSET_PLAYER_POSITION 20, 16                        ;; 0e:66e1 $8a $14 $10
    sDELAY 20                                          ;; 0e:66e4 $f0 $14
    sSET_NPC_1_DIRECTION_RIGHT                         ;; 0e:66e6 $16
    sLOOP 11, 2                                        ;; 0e:66e7 $03 $0b $02
      sNPC_1_STEP_FORWARD                              ;; 0e:66ea $10
    sEND                                               ;; 0e:66eb $00
    sSCROLL_ROOM_RIGHT                                 ;; 0e:66ec $eb
    sSET_NPC_TYPES 83                                  ;; 0e:66ed $fc $53
    sSPAWN_NPC 1                                       ;; 0e:66ef $fd $01
    sSET_NPC_1_DIRECTION_RIGHT                         ;; 0e:66f1 $16
    sUNK_1A                                            ;; 0e:66f2 $1a
    sLOOP 10, 2                                        ;; 0e:66f3 $03 $0a $02
      sNPC_1_STEP_FORWARD                              ;; 0e:66f6 $10
    sEND                                               ;; 0e:66f7 $00
    sSET_NPC_1_DIRECTION_UP                            ;; 0e:66f8 $14
    sNPC_1_STEP_FORWARD                                ;; 0e:66f9 $10
    sNPC_1_STEP_FORWARD                                ;; 0e:66fa $10
    sNPC_1_STEP_FORWARD                                ;; 0e:66fb $10
    sDEL_NPC_1                                         ;; 0e:66fc $18
    sSET_PLAYER_POSITION 20, 0                         ;; 0e:66fd $8a $14 $00
    sSET_PLAYER_NORMAL_SPRITE                          ;; 0e:6700 $a4
    sDELAY 40                                          ;; 0e:6701 $f0 $28
    sMSG                                               ;; 0e:6703 $04
      db "<10>_See that, Auntie?\n A boy's falling!\nSarah:Oh, yes.<12>"
      db "<1b>_A birdie is\n falling, too!\nSarah:Oh_ dear_ _<12>"
      db "<11>", $00 ;; 0e:6704
    sDELAY 60                                          ;; 0e:6750 $f0 $3c
    sFADE_TO_BLACK                                     ;; 0e:6752 $bd
    sEND                                               ;; 0e:6753 $00

script_0539:
    sLOAD_ROOM_INSTANT 3, $01, 16, 3                   ;; 0e:6754 $f3 $03 $01 $10 $03
    sSET_NPC_TYPES 76                                  ;; 0e:6759 $fc $4c
    sSPAWN_NPC 0                                       ;; 0e:675b $fd $00
    sDELAY 20                                          ;; 0e:675d $f0 $14
    sSET_MUSIC 27                                      ;; 0e:675f $f8 $1b
    sSET_PLAYER_DIRECTION_RIGHT                        ;; 0e:6761 $86
    sFADE_TO_NORMAL                                    ;; 0e:6762 $bc
    sDELAY 180                                         ;; 0e:6763 $f0 $b4
    sSET_PLAYER_DIRECTION_LEFT                         ;; 0e:6765 $87
    sMSG                                               ;; 0e:6766 $04
      db "<10>Bogard:<BOY>__\n<BOY>:_ Bogard!\n How've you been?", $00 ;; 0e:6767
    sPLAYER_STEP_FORWARD                               ;; 0e:6787 $80
    sPLAYER_STEP_FORWARD                               ;; 0e:6788 $80
    sMSG                                               ;; 0e:6789 $04
      db "<12>"
      db "<1b>Bogard:I was\n thrown from\n the ship__ But<12>"
      db "<1b> Sarah picked me\n up and saved me.<12>"
      db "<1b> I'm glad to see\n you again, <BOY>.<12>"
      db "<11>", $00 ;; 0e:678a
    sDELAY 40                                          ;; 0e:67da $f0 $28
    sSET_PLAYER_DIRECTION_DOWN                         ;; 0e:67dc $85
    sPLAYER_STEP_FORWARD                               ;; 0e:67dd $80
    sPLAYER_STEP_FORWARD                               ;; 0e:67de $80
    sPLAYER_STEP_FORWARD                               ;; 0e:67df $80
    sSET_PLAYER_DIRECTION_LEFT                         ;; 0e:67e0 $87
    sPLAYER_STEP_FORWARD                               ;; 0e:67e1 $80
    sPLAYER_STEP_FORWARD                               ;; 0e:67e2 $80
    sPLAYER_STEP_FORWARD                               ;; 0e:67e3 $80
    sPLAYER_STEP_FORWARD                               ;; 0e:67e4 $80
    sSET_PLAYER_DIRECTION_DOWN                         ;; 0e:67e5 $85
    sDELAY 20                                          ;; 0e:67e6 $f0 $14
    sMSG                                               ;; 0e:67e8 $04
      db "<10><BOY>:I can't do\n this anymore_\n I can't do it!<12>"
      db "<11>", $00 ;; 0e:67e9
    sDELAY 40                                          ;; 0e:680a $f0 $28
    sSET_PLAYER_DIRECTION_UP                           ;; 0e:680c $84
    sDELAY 10                                          ;; 0e:680d $f0 $0a
    sMSG                                               ;; 0e:680f $04
      db "<10> I'm not the right\n one to be the\n Gemma Knight.<12>"
      db "<1b>Bogard:Come on!\n You must stand_<12>"
      db "<1b><BOY>:NO!  What's\n that Gemma?\n __ Why me?<12>"
      db "<1b> Why does that\n have to be me?\nBogard:<BOY>, you_<12>"
      db "<1b><BOY>:You do it!\n You're the Gemma\n Knight. It's You!<12>"
      db "<1b>Bogard:_ Shut up!\n _ GET OUT!!_", $00 ;; 0e:6810
    sDELAY 20                                          ;; 0e:68c9 $f0 $14
    sMSG                                               ;; 0e:68cb $04
      db "<11>", $00                                   ;; 0e:68cc
    sSET_PLAYER_DIRECTION_LEFT                         ;; 0e:68ce $87
    sPLAYER_STEP_FORWARD                               ;; 0e:68cf $80
    sSET_PLAYER_DIRECTION_DOWN                         ;; 0e:68d0 $85
    sLOOP 6, 2                                         ;; 0e:68d1 $03 $06 $02
      sPLAYER_STEP_FORWARD                             ;; 0e:68d4 $80
    sEND                                               ;; 0e:68d5 $00
    sLOAD_ROOM 15, $46, 4, 10                          ;; 0e:68d6 $f4 $0f $46 $04 $0a
    sSET_FLAG wScriptFlags03.7                         ;; 0e:68db $da $1f
    sCLEAR_FLAG wScriptFlags0B.3                       ;; 0e:68dd $db $5b
    sCLEAR_FLAG wScriptFlags0B.4                       ;; 0e:68df $db $5c
    sCLEAR_FLAG wScriptFlags0B.7                       ;; 0e:68e1 $db $5f
    sCLEAR_FLAG wScriptFlags0D.3                       ;; 0e:68e3 $db $6b
    sCALL script_0157                                  ;; 0e:68e5 $02 $0b $92
    sEND                                               ;; 0e:68e8 $00

script_053a:
    sDELAY 144                                         ;; 0e:68e9 $f0 $90
    sMSG                                               ;; 0e:68eb $04
      db "<10> _ <GIRL>, my dear__\n<GIRL>:Mom!\n<BOY>:_ Mom?!<12>"
      db "<1b>Cibba:That lady__\n She's the one who\n encouraged us.<12>"
      db "<1b>Mother:I must tell\n you now, <GIRL>.<12>"
      db "<1b> You and I are\n the members of\n the Mana Family.<12>"
      db "<1b> We are the seeds\n of the Mana Tree.\n We must guard it.<12>"
      db "<1b> Vandole abused\n the power of Mana\n long time ago.<12>"
      db "<1b> So I sealed the\n Waterfalls with\n that Pendant,<12>"
      db "<1b> so that nobody\n can come close to\n the Mana Tree.<12>"
      db "<1b> But again, Glaive\n is trying to use\n it for evil.<12>"
      db "<1b> Guard the Mana\n Tree with the\n Gemma Knights!<12>"
      db "<11>", $00 ;; 0e:68ec
    sDELAY 10                                          ;; 0e:6a2c $f0 $0a
    sFADE_TO_BLACK                                     ;; 0e:6a2e $bd
    sDEL_NPC_2                                         ;; 0e:6a2f $28
    sDELAY 40                                          ;; 0e:6a30 $f0 $28
    sFADE_TO_NORMAL                                    ;; 0e:6a32 $bc
    sMSG                                               ;; 0e:6a33 $04
      db "<10><1f> Mother's figure\n   disappeared__", $00 ;; 0e:6a34
    sDELAY 60                                          ;; 0e:6a4c $f0 $3c
    sMSG                                               ;; 0e:6a4e $04
      db "<11>", $00                                   ;; 0e:6a4f
    sDELAY 60                                          ;; 0e:6a51 $f0 $3c
    sMSG                                               ;; 0e:6a53 $04
      db "<10><GIRL>:Mom_<12>"
      db "<11>", $00    ;; 0e:6a54
    sLOOP 8, 4                                         ;; 0e:6a5d $03 $08 $04
      sSFX 20                                          ;; 0e:6a60 $f9 $14
      sFLASH_SCREEN                                    ;; 0e:6a62 $bf
    sEND                                               ;; 0e:6a63 $00
    sSFX 37                                            ;; 0e:6a64 $f9 $25
    sSHAKE_SCREEN                                      ;; 0e:6a66 $fb
    sSET_MUSIC 9                                       ;; 0e:6a67 $f8 $09
    sSET_PLAYER_DIRECTION_DOWN                         ;; 0e:6a69 $85
    sFOLLOWER_DIRECTION_DOWN                           ;; 0e:6a6a $95
    sPLAYER_STEP_FORWARD                               ;; 0e:6a6b $80
    sPLAYER_STEP_FORWARD                               ;; 0e:6a6c $80
    sSET_PLAYER_DIRECTION_RIGHT                        ;; 0e:6a6d $86
    sFOLLOWER_STEP_FORWARD                             ;; 0e:6a6e $90
    sPLAYER_STEP_FORWARD                               ;; 0e:6a6f $80
    sFOLLOWER_STEP_FORWARD                             ;; 0e:6a70 $90
    sPLAYER_STEP_FORWARD                               ;; 0e:6a71 $80
    sSPAWN_NPC 0                                       ;; 0e:6a72 $fd $00
    sUNK_2A                                            ;; 0e:6a74 $2a
    sSET_NPC_2_DIRECTION_UP                            ;; 0e:6a75 $24
    sNPC_2_STEP_FORWARD                                ;; 0e:6a76 $20
    sMSG                                               ;; 0e:6a77 $04
      db "<10>Man:Glaive is\n attacking us!\nCibba:What?!<12>"
      db "<1b>Man:I'll take you\n to a safe place!\n<GIRL>:Thank you.<12>"
      db "<11>", $00 ;; 0e:6a78
    sSET_NPC_2_DIRECTION_DOWN                          ;; 0e:6abe $25
    sLOOP 3, 3                                         ;; 0e:6abf $03 $03 $03
      sNPC_2_STEP_FORWARD                              ;; 0e:6ac2 $20
      sFOLLOWER_STEP_FORWARD                           ;; 0e:6ac3 $90
    sEND                                               ;; 0e:6ac4 $00
    sDEL_NPC_2                                         ;; 0e:6ac5 $28
    sLOOP 2, 2                                         ;; 0e:6ac6 $03 $02 $02
      sFOLLOWER_STEP_FORWARD                           ;; 0e:6ac9 $90
    sEND                                               ;; 0e:6aca $00
    sFOLLOWER_DELETE                                   ;; 0e:6acb $98
    sSET_NPC_1_DIRECTION_DOWN                          ;; 0e:6acc $15
    sMSG                                               ;; 0e:6acd $04
      db "<10>Cibba:Where did\n he take her?!\n<BOY>:I'll check.<12>"
      db "<11>", $00 ;; 0e:6ace
    sLOAD_ROOM 1, $15, 9, 6                            ;; 0e:6af2 $f4 $01 $15 $09 $06
    sSFX 20                                            ;; 0e:6af7 $f9 $14
    sFLASH_SCREEN                                      ;; 0e:6af9 $bf
    sFLASH_SCREEN                                      ;; 0e:6afa $bf
    sSET_NPC_TYPES 36                                  ;; 0e:6afb $fc $24
    sSPAWN_NPC 2                                       ;; 0e:6afd $fd $02
    sCLEAR_FLAG wScriptFlags0A.1                       ;; 0e:6aff $db $51
    sSET_FLAG wScriptFlags02.0                         ;; 0e:6b01 $da $10
    sEND                                               ;; 0e:6b03 $00

script_053b:
    sSET_NPC_TYPES 55                                  ;; 0e:6b04 $fc $37
    sSPAWN_NPC 0                                       ;; 0e:6b06 $fd $00
    sSET_NPC_1_DIRECTION_UP                            ;; 0e:6b08 $14
    sMSG                                               ;; 0e:6b09 $04
      db "<10><BOY>:<GIRL>!", $00                      ;; 0e:6b0a
    sDELAY 20                                          ;; 0e:6b10 $f0 $14
    sMSG                                               ;; 0e:6b12 $04
      db " __?<12>"
      db "<11>", $00               ;; 0e:6b13
    sDELAY 20                                          ;; 0e:6b19 $f0 $14
    sFLASH_SCREEN                                      ;; 0e:6b1b $bf
    sLOOP 3, 13                                        ;; 0e:6b1c $03 $03 $0d
      sSET_NPC_1_DIRECTION_RIGHT                       ;; 0e:6b1f $16
      sDELAY 3                                         ;; 0e:6b20 $f0 $03
      sSET_NPC_1_DIRECTION_DOWN                        ;; 0e:6b22 $15
      sDELAY 3                                         ;; 0e:6b23 $f0 $03
      sSET_NPC_1_DIRECTION_LEFT                        ;; 0e:6b25 $17
      sDELAY 3                                         ;; 0e:6b26 $f0 $03
      sSET_NPC_1_DIRECTION_UP                          ;; 0e:6b28 $14
      sDELAY 3                                         ;; 0e:6b29 $f0 $03
    sEND                                               ;; 0e:6b2b $00
    sDEL_NPC_1                                         ;; 0e:6b2c $18
    sSET_NPC_TYPES 92                                  ;; 0e:6b2d $fc $5c
    sSPAWN_NPC 0                                       ;; 0e:6b2f $fd $00
    sLOOP 3, 13                                        ;; 0e:6b31 $03 $03 $0d
      sSET_NPC_1_DIRECTION_RIGHT                       ;; 0e:6b34 $16
      sDELAY 3                                         ;; 0e:6b35 $f0 $03
      sSET_NPC_1_DIRECTION_DOWN                        ;; 0e:6b37 $15
      sDELAY 3                                         ;; 0e:6b38 $f0 $03
      sSET_NPC_1_DIRECTION_LEFT                        ;; 0e:6b3a $17
      sDELAY 3                                         ;; 0e:6b3b $f0 $03
      sSET_NPC_1_DIRECTION_UP                          ;; 0e:6b3d $14
      sDELAY 3                                         ;; 0e:6b3e $f0 $03
    sEND                                               ;; 0e:6b40 $00
    sDELAY 50                                          ;; 0e:6b41 $f0 $32
    sSPAWN_NPC 1                                       ;; 0e:6b43 $fd $01
    sSET_NPC_2_DIRECTION_UP                            ;; 0e:6b45 $24
    sMSG                                               ;; 0e:6b46 $04
      db "<10><BOY>:Julius?!\n Why?  You helped\n me once before__<12>"
      db "<1b>Julius:I was not\n sure if she was\n the right girl<12>"
      db "<1b> or not until I\n saw what happened\n inside there.<12>"
      db "<1b> I was waiting\n for this chance\n to get her!<12>"
      db "<1b> And now__ Glaives\n have her in our\n hands!<12>"
      db "<11>", $00 ;; 0e:6b47
    sSET_NPC_1_DIRECTION_DOWN                          ;; 0e:6be5 $15
    sNPC_1_STEP_FORWARD                                ;; 0e:6be6 $10
    sNPC_2_STEP_BACKWARDS                              ;; 0e:6be7 $21
    sNPC_1_STEP_FORWARD                                ;; 0e:6be8 $10
    sNPC_2_STEP_BACKWARDS                              ;; 0e:6be9 $21
    sDEL_NPC_2                                         ;; 0e:6bea $28
    sPLAYER_STEP_FORWARD                               ;; 0e:6beb $80
    sPLAYER_STEP_FORWARD                               ;; 0e:6bec $80
    sMSG                                               ;; 0e:6bed $04
      db "<10><BOY>:<GIRL>!!<12>"
      db "<11>", $00 ;; 0e:6bee
    sDELAY 60                                          ;; 0e:6bf7 $f0 $3c
    sSET_NPC_1_DIRECTION_UP                            ;; 0e:6bf9 $14
    sDELAY 80                                          ;; 0e:6bfa $f0 $50
    sSFX 20                                            ;; 0e:6bfc $f9 $14
    sFLASH_SCREEN                                      ;; 0e:6bfe $bf
    sSFX 20                                            ;; 0e:6bff $f9 $14
    sCREATE_EFFECT $10, $08, $0c                       ;; 0e:6c01 $ba $10 $08 $0c
    sCREATE_EFFECT $10, $0a, $0a                       ;; 0e:6c05 $ba $10 $0a $0a
    sSET_FAST_MOVEMENT                                 ;; 0e:6c09 $88
    sSET_PLAYER_HURT_SPRITE                            ;; 0e:6c0a $a5
    sLOOP 7, 2                                         ;; 0e:6c0b $03 $07 $02
      sPLAYER_STEP_BACKWARD                            ;; 0e:6c0e $81
    sEND                                               ;; 0e:6c0f $00
    sCREATE_EFFECT $10, $09, $03                       ;; 0e:6c10 $ba $10 $09 $03
    sSFX 12                                            ;; 0e:6c14 $f9 $0c
    sLOOP 7, 2                                         ;; 0e:6c16 $03 $07 $02
      sPLAYER_STEP_FORWARD                             ;; 0e:6c19 $80
    sEND                                               ;; 0e:6c1a $00
    sCLEAR_FAST_MOVEMENT                               ;; 0e:6c1b $89
    sSET_PLAYER_LAYDOWN_SPRITE                         ;; 0e:6c1c $a6
    sSET_MUSIC 0                                       ;; 0e:6c1d $f8 $00
    sSET_PLAYER_DIRECTION_RIGHT                        ;; 0e:6c1f $86
    sSFX 20                                            ;; 0e:6c20 $f9 $14
    sDELAY 60                                          ;; 0e:6c22 $f0 $3c
    sNPC_1_STEP_FORWARD                                ;; 0e:6c24 $10
    sNPC_1_STEP_FORWARD                                ;; 0e:6c25 $10
    sMSG                                               ;; 0e:6c26 $04
      db "<10>Julius:You have\n no chance against\n me, my dear!<12>"
      db "<11>", $00 ;; 0e:6c27
    sSET_NPC_1_DIRECTION_DOWN                          ;; 0e:6c4c $15
    sNPC_1_STEP_FORWARD                                ;; 0e:6c4d $10
    sNPC_1_STEP_FORWARD                                ;; 0e:6c4e $10
    sDEL_NPC_1                                         ;; 0e:6c4f $18
    sDELAY 60                                          ;; 0e:6c50 $f0 $3c
    sMSG                                               ;; 0e:6c52 $04
      db "<10><BOY>:_ _ <GIRL> _<12>"
      db "<11>", $00 ;; 0e:6c53
    sDELAY 60                                          ;; 0e:6c60 $f0 $3c
    sFADE_TO_BLACK                                     ;; 0e:6c62 $bd
    sSET_FLAG wScriptFlags02.1                         ;; 0e:6c63 $da $11
    sLOAD_ROOM_INSTANT 4, $62, 7, 6                    ;; 0e:6c65 $f3 $04 $62 $07 $06
    sUNK_C5 5                                          ;; 0e:6c6a $c5 $05
    sSET_NPC_TYPES 55                                  ;; 0e:6c6c $fc $37
    sSPAWN_NPC 2                                       ;; 0e:6c6e $fd $02
    sSET_NPC_1_DIRECTION_LEFT                          ;; 0e:6c70 $17
    sDELAY 88                                          ;; 0e:6c71 $f0 $58
    sFADE_TO_NORMAL                                    ;; 0e:6c73 $bc
    sDELAY 50                                          ;; 0e:6c74 $f0 $32
    sMSG                                               ;; 0e:6c76 $04
      db "<10>Cibba:Alright?\n", $00                   ;; 0e:6c77
    sSET_PLAYER_NORMAL_SPRITE                          ;; 0e:6c85 $a4
    sSET_PLAYER_DIRECTION_RIGHT                        ;; 0e:6c86 $86
    sMSG                                               ;; 0e:6c87 $04
      db "<BOY>:_ _ <GIRL>!\n Where is she?<12>"
      db "<1b>Cibba:Julius took\n her to the west\n in his airship!<12>"
      db "<1b>", $00 ;; 0e:6c88
    sSET_MUSIC 11                                      ;; 0e:6cbe $f8 $0b
    sDELAY 30                                          ;; 0e:6cc0 $f0 $1e
    sMSG                                               ;; 0e:6cc2 $04
      db "<BOY>:I'm going_!\nCibba:Then take\n this with you.<12>"
      db "<1b>", $00 ;; 0e:6cc3
    sSFX 15                                            ;; 0e:6ce6 $f9 $0f
    sMSG                                               ;; 0e:6ce8 $04
      db "Received the Magic\nBook of Heal.\nLearned Heal!", $00 ;; 0e:6ce9
    sGIVE_MAGIC 1                                      ;; 0e:6d0a $d6 $01
    sMSG                                               ;; 0e:6d0c $04
      db "<12>"
      db "<1b> This magic will\n help you recover.\n<BOY>:Thanks.<12>"
      db "<11>", $00 ;; 0e:6d0d
    sEND                                               ;; 0e:6d31 $00

script_053c:
    sMSG                                               ;; 0e:6d32 $04
      db "Lester:Thank you.\n<BOY>:I'm sorry to\n tell you but__<12>"
      db "", $00 ;; 0e:6d33
    sSET_MUSIC 27                                      ;; 0e:6d53 $f8 $1b
    sMSG                                               ;; 0e:6d55 $04
      db "<1b> Amanda sacrificed\n her life to save\n you and all__<12>"
      db "<1b>Lester:To save me?\n __ Oh, Amanda__<12>"
      db "<1b> Will you please\n help me to avenge\n my sister?<12>"
      db "<1b><BOY>:Yes, Lester.\nLester:Thanks.\n Let's go, <BOY>!<12>"
      db "<11>", $00 ;; 0e:6d56
    sSFX 9                                             ;; 0e:6dd2 $f9 $09
    sDELAY 60                                          ;; 0e:6dd4 $f0 $3c
    sSFX 24                                            ;; 0e:6dd6 $f9 $18
    sSET_ROOM_TILE $02, 8, 6                           ;; 0e:6dd8 $b0 $02 $08 $06
    sDELAY 60                                          ;; 0e:6ddc $f0 $3c
    sMSG                                               ;; 0e:6dde $04
      db "<10><BOY>:Mystic tune?!\nLester:Yeah.<12>"
      db "<11>", $00 ;; 0e:6ddf
    sEND                                               ;; 0e:6df8 $00

script_053d:
    sMSG                                               ;; 0e:6df9 $04
      db "<BOY>:Amanda!\n Did you take the\n Pendant? __ Why?<12>"
      db "<1b>Amanda:I'm sorry.\n I had to bring\n it to Davias__<12>"
      db "<1b> That Pendant was\n to exchange for\n my brother. But__<12>"
      db "<1b> Davias cursed him\n and turned him\n into a parrot__!<12>"
      db "<1b> I must get the\n tears of Medusa\n to uncurse him!<12>"
      db "<1b><BOY>:_ Amanda__\n __ I'll help you.\nAmanda:Thank you.", $00 ;; 0e:6dfa
    sSET_FLAG wScriptFlags03.3                         ;; 0e:6ec3 $da $1b
    sEND                                               ;; 0e:6ec5 $00

script_053e:
    sSET_NPC_1_DIRECTION_LEFT                          ;; 0e:6ec6 $17
    sSET_MUSIC 0                                       ;; 0e:6ec7 $f8 $00
    sCREATE_EFFECT $10, $03, $02                       ;; 0e:6ec9 $ba $10 $03 $02
    sCREATE_EFFECT $10, $05, $04                       ;; 0e:6ecd $ba $10 $05 $04
    sCREATE_EFFECT $10, $04, $03                       ;; 0e:6ed1 $ba $10 $04 $03
    sDELAY 40                                          ;; 0e:6ed5 $f0 $28
    sLOOP 6, 2                                         ;; 0e:6ed7 $03 $06 $02
      sPLAYER_STEP_FORWARD                             ;; 0e:6eda $80
    sEND                                               ;; 0e:6edb $00
    sSET_PLAYER_DIRECTION_LEFT                         ;; 0e:6edc $87
    sMSG                                               ;; 0e:6edd $04
      db "<10>Bowow:Phew_!\n All done!", $00           ;; 0e:6ede
    sSET_MUSIC 5                                       ;; 0e:6ef1 $f8 $05
    sMSG                                               ;; 0e:6ef3 $04
      db "<12>"
      db "<1b> I mechanized his\n wounded legs.\n He's fine now!<12>"
      db "<1b> He can even go\n on water!<12>"
      db "<1b> I named him\n Chocobot!!\n How's that?<12>"
      db "<11>", $00 ;; 0e:6ef4
    sSET_NPC_1_DIRECTION_DOWN                          ;; 0e:6f49 $15
    sNPC_1_STEP_FORWARD                                ;; 0e:6f4a $10
    sNPC_1_STEP_FORWARD                                ;; 0e:6f4b $10
    sSET_NPC_1_DIRECTION_RIGHT                         ;; 0e:6f4c $16
    sLOOP 3, 2                                         ;; 0e:6f4d $03 $03 $02
      sNPC_1_STEP_FORWARD                              ;; 0e:6f50 $10
    sEND                                               ;; 0e:6f51 $00
    sSFX 7                                             ;; 0e:6f52 $f9 $07
    sDELAY 10                                          ;; 0e:6f54 $f0 $0a
    sSFX 7                                             ;; 0e:6f56 $f9 $07
    sDELAY 50                                          ;; 0e:6f58 $f0 $32
    sMSG                                               ;; 0e:6f5a $04
      db "<10><BOY>:Oh_ You_\nBowow:We all rely\n on you, kid!<12>"
      db "<11>", $00 ;; 0e:6f5b
    sSET_NPC_2_DIRECTION_RIGHT                         ;; 0e:6f7e $26
    sLOOP 4, 2                                         ;; 0e:6f7f $03 $04 $02
      sNPC_2_STEP_FORWARD                              ;; 0e:6f82 $20
    sEND                                               ;; 0e:6f83 $00
    sSET_NPC_2_DIRECTION_DOWN                          ;; 0e:6f84 $25
    sNPC_2_STEP_FORWARD                                ;; 0e:6f85 $20
    sNPC_2_STEP_FORWARD                                ;; 0e:6f86 $20
    sSET_PLAYER_DIRECTION_UP                           ;; 0e:6f87 $84
    sDELAY 40                                          ;; 0e:6f88 $f0 $28
    sMSG                                               ;; 0e:6f8a $04
      db "<10> Go talk to Bogard\n before you leave\n this town.<12>"
      db "<11>", $00 ;; 0e:6f8b
    sLOAD_ROOM 15, $26, 4, 12                          ;; 0e:6fae $f4 $0f $26 $04 $0c
    sSET_MUSIC 4                                       ;; 0e:6fb3 $f8 $04
    sSET_FLAG wScriptFlags0C.6                         ;; 0e:6fb5 $da $66
    sSET_FLAG wScriptFlags04.1                         ;; 0e:6fb7 $da $21
    sEND                                               ;; 0e:6fb9 $00

script_053f:
    sSET_MUSIC 0                                       ;; 0e:6fba $f8 $00
    sCREATE_EFFECT $10, $04, $04                       ;; 0e:6fbc $ba $10 $04 $04
    sCREATE_EFFECT $10, $0a, $08                       ;; 0e:6fc0 $ba $10 $0a $08
    sCREATE_EFFECT $10, $07, $03                       ;; 0e:6fc4 $ba $10 $07 $03
    sCREATE_EFFECT $10, $0d, $02                       ;; 0e:6fc8 $ba $10 $0d $02
    sLOOP 10, 4                                        ;; 0e:6fcc $03 $0a $04
      sFLASH_SCREEN                                    ;; 0e:6fcf $bf
      sSFX 20                                          ;; 0e:6fd0 $f9 $14
    sEND                                               ;; 0e:6fd2 $00
    sFADE_TO_BLACK                                     ;; 0e:6fd3 $bd
    sFOLLOWER_DELETE                                   ;; 0e:6fd4 $98
    sLOAD_ROOM_INSTANT 15, $05, 8, 9                   ;; 0e:6fd5 $f3 $0f $05 $08 $09
    sDELAY 255                                         ;; 0e:6fda $f0 $ff
    sUNK_DC                                            ;; 0e:6fdc $dc
    sSET_PLAYER_POSITION 8, 9                          ;; 0e:6fdd $8a $08 $09
    sSET_PLAYER_DIRECTION_RIGHT                        ;; 0e:6fe0 $86
    sSET_NPC_TYPES 98                                  ;; 0e:6fe1 $fc $62
    sDELAY 6                                           ;; 0e:6fe3 $f0 $06
    sSPAWN_NPC 0                                       ;; 0e:6fe5 $fd $00
    sSET_NPC_1_DIRECTION_DOWN                          ;; 0e:6fe7 $15
    sFADE_TO_NORMAL                                    ;; 0e:6fe8 $bc
    sDELAY 80                                          ;; 0e:6fe9 $f0 $50
    sMSG                                               ;; 0e:6feb $04
      db "<10>  The Mana Tree\n   disappeared.", $00   ;; 0e:6fec
    sDELAY 60                                          ;; 0e:7003 $f0 $3c
    sMSG                                               ;; 0e:7005 $04
      db "<1b><BOY>:Oh__ _\n<GIRL>:_ What am I\n supposed to do_?", $00 ;; 0e:7006
    sDELAY 80                                          ;; 0e:7027 $f0 $50
    sMSG                                               ;; 0e:7029 $04
      db "<11>", $00                                   ;; 0e:702a
    sDELAY 80                                          ;; 0e:702c $f0 $50
    sMSG                                               ;; 0e:702e $04
      db "<10> <GIRL>, my dear__\n", $00               ;; 0e:702f
    sDELAY 120                                         ;; 0e:703b $f0 $78
    sMSG                                               ;; 0e:703d $04
      db "<GIRL>:__", $00                              ;; 0e:703e
    sDELAY 80                                          ;; 0e:7042 $f0 $50
    sMSG                                               ;; 0e:7044 $04
      db " Mom?", $00                                  ;; 0e:7045
    sSET_MUSIC 3                                       ;; 0e:7049 $f8 $03
    sDELAY 80                                          ;; 0e:704b $f0 $50
    sMSG                                               ;; 0e:704d $04
      db "<11>", $00                                   ;; 0e:704e
    sSPAWN_NPC 2                                       ;; 0e:7050 $fd $02
    sDELAY 40                                          ;; 0e:7052 $f0 $28
    sSET_NPC_1_DIRECTION_UP                            ;; 0e:7054 $14
    sSET_PLAYER_DIRECTION_UP                           ;; 0e:7055 $84
    sDELAY 100                                         ;; 0e:7056 $f0 $64
    sNPC_1_STEP_FORWARD                                ;; 0e:7058 $10
    sPLAYER_STEP_FORWARD                               ;; 0e:7059 $80
    sNPC_1_STEP_FORWARD                                ;; 0e:705a $10
    sPLAYER_STEP_FORWARD                               ;; 0e:705b $80
    sDELAY 90                                          ;; 0e:705c $f0 $5a
    sMSG                                               ;; 0e:705e $04
      db "<10>Mother:Now that\n the Mana Tree is\n lost, we need_<12>"
      db "<1b> a new gemma of\n the Mana Tree.<12>"
      db "<1b><GIRL>:_ New tree?", $00 ;; 0e:705f
    sDELAY 40                                          ;; 0e:70a3 $f0 $28
    sMSG                                               ;; 0e:70a5 $04
      db "\nMother:Remember\n what I told you?<12>"
      db "<1b> We are the seeds\n of the Mana Tree.<12>"
      db "<1b> We will be a bud\n called Gemma and\n we become a tree.<12>"
      db "<1b> And the Gemma\n Knights fight to\n guard it.<12>"
      db "<1b> I became the\n Gemma last time\n we lost the Tree.<12>"
      db "<1b><GIRL>:That tree__?\n Was it you__?\nMother:_Yes, <GIRL>.<12>"
      db "<1b> But_ you are the\n last member of us\n Mana Family.<12>"
      db "<1b> To preserve the\n Mana Tree, we\n need you to stay<12>"
      db "<1b> here and become\n the gemma.\n But_ <GIRL>_<12>"
      db "<1b> Nobody else can\n decide for your\n life but you_", $00 ;; 0e:70a6
    sDELAY 80                                          ;; 0e:71d9 $f0 $50
    sMSG                                               ;; 0e:71db $04
      db "<11>", $00                                   ;; 0e:71dc
    sSET_MUSIC 0                                       ;; 0e:71de $f8 $00
    sDELAY 80                                          ;; 0e:71e0 $f0 $50
    sSET_NPC_1_DIRECTION_LEFT                          ;; 0e:71e2 $17
    sDELAY 80                                          ;; 0e:71e3 $f0 $50
    sSET_PLAYER_DIRECTION_RIGHT                        ;; 0e:71e5 $86
    sDELAY 200                                         ;; 0e:71e6 $f0 $c8
    sSET_NPC_1_DIRECTION_UP                            ;; 0e:71e8 $14
    sDELAY 100                                         ;; 0e:71e9 $f0 $64
    sEND                                               ;; 0e:71eb $00

script_0540:
    sMSG                                               ;; 0e:71ec $04
      db "<10><GIRL>:", $00                            ;; 0e:71ed
    sSET_MUSIC 1                                       ;; 0e:71f1 $f8 $01
    sMSG                                               ;; 0e:71f3 $04
      db "I will, Mom.", $00                           ;; 0e:71f4
    sSET_PLAYER_DIRECTION_UP                           ;; 0e:71fc $84
    sMSG                                               ;; 0e:71fd $04
      db "\n I will be the new\n Tree of Mana.", $00   ;; 0e:71fe
    sDELAY 120                                         ;; 0e:7214 $f0 $78
    sMSG                                               ;; 0e:7216 $04
      db "<1b> But if I am the\n last one left,\n when I fall_", $00 ;; 0e:7217
    sDELAY 100                                         ;; 0e:7236 $f0 $64
    sMSG                                               ;; 0e:7238 $04
      db "<1b>Mother:Yes_\n That will be the\n end of the peace_", $00 ;; 0e:7239
    sDELAY 120                                         ;; 0e:725a $f0 $78
    sSET_NPC_1_DIRECTION_LEFT                          ;; 0e:725c $17
    sMSG                                               ;; 0e:725d $04
      db "<1b><GIRL>:_ Bye_ <BOY>.\n Please go_ _\n I must stay here_", $00 ;; 0e:725e
    sDELAY 120                                         ;; 0e:7281 $f0 $78
    sSET_PLAYER_DIRECTION_RIGHT                        ;; 0e:7283 $86
    sMSG                                               ;; 0e:7284 $04
      db "<1b> __ Don't worry.\n I will be here\n as long as_", $00 ;; 0e:7285
    sDELAY 120                                         ;; 0e:72a5 $f0 $78
    sMSG                                               ;; 0e:72a7 $04
      db "<1b> _ you guard me\n from the evil__", $00  ;; 0e:72a8
    sDELAY 120                                         ;; 0e:72be $f0 $78
    sMSG                                               ;; 0e:72c0 $04
      db "<1b>", $00                                   ;; 0e:72c1
    sSET_PLAYER_DIRECTION_UP                           ;; 0e:72c3 $84
    sSET_NPC_1_DIRECTION_UP                            ;; 0e:72c4 $14
    sDELAY 40                                          ;; 0e:72c5 $f0 $28
    sMSG                                               ;; 0e:72c7 $04
      db "Mother:<BOY>__\n Please guard my\n daughter.", $00 ;; 0e:72c8
    sDELAY 120                                         ;; 0e:72e4 $f0 $78
    sMSG                                               ;; 0e:72e6 $04
      db "<1b> You are the only\n Gemma Knight for\n the Tree now__", $00 ;; 0e:72e7
    sDELAY 120                                         ;; 0e:7309 $f0 $78
    sMSG                                               ;; 0e:730b $04
      db "<1b>Mother:I will be\n withering soon_", $00 ;; 0e:730c
    sDELAY 120                                         ;; 0e:7323 $f0 $78
    sMSG                                               ;; 0e:7325 $04
      db "<1b> Please tell my\n Gemma Knights\n that I said_", $00 ;; 0e:7326
    sDELAY 120                                         ;; 0e:7345 $f0 $78
    sMSG                                               ;; 0e:7347 $04
      db "<1b> good-bye and\n thanks to them.", $00    ;; 0e:7348
    sDELAY 120                                         ;; 0e:735e $f0 $78
    sMSG                                               ;; 0e:7360 $04
      db "<11>", $00                                   ;; 0e:7361
    sLOOP 6, 4                                         ;; 0e:7363 $03 $06 $04
      sSFX 20                                          ;; 0e:7366 $f9 $14
      sFLASH_SCREEN                                    ;; 0e:7368 $bf
    sEND                                               ;; 0e:7369 $00
    sMSG                                               ;; 0e:736a $04
      db "<10>Mother:_ Good-bye_", $00                 ;; 0e:736b
    sDELAY 70                                          ;; 0e:737b $f0 $46
    sMSG                                               ;; 0e:737d $04
      db "<1b>", $00                                   ;; 0e:737e
    sSET_PLAYER_DIRECTION_RIGHT                        ;; 0e:7380 $86
    sSET_NPC_1_DIRECTION_LEFT                          ;; 0e:7381 $17
    sMSG                                               ;; 0e:7382 $04
      db "<BOY>:_ <GIRL>_", $00                        ;; 0e:7383
    sDELAY 80                                          ;; 0e:738a $f0 $50
    sFLASH_SCREEN                                      ;; 0e:738c $bf
    sFLASH_SCREEN                                      ;; 0e:738d $bf
    sMSG                                               ;; 0e:738e $04
      db "\n<GIRL>:<BOY>__", $00                       ;; 0e:738f
    sDELAY 80                                          ;; 0e:7395 $f0 $50
    sFLASH_SCREEN                                      ;; 0e:7397 $bf
    sMSG                                               ;; 0e:7398 $04
      db "<11>", $00                                   ;; 0e:7399
    sDELAY 90                                          ;; 0e:739b $f0 $5a
    sSET_NPC_1_DIRECTION_UP                            ;; 0e:739d $14
    sSET_NPC_2_DIRECTION_LEFT                          ;; 0e:739e $27
    sNPC_2_STEP_FORWARD                                ;; 0e:739f $20
    sLOOP 4, 2                                         ;; 0e:73a0 $03 $04 $02
      sNPC_1_STEP_FORWARD                              ;; 0e:73a3 $10
    sEND                                               ;; 0e:73a4 $00
    sDELAY 50                                          ;; 0e:73a5 $f0 $32
    sSET_NPC_1_DIRECTION_LEFT                          ;; 0e:73a7 $17
    sDELAY 30                                          ;; 0e:73a8 $f0 $1e
    sSET_NPC_1_DIRECTION_DOWN                          ;; 0e:73aa $15
    sSET_PLAYER_DIRECTION_UP                           ;; 0e:73ab $84
    sFLASH_SCREEN                                      ;; 0e:73ac $bf
    sFLASH_SCREEN                                      ;; 0e:73ad $bf
    sMSG                                               ;; 0e:73ae $04
      db "<10><GIRL>:Good-bye.", $00                   ;; 0e:73af
    sDELAY 70                                          ;; 0e:73ba $f0 $46
    sMSG                                               ;; 0e:73bc $04
      db "\n<BOY>:_ <GIRL>_\n Good_ bye_", $00         ;; 0e:73bd
    sDELAY 120                                         ;; 0e:73ce $f0 $78
    sMSG                                               ;; 0e:73d0 $04
      db "<11>", $00                                   ;; 0e:73d1
    sLOOP 5, 2                                         ;; 0e:73d3 $03 $05 $02
      sFLASH_SCREEN                                    ;; 0e:73d6 $bf
    sEND                                               ;; 0e:73d7 $00
    sFADE_TO_BLACK                                     ;; 0e:73d8 $bd
    sLOAD_ROOM_INSTANT 15, $55, 20, 0                  ;; 0e:73d9 $f3 $0f $55 $14 $00
    sUNK_B6                                            ;; 0e:73de $b6
    sFADE_TO_NORMAL                                    ;; 0e:73df $bc
    sDELAY 60                                          ;; 0e:73e0 $f0 $3c
    sSET_MUSIC 0                                       ;; 0e:73e2 $f8 $00
    sMSG                                               ;; 0e:73e4 $04
      db "<10>", $00                                   ;; 0e:73e5
    sDELAY 60                                          ;; 0e:73e7 $f0 $3c
    sMSG                                               ;; 0e:73e9 $04
      db "     Good-bye_", $00                         ;; 0e:73ea
    sDELAY 60                                          ;; 0e:73f5 $f0 $3c
    sMSG                                               ;; 0e:73f7 $04
      db "\n     _", $00                               ;; 0e:73f8
    sDELAY 40                                          ;; 0e:73fe $f0 $28
    sMSG                                               ;; 0e:7400 $04
      db "<GIRL>__", $00                               ;; 0e:7401
    sDELAY 130                                         ;; 0e:7404 $f0 $82
    sMSG                                               ;; 0e:7406 $04
      db "<11>", $00                                   ;; 0e:7407
    sDELAY 100                                         ;; 0e:7409 $f0 $64
    sEND                                               ;; 0e:740b $00

script_0541:
    sDELAY 100                                         ;; 0e:740c $f0 $64
    sSET_MUSIC 21                                      ;; 0e:740e $f8 $15
    sDELAY 120                                         ;; 0e:7410 $f0 $78
    sMSG                                               ;; 0e:7412 $04
      db "<10>Gemma_\nThe guardian of\nthe peaceful land_", $00 ;; 0e:7413
    sDELAY 150                                         ;; 0e:7432 $f0 $96
    sMSG                                               ;; 0e:7434 $04
      db "<1b>The new Gemma\nmust not be lost\never after_", $00 ;; 0e:7435
    sDELAY 150                                         ;; 0e:7454 $f0 $96
    sMSG                                               ;; 0e:7456 $04
      db "<1b>We all must\nkeep it forever_", $00      ;; 0e:7457
    sDELAY 150                                         ;; 0e:746d $f0 $96
    sMSG                                               ;; 0e:746f $04
      db "<1b>And you, <BOY>,\nare the only\nGemma Knight now_", $00 ;; 0e:7470
    sDELAY 150                                         ;; 0e:748f $f0 $96
    sMSG                                               ;; 0e:7491 $04
      db "<11>", $00                                   ;; 0e:7492
    sFADE_TO_BLACK                                     ;; 0e:7494 $bd
    sLOAD_ROOM_INSTANT 15, $06, 20, 0                  ;; 0e:7495 $f3 $0f $06 $14 $00
    sSET_NPC_TYPES 100                                 ;; 0e:749a $fc $64
    sSPAWN_NPC 1                                       ;; 0e:749c $fd $01
    sSPAWN_NPC 2                                       ;; 0e:749e $fd $02
    sSET_NPC_1_DIRECTION_LEFT                          ;; 0e:74a0 $17
    sSET_NPC_2_DIRECTION_LEFT                          ;; 0e:74a1 $27
    sDELAY 100                                         ;; 0e:74a2 $f0 $64
    sFADE_TO_NORMAL                                    ;; 0e:74a4 $bc
    sDELAY 100                                         ;; 0e:74a5 $f0 $64
    sSET_PLAYER_DIRECTION_RIGHT                        ;; 0e:74a7 $86
    sSET_PLAYER_POSITION 0, 7                          ;; 0e:74a8 $8a $00 $07
    sLOOP 8, 2                                         ;; 0e:74ab $03 $08 $02
      sPLAYER_STEP_FORWARD                             ;; 0e:74ae $80
    sEND                                               ;; 0e:74af $00
    sDELAY 110                                         ;; 0e:74b0 $f0 $6e
    sMSG                                               ;; 0e:74b2 $04
      db "<10>TRANSLATION\n  KAORU MORIYAMA", $00      ;; 0e:74b3
    sDELAY 255                                         ;; 0e:74cf $f0 $ff
    sDELAY 20                                          ;; 0e:74d1 $f0 $14
    sMSG                                               ;; 0e:74d3 $04
      db "<11>", $00                                   ;; 0e:74d4
    sDELAY 90                                          ;; 0e:74d6 $f0 $5a
    sSPAWN_NPC 0                                       ;; 0e:74d8 $fd $00
    sSET_NPC_3_DIRECTION_RIGHT                         ;; 0e:74da $36
    sLOOP 6, 2                                         ;; 0e:74db $03 $06 $02
      sNPC_3_STEP_FORWARD                              ;; 0e:74de $30
    sEND                                               ;; 0e:74df $00
    sDELAY 60                                          ;; 0e:74e0 $f0 $3c
    sSET_PLAYER_DIRECTION_DOWN                         ;; 0e:74e2 $85
    sDELAY 30                                          ;; 0e:74e3 $f0 $1e
    sSET_PLAYER_DIRECTION_LEFT                         ;; 0e:74e5 $87
    sDELAY 80                                          ;; 0e:74e6 $f0 $50
    sMSG                                               ;; 0e:74e8 $04
      db "<10>MAIN PROGRAM\n SATORU YOSHIEDA", $00     ;; 0e:74e9
    sDELAY 255                                         ;; 0e:7507 $f0 $ff
    sDELAY 20                                          ;; 0e:7509 $f0 $14
    sMSG                                               ;; 0e:750b $04
      db "<11>", $00                                   ;; 0e:750c
    sDELAY 100                                         ;; 0e:750e $f0 $64
    sMSG                                               ;; 0e:7510 $04
      db "<10>PROGRAM\n  MASAAKI SAITOH", $00          ;; 0e:7511
    sDELAY 255                                         ;; 0e:7529 $f0 $ff
    sDELAY 20                                          ;; 0e:752b $f0 $14
    sMSG                                               ;; 0e:752d $04
      db "<11>", $00                                   ;; 0e:752e
    sDELAY 70                                          ;; 0e:7530 $f0 $46
    sFADE_TO_BLACK                                     ;; 0e:7532 $bd
    sLOAD_ROOM_INSTANT 10, $26, 20, 0                  ;; 0e:7533 $f3 $0a $26 $14 $00
    sUNK_A3                                            ;; 0e:7538 $a3
    sSET_PLAYER_DIRECTION_RIGHT                        ;; 0e:7539 $86
    sSET_NPC_TYPES 102                                 ;; 0e:753a $fc $66
    sSPAWN_NPC 0                                       ;; 0e:753c $fd $00
    sSET_NPC_1_DIRECTION_LEFT                          ;; 0e:753e $17
    sDELAY 100                                         ;; 0e:753f $f0 $64
    sFADE_TO_NORMAL                                    ;; 0e:7541 $bc
    sLOOP 5, 2                                         ;; 0e:7542 $03 $05 $02
      sNPC_1_STEP_FORWARD                              ;; 0e:7545 $10
    sEND                                               ;; 0e:7546 $00
    sDELAY 30                                          ;; 0e:7547 $f0 $1e
    sSET_PLAYER_POSITION 0, 6                          ;; 0e:7549 $8a $00 $06
    sLOOP 8, 2                                         ;; 0e:754c $03 $08 $02
      sPLAYER_STEP_FORWARD                             ;; 0e:754f $80
    sEND                                               ;; 0e:7550 $00
    sNPC_1_STEP_BACKWARDS                              ;; 0e:7551 $11
    sSET_ROOM_TILE $73, 3, 2                           ;; 0e:7552 $b0 $73 $03 $02
    sSET_ROOM_TILE $4d, 6, 3                           ;; 0e:7556 $b0 $4d $06 $03
    sLOOP 4, 2                                         ;; 0e:755a $03 $04 $02
      sPLAYER_STEP_FORWARD                             ;; 0e:755d $80
    sEND                                               ;; 0e:755e $00
    sSET_PLAYER_DIRECTION_DOWN                         ;; 0e:755f $85
    sLOOP 8, 2                                         ;; 0e:7560 $03 $08 $02
      sPLAYER_STEP_FORWARD                             ;; 0e:7563 $80
    sEND                                               ;; 0e:7564 $00
    sSET_PLAYER_POSITION 20, 0                         ;; 0e:7565 $8a $14 $00
    sSET_NPC_1_DIRECTION_DOWN                          ;; 0e:7568 $15
    sDELAY 100                                         ;; 0e:7569 $f0 $64
    sMSG                                               ;; 0e:756b $04
      db "<10>MUSIC COMPOSER\n    KENJI ITO", $00      ;; 0e:756c
    sDELAY 255                                         ;; 0e:7587 $f0 $ff
    sDELAY 20                                          ;; 0e:7589 $f0 $14
    sMSG                                               ;; 0e:758b $04
      db "<11>", $00                                   ;; 0e:758c
    sDELAY 70                                          ;; 0e:758e $f0 $46
    sFADE_TO_BLACK                                     ;; 0e:7590 $bd
    sLOAD_ROOM_INSTANT 14, $16, 9, 12                  ;; 0e:7591 $f3 $0e $16 $09 $0c
    sSET_NPC_TYPES 87                                  ;; 0e:7596 $fc $57
    sSPAWN_NPC 2                                       ;; 0e:7598 $fd $02
    sSET_NPC_1_POSITION 9, 2                           ;; 0e:759a $19 $09 $02
    sSET_PLAYER_NORMAL_SPRITE                          ;; 0e:759d $a4
    sSET_PLAYER_DIRECTION_UP                           ;; 0e:759e $84
    sDELAY 90                                          ;; 0e:759f $f0 $5a
    sFADE_TO_NORMAL                                    ;; 0e:75a1 $bc
    sDELAY 60                                          ;; 0e:75a2 $f0 $3c
    sLOOP 3, 2                                         ;; 0e:75a4 $03 $03 $02
      sNPC_1_STEP_FORWARD                              ;; 0e:75a7 $10
    sEND                                               ;; 0e:75a8 $00
    sLOOP 5, 2                                         ;; 0e:75a9 $03 $05 $02
      sPLAYER_STEP_FORWARD                             ;; 0e:75ac $80
    sEND                                               ;; 0e:75ad $00
    sDELAY 100                                         ;; 0e:75ae $f0 $64
    sMSG                                               ;; 0e:75b0 $04
      db "<10>GRAPHICS\n  KAZUKO SHIBUYA", $00         ;; 0e:75b1
    sDELAY 255                                         ;; 0e:75ca $f0 $ff
    sDELAY 20                                          ;; 0e:75cc $f0 $14
    sMSG                                               ;; 0e:75ce $04
      db "<11>", $00                                   ;; 0e:75cf
    sDELAY 90                                          ;; 0e:75d1 $f0 $5a
    sMSG                                               ;; 0e:75d3 $04
      db "<10>GRAPHIC ASSIST\n    HIROMI ITO", $00     ;; 0e:75d4
    sDELAY 255                                         ;; 0e:75f0 $f0 $ff
    sDELAY 20                                          ;; 0e:75f2 $f0 $14
    sMSG                                               ;; 0e:75f4 $04
      db "<11>", $00                                   ;; 0e:75f5
    sDELAY 70                                          ;; 0e:75f7 $f0 $46
    sFADE_TO_BLACK                                     ;; 0e:75f9 $bd
    sLOAD_ROOM_INSTANT 14, $04, 20, 0                  ;; 0e:75fa $f3 $0e $04 $14 $00
    sSET_NPC_TYPES 103                                 ;; 0e:75ff $fc $67
    sSPAWN_NPC 1                                       ;; 0e:7601 $fd $01
    sSET_NPC_1_POSITION 12, 5                          ;; 0e:7603 $19 $0c $05
    sDELAY 100                                         ;; 0e:7606 $f0 $64
    sFADE_TO_NORMAL                                    ;; 0e:7608 $bc
    sDELAY 60                                          ;; 0e:7609 $f0 $3c
    sSET_PLAYER_DIRECTION_UP                           ;; 0e:760b $84
    sSET_PLAYER_POSITION 12, 14                        ;; 0e:760c $8a $0c $0e
    sLOOP 7, 2                                         ;; 0e:760f $03 $07 $02
      sPLAYER_STEP_FORWARD                             ;; 0e:7612 $80
    sEND                                               ;; 0e:7613 $00
    sDELAY 90                                          ;; 0e:7614 $f0 $5a
    sMSG                                               ;; 0e:7616 $04
      db "<10>SCENARIO\n YOSHINORI KITASE", $00        ;; 0e:7617
    sDELAY 255                                         ;; 0e:7632 $f0 $ff
    sDELAY 20                                          ;; 0e:7634 $f0 $14
    sMSG                                               ;; 0e:7636 $04
      db "<11>", $00                                   ;; 0e:7637
    sDELAY 100                                         ;; 0e:7639 $f0 $64
    sMSG                                               ;; 0e:763b $04
      db "<10>MAP DESIGN\n   GORO OHASHI", $00         ;; 0e:763c
    sDELAY 255                                         ;; 0e:7655 $f0 $ff
    sDELAY 20                                          ;; 0e:7657 $f0 $14
    sMSG                                               ;; 0e:7659 $04
      db "<11>", $00                                   ;; 0e:765a
    sDELAY 90                                          ;; 0e:765c $f0 $5a
    sSPAWN_NPC 0                                       ;; 0e:765e $fd $00
    sSET_NPC_2_DIRECTION_LEFT                          ;; 0e:7660 $27
    sLOOP 4, 2                                         ;; 0e:7661 $03 $04 $02
      sNPC_2_STEP_FORWARD                              ;; 0e:7664 $20
    sEND                                               ;; 0e:7665 $00
    sSET_NPC_2_DIRECTION_DOWN                          ;; 0e:7666 $25
    sNPC_2_STEP_FORWARD                                ;; 0e:7667 $20
    sDELAY 90                                          ;; 0e:7668 $f0 $5a
    sMSG                                               ;; 0e:766a $04
      db "<10>DIRECTOR\n   KOICHI ISHII", $00          ;; 0e:766b
    sDELAY 255                                         ;; 0e:7683 $f0 $ff
    sDELAY 20                                          ;; 0e:7685 $f0 $14
    sMSG                                               ;; 0e:7687 $04
      db "<11>", $00                                   ;; 0e:7688
    sDELAY 70                                          ;; 0e:768a $f0 $46
    sFADE_TO_BLACK                                     ;; 0e:768c $bd
    sLOAD_ROOM_INSTANT 1, $65, 4, 6                    ;; 0e:768d $f3 $01 $65 $04 $06
    sSET_PLAYER_DIRECTION_RIGHT                        ;; 0e:7692 $86
    sSET_NPC_TYPES 104                                 ;; 0e:7693 $fc $68
    sSPAWN_NPC 0                                       ;; 0e:7695 $fd $00
    sSPAWN_NPC 1                                       ;; 0e:7697 $fd $01
    sSET_NPC_1_POSITION 6, 6                           ;; 0e:7699 $19 $06 $06
    sSET_NPC_2_POSITION 16, 6                          ;; 0e:769c $29 $10 $06
    sSET_NPC_1_DIRECTION_RIGHT                         ;; 0e:769f $16
    sSET_NPC_2_DIRECTION_RIGHT                         ;; 0e:76a0 $26
    sDELAY 90                                          ;; 0e:76a1 $f0 $5a
    sFADE_TO_NORMAL                                    ;; 0e:76a3 $bc
    sDELAY 90                                          ;; 0e:76a4 $f0 $5a
    sLOOP 4, 2                                         ;; 0e:76a6 $03 $04 $02
      sNPC_1_STEP_FORWARD                              ;; 0e:76a9 $10
    sEND                                               ;; 0e:76aa $00
    sSET_NPC_2_DIRECTION_LEFT                          ;; 0e:76ab $27
    sDELAY 140                                         ;; 0e:76ac $f0 $8c
    sSET_NPC_1_DIRECTION_LEFT                          ;; 0e:76ae $17
    sDELAY 80                                          ;; 0e:76af $f0 $50
    sLOOP 4, 2                                         ;; 0e:76b1 $03 $04 $02
      sPLAYER_STEP_FORWARD                             ;; 0e:76b4 $80
    sEND                                               ;; 0e:76b5 $00
    sDELAY 90                                          ;; 0e:76b6 $f0 $5a
    sSET_NPC_1_DIRECTION_RIGHT                         ;; 0e:76b8 $16
    sLOOP 4, 2                                         ;; 0e:76b9 $03 $04 $02
      sNPC_1_STEP_FORWARD                              ;; 0e:76bc $10
    sEND                                               ;; 0e:76bd $00
    sDELAY 100                                         ;; 0e:76be $f0 $64
    sSET_NPC_2_DIRECTION_DOWN                          ;; 0e:76c0 $25
    sNPC_2_STEP_FORWARD                                ;; 0e:76c1 $20
    sNPC_2_STEP_FORWARD                                ;; 0e:76c2 $20
    sSET_NPC_1_DIRECTION_DOWN                          ;; 0e:76c3 $15
    sSET_NPC_2_DIRECTION_LEFT                          ;; 0e:76c4 $27
    sNPC_2_STEP_FORWARD                                ;; 0e:76c5 $20
    sNPC_2_STEP_FORWARD                                ;; 0e:76c6 $20
    sSET_NPC_1_DIRECTION_LEFT                          ;; 0e:76c7 $17
    sDELAY 100                                         ;; 0e:76c8 $f0 $64
    sMSG                                               ;; 0e:76ca $04
      db "<10>\n      SQUARE", $00                     ;; 0e:76cb
    sDELAY 30                                          ;; 0e:76d7 $f0 $1e
    sDELAY 255                                         ;; 0e:76d9 $f0 $ff
    sMSG                                               ;; 0e:76db $04
      db "<11>", $00                                   ;; 0e:76dc
    sDELAY 70                                          ;; 0e:76de $f0 $46
    sPLAYER_STEP_BACKWARD                              ;; 0e:76e0 $81
    sPLAYER_STEP_BACKWARD                              ;; 0e:76e1 $81
    sDELAY 90                                          ;; 0e:76e2 $f0 $5a
    sSET_PLAYER_DIRECTION_LEFT                         ;; 0e:76e4 $87
    sDELAY 10                                          ;; 0e:76e5 $f0 $0a
    sLOOP 4, 2                                         ;; 0e:76e7 $03 $04 $02
      sPLAYER_STEP_FORWARD                             ;; 0e:76ea $80
    sEND                                               ;; 0e:76eb $00
    sFADE_TO_BLACK                                     ;; 0e:76ec $bd
    sLOAD_ROOM_INSTANT 7, $01, 20, 0                   ;; 0e:76ed $f3 $07 $01 $14 $00
    sDELAY 130                                         ;; 0e:76f2 $f0 $82
    sFADE_TO_NORMAL                                    ;; 0e:76f4 $bc
    sDELAY 110                                         ;; 0e:76f5 $f0 $6e
    sSET_ROOM_TILE $24, 7, 5                           ;; 0e:76f7 $b0 $24 $07 $05
    sDELAY 6                                           ;; 0e:76fb $f0 $06
    sSET_ROOM_TILE $25, 7, 5                           ;; 0e:76fd $b0 $25 $07 $05
    sDELAY 6                                           ;; 0e:7701 $f0 $06
    sSET_ROOM_TILE $26, 7, 5                           ;; 0e:7703 $b0 $26 $07 $05
    sDELAY 6                                           ;; 0e:7707 $f0 $06
    sSET_ROOM_TILE $27, 7, 5                           ;; 0e:7709 $b0 $27 $07 $05
    sDELAY 6                                           ;; 0e:770d $f0 $06
    sSET_ROOM_TILE $1e, 7, 5                           ;; 0e:770f $b0 $1e $07 $05
    sEND                                               ;; 0e:7713 $00

script_0542:
    sSET_MUSIC 10                                      ;; 0e:7714 $f8 $0a
    sDELAY 60                                          ;; 0e:7716 $f0 $3c
    sPLAYER_STEP_FORWARD                               ;; 0e:7718 $80
    sPLAYER_STEP_FORWARD                               ;; 0e:7719 $80
    sPLAYER_STEP_FORWARD                               ;; 0e:771a $80
    sSET_PLAYER_DIRECTION_UP                           ;; 0e:771b $84
    sLOOP 8, 2                                         ;; 0e:771c $03 $08 $02
      sPLAYER_STEP_FORWARD                             ;; 0e:771f $80
    sEND                                               ;; 0e:7720 $00
    sSET_PLAYER_DIRECTION_LEFT                         ;; 0e:7721 $87
    sPLAYER_STEP_FORWARD                               ;; 0e:7722 $80
    sPLAYER_STEP_FORWARD                               ;; 0e:7723 $80
    sPLAYER_STEP_FORWARD                               ;; 0e:7724 $80
    sSET_PLAYER_POSITION 20, 0                         ;; 0e:7725 $8a $14 $00
    sDELAY 90                                          ;; 0e:7728 $f0 $5a
    sSFX 37                                            ;; 0e:772a $f9 $25
    sSHAKE_SCREEN                                      ;; 0e:772c $fb
    sDELAY 20                                          ;; 0e:772d $f0 $14
    sSFX 9                                             ;; 0e:772f $f9 $09
    sLOOP 10, 8                                        ;; 0e:7731 $03 $0a $08
      sUNK_EF $06, $04                                 ;; 0e:7734 $ef $06 $04
      sSCROLL_ROOM_UP                                  ;; 0e:7737 $e9
      sSET_PLAYER_POSITION 20, 0                       ;; 0e:7738 $8a $14 $00
    sEND                                               ;; 0e:773b $00
    sSCROLL_ROOM_UP                                    ;; 0e:773c $e9
    sSET_PLAYER_POSITION 20, 0                         ;; 0e:773d $8a $14 $00
    sSET_PLAYER_DIRECTION_LEFT                         ;; 0e:7740 $87
    sSET_PLAYER_POSITION 6, 8                          ;; 0e:7741 $8a $06 $08
    sSFX 12                                            ;; 0e:7744 $f9 $0c
    sPLAYER_JUMP 104                                   ;; 0e:7746 $8b $68
    sDELAY 60                                          ;; 0e:7748 $f0 $3c
    sSET_MUSIC 22                                      ;; 0e:774a $f8 $16
    sUNK_AB                                            ;; 0e:774c $ab
    sEND                                               ;; 0e:774d $00

script_0543:
    sFLASH_SCREEN                                      ;; 0e:774e $bf
    sSET_ROOM_TILE $5c, 3, 3                           ;; 0e:774f $b0 $5c $03 $03
    sSFX 20                                            ;; 0e:7753 $f9 $14
    sSET_ROOM_TILE $5c, 4, 3                           ;; 0e:7755 $b0 $5c $04 $03
    sSFX 20                                            ;; 0e:7759 $f9 $14
    sSET_ROOM_TILE $5c, 5, 3                           ;; 0e:775b $b0 $5c $05 $03
    sSFX 20                                            ;; 0e:775f $f9 $14
    sSET_ROOM_TILE $5c, 6, 3                           ;; 0e:7761 $b0 $5c $06 $03
    sDELAY 30                                          ;; 0e:7765 $f0 $1e
    sFLASH_SCREEN                                      ;; 0e:7767 $bf
    sSET_ROOM_TILE $5c, 3, 2                           ;; 0e:7768 $b0 $5c $03 $02
    sSFX 20                                            ;; 0e:776c $f9 $14
    sSET_ROOM_TILE $5c, 4, 2                           ;; 0e:776e $b0 $5c $04 $02
    sSFX 20                                            ;; 0e:7772 $f9 $14
    sSET_ROOM_TILE $5c, 5, 2                           ;; 0e:7774 $b0 $5c $05 $02
    sSFX 20                                            ;; 0e:7778 $f9 $14
    sSET_ROOM_TILE $5c, 6, 2                           ;; 0e:777a $b0 $5c $06 $02
    sDELAY 30                                          ;; 0e:777e $f0 $1e
    sFLASH_SCREEN                                      ;; 0e:7780 $bf
    sSET_ROOM_TILE $5c, 3, 1                           ;; 0e:7781 $b0 $5c $03 $01
    sSFX 20                                            ;; 0e:7785 $f9 $14
    sSET_ROOM_TILE $5c, 4, 1                           ;; 0e:7787 $b0 $5c $04 $01
    sSFX 20                                            ;; 0e:778b $f9 $14
    sSET_ROOM_TILE $5c, 5, 1                           ;; 0e:778d $b0 $5c $05 $01
    sSFX 20                                            ;; 0e:7791 $f9 $14
    sSET_ROOM_TILE $5c, 6, 1                           ;; 0e:7793 $b0 $5c $06 $01
    sDELAY 30                                          ;; 0e:7797 $f0 $1e
    sFLASH_SCREEN                                      ;; 0e:7799 $bf
    sSET_ROOM_TILE $5c, 3, 0                           ;; 0e:779a $b0 $5c $03 $00
    sSFX 20                                            ;; 0e:779e $f9 $14
    sSET_ROOM_TILE $5c, 4, 0                           ;; 0e:77a0 $b0 $5c $04 $00
    sSFX 20                                            ;; 0e:77a4 $f9 $14
    sSET_ROOM_TILE $5c, 5, 0                           ;; 0e:77a6 $b0 $5c $05 $00
    sSFX 20                                            ;; 0e:77aa $f9 $14
    sSET_ROOM_TILE $5c, 6, 0                           ;; 0e:77ac $b0 $5c $06 $00
    sEND                                               ;; 0e:77b0 $00

script_0544:
    sSET_ROOM_TILE $6c, 3, 0                           ;; 0e:77b1 $b0 $6c $03 $00
    sSET_ROOM_TILE $72, 4, 0                           ;; 0e:77b5 $b0 $72 $04 $00
    sSET_ROOM_TILE $6c, 5, 0                           ;; 0e:77b9 $b0 $6c $05 $00
    sSET_ROOM_TILE $72, 6, 0                           ;; 0e:77bd $b0 $72 $06 $00
    sSET_ROOM_TILE $6c, 7, 0                           ;; 0e:77c1 $b0 $6c $07 $00
    sSET_ROOM_TILE $09, 3, 1                           ;; 0e:77c5 $b0 $09 $03 $01
    sSET_ROOM_TILE $55, 4, 1                           ;; 0e:77c9 $b0 $55 $04 $01
    sSET_ROOM_TILE $55, 5, 1                           ;; 0e:77cd $b0 $55 $05 $01
    sSET_ROOM_TILE $55, 6, 1                           ;; 0e:77d1 $b0 $55 $06 $01
    sSET_ROOM_TILE $0a, 7, 1                           ;; 0e:77d5 $b0 $0a $07 $01
    sSET_ROOM_TILE $09, 3, 2                           ;; 0e:77d9 $b0 $09 $03 $02
    sSET_ROOM_TILE $55, 4, 2                           ;; 0e:77dd $b0 $55 $04 $02
    sSET_ROOM_TILE $55, 5, 2                           ;; 0e:77e1 $b0 $55 $05 $02
    sSET_ROOM_TILE $55, 6, 2                           ;; 0e:77e5 $b0 $55 $06 $02
    sSET_ROOM_TILE $0a, 7, 2                           ;; 0e:77e9 $b0 $0a $07 $02
    sDELAY 15                                          ;; 0e:77ed $f0 $0f
    sFLASH_SCREEN                                      ;; 0e:77ef $bf
    sSFX 37                                            ;; 0e:77f0 $f9 $25
    sSET_ROOM_TILE $09, 3, 0                           ;; 0e:77f2 $b0 $09 $03 $00
    sSET_ROOM_TILE $55, 4, 0                           ;; 0e:77f6 $b0 $55 $04 $00
    sSET_ROOM_TILE $55, 5, 0                           ;; 0e:77fa $b0 $55 $05 $00
    sSET_ROOM_TILE $55, 6, 0                           ;; 0e:77fe $b0 $55 $06 $00
    sSET_ROOM_TILE $0a, 7, 0                           ;; 0e:7802 $b0 $0a $07 $00
    sSET_ROOM_TILE $09, 3, 1                           ;; 0e:7806 $b0 $09 $03 $01
    sSET_ROOM_TILE $55, 4, 1                           ;; 0e:780a $b0 $55 $04 $01
    sSET_ROOM_TILE $55, 5, 1                           ;; 0e:780e $b0 $55 $05 $01
    sSET_ROOM_TILE $55, 6, 1                           ;; 0e:7812 $b0 $55 $06 $01
    sSET_ROOM_TILE $0a, 7, 1                           ;; 0e:7816 $b0 $0a $07 $01
    sSET_ROOM_TILE $09, 3, 2                           ;; 0e:781a $b0 $09 $03 $02
    sSET_ROOM_TILE $55, 4, 2                           ;; 0e:781e $b0 $55 $04 $02
    sSET_ROOM_TILE $55, 5, 2                           ;; 0e:7822 $b0 $55 $05 $02
    sSET_ROOM_TILE $55, 6, 2                           ;; 0e:7826 $b0 $55 $06 $02
    sSET_ROOM_TILE $0a, 7, 2                           ;; 0e:782a $b0 $0a $07 $02
    sDELAY 15                                          ;; 0e:782e $f0 $0f
    sFLASH_SCREEN                                      ;; 0e:7830 $bf
    sSFX 37                                            ;; 0e:7831 $f9 $25
    sCALL script_0545                                  ;; 0e:7833 $02 $78 $3f
    sCALL script_0547                                  ;; 0e:7836 $02 $79 $86
    sDELAY 15                                          ;; 0e:7839 $f0 $0f
    sFLASH_SCREEN                                      ;; 0e:783b $bf
    sSFX 37                                            ;; 0e:783c $f9 $25
    sEND                                               ;; 0e:783e $00

script_0545:
    sLOOP 4, 197                                       ;; 0e:783f $03 $04 $c5
      sSET_ROOM_TILE $09, 3, 0                         ;; 0e:7842 $b0 $09 $03 $00
      sSET_ROOM_TILE $55, 4, 0                         ;; 0e:7846 $b0 $55 $04 $00
      sSET_ROOM_TILE $55, 5, 0                         ;; 0e:784a $b0 $55 $05 $00
      sSET_ROOM_TILE $55, 6, 0                         ;; 0e:784e $b0 $55 $06 $00
      sSET_ROOM_TILE $0a, 7, 0                         ;; 0e:7852 $b0 $0a $07 $00
      sSET_ROOM_TILE $09, 3, 1                         ;; 0e:7856 $b0 $09 $03 $01
      sSET_ROOM_TILE $55, 4, 1                         ;; 0e:785a $b0 $55 $04 $01
      sSET_ROOM_TILE $55, 5, 1                         ;; 0e:785e $b0 $55 $05 $01
      sSET_ROOM_TILE $55, 6, 1                         ;; 0e:7862 $b0 $55 $06 $01
      sSET_ROOM_TILE $0a, 7, 1                         ;; 0e:7866 $b0 $0a $07 $01
      sSET_ROOM_TILE $09, 3, 2                         ;; 0e:786a $b0 $09 $03 $02
      sSET_ROOM_TILE $55, 4, 2                         ;; 0e:786e $b0 $55 $04 $02
      sSET_ROOM_TILE $55, 5, 2                         ;; 0e:7872 $b0 $55 $05 $02
      sSET_ROOM_TILE $55, 6, 2                         ;; 0e:7876 $b0 $55 $06 $02
      sSET_ROOM_TILE $0a, 7, 2                         ;; 0e:787a $b0 $0a $07 $02
      sDELAY 15                                        ;; 0e:787e $f0 $0f
      sSFX 37                                          ;; 0e:7880 $f9 $25
      sSET_ROOM_TILE $09, 3, 0                         ;; 0e:7882 $b0 $09 $03 $00
      sSET_ROOM_TILE $55, 4, 0                         ;; 0e:7886 $b0 $55 $04 $00
      sSET_ROOM_TILE $55, 5, 0                         ;; 0e:788a $b0 $55 $05 $00
      sSET_ROOM_TILE $55, 6, 0                         ;; 0e:788e $b0 $55 $06 $00
      sSET_ROOM_TILE $0a, 7, 0                         ;; 0e:7892 $b0 $0a $07 $00
      sSET_ROOM_TILE $09, 3, 1                         ;; 0e:7896 $b0 $09 $03 $01
      sSET_ROOM_TILE $55, 4, 1                         ;; 0e:789a $b0 $55 $04 $01
      sSET_ROOM_TILE $55, 5, 1                         ;; 0e:789e $b0 $55 $05 $01
      sSET_ROOM_TILE $55, 6, 1                         ;; 0e:78a2 $b0 $55 $06 $01
      sSET_ROOM_TILE $0a, 7, 1                         ;; 0e:78a6 $b0 $0a $07 $01
      sSET_ROOM_TILE $09, 3, 2                         ;; 0e:78aa $b0 $09 $03 $02
      sSET_ROOM_TILE $79, 4, 2                         ;; 0e:78ae $b0 $79 $04 $02
      sSET_ROOM_TILE $79, 5, 2                         ;; 0e:78b2 $b0 $79 $05 $02
      sSET_ROOM_TILE $79, 6, 2                         ;; 0e:78b6 $b0 $79 $06 $02
      sSET_ROOM_TILE $0a, 7, 2                         ;; 0e:78ba $b0 $0a $07 $02
      sDELAY 15                                        ;; 0e:78be $f0 $0f
      sSFX 37                                          ;; 0e:78c0 $f9 $25
      sSET_ROOM_TILE $09, 3, 0                         ;; 0e:78c2 $b0 $09 $03 $00
      sSET_ROOM_TILE $55, 4, 0                         ;; 0e:78c6 $b0 $55 $04 $00
      sSET_ROOM_TILE $55, 5, 0                         ;; 0e:78ca $b0 $55 $05 $00
      sSET_ROOM_TILE $55, 6, 0                         ;; 0e:78ce $b0 $55 $06 $00
      sSET_ROOM_TILE $0a, 7, 0                         ;; 0e:78d2 $b0 $0a $07 $00
      sSET_ROOM_TILE $09, 3, 1                         ;; 0e:78d6 $b0 $09 $03 $01
      sSET_ROOM_TILE $79, 4, 1                         ;; 0e:78da $b0 $79 $04 $01
      sSET_ROOM_TILE $79, 5, 1                         ;; 0e:78de $b0 $79 $05 $01
      sSET_ROOM_TILE $79, 6, 1                         ;; 0e:78e2 $b0 $79 $06 $01
      sSET_ROOM_TILE $0a, 7, 1                         ;; 0e:78e6 $b0 $0a $07 $01
      sSET_ROOM_TILE $09, 3, 2                         ;; 0e:78ea $b0 $09 $03 $02
      sSET_ROOM_TILE $55, 4, 2                         ;; 0e:78ee $b0 $55 $04 $02
      sSET_ROOM_TILE $55, 5, 2                         ;; 0e:78f2 $b0 $55 $05 $02
      sSET_ROOM_TILE $55, 6, 2                         ;; 0e:78f6 $b0 $55 $06 $02
      sSET_ROOM_TILE $0a, 7, 2                         ;; 0e:78fa $b0 $0a $07 $02
      sDELAY 15                                        ;; 0e:78fe $f0 $0f
      sFLASH_SCREEN                                    ;; 0e:7900 $bf
      sSFX 37                                          ;; 0e:7901 $f9 $25
      sCALL script_0546                                ;; 0e:7903 $02 $79 $08
    sEND                                               ;; 0e:7906 $00
    sEND                                               ;; 0e:7907 $00

script_0546:
    sSET_ROOM_TILE $09, 3, 0                           ;; 0e:7908 $b0 $09 $03 $00
    sSET_ROOM_TILE $79, 4, 0                           ;; 0e:790c $b0 $79 $04 $00
    sSET_ROOM_TILE $79, 5, 0                           ;; 0e:7910 $b0 $79 $05 $00
    sSET_ROOM_TILE $79, 6, 0                           ;; 0e:7914 $b0 $79 $06 $00
    sSET_ROOM_TILE $0a, 7, 0                           ;; 0e:7918 $b0 $0a $07 $00
    sSET_ROOM_TILE $09, 3, 1                           ;; 0e:791c $b0 $09 $03 $01
    sSET_ROOM_TILE $55, 4, 1                           ;; 0e:7920 $b0 $55 $04 $01
    sSET_ROOM_TILE $55, 5, 1                           ;; 0e:7924 $b0 $55 $05 $01
    sSET_ROOM_TILE $55, 6, 1                           ;; 0e:7928 $b0 $55 $06 $01
    sSET_ROOM_TILE $0a, 7, 1                           ;; 0e:792c $b0 $0a $07 $01
    sSET_ROOM_TILE $09, 3, 2                           ;; 0e:7930 $b0 $09 $03 $02
    sSET_ROOM_TILE $55, 4, 2                           ;; 0e:7934 $b0 $55 $04 $02
    sSET_ROOM_TILE $55, 5, 2                           ;; 0e:7938 $b0 $55 $05 $02
    sSET_ROOM_TILE $55, 6, 2                           ;; 0e:793c $b0 $55 $06 $02
    sSET_ROOM_TILE $0a, 7, 2                           ;; 0e:7940 $b0 $0a $07 $02
    sDELAY 15                                          ;; 0e:7944 $f0 $0f
    sFLASH_SCREEN                                      ;; 0e:7946 $bf
    sSET_ROOM_TILE $09, 3, 0                           ;; 0e:7947 $b0 $09 $03 $00
    sSET_ROOM_TILE $55, 4, 0                           ;; 0e:794b $b0 $55 $04 $00
    sSET_ROOM_TILE $55, 5, 0                           ;; 0e:794f $b0 $55 $05 $00
    sSET_ROOM_TILE $55, 6, 0                           ;; 0e:7953 $b0 $55 $06 $00
    sSET_ROOM_TILE $0a, 7, 0                           ;; 0e:7957 $b0 $0a $07 $00
    sSET_ROOM_TILE $09, 3, 1                           ;; 0e:795b $b0 $09 $03 $01
    sSET_ROOM_TILE $55, 4, 1                           ;; 0e:795f $b0 $55 $04 $01
    sSET_ROOM_TILE $55, 5, 1                           ;; 0e:7963 $b0 $55 $05 $01
    sSET_ROOM_TILE $55, 6, 1                           ;; 0e:7967 $b0 $55 $06 $01
    sSET_ROOM_TILE $0a, 7, 1                           ;; 0e:796b $b0 $0a $07 $01
    sSET_ROOM_TILE $09, 3, 2                           ;; 0e:796f $b0 $09 $03 $02
    sSET_ROOM_TILE $55, 4, 2                           ;; 0e:7973 $b0 $55 $04 $02
    sSET_ROOM_TILE $55, 5, 2                           ;; 0e:7977 $b0 $55 $05 $02
    sSET_ROOM_TILE $55, 6, 2                           ;; 0e:797b $b0 $55 $06 $02
    sSET_ROOM_TILE $0a, 7, 2                           ;; 0e:797f $b0 $0a $07 $02
    sSFX 37                                            ;; 0e:7983 $f9 $25
    sEND                                               ;; 0e:7985 $00

script_0547:
    sSET_ROOM_TILE $09, 3, 0                           ;; 0e:7986 $b0 $09 $03 $00
    sSET_ROOM_TILE $55, 4, 0                           ;; 0e:798a $b0 $55 $04 $00
    sSET_ROOM_TILE $55, 5, 0                           ;; 0e:798e $b0 $55 $05 $00
    sSET_ROOM_TILE $55, 6, 0                           ;; 0e:7992 $b0 $55 $06 $00
    sSET_ROOM_TILE $0a, 7, 0                           ;; 0e:7996 $b0 $0a $07 $00
    sSET_ROOM_TILE $09, 3, 1                           ;; 0e:799a $b0 $09 $03 $01
    sSET_ROOM_TILE $55, 4, 1                           ;; 0e:799e $b0 $55 $04 $01
    sSET_ROOM_TILE $55, 5, 1                           ;; 0e:79a2 $b0 $55 $05 $01
    sSET_ROOM_TILE $55, 6, 1                           ;; 0e:79a6 $b0 $55 $06 $01
    sSET_ROOM_TILE $0a, 7, 1                           ;; 0e:79aa $b0 $0a $07 $01
    sSET_ROOM_TILE $19, 3, 2                           ;; 0e:79ae $b0 $19 $03 $02
    sSET_ROOM_TILE $54, 4, 2                           ;; 0e:79b2 $b0 $54 $04 $02
    sSET_ROOM_TILE $2e, 5, 2                           ;; 0e:79b6 $b0 $2e $05 $02
    sSET_ROOM_TILE $54, 6, 2                           ;; 0e:79ba $b0 $54 $06 $02
    sSET_ROOM_TILE $1a, 7, 2                           ;; 0e:79be $b0 $1a $07 $02
    sEND                                               ;; 0e:79c2 $00

script_0548:
    sFOLLOWER_DIRECTION_LEFT                           ;; 0e:79c3 $97
    sSET_MUSIC 0                                       ;; 0e:79c4 $f8 $00
    sFOLLOWER_SET_POSITION 4, 3                        ;; 0e:79c6 $99 $04 $03
    sFADE_TO_NORMAL                                    ;; 0e:79c9 $bc
    sDELAY 60                                          ;; 0e:79ca $f0 $3c
    sFOLLOWER_DIRECTION_RIGHT                          ;; 0e:79cc $96
    sMSG                                               ;; 0e:79cd $04
      db "<10><GIRL>:_ ", $00                          ;; 0e:79ce
    sDELAY 60                                          ;; 0e:79d4 $f0 $3c
    sMSG                                               ;; 0e:79d6 $04
      db "<BOY>_?\n", $00                              ;; 0e:79d7
    sSET_PLAYER_DIRECTION_LEFT                         ;; 0e:79dc $87
    sMSG                                               ;; 0e:79dd $04
      db "<BOY>:What?<12>"
      db "<1b><GIRL>:I think you\n should be able to\n use Cure Magic.<12>"
      db "<1b><BOY>:Yeah.\n It should help.\n<GIRL>:_ Read this!<12>"
      db "<1b>", $00 ;; 0e:79de
    sGIVE_MAGIC 0                                      ;; 0e:7a29 $d6 $00
    sSFX 15                                            ;; 0e:7a2b $f9 $0f
    sMSG                                               ;; 0e:7a2d $04
      db "Received the Magic\nBook of Cure.\nLearned Cure!<12>"
      db "<1b><GIRL>:Good night_", $00 ;; 0e:7a2e
    sDELAY 60                                          ;; 0e:7a59 $f0 $3c
    sFOLLOWER_DIRECTION_LEFT                           ;; 0e:7a5b $97
    sMSG                                               ;; 0e:7a5c $04
      db "\n<BOY>:_ Good night_<12>"
      db "<11>", $00 ;; 0e:7a5d
    sFADE_TO_BLACK                                     ;; 0e:7a6b $bd
    sFOLLOWER_DELETE                                   ;; 0e:7a6c $98
    sLOAD_ROOM_INSTANT 15, $55, 20, 0                  ;; 0e:7a6d $f3 $0f $55 $14 $00
    sFADE_TO_NORMAL                                    ;; 0e:7a72 $bc
    sDELAY 80                                          ;; 0e:7a73 $f0 $50
    sMSG                                               ;; 0e:7a75 $04
      db "<10> Ah!  New victim!", $00                  ;; 0e:7a76
    sDELAY 90                                          ;; 0e:7a88 $f0 $5a
    sMSG                                               ;; 0e:7a8a $04
      db "<11>", $00                                   ;; 0e:7a8b
    sDELAY 40                                          ;; 0e:7a8d $f0 $28
    sFADE_TO_BLACK                                     ;; 0e:7a8f $bd
    sLOAD_ROOM_INSTANT 3, $30, 8, 3                    ;; 0e:7a90 $f3 $03 $30 $08 $03
    sFADE_TO_NORMAL                                    ;; 0e:7a95 $bc
    sDELAY 20                                          ;; 0e:7a96 $f0 $14
    sPLAYER_STEP_FORWARD                               ;; 0e:7a98 $80
    sPLAYER_STEP_FORWARD                               ;; 0e:7a99 $80
    sSET_PLAYER_DIRECTION_DOWN                         ;; 0e:7a9a $85
    sMSG                                               ;; 0e:7a9b $04
      db "<10><BOY>:_ _ Good m_\n       ?!\n<GIRL> is missing!<12>"
      db "<11>", $00 ;; 0e:7a9c
    sCLEAR_FLAG wScriptFlags0A.1                       ;; 0e:7abb $db $51
    sSET_FLAG wScriptFlags01.5                         ;; 0e:7abd $da $0d
    sSET_MUSIC 7                                       ;; 0e:7abf $f8 $07
    sEND                                               ;; 0e:7ac1 $00

script_0549:
    sMSG                                               ;; 0e:7ac2 $04
      db "<10> One and only\n <AXE>Battle for only\n 150GP!  Want it?<12>"
      db "<13>", $00 ;; 0e:7ac3
    sIF_FLAG !wScriptFlags0F.7                         ;; 0e:7aeb $08 $ff $00 $38
      sMSG                                             ;; 0e:7aef $04
        db "<11>", $00                                 ;; 0e:7af0
      sTAKE_MONEY 150                                  ;; 0e:7af2 $d1 $96 $00
      sMSG                                             ;; 0e:7af5 $04
        db "<10>", $00                                 ;; 0e:7af6
      sIF_FLAG wScriptFlags.6                          ;; 0e:7af8 $08 $06 $00 $1e
        sMSG                                           ;; 0e:7afc $04
          db " Sorry!\n You don't have\n enough money!", $00 ;; 0e:7afd
      sELSE                                            ;; 0e:7b18 $01 $0a
        sMSG                                           ;; 0e:7b1a $04
          db " Great!", $00                            ;; 0e:7b1b
        sSFX 15                                        ;; 0e:7b20 $f9 $0f
        sGIVE_EQUIPMENT 1                              ;; 0e:7b22 $d8 $01
      sENDIF                                           ;; 0e:7b24
      sMSG                                             ;; 0e:7b24 $04
        db "<12>"
        db "", $00                   ;; 0e:7b25
    sENDIF                                             ;; 0e:7b27
    sMSG                                               ;; 0e:7b27 $04
      db "<1b> How about\n some items?<12>"
      db "<11>", $00 ;; 0e:7b28
    sEND                                               ;; 0e:7b3b $00
    db   $7b, $fc, $7b, $14, $7c, $18, $7c, $22        ;; 0e:7b3c ????????
    db   $7c, $a9, $7b, $44, $7c, $5d, $7c, $a9        ;; 0e:7b44 ????????
    db   $7b, $78, $7c, $90, $7c, $a9, $7b, $a9        ;; 0e:7b4c ????????
    db   $7b, $b7, $7c, $d9, $7c, $e4, $7c, $a9        ;; 0e:7b54 ????????
    db   $7b, $ff, $7c, $a9, $7b, $0d, $7d, $11        ;; 0e:7b5c ????????
    db   $7d, $31, $7d, $66, $7d, $8d, $7d, $9b        ;; 0e:7b64 ????????
    db   $7d, $d3, $7d, $f3, $7d, $a9, $7b, $27        ;; 0e:7b6c ????????
    db   $7e, $3f, $7e, $5f, $7e, $a9, $7b, $7d        ;; 0e:7b74 ????????
    db   $7e, $91, $7e, $9f, $7e, $a6, $7e, $c3        ;; 0e:7b7c ????????
    db   $7e, $d3, $7e, $dd, $7e, $a9, $7b, $fc        ;; 0e:7b84 ????????
    db   $7e, $0a, $7f, $22, $7f, $43, $7f, $4d        ;; 0e:7b8c ????????
    db   $7f, $a9, $7b, $a9, $7b, $a9, $7b, $a9        ;; 0e:7b94 ????????
    db   $7b, $a4, $7f, $ae, $7f, $b8, $7f, $a9        ;; 0e:7b9c ????????
    db   $7b, $cc, $7f, $a9, $7b, $00, $05, $44        ;; 0e:7ba4 ????????
    db   $00, $f3, $ff, $85, $29, $2f, $80, $f0        ;; 0e:7bac ????????
    db   $ff, $87, $04, $00, $00, $f0, $00, $80        ;; 0e:7bb4 ????????
    db   $09, $2b, $80, $f3, $ff, $86, $39, $2b        ;; 0e:7bbc ????????
    db   $00, $f3, $ff, $86, $00, $07, $da, $42        ;; 0e:7bc4 ????????
    db   $21, $f3, $7b, $04, $ca, $61, $09, $fc        ;; 0e:7bcc ????????
    db   $7c, $39, $f5, $35, $00, $f8, $02, $2a        ;; 0e:7bd4 ????????
    db   $80, $f3, $ff, $85, $01, $2f, $80, $f0        ;; 0e:7bdc ????????
    db   $ff, $87, $ef, $da, $7b, $00, $f8, $02        ;; 0e:7be4 ????????
    db   $f1, $42, $01, $a0, $00, $ef, $eb, $7b        ;; 0e:7bec ????????
    db   $00, $0f, $27, $80, $f7, $ee, $86, $00        ;; 0e:7bf4 ????????
    db   $f2, $06, $89, $12, $06, $39, $36, $06        ;; 0e:7bfc ????????
    db   $89, $62, $06, $29, $26, $ef, $fd, $7b        ;; 0e:7c04 ????????
    db   $00, $60, $27, $00, $ff, $00, $82, $00        ;; 0e:7c0c ????????
    db   $60, $58, $41, $00, $03, $f1, $6c, $01        ;; 0e:7c14 ????????
    db   $32, $11, $27, $f2, $32, $00, $02, $ca        ;; 0e:7c1c ????????
    db   $6a, $08, $fc, $7c, $30, $a7, $35, $00        ;; 0e:7c24 ????????
    db   $02, $00, $40, $fa, $a0, $87, $10, $00        ;; 0e:7c2c ????????
    db   $00, $a2, $e0, $87, $00, $f3, $23, $4d        ;; 0e:7c34 ????????
    db   $00, $d1, $00, $85, $ef, $3a, $7c, $00        ;; 0e:7c3c ????????
    db   $f3, $13, $91, $2b, $08, $91, $2a, $08        ;; 0e:7c44 ????????
    db   $91, $2a, $ef, $45, $7c, $00, $f6, $21        ;; 0e:7c4c ????????
    db   $75, $80, $f8, $ff, $80, $ef, $53, $7c        ;; 0e:7c54 ????????
    db   $00, $f6, $21, $f1, $5d, $ef, $5e, $7c        ;; 0e:7c5c ????????
    db   $00, $16, $57, $80, $f7, $f7, $86, $16        ;; 0e:7c64 ????????
    db   $47, $80, $94, $f7, $86, $16, $37, $80        ;; 0e:7c6c ????????
    db   $55, $f7, $86, $00, $1a, $f4, $37, $20        ;; 0e:7c74 ????????
    db   $f7, $10, $00, $f4, $05, $2f, $80, $f8        ;; 0e:7c7c ????????
    db   $ff, $87, $04, $3f, $80, $f8, $ff, $87        ;; 0e:7c84 ????????
    db   $ef, $80, $7c, $00, $05, $f8, $08, $22        ;; 0e:7c8c ????????
    db   $f3, $17, $00, $1a, $37, $80, $fd, $50        ;; 0e:7c94 ????????
    db   $87, $00, $17, $37, $80, $ff, $20, $86        ;; 0e:7c9c ????????
    db   $17, $37, $80, $cf, $50, $86, $17, $37        ;; 0e:7ca4 ????????
    db   $40, $9f, $80, $86, $17, $37, $00, $6f        ;; 0e:7cac ????????
    db   $b0, $86, $00, $f3, $03, $8f, $12, $05        ;; 0e:7cb4 ????????
    db   $89, $31, $03, $8f, $24, $05, $89, $31        ;; 0e:7cbc ????????
    db   $ef, $b8, $7c, $00, $f4, $05, $4d, $80        ;; 0e:7cc4 ????????
    db   $f1, $ff, $87, $08, $00, $80, $91, $ff        ;; 0e:7ccc ????????
    db   $86, $ef, $c9, $7c, $00, $f4, $05, $91        ;; 0e:7cd4 ????????
    db   $13, $08, $f7, $09, $ef, $da, $7c, $00        ;; 0e:7cdc ????????
    db   $04, $c1, $4b, $01, $01, $34, $04, $a1        ;; 0e:7ce4 ????????
    db   $34, $00, $f6, $01, $00, $40, $f0, $00        ;; 0e:7cec ????????
    db   $86, $01, $00, $80, $f0, $00, $87, $ef        ;; 0e:7cf4 ????????
    db   $ef, $7c, $00, $40, $2f, $32, $40, $f5        ;; 0e:7cfc ????????
    db   $32, $00, $17, $7c, $80, $f3, $aa, $86        ;; 0e:7d04 ????????
    db   $00, $20, $f2, $80, $00, $03, $f1, $31        ;; 0e:7d0c ????????
    db   $08, $05, $22, $04, $a1, $01, $04, $d1        ;; 0e:7d14 ????????
    db   $11, $04, $f1, $31, $f3, $02, $f1, $31        ;; 0e:7d1c ????????
    db   $08, $01, $44, $02, $f1, $31, $08, $01        ;; 0e:7d24 ????????
    db   $44, $ef, $21, $7d, $00, $03, $f1, $30        ;; 0e:7d2c ????????
    db   $01, $01, $33, $05, $f2, $33, $03, $81        ;; 0e:7d34 ????????
    db   $32, $03, $f1, $30, $01, $01, $43, $17        ;; 0e:7d3c ????????
    db   $f2, $33, $00, $04, $08, $00, $f9, $aa        ;; 0e:7d44 ????????
    db   $85, $13, $23, $80, $f2, $aa, $82, $13        ;; 0e:7d4c ????????
    db   $23, $40, $c2, $aa, $82, $13, $23, $00        ;; 0e:7d54 ????????
    db   $82, $aa, $82, $13, $23, $80, $53, $aa        ;; 0e:7d5c ????????
    db   $82, $00, $04, $f1, $35, $13, $f2, $3b        ;; 0e:7d64 ????????
    db   $13, $c3, $3b, $13, $84, $3b, $13, $55        ;; 0e:7d6c ????????
    db   $3b, $00, $f2, $04, $2a, $80, $f1, $aa        ;; 0e:7d74 ????????
    db   $85, $01, $22, $80, $02, $aa, $82, $0a        ;; 0e:7d7c ????????
    db   $23, $40, $f2, $aa, $82, $ef, $77, $7d        ;; 0e:7d84 ????????
    db   $00, $f2, $04, $f1, $3d, $01, $f2, $33        ;; 0e:7d8c ????????
    db   $0a, $f1, $43, $ef, $8e, $7d, $00, $06        ;; 0e:7d94 ????????
    db   $19, $25, $03, $09, $25, $06, $49, $25        ;; 0e:7d9c ????????
    db   $03, $09, $25, $06, $79, $25, $03, $09        ;; 0e:7da4 ????????
    db   $25, $06, $a9, $25, $03, $09, $25, $06        ;; 0e:7dac ????????
    db   $79, $25, $03, $09, $25, $06, $49, $25        ;; 0e:7db4 ????????
    db   $03, $09, $25, $06, $19, $25, $03, $09        ;; 0e:7dbc ????????
    db   $25, $00, $03, $68, $00, $f0, $ca, $84        ;; 0e:7dc4 ????????
    db   $20, $46, $00, $0a, $ca, $84, $00, $03        ;; 0e:7dcc ????????
    db   $f1, $34, $20, $0a, $33, $00, $0a, $15        ;; 0e:7dd4 ????????
    db   $00, $f0, $ca, $84, $0a, $15, $00, $c0        ;; 0e:7ddc ????????
    db   $ca, $84, $0a, $15, $00, $90, $ca, $84        ;; 0e:7de4 ????????
    db   $0a, $15, $00, $60, $ca, $84, $00, $0c        ;; 0e:7dec ????????
    db   $09, $35, $01, $03, $33, $21, $f3, $34        ;; 0e:7df4 ????????
    db   $00, $10, $26, $c0, $f4, $20, $83, $10        ;; 0e:7dfc ????????
    db   $26, $80, $f4, $50, $85, $10, $26, $40        ;; 0e:7e04 ????????
    db   $f4, $80, $84, $17, $26, $00, $f7, $b0        ;; 0e:7e0c ????????
    db   $85, $00, $f4, $05, $13, $80, $f4, $20        ;; 0e:7e14 ????????
    db   $82, $05, $13, $00, $f4, $50, $82, $ef        ;; 0e:7e1c ????????
    db   $17, $7e, $00, $f4, $05, $f1, $28, $05        ;; 0e:7e24 ????????
    db   $f1, $38, $ef, $28, $7e, $00, $06, $13        ;; 0e:7e2c ????????
    db   $00, $f1, $5a, $84, $09, $15, $40, $d1        ;; 0e:7e34 ????????
    db   $ff, $85, $00, $03, $9a, $4e, $07, $f3        ;; 0e:7e3c ????????
    db   $24, $00, $20, $47, $40, $b7, $20, $85        ;; 0e:7e44 ????????
    db   $20, $37, $40, $c5, $2a, $85, $20, $27        ;; 0e:7e4c ????????
    db   $40, $d5, $30, $85, $20, $36, $40, $f7        ;; 0e:7e54 ????????
    db   $3a, $85, $00, $90, $00, $00, $0e, $ff        ;; 0e:7e5c ????????
    db   $14, $25, $f0, $62, $00, $02, $47, $80        ;; 0e:7e64 ????????
    db   $61, $0e, $87, $03, $44, $80, $f1, $0e        ;; 0e:7e6c ????????
    db   $87, $00, $03, $1e, $c0, $f7, $99, $87        ;; 0e:7e74 ????????
    db   $00, $04, $82, $07, $02, $91, $02, $00        ;; 0e:7e7c ????????
    db   $03, $15, $c0, $e7, $99, $87, $05, $26        ;; 0e:7e84 ????????
    db   $40, $b0, $0e, $87, $00, $04, $72, $07        ;; 0e:7e8c ????????
    db   $08, $f1, $32, $00, $1e, $08, $40, $f6        ;; 0e:7e94 ????????
    db   $89, $87, $00, $02, $81, $1f, $1c, $ff        ;; 0e:7e9c ????????
    db   $42, $00, $05, $f2, $65, $01, $07, $53        ;; 0e:7ea4 ????????
    db   $32, $f7, $54, $00, $03, $00, $40, $91        ;; 0e:7eac ????????
    db   $00, $80, $02, $00, $00, $00, $00, $80        ;; 0e:7eb4 ????????
    db   $47, $5b, $40, $97, $00, $80, $00, $03        ;; 0e:7ebc ????????
    db   $f4, $6e, $03, $f4, $7c, $02, $f4, $6e        ;; 0e:7ec4 ????????
    db   $08, $f4, $7c, $40, $f7, $65, $00, $06        ;; 0e:7ecc ????????
    db   $fa, $5e, $02, $fc, $6f, $37, $f4, $62        ;; 0e:7ed4 ????????
    db   $00, $f2, $06, $f8, $5c, $07, $f1, $27        ;; 0e:7edc ????????
    db   $ef, $de, $7e, $00, $17, $67, $80, $f2        ;; 0e:7ee4 ????????
    db   $20, $87, $00, $06, $43, $00, $f1, $5a        ;; 0e:7eec ????????
    db   $84, $04, $25, $00, $f0, $96, $86, $00        ;; 0e:7ef4 ????????
    db   $06, $99, $4d, $06, $a3, $34, $00, $0a        ;; 0e:7efc ????????
    db   $34, $40, $d0, $96, $86, $00, $06, $a9        ;; 0e:7f04 ????????
    db   $52, $02, $f0, $34, $00, $f2, $09, $4a        ;; 0e:7f0c ????????
    db   $80, $b0, $ff, $83, $05, $4a, $80, $00        ;; 0e:7f14 ????????
    db   $ff, $83, $ef, $12, $7f, $00, $f2, $05        ;; 0e:7f1c ????????
    db   $f1, $37, $02, $f1, $6c, $07, $f1, $65        ;; 0e:7f24 ????????
    db   $ef, $23, $7f, $00, $04, $00, $00, $c2        ;; 0e:7f2c ????????
    db   $da, $87, $06, $00, $00, $c2, $d0, $87        ;; 0e:7f34 ????????
    db   $12, $00, $00, $c2, $cc, $87, $00, $04        ;; 0e:7f3c ????????
    db   $f2, $08, $06, $f2, $08, $12, $f2, $08        ;; 0e:7f44 ????????
    db   $00, $40, $f4, $4b, $00, $08, $7f, $80        ;; 0e:7f4c ????????
    db   $f0, $d0, $87, $08, $7f, $80, $d1, $d0        ;; 0e:7f54 ????????
    db   $87, $08, $7f, $80, $b1, $c0, $87, $08        ;; 0e:7f5c ????????
    db   $7f, $80, $92, $ba, $87, $00, $0c, $2f        ;; 0e:7f64 ????????
    db   $80, $d0, $00, $87, $11, $2f, $80, $a0        ;; 0e:7f6c ????????
    db   $75, $86, $00, $07, $0f, $80, $f1, $ff        ;; 0e:7f74 ????????
    db   $86, $07, $0f, $80, $d1, $e8, $86, $07        ;; 0e:7f7c ????????
    db   $07, $80, $b1, $da, $86, $07, $07, $80        ;; 0e:7f84 ????????
    db   $91, $c6, $86, $00, $1a, $37, $80, $fd        ;; 0e:7f8c ????????
    db   $50, $87, $00, $06, $71, $00, $a7, $80        ;; 0e:7f94 ????????
    db   $83, $20, $17, $80, $c6, $ff, $84, $00        ;; 0e:7f9c ????????
    db   $1f, $8f, $5f, $0c, $c4, $54, $35, $f4        ;; 0e:7fa4 ????????
    db   $37, $00, $0a, $f7, $31, $20, $f7, $11        ;; 0e:7fac ????????
    db   $0f, $f2, $08, $00, $02, $fc, $5c, $0c        ;; 0e:7fb4 ????????
    db   $f4, $57, $00, $06, $00, $80, $a1, $ad        ;; 0e:7fbc ????????
    db   $87, $0f, $00, $80, $f1, $31, $87, $00        ;; 0e:7fc4 ????????
    db   $02, $f1, $27, $08, $04, $54, $02, $b1        ;; 0e:7fcc ????????
    db   $27, $08, $04, $54, $02, $81, $27, $08        ;; 0e:7fd4 ????????
    db   $04, $54, $02, $51, $27, $00, $50, $77        ;; 0e:7fdc ????????
    db   $80, $0d, $ff, $85                            ;; 0e:7fe4 ????
