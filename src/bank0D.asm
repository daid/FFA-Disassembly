;; Disassembled with BadBoy Disassembler: https://github.com/daid/BadBoy

INCLUDE "include/hardware.inc"
INCLUDE "include/macros.inc"
INCLUDE "include/charmaps.inc"

SECTION "bank0d", ROMX[$4000], BANK[$0d]

script_0000:
    sEND                                               ;; 0d:4000 $00

script_0001:
    sIF_FLAG wScriptFlags.1                            ;; 0d:4001 $08 $01 $00 $05
      sSFX 16                                          ;; 0d:4005 $f9 $10
      sOPEN_EAST_DOOR                                  ;; 0d:4007 $e4
    sELSE                                              ;; 0d:4008 $01 $19
      sIF_FLAG wScriptFlags.2                          ;; 0d:400a $08 $02 $00 $05
        sSFX 16                                        ;; 0d:400e $f9 $10
        sOPEN_WEST_DOOR                                ;; 0d:4010 $e6
      sELSE                                            ;; 0d:4011 $01 $10
        sIF_FLAG wScriptFlags.3                        ;; 0d:4013 $08 $03 $00 $05
          sSFX 16                                      ;; 0d:4017 $f9 $10
          sOPEN_NORTH_DOOR                             ;; 0d:4019 $e0
        sELSE                                          ;; 0d:401a $01 $07
          sIF_FLAG wScriptFlags.4                      ;; 0d:401c $08 $04 $00 $03
            sSFX 16                                    ;; 0d:4020 $f9 $10
            sOPEN_SOUTH_DOOR                           ;; 0d:4022 $e2
          sENDIF                                       ;; 0d:4023
        sENDIF                                         ;; 0d:4023
      sENDIF                                           ;; 0d:4023
    sENDIF                                             ;; 0d:4023
    sEND                                               ;; 0d:4023 $00

script_0002:
    sEND                                               ;; 0d:4024 $00

script_0003:
    sSET_MUSIC 1                                       ;; 0d:4025 $f8 $01
    sUNK_C6                                            ;; 0d:4027 $c6
    sLOAD_ROOM 1, $47, 18, 10                          ;; 0d:4028 $f4 $01 $47 $12 $0a
    sCALL script_00e6                                  ;; 0d:402d $02 $06 $cc
    sEND                                               ;; 0d:4030 $00

script_0004:
    sIF_FLAG !wScriptFlags0E.4                         ;; 0d:4031 $08 $f4 $00 $5a
      sIF_FLAG !wScriptFlags0E.5, !wScriptFlags0E.6, !wScriptFlags0E.7 ;; 0d:4035 $08 $f5 $f6 $f7 $00 $05
        sLOAD_ROOM 14, $10, 12, 9                      ;; 0d:403b $f4 $0e $10 $0c $09
      sENDIF                                           ;; 0d:4040
      sIF_FLAG !wScriptFlags0E.5, !wScriptFlags0E.6, wScriptFlags0E.7 ;; 0d:4040 $08 $f5 $f6 $77 $00 $05
        sLOAD_ROOM 14, $06, 14, 8                      ;; 0d:4046 $f4 $0e $06 $0e $08
      sENDIF                                           ;; 0d:404b
      sIF_FLAG !wScriptFlags0E.5, wScriptFlags0E.6, !wScriptFlags0E.7 ;; 0d:404b $08 $f5 $76 $f7 $00 $05
        sLOAD_ROOM 0, $5b, 8, 4                        ;; 0d:4051 $f4 $00 $5b $08 $04
      sENDIF                                           ;; 0d:4056
      sIF_FLAG !wScriptFlags0E.5, wScriptFlags0E.6, wScriptFlags0E.7 ;; 0d:4056 $08 $f5 $76 $77 $00 $05
        sLOAD_ROOM 14, $53, 6, 6                       ;; 0d:405c $f4 $0e $53 $06 $06
      sENDIF                                           ;; 0d:4061
      sIF_FLAG wScriptFlags0E.5, !wScriptFlags0E.6, !wScriptFlags0E.7 ;; 0d:4061 $08 $75 $f6 $f7 $00 $05
        sLOAD_ROOM 14, $14, 2, 12                      ;; 0d:4067 $f4 $0e $14 $02 $0c
      sENDIF                                           ;; 0d:406c
      sIF_FLAG wScriptFlags0E.5, !wScriptFlags0E.6, wScriptFlags0E.7 ;; 0d:406c $08 $75 $f6 $77 $00 $05
        sLOAD_ROOM 0, $33, 12, 5                       ;; 0d:4072 $f4 $00 $33 $0c $05
      sENDIF                                           ;; 0d:4077
      sIF_FLAG wScriptFlags0E.5, wScriptFlags0E.6, !wScriptFlags0E.7 ;; 0d:4077 $08 $75 $76 $f7 $00 $05
        sLOAD_ROOM 15, $46, 10, 6                      ;; 0d:407d $f4 $0f $46 $0a $06
      sENDIF                                           ;; 0d:4082
      sIF_FLAG wScriptFlags0E.5, wScriptFlags0E.6, wScriptFlags0E.7 ;; 0d:4082 $08 $75 $76 $77 $00 $05
        sLOAD_ROOM 0, $d1, 4, 6                        ;; 0d:4088 $f4 $00 $d1 $04 $06
      sENDIF                                           ;; 0d:408d
    sELSE                                              ;; 0d:408d $01 $7f
      sIF_FLAG !wScriptFlags0E.5, !wScriptFlags0E.6, !wScriptFlags0E.7 ;; 0d:408f $08 $f5 $f6 $f7 $00 $05
        sLOAD_ROOM 0, $df, 10, 4                       ;; 0d:4095 $f4 $00 $df $0a $04
      sENDIF                                           ;; 0d:409a
      sIF_FLAG !wScriptFlags0E.5, !wScriptFlags0E.6, wScriptFlags0E.7 ;; 0d:409a $08 $f5 $f6 $77 $00 $0f
        sLOAD_ROOM 14, $14, 10, 6                      ;; 0d:40a0 $f4 $0e $14 $0a $06
        sIF_FLAG !wScriptFlags05.0                     ;; 0d:40a5 $08 $a8 $00 $04
          sSET_MUSIC 0                                 ;; 0d:40a9 $f8 $00
        sELSE                                          ;; 0d:40ab $01 $02
          sSET_MUSIC 13                                ;; 0d:40ad $f8 $0d
        sENDIF                                         ;; 0d:40af
      sENDIF                                           ;; 0d:40af
      sIF_FLAG !wScriptFlags0E.5, wScriptFlags0E.6, !wScriptFlags0E.7 ;; 0d:40af $08 $f5 $76 $f7 $00 $07
        sLOAD_ROOM 0, $4d, 10, 4                       ;; 0d:40b5 $f4 $00 $4d $0a $04
        sSET_MUSIC 20                                  ;; 0d:40ba $f8 $14
      sENDIF                                           ;; 0d:40bc
      sIF_FLAG !wScriptFlags0E.5, wScriptFlags0E.6, wScriptFlags0E.7 ;; 0d:40bc $08 $f5 $76 $77 $00 $0f
        sLOAD_ROOM 15, $36, 2, 11                      ;; 0d:40c2 $f4 $0f $36 $02 $0b
        sIF_FLAG !wScriptFlags04.1                     ;; 0d:40c7 $08 $a1 $00 $04
          sSET_MUSIC 27                                ;; 0d:40cb $f8 $1b
        sELSE                                          ;; 0d:40cd $01 $02
          sSET_MUSIC 4                                 ;; 0d:40cf $f8 $04
        sENDIF                                         ;; 0d:40d1
      sENDIF                                           ;; 0d:40d1
      sIF_FLAG wScriptFlags0E.5, !wScriptFlags0E.6, !wScriptFlags0E.7 ;; 0d:40d1 $08 $75 $f6 $f7 $00 $07
        sLOAD_ROOM 14, $01, 14, 5                      ;; 0d:40d7 $f4 $0e $01 $0e $05
        sSET_MUSIC 4                                   ;; 0d:40dc $f8 $04
      sENDIF                                           ;; 0d:40de
      sIF_FLAG wScriptFlags0E.5, !wScriptFlags0E.6, wScriptFlags0E.7 ;; 0d:40de $08 $75 $f6 $77 $00 $10
        sLOAD_ROOM 14, $17, 16, 8                      ;; 0d:40e4 $f4 $0e $17 $10 $08
        sIF_FLAG wScriptFlags02.0, !wScriptFlags02.1   ;; 0d:40e9 $08 $10 $91 $00 $04
          sSET_MUSIC 9                                 ;; 0d:40ee $f8 $09
        sELSE                                          ;; 0d:40f0 $01 $02
          sSET_MUSIC 11                                ;; 0d:40f2 $f8 $0b
        sENDIF                                         ;; 0d:40f4
      sENDIF                                           ;; 0d:40f4
      sIF_FLAG wScriptFlags0E.5, wScriptFlags0E.6, !wScriptFlags0E.7 ;; 0d:40f4 $08 $75 $76 $f7 $00 $07
        sLOAD_ROOM 0, $aa, 14, 8                       ;; 0d:40fa $f4 $00 $aa $0e $08
        sSET_MUSIC 20                                  ;; 0d:40ff $f8 $14
      sENDIF                                           ;; 0d:4101
      sIF_FLAG wScriptFlags0E.5, wScriptFlags0E.6, wScriptFlags0E.7 ;; 0d:4101 $08 $75 $76 $77 $00 $07
        sLOAD_ROOM 0, $7c, 8, 4                        ;; 0d:4107 $f4 $00 $7c $08 $04
        sSET_MUSIC 20                                  ;; 0d:410c $f8 $14
      sENDIF                                           ;; 0d:410e
    sENDIF                                             ;; 0d:410e
    sCLEAR_ROOM_HISTORY                                ;; 0d:410e $ab
    sRUN_ROOM_SCRIPT                                   ;; 0d:410f $ec
    sEND                                               ;; 0d:4110 $00

script_0005:
    sIF_EQUIPED $1f                                    ;; 0d:4111 $09 $1f $00 $25
      sIF_FLAG wScriptFlags.1                          ;; 0d:4115 $08 $01 $00 $05
        sSFX 16                                        ;; 0d:4119 $f9 $10
        sOPEN_EAST_DOOR                                ;; 0d:411b $e4
      sELSE                                            ;; 0d:411c $01 $19
        sIF_FLAG wScriptFlags.2                        ;; 0d:411e $08 $02 $00 $05
          sSFX 16                                      ;; 0d:4122 $f9 $10
          sOPEN_WEST_DOOR                              ;; 0d:4124 $e6
        sELSE                                          ;; 0d:4125 $01 $10
          sIF_FLAG wScriptFlags.3                      ;; 0d:4127 $08 $03 $00 $05
            sSFX 16                                    ;; 0d:412b $f9 $10
            sOPEN_NORTH_DOOR                           ;; 0d:412d $e0
          sELSE                                        ;; 0d:412e $01 $07
            sIF_FLAG wScriptFlags.4                    ;; 0d:4130 $08 $04 $00 $03
              sSFX 16                                  ;; 0d:4134 $f9 $10
              sOPEN_SOUTH_DOOR                         ;; 0d:4136 $e2
            sENDIF                                     ;; 0d:4137
          sENDIF                                       ;; 0d:4137
        sENDIF                                         ;; 0d:4137
      sENDIF                                           ;; 0d:4137
      sTAKE_EQUIPED_ITEM                               ;; 0d:4137 $de
    sELSE                                              ;; 0d:4138 $01 $0b
      sMSG                                             ;; 0d:413a $04
        db "<10> Locked.<12>"
        db "<11>", $00   ;; 0d:413b
    sENDIF                                             ;; 0d:4145
    sEND                                               ;; 0d:4145 $00

script_0006:
    sEND                                               ;; 0d:4146 $00

script_0007:
    sSET_MUSIC 0                                       ;; 0d:4147 $f8 $00
    sLOOP 4, 13                                        ;; 0d:4149 $03 $04 $0d
      sSET_PLAYER_DIRECTION_RIGHT                      ;; 0d:414c $86
      sDELAY 5                                         ;; 0d:414d $f0 $05
      sSET_PLAYER_DIRECTION_DOWN                       ;; 0d:414f $85
      sDELAY 5                                         ;; 0d:4150 $f0 $05
      sSET_PLAYER_DIRECTION_LEFT                       ;; 0d:4152 $87
      sDELAY 5                                         ;; 0d:4153 $f0 $05
      sSET_PLAYER_DIRECTION_UP                         ;; 0d:4155 $84
      sDELAY 5                                         ;; 0d:4156 $f0 $05
    sEND                                               ;; 0d:4158 $00
    sSET_PLAYER_LAYDOWN_SPRITE                         ;; 0d:4159 $a6
    sSET_PLAYER_DIRECTION_RIGHT                        ;; 0d:415a $86
    sDELAY 44                                          ;; 0d:415b $f0 $2c
    sSET_MUSIC 23                                      ;; 0d:415d $f8 $17
    sMSG                                               ;; 0d:415f $04
      db "<10>\n    <BOY> fell_<12>"
      db "<11>", $00 ;; 0d:4160
    sRESET_GAME                                        ;; 0d:416c $c8
    sEND                                               ;; 0d:416d $00

script_0008:
    sIF_FLAG !wScriptFlags0E.4                         ;; 0d:416e $08 $f4 $00 $5a
      sIF_FLAG !wScriptFlags0E.5, !wScriptFlags0E.6, !wScriptFlags0E.7 ;; 0d:4172 $08 $f5 $f6 $f7 $00 $05
        sLOAD_ROOM 14, $10, 6, 7                       ;; 0d:4178 $f4 $0e $10 $06 $07
      sENDIF                                           ;; 0d:417d
      sIF_FLAG !wScriptFlags0E.5, !wScriptFlags0E.6, wScriptFlags0E.7 ;; 0d:417d $08 $f5 $f6 $77 $00 $05
        sLOAD_ROOM 0, $c7, 8, 7                        ;; 0d:4183 $f4 $00 $c7 $08 $07
      sENDIF                                           ;; 0d:4188
      sIF_FLAG !wScriptFlags0E.5, wScriptFlags0E.6, !wScriptFlags0E.7 ;; 0d:4188 $08 $f5 $76 $f7 $00 $05
        sLOAD_ROOM 14, $07, 12, 4                      ;; 0d:418e $f4 $0e $07 $0c $04
      sENDIF                                           ;; 0d:4193
      sIF_FLAG !wScriptFlags0E.5, wScriptFlags0E.6, wScriptFlags0E.7 ;; 0d:4193 $08 $f5 $76 $77 $00 $05
        sLOAD_ROOM 0, $af, 4, 4                        ;; 0d:4199 $f4 $00 $af $04 $04
      sENDIF                                           ;; 0d:419e
      sIF_FLAG wScriptFlags0E.5, !wScriptFlags0E.6, !wScriptFlags0E.7 ;; 0d:419e $08 $75 $f6 $f7 $00 $05
        sLOAD_ROOM 14, $63, 14, 10                     ;; 0d:41a4 $f4 $0e $63 $0e $0a
      sENDIF                                           ;; 0d:41a9
      sIF_FLAG wScriptFlags0E.5, !wScriptFlags0E.6, wScriptFlags0E.7 ;; 0d:41a9 $08 $75 $f6 $77 $00 $05
        sLOAD_ROOM 14, $24, 10, 4                      ;; 0d:41af $f4 $0e $24 $0a $04
      sENDIF                                           ;; 0d:41b4
      sIF_FLAG wScriptFlags0E.5, wScriptFlags0E.6, !wScriptFlags0E.7 ;; 0d:41b4 $08 $75 $76 $f7 $00 $05
        sLOAD_ROOM 0, $23, 10, 6                       ;; 0d:41ba $f4 $00 $23 $0a $06
      sENDIF                                           ;; 0d:41bf
      sIF_FLAG wScriptFlags0E.5, wScriptFlags0E.6, wScriptFlags0E.7 ;; 0d:41bf $08 $75 $76 $77 $00 $05
        sLOAD_ROOM 0, $90, 12, 6                       ;; 0d:41c5 $f4 $00 $90 $0c $06
      sENDIF                                           ;; 0d:41ca
    sELSE                                              ;; 0d:41ca $01 $58
      sIF_FLAG !wScriptFlags0E.5, !wScriptFlags0E.6, !wScriptFlags0E.7 ;; 0d:41cc $08 $f5 $f6 $f7 $00 $05
        sLOAD_ROOM 0, $db, 8, 4                        ;; 0d:41d2 $f4 $00 $db $08 $04
      sENDIF                                           ;; 0d:41d7
      sIF_FLAG !wScriptFlags0E.5, !wScriptFlags0E.6, wScriptFlags0E.7 ;; 0d:41d7 $08 $f5 $f6 $77 $00 $05
        sLOAD_ROOM 15, $26, 4, 12                      ;; 0d:41dd $f4 $0f $26 $04 $0c
      sENDIF                                           ;; 0d:41e2
      sIF_FLAG !wScriptFlags0E.5, wScriptFlags0E.6, !wScriptFlags0E.7 ;; 0d:41e2 $08 $f5 $76 $f7 $00 $05
        sLOAD_ROOM 14, $00, 4, 8                       ;; 0d:41e8 $f4 $0e $00 $04 $08
      sENDIF                                           ;; 0d:41ed
      sIF_FLAG !wScriptFlags0E.5, wScriptFlags0E.6, wScriptFlags0E.7 ;; 0d:41ed $08 $f5 $76 $77 $00 $05
        sLOAD_ROOM 14, $06, 6, 8                       ;; 0d:41f3 $f4 $0e $06 $06 $08
      sENDIF                                           ;; 0d:41f8
      sIF_FLAG wScriptFlags0E.5, !wScriptFlags0E.6, !wScriptFlags0E.7 ;; 0d:41f8 $08 $75 $f6 $f7 $00 $05
        sLOAD_ROOM 14, $13, 16, 8                      ;; 0d:41fe $f4 $0e $13 $10 $08
      sENDIF                                           ;; 0d:4203
      sIF_FLAG wScriptFlags0E.5, !wScriptFlags0E.6, wScriptFlags0E.7 ;; 0d:4203 $08 $75 $f6 $77 $00 $05
        sLOAD_ROOM 14, $63, 10, 4                      ;; 0d:4209 $f4 $0e $63 $0a $04
      sENDIF                                           ;; 0d:420e
      sIF_FLAG wScriptFlags0E.5, wScriptFlags0E.6, !wScriptFlags0E.7 ;; 0d:420e $08 $75 $76 $f7 $00 $05
        sLOAD_ROOM 15, $46, 4, 10                      ;; 0d:4214 $f4 $0f $46 $04 $0a
      sENDIF                                           ;; 0d:4219
      sIF_FLAG wScriptFlags0E.5, wScriptFlags0E.6, wScriptFlags0E.7 ;; 0d:4219 $08 $75 $76 $77 $00 $05
        sLOAD_ROOM 15, $46, 14, 6                      ;; 0d:421f $f4 $0f $46 $0e $06
      sENDIF                                           ;; 0d:4224
    sENDIF                                             ;; 0d:4224
    sCLEAR_ROOM_HISTORY                                ;; 0d:4224 $ab
    sRUN_ROOM_SCRIPT                                   ;; 0d:4225 $ec
    sEND                                               ;; 0d:4226 $00

script_0009:
    sMSG                                               ;; 0d:4227 $04
      db "<10> Doesn't open.<12>"
      db "<11>", $00 ;; 0d:4228
    sEND                                               ;; 0d:4237 $00

script_000a:
    sEND                                               ;; 0d:4238 $00

script_000b:
    sEND                                               ;; 0d:4239 $00

script_000c:
    sIF_FLAG !wScriptFlags0E.4, !wScriptFlags0E.5, !wScriptFlags0E.6 ;; 0d:423a $08 $f4 $f5 $f6 $00 $6c
      sIF_FLAG !wScriptFlags0E.7                       ;; 0d:4240 $08 $f7 $00 $14
        sIF_FLAG wScriptFlags08.0, !wScriptFlags04.5   ;; 0d:4244 $08 $40 $a5 $00 $02
        sELSE                                          ;; 0d:4249 $01 $0b
          sLOAD_ROOM 0, $a9, 10, 5                     ;; 0d:424b $f4 $00 $a9 $0a $05
          sSET_MUSIC 20                                ;; 0d:4250 $f8 $14
          sCALL script_0488                            ;; 0d:4252 $02 $5b $55
          sCLEAR_ROOM_HISTORY                          ;; 0d:4255 $ab
        sENDIF                                         ;; 0d:4256
      sELSE                                            ;; 0d:4256 $01 $52
        sMSG                                           ;; 0d:4258 $04
          db "<10>", $00                               ;; 0d:4259
        sIF_FLAG !wScriptFlags06.1                     ;; 0d:425b $08 $b1 $00 $2f
          sMSG                                         ;; 0d:425f $04
            db " I'LL STAY HERE\n AND RESEARCH.<12>"
            db "<11>", $00 ;; 0d:4260
          sFOLLOWER_DELETE                             ;; 0d:427e $98
          sCLEAR_FLAG wScriptFlags0A.7                 ;; 0d:427f $db $57
          sLOAD_ROOM 0, $73, 10, 6                     ;; 0d:4281 $f4 $00 $73 $0a $06
          sSET_MUSIC 20                                ;; 0d:4286 $f8 $14
          sCALL script_03e8                            ;; 0d:4288 $02 $4f $ae
          sCLEAR_ROOM_HISTORY                          ;; 0d:428b $ab
        sELSE                                          ;; 0d:428c $01 $1c
          sMSG                                         ;; 0d:428e $04
            db "Tower is sinking.\nUnable to get out!<12>"
            db "<11>", $00 ;; 0d:428f
        sENDIF                                         ;; 0d:42aa
      sENDIF                                           ;; 0d:42aa
    sELSE                                              ;; 0d:42aa $01 $d7
      sIF_FLAG !wScriptFlags0E.4                       ;; 0d:42ac $08 $f4 $00 $84
        sIF_FLAG !wScriptFlags0E.5, wScriptFlags0E.6, !wScriptFlags0E.7 ;; 0d:42b0 $08 $f5 $76 $f7 $00 $07
          sLOAD_ROOM 0, $64, 14, 7                     ;; 0d:42b6 $f4 $00 $64 $0e $07
          sSET_MUSIC 20                                ;; 0d:42bb $f8 $14
        sENDIF                                         ;; 0d:42bd
        sIF_FLAG !wScriptFlags0E.5, wScriptFlags0E.6, wScriptFlags0E.7 ;; 0d:42bd $08 $f5 $76 $77 $00 $41
          sIF_FLAG wScriptFlags0A.6, !wScriptFlags05.0 ;; 0d:42c3 $08 $56 $a8 $00 $2b
            sMSG                                       ;; 0d:42c8 $04
              db "<10>Lester:Won't you\n avenge my sister?\n Well, I'm going!<12>"
              db "<11>", $00 ;; 0d:42c9
            sFOLLOWER_DELETE                           ;; 0d:42f0 $98
            sCLEAR_FLAG wScriptFlags0A.6               ;; 0d:42f1 $db $56
          sENDIF                                       ;; 0d:42f3
          sIF_FLAG wScriptFlags05.0                    ;; 0d:42f3 $08 $28 $00 $02
            sSET_MUSIC 13                              ;; 0d:42f7 $f8 $0d
          sENDIF                                       ;; 0d:42f9
          sIF_FLAG !wScriptFlags05.0                   ;; 0d:42f9 $08 $a8 $00 $02
            sSET_MUSIC 0                               ;; 0d:42fd $f8 $00
          sENDIF                                       ;; 0d:42ff
          sLOAD_ROOM 14, $03, 12, 8                    ;; 0d:42ff $f4 $0e $03 $0c $08
        sENDIF                                         ;; 0d:4304
        sIF_FLAG wScriptFlags0E.5, !wScriptFlags0E.6, !wScriptFlags0E.7 ;; 0d:4304 $08 $75 $f6 $f7 $00 $07
          sLOAD_ROOM 0, $c5, 9, 8                      ;; 0d:430a $f4 $00 $c5 $09 $08
          sSET_MUSIC 25                                ;; 0d:430f $f8 $19
        sENDIF                                         ;; 0d:4311
        sIF_FLAG wScriptFlags0E.5, !wScriptFlags0E.6, wScriptFlags0E.7 ;; 0d:4311 $08 $75 $f6 $77 $00 $05
          sLOAD_ROOM 1, $15, 9, 4                      ;; 0d:4317 $f4 $01 $15 $09 $04
        sENDIF                                         ;; 0d:431c
        sIF_FLAG wScriptFlags0E.5, wScriptFlags0E.6, !wScriptFlags0E.7 ;; 0d:431c $08 $75 $76 $f7 $00 $05
          sLOAD_ROOM 15, $22, 2, 11                    ;; 0d:4322 $f4 $0f $22 $02 $0b
        sENDIF                                         ;; 0d:4327
        sIF_FLAG wScriptFlags0E.5, wScriptFlags0E.6, wScriptFlags0E.7 ;; 0d:4327 $08 $75 $76 $77 $00 $05
          sLOAD_ROOM 14, $53, 14, 8                    ;; 0d:432d $f4 $0e $53 $0e $08
        sENDIF                                         ;; 0d:4332
      sELSE                                            ;; 0d:4332 $01 $4d
        sIF_FLAG !wScriptFlags0E.5, !wScriptFlags0E.6, !wScriptFlags0E.7 ;; 0d:4334 $08 $f5 $f6 $f7 $00 $05
          sLOAD_ROOM 0, $0a, 14, 4                     ;; 0d:433a $f4 $00 $0a $0e $04
        sENDIF                                         ;; 0d:433f
        sIF_FLAG !wScriptFlags0E.5, !wScriptFlags0E.6, wScriptFlags0E.7 ;; 0d:433f $08 $f5 $f6 $77 $00 $05
          sLOAD_ROOM 0, $55, 8, 4                      ;; 0d:4345 $f4 $00 $55 $08 $04
        sENDIF                                         ;; 0d:434a
        sIF_FLAG !wScriptFlags0E.5, wScriptFlags0E.6, !wScriptFlags0E.7 ;; 0d:434a $08 $f5 $76 $f7 $00 $05
          sLOAD_ROOM 0, $62, 12, 6                     ;; 0d:4350 $f4 $00 $62 $0c $06
        sENDIF                                         ;; 0d:4355
        sIF_FLAG !wScriptFlags0E.5, wScriptFlags0E.6, wScriptFlags0E.7 ;; 0d:4355 $08 $f5 $76 $77 $00 $05
          sLOAD_ROOM 0, $00, 6, 6                      ;; 0d:435b $f4 $00 $00 $06 $06
        sENDIF                                         ;; 0d:4360
        sIF_FLAG wScriptFlags0E.5, !wScriptFlags0E.6, !wScriptFlags0E.7 ;; 0d:4360 $08 $75 $f6 $f7 $00 $05
          sLOAD_ROOM 14, $01, 6, 9                     ;; 0d:4366 $f4 $0e $01 $06 $09
        sENDIF                                         ;; 0d:436b
        sIF_FLAG wScriptFlags0E.5, !wScriptFlags0E.6, wScriptFlags0E.7 ;; 0d:436b $08 $75 $f6 $77 $00 $05
          sLOAD_ROOM 14, $26, 8, 8                     ;; 0d:4371 $f4 $0e $26 $08 $08
        sENDIF                                         ;; 0d:4376
        sIF_FLAG wScriptFlags0E.5, wScriptFlags0E.6, !wScriptFlags0E.7 ;; 0d:4376 $08 $75 $76 $f7 $00 $05
          sLOAD_ROOM 14, $15, 12, 10                   ;; 0d:437c $f4 $0e $15 $0c $0a
        sENDIF                                         ;; 0d:4381
      sENDIF                                           ;; 0d:4381
      sCLEAR_ROOM_HISTORY                              ;; 0d:4381 $ab
      sRUN_ROOM_SCRIPT                                 ;; 0d:4382 $ec
    sENDIF                                             ;; 0d:4383
    sEND                                               ;; 0d:4383 $00

script_000d:
    sIF_FLAG wScriptFlags05.5, wScriptFlags.3          ;; 0d:4384 $08 $2d $03 $00 $05
      sSFX 16                                          ;; 0d:4389 $f9 $10
      sOPEN_NORTH_DOOR                                 ;; 0d:438b $e0
    sELSE                                              ;; 0d:438c $01 $1c
      sMSG                                             ;; 0d:438e $04
        db "<10>_ _", $00                              ;; 0d:438f
      sDELAY 30                                        ;; 0d:4394 $f0 $1e
      sMSG                                             ;; 0d:4396 $04
        db "_", $00                                    ;; 0d:4397
      sDELAY 20                                        ;; 0d:4399 $f0 $14
      sMSG                                             ;; 0d:439b $04
        db "__\n_ It's frozen.<12>"
        db "<11>", $00 ;; 0d:439c
    sENDIF                                             ;; 0d:43aa
    sEND                                               ;; 0d:43aa $00

script_000e:
    sEND                                               ;; 0d:43ab $00

script_000f:
    sEND                                               ;; 0d:43ac $00

script_0010:
    sEND                                               ;; 0d:43ad $00

script_0011:
    sEND                                               ;; 0d:43ae $00

script_0012:
    sEND                                               ;; 0d:43af $00

script_0013:
    sEND                                               ;; 0d:43b0 $00

script_0014:
    sEND                                               ;; 0d:43b1 $00

script_0015:
    sEND                                               ;; 0d:43b2 $00

script_0016:
    sEND                                               ;; 0d:43b3 $00

script_0017:
    sEND                                               ;; 0d:43b4 $00

script_0018:
    sEND                                               ;; 0d:43b5 $00

script_0019:
    sEND                                               ;; 0d:43b6 $00

script_001a:
    sEND                                               ;; 0d:43b7 $00

script_001b:
    sEND                                               ;; 0d:43b8 $00

script_001c:
    sEND                                               ;; 0d:43b9 $00

script_001d:
    sEND                                               ;; 0d:43ba $00

script_001e:
    sEND                                               ;; 0d:43bb $00

script_001f:
    sUNK_A9                                            ;; 0d:43bc $a9
    sIF_FLAG wScriptFlags0F.7                          ;; 0d:43bd $08 $7f $00 $03
      sOPEN_MAP                                        ;; 0d:43c1 $ac
      sWAIT_MAP_CLOSE                                  ;; 0d:43c2 $ad
      sCLOSE_MAP                                       ;; 0d:43c3 $ae
    sENDIF                                             ;; 0d:43c4
    sEND                                               ;; 0d:43c4 $00

script_0020:
    sEND                                               ;; 0d:43c5 $00

script_0021:
    sEND                                               ;; 0d:43c6 $00

script_0022:
    sEND                                               ;; 0d:43c7 $00

script_0023:
    sEND                                               ;; 0d:43c8 $00

script_0024:
    sEND                                               ;; 0d:43c9 $00

script_0025:
    sEND                                               ;; 0d:43ca $00

script_0026:
    sEND                                               ;; 0d:43cb $00

script_0027:
    sEND                                               ;; 0d:43cc $00

script_0028:
    sEND                                               ;; 0d:43cd $00

script_0029:
    sEND                                               ;; 0d:43ce $00

script_002a:
    sEND                                               ;; 0d:43cf $00

script_002b:
    sEND                                               ;; 0d:43d0 $00

script_002c:
    sEND                                               ;; 0d:43d1 $00

script_002d:
    sEND                                               ;; 0d:43d2 $00

script_002e:
    sEND                                               ;; 0d:43d3 $00

script_002f:
    sEND                                               ;; 0d:43d4 $00

script_0030:
    sSET_NPC_TYPES 0                                   ;; 0d:43d5 $fc $00
    sSPAWN_NPC 0                                       ;; 0d:43d7 $fd $00
    sSPAWN_NPC 1                                       ;; 0d:43d9 $fd $01
    sEND                                               ;; 0d:43db $00

script_003d:
    sEND                                               ;; 0d:43dc $00

script_003e:
    sEND                                               ;; 0d:43dd $00

script_003f:
    sEND                                               ;; 0d:43de $00

script_0040:
    sIF_FLAG !wScriptFlags.7                           ;; 0d:43df $08 $87 $00 $06
      sSET_NPC_TYPES 0                                 ;; 0d:43e3 $fc $00
      sSPAWN_NPC 0                                     ;; 0d:43e5 $fd $00
      sSPAWN_NPC 1                                     ;; 0d:43e7 $fd $01
    sENDIF                                             ;; 0d:43e9
    sEND                                               ;; 0d:43e9 $00

script_0041:
    sEND                                               ;; 0d:43ea $00

script_0042:
    sEND                                               ;; 0d:43eb $00

script_0043:
    sIF_FLAG !wScriptFlags.7                           ;; 0d:43ec $08 $87 $00 $06
      sSET_NPC_TYPES 1                                 ;; 0d:43f0 $fc $01
      sSPAWN_NPC 0                                     ;; 0d:43f2 $fd $00
      sSPAWN_NPC 1                                     ;; 0d:43f4 $fd $01
    sENDIF                                             ;; 0d:43f6
    sEND                                               ;; 0d:43f6 $00

script_0044:
    sEND                                               ;; 0d:43f7 $00

script_0045:
    sEND                                               ;; 0d:43f8 $00

script_0046:
    sIF_FLAG !wScriptFlags.7                           ;; 0d:43f9 $08 $87 $00 $04
      sSET_NPC_TYPES 0                                 ;; 0d:43fd $fc $00
      sSPAWN_NPC 2                                     ;; 0d:43ff $fd $02
    sENDIF                                             ;; 0d:4401
    sEND                                               ;; 0d:4401 $00

script_0047:
    sEND                                               ;; 0d:4402 $00

script_0048:
    sEND                                               ;; 0d:4403 $00

script_0049:
    sIF_FLAG !wScriptFlags.7                           ;; 0d:4404 $08 $87 $00 $06
      sSET_NPC_TYPES 2                                 ;; 0d:4408 $fc $02
      sSPAWN_NPC 1                                     ;; 0d:440a $fd $01
      sSPAWN_NPC 0                                     ;; 0d:440c $fd $00
    sENDIF                                             ;; 0d:440e
    sEND                                               ;; 0d:440e $00

script_004a:
    sEND                                               ;; 0d:440f $00

script_004b:
    sEND                                               ;; 0d:4410 $00

script_004c:
    sIF_FLAG !wScriptFlags.7                           ;; 0d:4411 $08 $87 $00 $06
      sSET_NPC_TYPES 3                                 ;; 0d:4415 $fc $03
      sSPAWN_NPC 0                                     ;; 0d:4417 $fd $00
      sSPAWN_NPC 1                                     ;; 0d:4419 $fd $01
    sENDIF                                             ;; 0d:441b
    sEND                                               ;; 0d:441b $00

script_004d:
    sEND                                               ;; 0d:441c $00

script_004e:
    sEND                                               ;; 0d:441d $00

script_004f:
    sIF_FLAG !wScriptFlags.7                           ;; 0d:441e $08 $87 $00 $04
      sSET_NPC_TYPES 8                                 ;; 0d:4422 $fc $08
      sSPAWN_NPC 0                                     ;; 0d:4424 $fd $00
    sENDIF                                             ;; 0d:4426
    sEND                                               ;; 0d:4426 $00

script_0050:
    sEND                                               ;; 0d:4427 $00

script_0051:
    sEND                                               ;; 0d:4428 $00

script_0052:
    sIF_FLAG !wScriptFlags.7                           ;; 0d:4429 $08 $87 $00 $04
      sSET_NPC_TYPES 9                                 ;; 0d:442d $fc $09
      sSPAWN_NPC 0                                     ;; 0d:442f $fd $00
    sENDIF                                             ;; 0d:4431
    sEND                                               ;; 0d:4431 $00

script_0053:
    sEND                                               ;; 0d:4432 $00

script_0054:
    sEND                                               ;; 0d:4433 $00

script_0055:
    sIF_FLAG !wScriptFlags.7                           ;; 0d:4434 $08 $87 $00 $04
      sSET_NPC_TYPES 9                                 ;; 0d:4438 $fc $09
      sSPAWN_NPC 1                                     ;; 0d:443a $fd $01
    sENDIF                                             ;; 0d:443c
    sEND                                               ;; 0d:443c $00

script_0056:
    sEND                                               ;; 0d:443d $00

script_0057:
    sEND                                               ;; 0d:443e $00

script_0058:
    sIF_FLAG !wScriptFlags.7                           ;; 0d:443f $08 $87 $00 $06
      sSET_NPC_TYPES 11                                ;; 0d:4443 $fc $0b
      sSPAWN_NPC 1                                     ;; 0d:4445 $fd $01
      sSPAWN_NPC 2                                     ;; 0d:4447 $fd $02
    sENDIF                                             ;; 0d:4449
    sEND                                               ;; 0d:4449 $00

script_0059:
    sEND                                               ;; 0d:444a $00

script_005a:
    sEND                                               ;; 0d:444b $00

script_005b:
    sIF_FLAG !wScriptFlags.7                           ;; 0d:444c $08 $87 $00 $06
      sSET_NPC_TYPES 13                                ;; 0d:4450 $fc $0d
      sSPAWN_NPC 0                                     ;; 0d:4452 $fd $00
      sSPAWN_NPC 1                                     ;; 0d:4454 $fd $01
    sENDIF                                             ;; 0d:4456
    sEND                                               ;; 0d:4456 $00

script_005c:
    sEND                                               ;; 0d:4457 $00

script_005d:
    sEND                                               ;; 0d:4458 $00

script_005e:
    sIF_FLAG !wScriptFlags.7                           ;; 0d:4459 $08 $87 $00 $04
      sSET_NPC_TYPES 13                                ;; 0d:445d $fc $0d
      sSPAWN_NPC 2                                     ;; 0d:445f $fd $02
    sENDIF                                             ;; 0d:4461
    sEND                                               ;; 0d:4461 $00

script_005f:
    sEND                                               ;; 0d:4462 $00

script_0060:
    sEND                                               ;; 0d:4463 $00

script_0061:
    sIF_FLAG !wScriptFlags.7                           ;; 0d:4464 $08 $87 $00 $06
      sSET_NPC_TYPES 18                                ;; 0d:4468 $fc $12
      sSPAWN_NPC 0                                     ;; 0d:446a $fd $00
      sSPAWN_NPC 1                                     ;; 0d:446c $fd $01
    sENDIF                                             ;; 0d:446e
    sEND                                               ;; 0d:446e $00

script_0062:
    sEND                                               ;; 0d:446f $00

script_0063:
    sEND                                               ;; 0d:4470 $00

script_0064:
    sIF_FLAG !wScriptFlags.7                           ;; 0d:4471 $08 $87 $00 $06
      sSET_NPC_TYPES 19                                ;; 0d:4475 $fc $13
      sSPAWN_NPC 0                                     ;; 0d:4477 $fd $00
      sSPAWN_NPC 1                                     ;; 0d:4479 $fd $01
    sENDIF                                             ;; 0d:447b
    sCLEAR_FLAG wScriptFlags0F.0                       ;; 0d:447b $db $78
    sCLEAR_FLAG wScriptFlags0F.1                       ;; 0d:447d $db $79
    sEND                                               ;; 0d:447f $00

script_0065:
    sEND                                               ;; 0d:4480 $00

script_0066:
    sEND                                               ;; 0d:4481 $00

script_0067:
    sIF_FLAG !wScriptFlags.7                           ;; 0d:4482 $08 $87 $00 $06
      sSET_NPC_TYPES 18                                ;; 0d:4486 $fc $12
      sSPAWN_NPC 1                                     ;; 0d:4488 $fd $01
      sSPAWN_NPC 2                                     ;; 0d:448a $fd $02
    sENDIF                                             ;; 0d:448c
    sEND                                               ;; 0d:448c $00

script_0068:
    sEND                                               ;; 0d:448d $00

script_0069:
    sEND                                               ;; 0d:448e $00

script_006a:
    sIF_FLAG !wScriptFlags.7                           ;; 0d:448f $08 $87 $00 $06
      sSET_NPC_TYPES 24                                ;; 0d:4493 $fc $18
      sSPAWN_NPC 0                                     ;; 0d:4495 $fd $00
      sSPAWN_NPC 1                                     ;; 0d:4497 $fd $01
    sENDIF                                             ;; 0d:4499
    sEND                                               ;; 0d:4499 $00

script_006b:
    sEND                                               ;; 0d:449a $00

script_006c:
    sEND                                               ;; 0d:449b $00

script_006d:
    sIF_FLAG !wScriptFlags.7                           ;; 0d:449c $08 $87 $00 $04
      sSET_NPC_TYPES 24                                ;; 0d:44a0 $fc $18
      sSPAWN_NPC 2                                     ;; 0d:44a2 $fd $02
    sENDIF                                             ;; 0d:44a4
    sEND                                               ;; 0d:44a4 $00

script_006e:
    sEND                                               ;; 0d:44a5 $00

script_006f:
    sEND                                               ;; 0d:44a6 $00

script_0070:
    sIF_FLAG !wScriptFlags.7                           ;; 0d:44a7 $08 $87 $00 $04
      sSET_NPC_TYPES 25                                ;; 0d:44ab $fc $19
      sSPAWN_NPC 0                                     ;; 0d:44ad $fd $00
    sENDIF                                             ;; 0d:44af
    sEND                                               ;; 0d:44af $00

script_0071:
    sEND                                               ;; 0d:44b0 $00

script_0072:
    sEND                                               ;; 0d:44b1 $00

script_0073:
    sIF_FLAG !wScriptFlags.7                           ;; 0d:44b2 $08 $87 $00 $06
      sSET_NPC_TYPES 25                                ;; 0d:44b6 $fc $19
      sSPAWN_NPC 1                                     ;; 0d:44b8 $fd $01
      sSPAWN_NPC 2                                     ;; 0d:44ba $fd $02
    sENDIF                                             ;; 0d:44bc
    sEND                                               ;; 0d:44bc $00

script_0074:
    sEND                                               ;; 0d:44bd $00

script_0075:
    sEND                                               ;; 0d:44be $00

script_0076:
    sIF_FLAG !wScriptFlags.7                           ;; 0d:44bf $08 $87 $00 $06
      sSET_NPC_TYPES 28                                ;; 0d:44c3 $fc $1c
      sSPAWN_NPC 0                                     ;; 0d:44c5 $fd $00
      sSPAWN_NPC 1                                     ;; 0d:44c7 $fd $01
    sENDIF                                             ;; 0d:44c9
    sEND                                               ;; 0d:44c9 $00

script_0077:
    sEND                                               ;; 0d:44ca $00

script_0078:
    sEND                                               ;; 0d:44cb $00

script_0079:
    sIF_FLAG !wScriptFlags.7                           ;; 0d:44cc $08 $87 $00 $04
      sSET_NPC_TYPES 29                                ;; 0d:44d0 $fc $1d
      sSPAWN_NPC 0                                     ;; 0d:44d2 $fd $00
    sENDIF                                             ;; 0d:44d4
    sEND                                               ;; 0d:44d4 $00

script_007a:
    sEND                                               ;; 0d:44d5 $00

script_007b:
    sEND                                               ;; 0d:44d6 $00

script_007c:
    sIF_FLAG !wScriptFlags.7                           ;; 0d:44d7 $08 $87 $00 $04
      sSET_NPC_TYPES 28                                ;; 0d:44db $fc $1c
      sSPAWN_NPC 2                                     ;; 0d:44dd $fd $02
    sENDIF                                             ;; 0d:44df
    sEND                                               ;; 0d:44df $00

script_007d:
    sEND                                               ;; 0d:44e0 $00

script_007e:
    sEND                                               ;; 0d:44e1 $00

script_007f:
    sSET_NPC_TYPES 4                                   ;; 0d:44e2 $fc $04
    sSPAWN_NPC 0                                       ;; 0d:44e4 $fd $00
    sSPAWN_NPC 1                                       ;; 0d:44e6 $fd $01
    sCLEAR_FLAG wScriptFlags0F.0                       ;; 0d:44e8 $db $78
    sCLEAR_FLAG wScriptFlags0F.1                       ;; 0d:44ea $db $79
    sEND                                               ;; 0d:44ec $00

script_0080:
    sEND                                               ;; 0d:44ed $00

script_0081:
    sEND                                               ;; 0d:44ee $00

script_0082:
    sIF_FLAG !wScriptFlags.7                           ;; 0d:44ef $08 $87 $00 $06
      sSET_NPC_TYPES 5                                 ;; 0d:44f3 $fc $05
      sSPAWN_NPC 0                                     ;; 0d:44f5 $fd $00
      sSPAWN_NPC 1                                     ;; 0d:44f7 $fd $01
    sENDIF                                             ;; 0d:44f9
    sEND                                               ;; 0d:44f9 $00

script_0083:
    sEND                                               ;; 0d:44fa $00

script_0084:
    sEND                                               ;; 0d:44fb $00

script_0085:
    sIF_FLAG !wScriptFlags.7                           ;; 0d:44fc $08 $87 $00 $06
      sSET_NPC_TYPES 6                                 ;; 0d:4500 $fc $06
      sSPAWN_NPC 0                                     ;; 0d:4502 $fd $00
      sSPAWN_NPC 1                                     ;; 0d:4504 $fd $01
    sENDIF                                             ;; 0d:4506
    sEND                                               ;; 0d:4506 $00

script_0086:
    sEND                                               ;; 0d:4507 $00

script_0087:
    sEND                                               ;; 0d:4508 $00

script_0088:
    sIF_FLAG !wScriptFlags.7                           ;; 0d:4509 $08 $87 $00 $06
      sSET_NPC_TYPES 7                                 ;; 0d:450d $fc $07
      sSPAWN_NPC 0                                     ;; 0d:450f $fd $00
      sSPAWN_NPC 1                                     ;; 0d:4511 $fd $01
    sENDIF                                             ;; 0d:4513
    sEND                                               ;; 0d:4513 $00

script_0089:
    sEND                                               ;; 0d:4514 $00

script_008a:
    sEND                                               ;; 0d:4515 $00

script_008b:
    sIF_FLAG !wScriptFlags.7                           ;; 0d:4516 $08 $87 $00 $04
      sSET_NPC_TYPES 10                                ;; 0d:451a $fc $0a
      sSPAWN_NPC 0                                     ;; 0d:451c $fd $00
    sENDIF                                             ;; 0d:451e
    sEND                                               ;; 0d:451e $00

script_008c:
    sEND                                               ;; 0d:451f $00

script_008d:
    sEND                                               ;; 0d:4520 $00

script_008e:
    sIF_FLAG !wScriptFlags.7                           ;; 0d:4521 $08 $87 $00 $06
      sSET_NPC_TYPES 10                                ;; 0d:4525 $fc $0a
      sSPAWN_NPC 1                                     ;; 0d:4527 $fd $01
      sSPAWN_NPC 2                                     ;; 0d:4529 $fd $02
    sENDIF                                             ;; 0d:452b
    sCLEAR_FLAG wScriptFlags0F.0                       ;; 0d:452b $db $78
    sEND                                               ;; 0d:452d $00

script_008f:
    sEND                                               ;; 0d:452e $00

script_0090:
    sEND                                               ;; 0d:452f $00

script_0091:
    sIF_FLAG !wScriptFlags.7                           ;; 0d:4530 $08 $87 $00 $04
      sSET_NPC_TYPES 12                                ;; 0d:4534 $fc $0c
      sSPAWN_NPC 0                                     ;; 0d:4536 $fd $00
    sENDIF                                             ;; 0d:4538
    sEND                                               ;; 0d:4538 $00

script_0092:
    sEND                                               ;; 0d:4539 $00

script_0093:
    sEND                                               ;; 0d:453a $00

script_0094:
    sIF_FLAG !wScriptFlags.7                           ;; 0d:453b $08 $87 $00 $04
      sSET_NPC_TYPES 12                                ;; 0d:453f $fc $0c
      sSPAWN_NPC 2                                     ;; 0d:4541 $fd $02
    sENDIF                                             ;; 0d:4543
    sEND                                               ;; 0d:4543 $00

script_0095:
    sEND                                               ;; 0d:4544 $00

script_0096:
    sEND                                               ;; 0d:4545 $00

script_0097:
    sIF_FLAG !wScriptFlags.7                           ;; 0d:4546 $08 $87 $00 $06
      sSET_NPC_TYPES 14                                ;; 0d:454a $fc $0e
      sSPAWN_NPC 1                                     ;; 0d:454c $fd $01
      sSPAWN_NPC 2                                     ;; 0d:454e $fd $02
    sENDIF                                             ;; 0d:4550
    sCLEAR_FLAG wScriptFlags0F.0                       ;; 0d:4550 $db $78
    sCLEAR_FLAG wScriptFlags0F.1                       ;; 0d:4552 $db $79
    sEND                                               ;; 0d:4554 $00

script_0098:
    sEND                                               ;; 0d:4555 $00

script_0099:
    sEND                                               ;; 0d:4556 $00

script_009a:
    sIF_FLAG !wScriptFlags.7                           ;; 0d:4557 $08 $87 $00 $06
      sSET_NPC_TYPES 15                                ;; 0d:455b $fc $0f
      sSPAWN_NPC 1                                     ;; 0d:455d $fd $01
      sSPAWN_NPC 2                                     ;; 0d:455f $fd $02
    sENDIF                                             ;; 0d:4561
    sEND                                               ;; 0d:4561 $00

script_009b:
    sEND                                               ;; 0d:4562 $00

script_009c:
    sEND                                               ;; 0d:4563 $00

script_009d:
    sIF_FLAG !wScriptFlags.7                           ;; 0d:4564 $08 $87 $00 $06
      sSET_NPC_TYPES 16                                ;; 0d:4568 $fc $10
      sSPAWN_NPC 1                                     ;; 0d:456a $fd $01
      sSPAWN_NPC 2                                     ;; 0d:456c $fd $02
    sENDIF                                             ;; 0d:456e
    sCLEAR_FLAG wScriptFlags0F.0                       ;; 0d:456e $db $78
    sCLEAR_FLAG wScriptFlags0F.1                       ;; 0d:4570 $db $79
    sCLEAR_FLAG wScriptFlags0F.2                       ;; 0d:4572 $db $7a
    sCLEAR_FLAG wScriptFlags0F.3                       ;; 0d:4574 $db $7b
    sEND                                               ;; 0d:4576 $00

script_009e:
    sEND                                               ;; 0d:4577 $00

script_009f:
    sEND                                               ;; 0d:4578 $00

script_00a0:
    sIF_FLAG !wScriptFlags.7                           ;; 0d:4579 $08 $87 $00 $04
      sSET_NPC_TYPES 17                                ;; 0d:457d $fc $11
      sSPAWN_NPC 2                                     ;; 0d:457f $fd $02
    sENDIF                                             ;; 0d:4581
    sEND                                               ;; 0d:4581 $00

script_00a1:
    sEND                                               ;; 0d:4582 $00

script_00a2:
    sEND                                               ;; 0d:4583 $00

script_00a3:
    sIF_FLAG !wScriptFlags.7                           ;; 0d:4584 $08 $87 $00 $06
      sSET_NPC_TYPES 20                                ;; 0d:4588 $fc $14
      sSPAWN_NPC 0                                     ;; 0d:458a $fd $00
      sSPAWN_NPC 1                                     ;; 0d:458c $fd $01
    sENDIF                                             ;; 0d:458e
    sEND                                               ;; 0d:458e $00

script_00a4:
    sEND                                               ;; 0d:458f $00

script_00a5:
    sEND                                               ;; 0d:4590 $00

script_00a6:
    sIF_FLAG !wScriptFlags.7                           ;; 0d:4591 $08 $87 $00 $04
      sSET_NPC_TYPES 8                                 ;; 0d:4595 $fc $08
      sSPAWN_NPC 1                                     ;; 0d:4597 $fd $01
    sENDIF                                             ;; 0d:4599
    sEND                                               ;; 0d:4599 $00

script_00a7:
    sEND                                               ;; 0d:459a $00

script_00a8:
    sEND                                               ;; 0d:459b $00

script_00a9:
    sIF_FLAG !wScriptFlags.7                           ;; 0d:459c $08 $87 $00 $06
      sSET_NPC_TYPES 22                                ;; 0d:45a0 $fc $16
      sSPAWN_NPC 1                                     ;; 0d:45a2 $fd $01
      sSPAWN_NPC 2                                     ;; 0d:45a4 $fd $02
    sENDIF                                             ;; 0d:45a6
    sCLEAR_FLAG wScriptFlags0F.0                       ;; 0d:45a6 $db $78
    sCLEAR_FLAG wScriptFlags0F.1                       ;; 0d:45a8 $db $79
    sEND                                               ;; 0d:45aa $00

script_00aa:
    sEND                                               ;; 0d:45ab $00

script_00ab:
    sEND                                               ;; 0d:45ac $00

script_00ac:
    sIF_FLAG !wScriptFlags.7                           ;; 0d:45ad $08 $87 $00 $04
      sSET_NPC_TYPES 23                                ;; 0d:45b1 $fc $17
      sSPAWN_NPC 0                                     ;; 0d:45b3 $fd $00
    sENDIF                                             ;; 0d:45b5
    sEND                                               ;; 0d:45b5 $00

script_00ad:
    sEND                                               ;; 0d:45b6 $00

script_00ae:
    sEND                                               ;; 0d:45b7 $00

script_00af:
    sCLOSE_WEST_DOOR                                   ;; 0d:45b8 $e7
    sSET_NPC_TYPES 5                                   ;; 0d:45b9 $fc $05
    sSPAWN_NPC 0                                       ;; 0d:45bb $fd $00
    sSPAWN_NPC 0                                       ;; 0d:45bd $fd $00
    sSPAWN_NPC 0                                       ;; 0d:45bf $fd $00
    sEND                                               ;; 0d:45c1 $00

script_00b0:
    sEND                                               ;; 0d:45c2 $00

script_00b1:
    sIF_FLAG !wScriptFlags09.7                         ;; 0d:45c3 $08 $cf $00 $07
      sSET_NPC_TYPES 89                                ;; 0d:45c7 $fc $59
      sSPAWN_NPC 2                                     ;; 0d:45c9 $fd $02
      sSET_CHEST_OPEN_SCRIPT2 script_045e              ;; 0d:45cb $ca $04 $5e
    sENDIF                                             ;; 0d:45ce
    sOPEN_WEST_DOOR                                    ;; 0d:45ce $e6
    sEND                                               ;; 0d:45cf $00

script_00b2:
    sIF_FLAG !wScriptFlags.7                           ;; 0d:45d0 $08 $87 $00 $04
      sSET_NPC_TYPES 26                                ;; 0d:45d4 $fc $1a
      sSPAWN_NPC 1                                     ;; 0d:45d6 $fd $01
    sENDIF                                             ;; 0d:45d8
    sEND                                               ;; 0d:45d8 $00

script_00b3:
    sEND                                               ;; 0d:45d9 $00

script_00b4:
    sEND                                               ;; 0d:45da $00

script_00b5:
    sIF_FLAG !wScriptFlags.7                           ;; 0d:45db $08 $87 $00 $06
      sSET_NPC_TYPES 27                                ;; 0d:45df $fc $1b
      sSPAWN_NPC 0                                     ;; 0d:45e1 $fd $00
      sSPAWN_NPC 1                                     ;; 0d:45e3 $fd $01
    sENDIF                                             ;; 0d:45e5
    sEND                                               ;; 0d:45e5 $00

script_00b6:
    sEND                                               ;; 0d:45e6 $00

script_00b7:
    sEND                                               ;; 0d:45e7 $00

script_00b8:
    sIF_FLAG !wScriptFlags.7                           ;; 0d:45e8 $08 $87 $00 $06
      sSET_NPC_TYPES 30                                ;; 0d:45ec $fc $1e
      sSPAWN_NPC 0                                     ;; 0d:45ee $fd $00
      sSPAWN_NPC 1                                     ;; 0d:45f0 $fd $01
    sENDIF                                             ;; 0d:45f2
    sEND                                               ;; 0d:45f2 $00

script_00b9:
    sEND                                               ;; 0d:45f3 $00

script_00ba:
    sEND                                               ;; 0d:45f4 $00

script_00bb:
    sIF_FLAG !wScriptFlags.7                           ;; 0d:45f5 $08 $87 $00 $04
      sSET_NPC_TYPES 26                                ;; 0d:45f9 $fc $1a
      sSPAWN_NPC 0                                     ;; 0d:45fb $fd $00
    sENDIF                                             ;; 0d:45fd
    sEND                                               ;; 0d:45fd $00

script_00bc:
    sEND                                               ;; 0d:45fe $00

script_00bd:
    sEND                                               ;; 0d:45ff $00

script_00be:
    sIF_FLAG !wScriptFlags.7                           ;; 0d:4600 $08 $87 $00 $06
      sSET_NPC_TYPES 31                                ;; 0d:4604 $fc $1f
      sSPAWN_NPC 0                                     ;; 0d:4606 $fd $00
      sSPAWN_NPC 1                                     ;; 0d:4608 $fd $01
    sENDIF                                             ;; 0d:460a
    sEND                                               ;; 0d:460a $00

script_00bf:
    sEND                                               ;; 0d:460b $00

script_00c0:
    sEND                                               ;; 0d:460c $00

script_00c1:
    sIF_FLAG !wScriptFlags.7                           ;; 0d:460d $08 $87 $00 $04
      sSET_NPC_TYPES 31                                ;; 0d:4611 $fc $1f
      sSPAWN_NPC 2                                     ;; 0d:4613 $fd $02
    sENDIF                                             ;; 0d:4615
    sEND                                               ;; 0d:4615 $00

script_00c2:
    sEND                                               ;; 0d:4616 $00

script_00c3:
    sEND                                               ;; 0d:4617 $00

script_00c4:
    sIF_FLAG !wScriptFlags.7                           ;; 0d:4618 $08 $87 $00 $06
      sSET_NPC_TYPES 32                                ;; 0d:461c $fc $20
      sSPAWN_NPC 1                                     ;; 0d:461e $fd $01
      sSPAWN_NPC 2                                     ;; 0d:4620 $fd $02
    sENDIF                                             ;; 0d:4622
    sCLEAR_FLAG wScriptFlags0F.0                       ;; 0d:4622 $db $78
    sCLEAR_FLAG wScriptFlags0F.1                       ;; 0d:4624 $db $79
    sCLEAR_FLAG wScriptFlags0F.2                       ;; 0d:4626 $db $7a
    sCLEAR_FLAG wScriptFlags0F.3                       ;; 0d:4628 $db $7b
    sEND                                               ;; 0d:462a $00

script_00c5:
    sEND                                               ;; 0d:462b $00

script_00c6:
    sEND                                               ;; 0d:462c $00

script_00c7:
    sIF_FLAG !wScriptFlags.7                           ;; 0d:462d $08 $87 $00 $06
      sSET_NPC_TYPES 33                                ;; 0d:4631 $fc $21
      sSPAWN_NPC 0                                     ;; 0d:4633 $fd $00
      sSPAWN_NPC 1                                     ;; 0d:4635 $fd $01
    sENDIF                                             ;; 0d:4637
    sEND                                               ;; 0d:4637 $00

script_00c8:
    sEND                                               ;; 0d:4638 $00

script_00c9:
    sEND                                               ;; 0d:4639 $00

script_00ca:
    sIF_FLAG !wScriptFlags.7                           ;; 0d:463a $08 $87 $00 $04
      sSET_NPC_TYPES 34                                ;; 0d:463e $fc $22
      sSPAWN_NPC 0                                     ;; 0d:4640 $fd $00
    sENDIF                                             ;; 0d:4642
    sEND                                               ;; 0d:4642 $00

script_00cb:
    sEND                                               ;; 0d:4643 $00

script_00cc:
    sEND                                               ;; 0d:4644 $00

script_00cd:
    sIF_FLAG !wScriptFlags.7                           ;; 0d:4645 $08 $87 $00 $04
      sSET_NPC_TYPES 34                                ;; 0d:4649 $fc $22
      sSPAWN_NPC 1                                     ;; 0d:464b $fd $01
    sENDIF                                             ;; 0d:464d
    sEND                                               ;; 0d:464d $00

script_00ce:
    sEND                                               ;; 0d:464e $00

script_00cf:
    sEND                                               ;; 0d:464f $00

script_00d0:
    sIF_FLAG !wScriptFlags.7                           ;; 0d:4650 $08 $87 $00 $04
      sSET_NPC_TYPES 35                                ;; 0d:4654 $fc $23
      sSPAWN_NPC 1                                     ;; 0d:4656 $fd $01
    sENDIF                                             ;; 0d:4658
    sEND                                               ;; 0d:4658 $00

script_00d1:
    sEND                                               ;; 0d:4659 $00

script_00d2:
    sEND                                               ;; 0d:465a $00

script_00d3:
    sIF_FLAG !wScriptFlags.7                           ;; 0d:465b $08 $87 $00 $04
      sSET_NPC_TYPES 35                                ;; 0d:465f $fc $23
      sSPAWN_NPC 2                                     ;; 0d:4661 $fd $02
    sENDIF                                             ;; 0d:4663
    sEND                                               ;; 0d:4663 $00

script_00d4:
    sEND                                               ;; 0d:4664 $00

script_00d5:
    sEND                                               ;; 0d:4665 $00

script_00d6:
    sCLEAR_FLAG wScriptFlags0F.0                       ;; 0d:4666 $db $78
    sIF_FLAG !wScriptFlags.7                           ;; 0d:4668 $08 $87 $00 $10
      sSET_NPC_TYPES 3                                 ;; 0d:466c $fc $03
      sIF_FLAG !wScriptFlags01.5                       ;; 0d:466e $08 $8d $00 $06
        sSPAWN_NPC 0                                   ;; 0d:4672 $fd $00
        sSPAWN_NPC 1                                   ;; 0d:4674 $fd $01
      sELSE                                            ;; 0d:4676 $01 $04
        sSPAWN_NPC 2                                   ;; 0d:4678 $fd $02
        sSPAWN_NPC 2                                   ;; 0d:467a $fd $02
      sENDIF                                           ;; 0d:467c
    sENDIF                                             ;; 0d:467c
    sEND                                               ;; 0d:467c $00

script_00d7:
    sEND                                               ;; 0d:467d $00

script_00d8:
    sIF_FLAG wScriptFlags01.5                          ;; 0d:467e $08 $0d $00 $0b
      sIF_FLAG !wScriptFlags0F.0                       ;; 0d:4682 $08 $f8 $00 $07
        sSET_NPC_TYPES 89                              ;; 0d:4686 $fc $59
        sSPAWN_NPC 0                                   ;; 0d:4688 $fd $00
        sSET_CHEST_OPEN_SCRIPT1 script_0441            ;; 0d:468a $c9 $04 $41
      sENDIF                                           ;; 0d:468d
    sENDIF                                             ;; 0d:468d
    sSET_FLAG wScriptFlags0F.0                         ;; 0d:468d $da $78
    sEND                                               ;; 0d:468f $00

script_00d9:
    sCLOSE_NORTH_DOOR                                  ;; 0d:4690 $e1
    sSET_NPC_TYPES 14                                  ;; 0d:4691 $fc $0e
    sSPAWN_NPC 2                                       ;; 0d:4693 $fd $02
    sSPAWN_NPC 2                                       ;; 0d:4695 $fd $02
    sEND                                               ;; 0d:4697 $00

script_00da:
    sEND                                               ;; 0d:4698 $00

script_00db:
    sIF_FLAG !wScriptFlags07.1                         ;; 0d:4699 $08 $b9 $00 $07
      sSET_NPC_TYPES 89                                ;; 0d:469d $fc $59
      sSPAWN_NPC 0                                     ;; 0d:469f $fd $00
      sSET_CHEST_OPEN_SCRIPT1 script_045f              ;; 0d:46a1 $c9 $04 $5f
    sENDIF                                             ;; 0d:46a4
    sOPEN_NORTH_DOOR                                   ;; 0d:46a4 $e0
    sEND                                               ;; 0d:46a5 $00

script_00dc:
    sCLOSE_WEST_DOOR                                   ;; 0d:46a6 $e7
    sSET_NPC_TYPES 10                                  ;; 0d:46a7 $fc $0a
    sSPAWN_NPC 1                                       ;; 0d:46a9 $fd $01
    sSPAWN_NPC 1                                       ;; 0d:46ab $fd $01
    sEND                                               ;; 0d:46ad $00

script_00dd:
    sEND                                               ;; 0d:46ae $00

script_00de:
    sIF_FLAG !wScriptFlags07.7                         ;; 0d:46af $08 $bf $00 $07
      sSET_NPC_TYPES 89                                ;; 0d:46b3 $fc $59
      sSPAWN_NPC 0                                     ;; 0d:46b5 $fd $00
      sSET_CHEST_OPEN_SCRIPT1 script_0460              ;; 0d:46b7 $c9 $04 $60
    sENDIF                                             ;; 0d:46ba
    sOPEN_WEST_DOOR                                    ;; 0d:46ba $e6
    sEND                                               ;; 0d:46bb $00

script_00e0:
    sSET_NPC_TYPES 36                                  ;; 0d:46bc $fc $24
    sSPAWN_NPC 2                                       ;; 0d:46be $fd $02
    sEND                                               ;; 0d:46c0 $00

script_00e1:
    sEND                                               ;; 0d:46c1 $00

script_00e2:
    sEND                                               ;; 0d:46c2 $00

script_00e3:
    sSET_NPC_TYPES 37                                  ;; 0d:46c3 $fc $25
    sSPAWN_NPC 0                                       ;; 0d:46c5 $fd $00
    sSPAWN_NPC 2                                       ;; 0d:46c7 $fd $02
    sEND                                               ;; 0d:46c9 $00

script_00e4:
    sEND                                               ;; 0d:46ca $00

script_00e5:
    sEND                                               ;; 0d:46cb $00

script_00e6:
    sSET_MUSIC 0                                       ;; 0d:46cc $f8 $00
    sSET_PLAYER_POSITION 19, 10                        ;; 0d:46ce $8a $13 $0a
    sSET_PLAYER_DIRECTION_LEFT                         ;; 0d:46d1 $87
    sLOOP 10, 2                                        ;; 0d:46d2 $03 $0a $02
      sPLAYER_STEP_FORWARD                             ;; 0d:46d5 $80
    sEND                                               ;; 0d:46d6 $00
    sSFX 16                                            ;; 0d:46d7 $f9 $10
    sSET_ROOM_TILE $6c, 9, 5 ;sSET_ROOM_TILE $6c, 9, 5 ;; 0d:46d9 $b0 $6c $09 $05
    sDELAY 30                                          ;; 0d:46dd $f0 $1e
    sSET_PLAYER_DIRECTION_UP                           ;; 0d:46df $84
    sDELAY 20                                          ;; 0d:46e0 $f0 $14
    sMSG                                               ;; 0d:46e2 $04
      db "<10>Now fight!", $00                         ;; 0d:46e3
    sDELAY 70                                          ;; 0d:46eb $f0 $46
    sMSG                                               ;; 0d:46ed $04
      db "<11>", $00                                   ;; 0d:46ee
    sSET_MUSIC 26                                      ;; 0d:46f0 $f8 $1a
    sDELAY 60                                          ;; 0d:46f2 $f0 $3c
    sSET_ROOM_TILE $6a, 4, 1                           ;; 0d:46f4 $b0 $6a $04 $01
    sSET_ROOM_TILE $6a, 5, 1                           ;; 0d:46f8 $b0 $6a $05 $01
    sSET_ROOM_TILE $6a, 4, 0                           ;; 0d:46fc $b0 $6a $04 $00
    sSET_ROOM_TILE $6a, 5, 0                           ;; 0d:4700 $b0 $6a $05 $00
    sSFX 16                                            ;; 0d:4704 $f9 $10
    sSPAWN_BOSS 16                                     ;; 0d:4706 $fe $10
    sDELAY 60                                          ;; 0d:4708 $f0 $3c
    sSET_ROOM_TILE $0f, 4, 0                           ;; 0d:470a $b0 $0f $04 $00
    sSET_ROOM_TILE $0f, 5, 0                           ;; 0d:470e $b0 $0f $05 $00
    sSET_ROOM_TILE $1f, 4, 1                           ;; 0d:4712 $b0 $1f $04 $01
    sSET_ROOM_TILE $1f, 5, 1                           ;; 0d:4716 $b0 $1f $05 $01
    sSFX 16                                            ;; 0d:471a $f9 $10
    sEND                                               ;; 0d:471c $00

script_00e7:
    sEND                                               ;; 0d:471d $00

script_00e8:
    sIF_FLAG wScriptFlags01.0                          ;; 0d:471e $08 $08 $00 $16
      sSFX 16                                          ;; 0d:4722 $f9 $10
      sSET_ROOM_TILE $1f, 4, 0                         ;; 0d:4724 $b0 $1f $04 $00
      sSET_ROOM_TILE $1f, 5, 0                         ;; 0d:4728 $b0 $1f $05 $00
      sSET_ROOM_TILE $6a, 4, 1                         ;; 0d:472c $b0 $6a $04 $01
      sSET_ROOM_TILE $6a, 5, 1                         ;; 0d:4730 $b0 $6a $05 $01
      sSET_MUSIC 14                                    ;; 0d:4734 $f8 $0e
    sELSE                                              ;; 0d:4736 $01 $05
      sDELAY 60                                        ;; 0d:4738 $f0 $3c
      sCALL script_0531                                ;; 0d:473a $02 $61 $29
    sENDIF                                             ;; 0d:473d
    sEND                                               ;; 0d:473d $00

script_00e9:
    sIF_FLAG wScriptFlags05.0                          ;; 0d:473e $08 $28 $00 $08
      sSET_NPC_TYPES 62                                ;; 0d:4742 $fc $3e
      sSPAWN_NPC 1                                     ;; 0d:4744 $fd $01
      sSPAWN_NPC 2                                     ;; 0d:4746 $fd $02
    sELSE                                              ;; 0d:4748 $01 $04
      sSET_NPC_TYPES 59                                ;; 0d:474a $fc $3b
      sSPAWN_NPC 1                                     ;; 0d:474c $fd $01
    sENDIF                                             ;; 0d:474e
    sEND                                               ;; 0d:474e $00

script_00ea:
    sEND                                               ;; 0d:474f $00

script_00eb:
    sEND                                               ;; 0d:4750 $00

script_00ec:
    sSET_NPC_TYPES 60                                  ;; 0d:4751 $fc $3c
    sSPAWN_NPC 1                                       ;; 0d:4753 $fd $01
    sEND                                               ;; 0d:4755 $00

script_00ed:
    sEND                                               ;; 0d:4756 $00

script_00ee:
    sEND                                               ;; 0d:4757 $00

script_00ef:
    sIF_FLAG wScriptFlags05.5                          ;; 0d:4758 $08 $2d $00 $06
      sCALL script_0543                                ;; 0d:475c $02 $77 $4e
      sCALL script_0542                                ;; 0d:475f $02 $77 $14
    sENDIF                                             ;; 0d:4762
    sIF_FLAG wScriptFlags05.4, !wScriptFlags03.7       ;; 0d:4762 $08 $2c $9f $00 $09
      sCALL script_0537                                ;; 0d:4767 $02 $64 $da
      sCALL script_0538                                ;; 0d:476a $02 $66 $80
      sCALL script_0539                                ;; 0d:476d $02 $67 $54
    sENDIF                                             ;; 0d:4770
    sIF_FLAG !wScriptFlags01.1                         ;; 0d:4770 $08 $89 $00 $09
      sCALL script_0534                                ;; 0d:4774 $02 $62 $b2
      sCALL script_0535                                ;; 0d:4777 $02 $63 $de
      sCALL script_0536                                ;; 0d:477a $02 $64 $3a
    sENDIF                                             ;; 0d:477d
    sEND                                               ;; 0d:477d $00

script_00f0:
    sEND                                               ;; 0d:477e $00

script_00f1:
    sEND                                               ;; 0d:477f $00

script_00f2:
    sCLOSE_WEST_DOOR                                   ;; 0d:4780 $e7
    sSET_NPC_TYPES 22                                  ;; 0d:4781 $fc $16
    sSPAWN_NPC 2                                       ;; 0d:4783 $fd $02
    sSPAWN_NPC 2                                       ;; 0d:4785 $fd $02
    sEND                                               ;; 0d:4787 $00

script_00f3:
    sEND                                               ;; 0d:4788 $00

script_00f4:
    sIF_FLAG !wScriptFlags07.4                         ;; 0d:4789 $08 $bc $00 $07
      sSET_NPC_TYPES 89                                ;; 0d:478d $fc $59
      sSPAWN_NPC 0                                     ;; 0d:478f $fd $00
      sSET_CHEST_OPEN_SCRIPT1 script_0463              ;; 0d:4791 $c9 $04 $63
    sENDIF                                             ;; 0d:4794
    sOPEN_WEST_DOOR                                    ;; 0d:4794 $e6
    sEND                                               ;; 0d:4795 $00

script_00f5:
    sIF_FLAG !wScriptFlags01.3                         ;; 0d:4796 $08 $8b $00 $06
      sSET_NPC_TYPES 42                                ;; 0d:479a $fc $2a
      sSPAWN_NPC 0                                     ;; 0d:479c $fd $00
      sSPAWN_NPC 2                                     ;; 0d:479e $fd $02
    sENDIF                                             ;; 0d:47a0
    sIF_FLAG !wScriptFlags01.2                         ;; 0d:47a0 $08 $8a $00 $19
      sSET_MUSIC 0                                     ;; 0d:47a4 $f8 $00
      sSPAWN_NPC 1                                     ;; 0d:47a6 $fd $01
      sMSG                                             ;; 0d:47a8 $04
        db "<10> HELP!\n H E L P!!<12>"
        db "<11>", $00 ;; 0d:47a9
      sSET_MUSIC 26                                    ;; 0d:47bb $f8 $1a
    sENDIF                                             ;; 0d:47bd
    sIF_FLAG wScriptFlags01.3                          ;; 0d:47bd $08 $0b $00 $03
      sCALL script_0043                                ;; 0d:47c1 $02 $03 $ec
    sENDIF                                             ;; 0d:47c4
    sEND                                               ;; 0d:47c4 $00

script_00f6:
    sIF_FLAG !wScriptFlags01.3                         ;; 0d:47c5 $08 $8b $00 $02
      sSET_MUSIC 20                                    ;; 0d:47c9 $f8 $14
    sENDIF                                             ;; 0d:47cb
    sEND                                               ;; 0d:47cb $00

script_00f7:
    sIF_FLAG !wScriptFlags01.2                         ;; 0d:47cc $08 $8a $00 $04
      sSET_MUSIC 0                                     ;; 0d:47d0 $f8 $00
      sSET_FLAG wScriptFlags01.2                       ;; 0d:47d2 $da $0a
    sENDIF                                             ;; 0d:47d4
    sEND                                               ;; 0d:47d4 $00

script_00f8:
    sSET_NPC_TYPES 43                                  ;; 0d:47d5 $fc $2b
    sSPAWN_NPC 0                                       ;; 0d:47d7 $fd $00
    sEND                                               ;; 0d:47d9 $00

script_00f9:
    sEND                                               ;; 0d:47da $00

script_00fa:
    sEND                                               ;; 0d:47db $00

script_00fb:
    sSET_NPC_TYPES 43                                  ;; 0d:47dc $fc $2b
    sSPAWN_NPC 1                                       ;; 0d:47de $fd $01
    sEND                                               ;; 0d:47e0 $00

script_00fc:
    sEND                                               ;; 0d:47e1 $00

script_00fd:
    sEND                                               ;; 0d:47e2 $00

script_00fe:
    sSET_NPC_TYPES 49                                  ;; 0d:47e3 $fc $31
    sSPAWN_NPC 1                                       ;; 0d:47e5 $fd $01
    sSPAWN_NPC 2                                       ;; 0d:47e7 $fd $02
    sEND                                               ;; 0d:47e9 $00

script_00ff:
    sEND                                               ;; 0d:47ea $00

script_0100:
    sEND                                               ;; 0d:47eb $00

script_0101:
    sSET_NPC_TYPES 26                                  ;; 0d:47ec $fc $1a
    sSPAWN_NPC 0                                       ;; 0d:47ee $fd $00
    sSPAWN_NPC 0                                       ;; 0d:47f0 $fd $00
    sEND                                               ;; 0d:47f2 $00

script_0102:
    sEND                                               ;; 0d:47f3 $00

script_0103:
    sIF_FLAG !wScriptFlags07.6                         ;; 0d:47f4 $08 $be $00 $07
      sSET_NPC_TYPES 89                                ;; 0d:47f8 $fc $59
      sSPAWN_NPC 0                                     ;; 0d:47fa $fd $00
      sSET_CHEST_OPEN_SCRIPT1 script_0461              ;; 0d:47fc $c9 $04 $61
    sENDIF                                             ;; 0d:47ff
    sEND                                               ;; 0d:47ff $00

script_0104:
    sEND                                               ;; 0d:4800 $00

script_0105:
    sEND                                               ;; 0d:4801 $00

script_0106:
    sIF_FLAG !wScriptFlags02.0                         ;; 0d:4802 $08 $90 $00 $06
      sSET_NPC_TYPES 51                                ;; 0d:4806 $fc $33
      sSPAWN_NPC 0                                     ;; 0d:4808 $fd $00
      sSPAWN_NPC 1                                     ;; 0d:480a $fd $01
    sENDIF                                             ;; 0d:480c
    sIF_FLAG wScriptFlags02.0, !wScriptFlags02.1       ;; 0d:480c $08 $10 $91 $00 $0a
      sSET_NPC_TYPES 0                                 ;; 0d:4811 $fc $00
      sSPAWN_NPC 0                                     ;; 0d:4813 $fd $00
      sSPAWN_NPC 1                                     ;; 0d:4815 $fd $01
      sFLASH_SCREEN                                    ;; 0d:4817 $bf
      sSFX 20                                          ;; 0d:4818 $f9 $14
      sFLASH_SCREEN                                    ;; 0d:481a $bf
    sENDIF                                             ;; 0d:481b
    sIF_FLAG wScriptFlags02.1                          ;; 0d:481b $08 $11 $00 $06
      sSET_NPC_TYPES 51                                ;; 0d:481f $fc $33
      sSPAWN_NPC 0                                     ;; 0d:4821 $fd $00
      sSPAWN_NPC 1                                     ;; 0d:4823 $fd $01
    sENDIF                                             ;; 0d:4825
    sEND                                               ;; 0d:4825 $00

script_0107:
    sEND                                               ;; 0d:4826 $00

script_0108:
    sEND                                               ;; 0d:4827 $00

script_0109:
    sIF_FLAG !wScriptFlags02.0                         ;; 0d:4828 $08 $90 $00 $04
      sSET_NPC_TYPES 52                                ;; 0d:482c $fc $34
      sSPAWN_NPC 0                                     ;; 0d:482e $fd $00
    sENDIF                                             ;; 0d:4830
    sIF_FLAG wScriptFlags02.0, !wScriptFlags02.1       ;; 0d:4830 $08 $10 $91 $00 $0a
      sSET_NPC_TYPES 0                                 ;; 0d:4835 $fc $00
      sSPAWN_NPC 0                                     ;; 0d:4837 $fd $00
      sSPAWN_NPC 1                                     ;; 0d:4839 $fd $01
      sSFX 20                                          ;; 0d:483b $f9 $14
      sFLASH_SCREEN                                    ;; 0d:483d $bf
      sFLASH_SCREEN                                    ;; 0d:483e $bf
    sENDIF                                             ;; 0d:483f
    sIF_FLAG wScriptFlags02.1                          ;; 0d:483f $08 $11 $00 $04
      sSET_NPC_TYPES 52                                ;; 0d:4843 $fc $34
      sSPAWN_NPC 0                                     ;; 0d:4845 $fd $00
    sENDIF                                             ;; 0d:4847
    sEND                                               ;; 0d:4847 $00

script_010a:
    sEND                                               ;; 0d:4848 $00

script_010b:
    sEND                                               ;; 0d:4849 $00

script_010c:
    sIF_FLAG wScriptFlags02.0, !wScriptFlags02.1       ;; 0d:484a $08 $10 $91 $00 $04
      sSET_NPC_TYPES 36                                ;; 0d:484f $fc $24
      sSPAWN_NPC 2                                     ;; 0d:4851 $fd $02
    sENDIF                                             ;; 0d:4853
    sEND                                               ;; 0d:4853 $00

script_010d:
    sEND                                               ;; 0d:4854 $00

script_010e:
    sEND                                               ;; 0d:4855 $00

script_010f:
    sSET_NPC_TYPES 55                                  ;; 0d:4856 $fc $37
    sIF_FLAG wScriptFlags02.0, !wScriptFlags03.7       ;; 0d:4858 $08 $10 $9f $00 $02
      sSPAWN_NPC 2                                     ;; 0d:485d $fd $02
    sENDIF                                             ;; 0d:485f
    sIF_FLAG !wScriptFlags02.0                         ;; 0d:485f $08 $90 $00 $be
      sFOLLOWER_DIRECTION_UP                           ;; 0d:4863 $94
      sFOLLOWER_SET_POSITION 9, 14                     ;; 0d:4864 $99 $09 $0e
      sSPAWN_NPC 2                                     ;; 0d:4867 $fd $02
      sSET_PLAYER_DIRECTION_UP                         ;; 0d:4869 $84
      sSET_PLAYER_POSITION 9, 14                       ;; 0d:486a $8a $09 $0e
      sPLAYER_STEP_FORWARD                             ;; 0d:486d $80
      sPLAYER_STEP_FORWARD                             ;; 0d:486e $80
      sSET_PLAYER_DIRECTION_LEFT                       ;; 0d:486f $87
      sLOOP 3, 2                                       ;; 0d:4870 $03 $03 $02
        sPLAYER_STEP_FORWARD                           ;; 0d:4873 $80
      sEND                                             ;; 0d:4874 $00
      sSET_PLAYER_DIRECTION_RIGHT                      ;; 0d:4875 $86
      sSET_NPC_1_DIRECTION_LEFT                        ;; 0d:4876 $17
      sNPC_1_STEP_FORWARD                              ;; 0d:4877 $10
      sSET_NPC_1_DIRECTION_DOWN                        ;; 0d:4878 $15
      sLOOP 6, 2                                       ;; 0d:4879 $03 $06 $02
        sNPC_1_STEP_FORWARD                            ;; 0d:487c $10
      sEND                                             ;; 0d:487d $00
      sMSG                                             ;; 0d:487e $04
        db "<10>Cibba:I am Cibba.\n Bogard told me\n about you.<12>"
        db "<1b> __ Oh, yes!\n It sure is the\n symbol of Mana.<12>"
        db "<1b> Step forward.\n You'll see what\n you must see.<12>"
        db "<11>", $00 ;; 0d:487f
      sSET_NPC_1_DIRECTION_LEFT                        ;; 0d:48e1 $17
      sLOOP 3, 2                                       ;; 0d:48e2 $03 $03 $02
        sNPC_1_STEP_BACKWARDS                          ;; 0d:48e5 $11
      sEND                                             ;; 0d:48e6 $00
      sLOOP 4, 2                                       ;; 0d:48e7 $03 $04 $02
        sFOLLOWER_STEP_FORWARD                         ;; 0d:48ea $90
      sEND                                             ;; 0d:48eb $00
      sDELAY 20                                        ;; 0d:48ec $f0 $14
      sFOLLOWER_STEP_FORWARD                           ;; 0d:48ee $90
      sDELAY 10                                        ;; 0d:48ef $f0 $0a
      sFOLLOWER_STEP_FORWARD                           ;; 0d:48f1 $90
      sDELAY 10                                        ;; 0d:48f2 $f0 $0a
      sFOLLOWER_STEP_FORWARD                           ;; 0d:48f4 $90
      sSET_PLAYER_DIRECTION_LEFT                       ;; 0d:48f5 $87
      sSET_NPC_1_DIRECTION_RIGHT                       ;; 0d:48f6 $16
      sPLAYER_STEP_FORWARD                             ;; 0d:48f7 $80
      sNPC_1_STEP_FORWARD                              ;; 0d:48f8 $10
      sPLAYER_STEP_FORWARD                             ;; 0d:48f9 $80
      sNPC_1_STEP_FORWARD                              ;; 0d:48fa $10
      sSET_PLAYER_DIRECTION_UP                         ;; 0d:48fb $84
      sSET_NPC_1_DIRECTION_UP                          ;; 0d:48fc $14
      sLOOP 6, 3                                       ;; 0d:48fd $03 $06 $03
        sPLAYER_STEP_FORWARD                           ;; 0d:4900 $80
        sNPC_1_STEP_FORWARD                            ;; 0d:4901 $10
      sEND                                             ;; 0d:4902 $00
      sSET_MUSIC 0                                     ;; 0d:4903 $f8 $00
      sDELAY 60                                        ;; 0d:4905 $f0 $3c
      sFLASH_SCREEN                                    ;; 0d:4907 $bf
      sSFX 20                                          ;; 0d:4908 $f9 $14
      sFLASH_SCREEN                                    ;; 0d:490a $bf
      sDELAY 20                                        ;; 0d:490b $f0 $14
      sSFX 37                                          ;; 0d:490d $f9 $25
      sLOOP 5, 2                                       ;; 0d:490f $03 $05 $02
        sFLASH_SCREEN                                  ;; 0d:4912 $bf
      sEND                                             ;; 0d:4913 $00
      sFADE_TO_BLACK                                   ;; 0d:4914 $bd
      sDELAY 40                                        ;; 0d:4915 $f0 $28
      sSET_MUSIC 3                                     ;; 0d:4917 $f8 $03
      sDELAY 200                                       ;; 0d:4919 $f0 $c8
      sSPAWN_NPC 1                                     ;; 0d:491b $fd $01
      sFADE_TO_NORMAL                                  ;; 0d:491d $bc
      sCALL script_053a                                ;; 0d:491e $02 $68 $e9
    sENDIF                                             ;; 0d:4921
    sEND                                               ;; 0d:4921 $00

script_0110:
    sEND                                               ;; 0d:4922 $00

script_0111:
    sEND                                               ;; 0d:4923 $00

script_0112:
    sSET_NPC_TYPES 45                                  ;; 0d:4924 $fc $2d
    sSPAWN_NPC 0                                       ;; 0d:4926 $fd $00
    sSPAWN_NPC 1                                       ;; 0d:4928 $fd $01
    sEND                                               ;; 0d:492a $00

script_0113:
    sEND                                               ;; 0d:492b $00

script_0114:
    sEND                                               ;; 0d:492c $00

script_0115:
    sSET_NPC_TYPES 46                                  ;; 0d:492d $fc $2e
    sSPAWN_NPC 0                                       ;; 0d:492f $fd $00
    sEND                                               ;; 0d:4931 $00

script_0116:
    sEND                                               ;; 0d:4932 $00

script_0117:
    sEND                                               ;; 0d:4933 $00

script_0118:
    sSET_NPC_TYPES 47                                  ;; 0d:4934 $fc $2f
    sSPAWN_NPC 0                                       ;; 0d:4936 $fd $00
    sSPAWN_NPC 1                                       ;; 0d:4938 $fd $01
    sEND                                               ;; 0d:493a $00

script_0119:
    sEND                                               ;; 0d:493b $00

script_011a:
    sEND                                               ;; 0d:493c $00

script_011b:
    sIF_FLAG wScriptFlags04.6                          ;; 0d:493d $08 $26 $00 $04
      sSET_NPC_TYPES 48                                ;; 0d:4941 $fc $30
      sSPAWN_NPC 0                                     ;; 0d:4943 $fd $00
    sENDIF                                             ;; 0d:4945
    sEND                                               ;; 0d:4945 $00

script_011c:
    sEND                                               ;; 0d:4946 $00

script_011d:
    sEND                                               ;; 0d:4947 $00

script_011e:
    sIF_FLAG !wScriptFlags03.0                         ;; 0d:4948 $08 $98 $00 $0f
      sSET_MUSIC 15                                    ;; 0d:494c $f8 $0f
      sSET_NPC_TYPES 108                               ;; 0d:494e $fc $6c
      sLOOP 5, 4                                       ;; 0d:4950 $03 $05 $04
        sSFX 20                                        ;; 0d:4953 $f9 $14
        sFLASH_SCREEN                                  ;; 0d:4955 $bf
      sEND                                             ;; 0d:4956 $00
      sSPAWN_NPC 0                                     ;; 0d:4957 $fd $00
    sELSE                                              ;; 0d:4959 $01 $32
      sLOOP 3, 4                                       ;; 0d:495b $03 $03 $04
        sSFX 20                                        ;; 0d:495e $f9 $14
        sFLASH_SCREEN                                  ;; 0d:4960 $bf
      sEND                                             ;; 0d:4961 $00
      sMSG                                             ;; 0d:4962 $04
        db "<10>Julius:See the\n true power of\n Mana now!<12>"
        db "<11>", $00 ;; 0d:4963
      sLOOP 5, 4                                       ;; 0d:4982 $03 $05 $04
        sSFX 20                                        ;; 0d:4985 $f9 $14
        sFLASH_SCREEN                                  ;; 0d:4987 $bf
      sEND                                             ;; 0d:4988 $00
      sSPAWN_BOSS 14                                   ;; 0d:4989 $fe $0e
      sSET_MUSIC 19                                    ;; 0d:498b $f8 $13
    sENDIF                                             ;; 0d:498d
    sEND                                               ;; 0d:498d $00

script_011f:
    sEND                                               ;; 0d:498e $00

script_0120:
    sIF_FLAG !wScriptFlags03.0                         ;; 0d:498f $08 $98 $00 $20
      sSET_MUSIC 0                                     ;; 0d:4993 $f8 $00
      sSFX 34                                          ;; 0d:4995 $f9 $22
      sSET_FLAG wScriptFlags03.0                       ;; 0d:4997 $da $18
      sDELAY 60                                        ;; 0d:4999 $f0 $3c
      sMSG                                             ;; 0d:499b $04
        db "<10> Defeated Julius.<12>"
        db "<11>", $00 ;; 0d:499c
      sDELAY 30                                        ;; 0d:49ac $f0 $1e
      sCALL script_011e                                ;; 0d:49ae $02 $09 $48
    sELSE                                              ;; 0d:49b1 $01 $b2
      sSET_MUSIC 0                                     ;; 0d:49b3 $f8 $00
      sSFX 34                                          ;; 0d:49b5 $f9 $22
      sDELAY 20                                        ;; 0d:49b7 $f0 $14
      sMSG                                             ;; 0d:49b9 $04
        db "<10>Julius:GRRRR", $00                     ;; 0d:49ba
      sDELAY 30                                        ;; 0d:49c6 $f0 $1e
      sMSG                                             ;; 0d:49c8 $04
        db " __<12>"
        db "<11>", $00            ;; 0d:49c9
      sDELAY 60                                        ;; 0d:49ce $f0 $3c
      sFADE_TO_BLACK                                   ;; 0d:49d0 $bd
      sLOAD_ROOM_INSTANT 15, $50, 8, 10                ;; 0d:49d1 $f3 $0f $50 $08 $0a
      sSET_NPC_TYPES 50                                ;; 0d:49d6 $fc $32
      sSPAWN_NPC 1                                     ;; 0d:49d8 $fd $01
      sSET_PLAYER_POSITION 8, 10                       ;; 0d:49da $8a $08 $0a
      sSET_PLAYER_DIRECTION_RIGHT                      ;; 0d:49dd $86
      sFADE_TO_NORMAL                                  ;; 0d:49de $bc
      sDELAY 100                                       ;; 0d:49df $f0 $64
      sMSG                                             ;; 0d:49e1 $04
        db "<10><GIRL>:__ <BOY>.\n<BOY>:Are you\n okay, <GIRL>?<12>"
        db "<1b><BOY>:I defeated\n Julius.\n It's all over.<12>"
        db "<11>", $00 ;; 0d:49e2
      sDELAY 60                                        ;; 0d:4a17 $f0 $3c
      sMSG                                             ;; 0d:4a19 $04
        db "<10>Julius:__ No!!\n __ It is not!<12>"
        db "<11>", $00 ;; 0d:4a1a
      sSET_PLAYER_DIRECTION_UP                         ;; 0d:4a33 $84
      sSET_NPC_1_DIRECTION_UP                          ;; 0d:4a34 $14
      sLOOP 5, 4                                       ;; 0d:4a35 $03 $05 $04
        sSFX 20                                        ;; 0d:4a38 $f9 $14
        sFLASH_SCREEN                                  ;; 0d:4a3a $bf
      sEND                                             ;; 0d:4a3b $00
      sDELAY 40                                        ;; 0d:4a3c $f0 $28
      sMSG                                             ;; 0d:4a3e $04
        db "<10>Julius:<BOY>!\n You will never\n leave here alive!<12>"
        db "<11>", $00 ;; 0d:4a3f
      sGIVE_FOLLOWER 1                                 ;; 0d:4a60 $9c $01
      sSET_FLAG wScriptFlags0A.1                       ;; 0d:4a62 $da $51
      sRUN_ROOM_SCRIPT                                 ;; 0d:4a64 $ec
    sENDIF                                             ;; 0d:4a65
    sEND                                               ;; 0d:4a65 $00

script_0121:
    sIF_FLAG !wScriptFlags02.0                         ;; 0d:4a66 $08 $90 $00 $04
      sSET_NPC_TYPES 55                                ;; 0d:4a6a $fc $37
      sSPAWN_NPC 0                                     ;; 0d:4a6c $fd $00
    sENDIF                                             ;; 0d:4a6e
    sIF_FLAG wScriptFlags02.0, !wScriptFlags02.1       ;; 0d:4a6e $08 $10 $91 $00 $0a
      sSET_NPC_TYPES 0                                 ;; 0d:4a73 $fc $00
      sSPAWN_NPC 0                                     ;; 0d:4a75 $fd $00
      sSPAWN_NPC 1                                     ;; 0d:4a77 $fd $01
      sSFX 20                                          ;; 0d:4a79 $f9 $14
      sFLASH_SCREEN                                    ;; 0d:4a7b $bf
      sFLASH_SCREEN                                    ;; 0d:4a7c $bf
    sENDIF                                             ;; 0d:4a7d
    sIF_FLAG wScriptFlags05.7                          ;; 0d:4a7d $08 $2f $00 $04
      sSET_NPC_TYPES 52                                ;; 0d:4a81 $fc $34
      sSPAWN_NPC 1                                     ;; 0d:4a83 $fd $01
    sENDIF                                             ;; 0d:4a85
    sEND                                               ;; 0d:4a85 $00

script_0122:
    sEND                                               ;; 0d:4a86 $00

script_0123:
    sEND                                               ;; 0d:4a87 $00

script_0124:
    sIF_FLAG !wScriptFlags04.6                         ;; 0d:4a88 $08 $a6 $00 $04
      sSET_NPC_TYPES 44                                ;; 0d:4a8c $fc $2c
      sSPAWN_NPC 2                                     ;; 0d:4a8e $fd $02
    sENDIF                                             ;; 0d:4a90
    sEND                                               ;; 0d:4a90 $00

script_0125:
    sEND                                               ;; 0d:4a91 $00

script_0126:
    sEND                                               ;; 0d:4a92 $00

script_0127:
    sSET_NPC_TYPES 89                                  ;; 0d:4a93 $fc $59
    sIF_FLAG !wScriptFlags09.5                         ;; 0d:4a95 $08 $cd $00 $05
      sSPAWN_NPC 1                                     ;; 0d:4a99 $fd $01
      sSET_CHEST_OPEN_SCRIPT1 script_0443              ;; 0d:4a9b $c9 $04 $43
    sENDIF                                             ;; 0d:4a9e
    sEND                                               ;; 0d:4a9e $00

script_0128:
    sEND                                               ;; 0d:4a9f $00

script_0129:
    sEND                                               ;; 0d:4aa0 $00

script_012a:
    sSET_NPC_TYPES 4                                   ;; 0d:4aa1 $fc $04
    sSPAWN_NPC 2                                       ;; 0d:4aa3 $fd $02
    sSPAWN_NPC 0                                       ;; 0d:4aa5 $fd $00
    sEND                                               ;; 0d:4aa7 $00

script_012b:
    sEND                                               ;; 0d:4aa8 $00

script_012c:
    sEND                                               ;; 0d:4aa9 $00

script_012d:
    sSET_NPC_TYPES 63                                  ;; 0d:4aaa $fc $3f
    sSPAWN_NPC 1                                       ;; 0d:4aac $fd $01
    sEND                                               ;; 0d:4aae $00

script_012e:
    sEND                                               ;; 0d:4aaf $00

script_012f:
    sEND                                               ;; 0d:4ab0 $00

script_0130:
    sIF_FLAG wScriptFlags02.6                          ;; 0d:4ab1 $08 $16 $00 $04
      sSET_NPC_TYPES 96                                ;; 0d:4ab5 $fc $60
      sSPAWN_NPC 0                                     ;; 0d:4ab7 $fd $00
    sENDIF                                             ;; 0d:4ab9
    sEND                                               ;; 0d:4ab9 $00

script_0131:
    sEND                                               ;; 0d:4aba $00

script_0132:
    sEND                                               ;; 0d:4abb $00

script_0133:
    sSET_NPC_TYPES 64                                  ;; 0d:4abc $fc $40
    sSPAWN_NPC 0                                       ;; 0d:4abe $fd $00
    sEND                                               ;; 0d:4ac0 $00

script_0134:
    sEND                                               ;; 0d:4ac1 $00

script_0135:
    sEND                                               ;; 0d:4ac2 $00

script_0136:
    sSET_NPC_TYPES 64                                  ;; 0d:4ac3 $fc $40
    sSPAWN_NPC 1                                       ;; 0d:4ac5 $fd $01
    sEND                                               ;; 0d:4ac7 $00

script_0137:
    sEND                                               ;; 0d:4ac8 $00

script_0138:
    sEND                                               ;; 0d:4ac9 $00

script_0139:
    sSET_NPC_TYPES 5                                   ;; 0d:4aca $fc $05
    sSPAWN_NPC 2                                       ;; 0d:4acc $fd $02
    sSPAWN_NPC 0                                       ;; 0d:4ace $fd $00
    sEND                                               ;; 0d:4ad0 $00

script_013a:
    sEND                                               ;; 0d:4ad1 $00

script_013b:
    sEND                                               ;; 0d:4ad2 $00

script_013c:
    sSET_NPC_TYPES 64                                  ;; 0d:4ad3 $fc $40
    sSPAWN_NPC 2                                       ;; 0d:4ad5 $fd $02
    sEND                                               ;; 0d:4ad7 $00

script_013d:
    sEND                                               ;; 0d:4ad8 $00

script_013e:
    sEND                                               ;; 0d:4ad9 $00

script_013f:
    sSET_NPC_TYPES 88                                  ;; 0d:4ada $fc $58
    sSPAWN_NPC 0                                       ;; 0d:4adc $fd $00
    sSPAWN_NPC 1                                       ;; 0d:4ade $fd $01
    sIF_FLAG wScriptFlags02.6, !wScriptFlags0A.4       ;; 0d:4ae0 $08 $16 $d4 $00 $02
      sSPAWN_NPC 2                                     ;; 0d:4ae5 $fd $02
    sENDIF                                             ;; 0d:4ae7
    sEND                                               ;; 0d:4ae7 $00

script_0140:
    sIF_FLAG wScriptFlags02.6, wScriptFlags0A.4        ;; 0d:4ae8 $08 $16 $54 $00 $27
      sMSG                                             ;; 0d:4aed $04
        db "<10>Bogard:I'll stay\n and guard <GIRL>.\n<BOY>:__ Okay.<12>"
        db "<11>", $00 ;; 0d:4aee
      sFOLLOWER_DELETE                                 ;; 0d:4b11 $98
      sCLEAR_FLAG wScriptFlags0A.4                     ;; 0d:4b12 $db $54
    sENDIF                                             ;; 0d:4b14
    sEND                                               ;; 0d:4b14 $00

script_0141:
    sEND                                               ;; 0d:4b15 $00

script_0142:
    sSET_NPC_TYPES 56                                  ;; 0d:4b16 $fc $38
    sSPAWN_NPC 0                                       ;; 0d:4b18 $fd $00
    sSPAWN_NPC 1                                       ;; 0d:4b1a $fd $01
    sEND                                               ;; 0d:4b1c $00

script_0143:
    sEND                                               ;; 0d:4b1d $00

script_0144:
    sEND                                               ;; 0d:4b1e $00

script_0145:
    sSET_NPC_TYPES 57                                  ;; 0d:4b1f $fc $39
    sSPAWN_NPC 0                                       ;; 0d:4b21 $fd $00
    sSPAWN_NPC 1                                       ;; 0d:4b23 $fd $01
    sEND                                               ;; 0d:4b25 $00

script_0146:
    sEND                                               ;; 0d:4b26 $00

script_0147:
    sEND                                               ;; 0d:4b27 $00

script_0148:
    sSET_NPC_TYPES 59                                  ;; 0d:4b28 $fc $3b
    sSPAWN_NPC 0                                       ;; 0d:4b2a $fd $00
    sEND                                               ;; 0d:4b2c $00

script_0149:
    sEND                                               ;; 0d:4b2d $00

script_014a:
    sEND                                               ;; 0d:4b2e $00

script_014b:
    sSET_NPC_TYPES 60                                  ;; 0d:4b2f $fc $3c
    sSPAWN_NPC 0                                       ;; 0d:4b31 $fd $00
    sEND                                               ;; 0d:4b33 $00

script_014c:
    sEND                                               ;; 0d:4b34 $00

script_014d:
    sEND                                               ;; 0d:4b35 $00

script_014e:
    sSET_NPC_TYPES 59                                  ;; 0d:4b36 $fc $3b
    sSPAWN_NPC 2                                       ;; 0d:4b38 $fd $02
    sEND                                               ;; 0d:4b3a $00

script_014f:
    sEND                                               ;; 0d:4b3b $00

script_0150:
    sEND                                               ;; 0d:4b3c $00

script_0151:
    sSET_NPC_TYPES 48                                  ;; 0d:4b3d $fc $30
    sSPAWN_NPC 1                                       ;; 0d:4b3f $fd $01
    sEND                                               ;; 0d:4b41 $00

script_0152:
    sEND                                               ;; 0d:4b42 $00

script_0153:
    sEND                                               ;; 0d:4b43 $00

script_0154:
    sSET_NPC_TYPES 65                                  ;; 0d:4b44 $fc $41
    sIF_FLAG !wScriptFlags04.7                         ;; 0d:4b46 $08 $a7 $00 $04
      sSPAWN_NPC 0                                     ;; 0d:4b4a $fd $00
      sSPAWN_NPC 1                                     ;; 0d:4b4c $fd $01
    sENDIF                                             ;; 0d:4b4e
    sIF_FLAG wScriptFlags04.7, !wScriptFlags03.5       ;; 0d:4b4e $08 $27 $9d $00 $02
      sSPAWN_NPC 1                                     ;; 0d:4b53 $fd $01
    sENDIF                                             ;; 0d:4b55
    sIF_FLAG wScriptFlags03.5                          ;; 0d:4b55 $08 $1d $00 $04
      sSET_ROOM_TILE $02, 8, 6                         ;; 0d:4b59 $b0 $02 $08 $06
    sENDIF                                             ;; 0d:4b5d
    sIF_FLAG wScriptFlags03.5, !wScriptFlags0A.6, !wScriptFlags05.0 ;; 0d:4b5d $08 $1d $d6 $a8 $00 $2c
      sSPAWN_NPC 2                                     ;; 0d:4b63 $fd $02
      sGIVE_FOLLOWER 6                                 ;; 0d:4b65 $9c $06
      sPLAYER_STEP_FORWARD                             ;; 0d:4b67 $80
      sPLAYER_STEP_FORWARD                             ;; 0d:4b68 $80
      sPLAYER_STEP_FORWARD                             ;; 0d:4b69 $80
      sSET_NPC_1_DIRECTION_LEFT                        ;; 0d:4b6a $17
      sMSG                                             ;; 0d:4b6b $04
        db "<10>Lester:Phew__\n I was helpless\n all by myself.<12>"
        db "<11>", $00 ;; 0d:4b6c
      sSET_FLAG wScriptFlags0A.6                       ;; 0d:4b8d $da $56
    sENDIF                                             ;; 0d:4b8f
    sEND                                               ;; 0d:4b8f $00

script_0155:
    sEND                                               ;; 0d:4b90 $00

script_0156:
    sEND                                               ;; 0d:4b91 $00

script_0157:
    sIF_FLAG wScriptFlags03.7, !wScriptFlags04.0       ;; 0d:4b92 $08 $1f $a0 $00 $04
      sSET_NPC_TYPES 76                                ;; 0d:4b97 $fc $4c
      sSPAWN_NPC 1                                     ;; 0d:4b99 $fd $01
    sENDIF                                             ;; 0d:4b9b
    sEND                                               ;; 0d:4b9b $00

script_0158:
    sEND                                               ;; 0d:4b9c $00

script_0159:
    sEND                                               ;; 0d:4b9d $00

script_015a:
    sSET_NPC_TYPES 72                                  ;; 0d:4b9e $fc $48
    sSPAWN_NPC 0                                       ;; 0d:4ba0 $fd $00
    sSPAWN_NPC 1                                       ;; 0d:4ba2 $fd $01
    sEND                                               ;; 0d:4ba4 $00

script_015b:
    sEND                                               ;; 0d:4ba5 $00

script_015c:
    sEND                                               ;; 0d:4ba6 $00

script_015d:
    sSET_NPC_TYPES 73                                  ;; 0d:4ba7 $fc $49
    sSPAWN_NPC 0                                       ;; 0d:4ba9 $fd $00
    sSPAWN_NPC 1                                       ;; 0d:4bab $fd $01
    sEND                                               ;; 0d:4bad $00

script_015e:
    sEND                                               ;; 0d:4bae $00

script_015f:
    sEND                                               ;; 0d:4baf $00

script_0160:
    sSET_NPC_TYPES 67                                  ;; 0d:4bb0 $fc $43
    sSPAWN_NPC 0                                       ;; 0d:4bb2 $fd $00
    sEND                                               ;; 0d:4bb4 $00

script_0161:
    sEND                                               ;; 0d:4bb5 $00

script_0162:
    sEND                                               ;; 0d:4bb6 $00

script_0163:
    sSET_NPC_TYPES 67                                  ;; 0d:4bb7 $fc $43
    sSPAWN_NPC 1                                       ;; 0d:4bb9 $fd $01
    sEND                                               ;; 0d:4bbb $00

script_0164:
    sEND                                               ;; 0d:4bbc $00

script_0165:
    sEND                                               ;; 0d:4bbd $00

script_0166:
    sSET_NPC_TYPES 67                                  ;; 0d:4bbe $fc $43
    sSPAWN_NPC 2                                       ;; 0d:4bc0 $fd $02
    sEND                                               ;; 0d:4bc2 $00

script_0167:
    sEND                                               ;; 0d:4bc3 $00

script_0168:
    sEND                                               ;; 0d:4bc4 $00

script_0169:
    sSET_NPC_TYPES 68                                  ;; 0d:4bc5 $fc $44
    sSPAWN_NPC 0                                       ;; 0d:4bc7 $fd $00
    sEND                                               ;; 0d:4bc9 $00

script_016a:
    sEND                                               ;; 0d:4bca $00

script_016b:
    sEND                                               ;; 0d:4bcb $00

script_016c:
    sSET_NPC_TYPES 68                                  ;; 0d:4bcc $fc $44
    sSPAWN_NPC 2                                       ;; 0d:4bce $fd $02
    sEND                                               ;; 0d:4bd0 $00

script_016d:
    sEND                                               ;; 0d:4bd1 $00

script_016e:
    sEND                                               ;; 0d:4bd2 $00

script_016f:
    sSET_NPC_TYPES 68                                  ;; 0d:4bd3 $fc $44
    sSPAWN_NPC 1                                       ;; 0d:4bd5 $fd $01
    sEND                                               ;; 0d:4bd7 $00

script_0170:
    sEND                                               ;; 0d:4bd8 $00

script_0171:
    sEND                                               ;; 0d:4bd9 $00

script_0172:
    sSET_NPC_TYPES 69                                  ;; 0d:4bda $fc $45
    sSPAWN_NPC 0                                       ;; 0d:4bdc $fd $00
    sEND                                               ;; 0d:4bde $00

script_0173:
    sEND                                               ;; 0d:4bdf $00

script_0174:
    sEND                                               ;; 0d:4be0 $00

script_0175:
    sSET_NPC_TYPES 69                                  ;; 0d:4be1 $fc $45
    sSPAWN_NPC 1                                       ;; 0d:4be3 $fd $01
    sEND                                               ;; 0d:4be5 $00

script_0176:
    sEND                                               ;; 0d:4be6 $00

script_0177:
    sEND                                               ;; 0d:4be7 $00

script_0178:
    sIF_FLAG !wScriptFlags03.6                         ;; 0d:4be8 $08 $9e $00 $04
      sSET_NPC_TYPES 40                                ;; 0d:4bec $fc $28
      sSPAWN_NPC 2                                     ;; 0d:4bee $fd $02
    sENDIF                                             ;; 0d:4bf0
    sEND                                               ;; 0d:4bf0 $00

script_0179:
    sEND                                               ;; 0d:4bf1 $00

script_017a:
    sEND                                               ;; 0d:4bf2 $00

script_017b:
    sSET_NPC_TYPES 70                                  ;; 0d:4bf3 $fc $46
    sIF_FLAG !wScriptFlags05.5                         ;; 0d:4bf5 $08 $ad $00 $04
      sSPAWN_NPC 1                                     ;; 0d:4bf9 $fd $01
    sELSE                                              ;; 0d:4bfb $01 $02
      sSPAWN_NPC 0                                     ;; 0d:4bfd $fd $00
    sENDIF                                             ;; 0d:4bff
    sEND                                               ;; 0d:4bff $00

script_017c:
    sEND                                               ;; 0d:4c00 $00

script_017d:
    sEND                                               ;; 0d:4c01 $00

script_017e:
    sSET_NPC_TYPES 70                                  ;; 0d:4c02 $fc $46
    sSPAWN_NPC 2                                       ;; 0d:4c04 $fd $02
    sEND                                               ;; 0d:4c06 $00

script_017f:
    sEND                                               ;; 0d:4c07 $00

script_0180:
    sEND                                               ;; 0d:4c08 $00

script_0181:
    sSET_NPC_TYPES 71                                  ;; 0d:4c09 $fc $47
    sIF_FLAG !wScriptFlags05.5                         ;; 0d:4c0b $08 $ad $00 $04
      sSPAWN_NPC 1                                     ;; 0d:4c0f $fd $01
    sELSE                                              ;; 0d:4c11 $01 $02
      sSPAWN_NPC 0                                     ;; 0d:4c13 $fd $00
    sENDIF                                             ;; 0d:4c15
    sEND                                               ;; 0d:4c15 $00

script_0182:
    sEND                                               ;; 0d:4c16 $00

script_0183:
    sEND                                               ;; 0d:4c17 $00

script_0184:
    sSET_NPC_TYPES 55                                  ;; 0d:4c18 $fc $37
    sSPAWN_NPC 2                                       ;; 0d:4c1a $fd $02
    sEND                                               ;; 0d:4c1c $00

script_0185:
    sEND                                               ;; 0d:4c1d $00

script_0186:
    sEND                                               ;; 0d:4c1e $00

script_0187:
    sSET_NPC_TYPES 6                                   ;; 0d:4c1f $fc $06
    sSPAWN_NPC 2                                       ;; 0d:4c21 $fd $02
    sSPAWN_NPC 1                                       ;; 0d:4c23 $fd $01
    sEND                                               ;; 0d:4c25 $00

script_0188:
    sEND                                               ;; 0d:4c26 $00

script_0189:
    sEND                                               ;; 0d:4c27 $00

script_018a:
    sIF_FLAG !wScriptFlags02.0                         ;; 0d:4c28 $08 $90 $00 $04
      sSET_NPC_TYPES 53                                ;; 0d:4c2c $fc $35
      sSPAWN_NPC 0                                     ;; 0d:4c2e $fd $00
    sENDIF                                             ;; 0d:4c30
    sEND                                               ;; 0d:4c30 $00

script_018b:
    sEND                                               ;; 0d:4c31 $00

script_018c:
    sEND                                               ;; 0d:4c32 $00

script_018d:
    sIF_FLAG !wScriptFlags01.6                         ;; 0d:4c33 $08 $8e $00 $04
      sSET_NPC_TYPES 50                                ;; 0d:4c37 $fc $32
      sSPAWN_NPC 0                                     ;; 0d:4c39 $fd $00
    sENDIF                                             ;; 0d:4c3b
    sEND                                               ;; 0d:4c3b $00

script_018e:
    sEND                                               ;; 0d:4c3c $00

script_018f:
    sEND                                               ;; 0d:4c3d $00

script_0190:
    sIF_FLAG !wScriptFlags09.0, !wScriptFlags0A.2      ;; 0d:4c3e $08 $c8 $d2 $00 $04
      sSET_NPC_TYPES 77                                ;; 0d:4c43 $fc $4d
      sSPAWN_NPC 0                                     ;; 0d:4c45 $fd $00
    sENDIF                                             ;; 0d:4c47
    sEND                                               ;; 0d:4c47 $00

script_0191:
    sEND                                               ;; 0d:4c48 $00

script_0192:
    sEND                                               ;; 0d:4c49 $00

script_0193:
    sIF_FLAG wScriptFlags03.7                          ;; 0d:4c4a $08 $1f $00 $02
    sELSE                                              ;; 0d:4c4e $01 $08
      sIF_FLAG !wScriptFlags03.1                       ;; 0d:4c50 $08 $99 $00 $04
        sSET_NPC_TYPES 80                              ;; 0d:4c54 $fc $50
        sSPAWN_NPC 0                                   ;; 0d:4c56 $fd $00
      sENDIF                                           ;; 0d:4c58
    sENDIF                                             ;; 0d:4c58
    sEND                                               ;; 0d:4c58 $00

script_0194:
    sIF_FLAG !wScriptFlags0B.0                         ;; 0d:4c59 $08 $d8 $00 $02
      sSET_MUSIC 20                                    ;; 0d:4c5d $f8 $14
    sENDIF                                             ;; 0d:4c5f
    sEND                                               ;; 0d:4c5f $00

script_0195:
    sEND                                               ;; 0d:4c60 $00

script_0196:
    sIF_FLAG wScriptFlags02.4, !wScriptFlags04.6       ;; 0d:4c61 $08 $14 $a6 $00 $04
      sSET_NPC_TYPES 48                                ;; 0d:4c66 $fc $30
      sSPAWN_NPC 0                                     ;; 0d:4c68 $fd $00
    sENDIF                                             ;; 0d:4c6a
    sEND                                               ;; 0d:4c6a $00

script_0197:
    sEND                                               ;; 0d:4c6b $00

script_0198:
    sEND                                               ;; 0d:4c6c $00

script_0199:
    sSET_NPC_TYPES 7                                   ;; 0d:4c6d $fc $07
    sSPAWN_NPC 2                                       ;; 0d:4c6f $fd $02
    sSPAWN_NPC 0                                       ;; 0d:4c71 $fd $00
    sEND                                               ;; 0d:4c73 $00

script_019a:
    sEND                                               ;; 0d:4c74 $00

script_019b:
    sEND                                               ;; 0d:4c75 $00

script_019c:
    sEND                                               ;; 0d:4c76 $00

script_019d:
    sIF_FLAG !wScriptFlags03.0                         ;; 0d:4c77 $08 $98 $00 $ae
      sSET_MUSIC 0                                     ;; 0d:4c7b $f8 $00
      sSET_NPC_TYPES 38                                ;; 0d:4c7d $fc $26
      sSPAWN_NPC 0                                     ;; 0d:4c7f $fd $00
      sSPAWN_NPC 1                                     ;; 0d:4c81 $fd $01
      sDELAY 60                                        ;; 0d:4c83 $f0 $3c
      sSET_MUSIC 10                                    ;; 0d:4c85 $f8 $0a
      sMSG                                             ;; 0d:4c87 $04
        db "<10><BOY>:<GIRL>!\n<GIRL>:__", $00         ;; 0d:4c88
      sDELAY 30                                        ;; 0d:4c92 $f0 $1e
      sMSG                                             ;; 0d:4c94 $04
        db "___", $00                                  ;; 0d:4c95
      sDELAY 50                                        ;; 0d:4c98 $f0 $32
      sMSG                                             ;; 0d:4c9a $04
        db "<1b>Julius:You're\n late, <BOY>_<12>"
        db "<1b> I already got\n the greatest\n power of Mana!<12>"
        db "<1b> The time has come\n for the Empire\n Neo-Vandole!<12>"
        db "<1b> Now that I have\n the mighty power_<12>"
        db "<1b> I do not need you\n anymore, <BOY>!<12>"
        db "<11>", $00 ;; 0d:4c9b
      sLOAD_ROOM 1, $67, 9, 10                         ;; 0d:4d1f $f4 $01 $67 $09 $0a
      sCALL script_011e                                ;; 0d:4d24 $02 $09 $48
    sELSE                                              ;; 0d:4d27 $01 $13
      sSET_ROOM_TILE $11, 4, 7                         ;; 0d:4d29 $b0 $11 $04 $07
      sSFX 16                                          ;; 0d:4d2d $f9 $10
      sDELAY 10                                        ;; 0d:4d2f $f0 $0a
      sLOOP 10, 4                                      ;; 0d:4d31 $03 $0a $04
        sSFX 20                                        ;; 0d:4d34 $f9 $14
        sFLASH_SCREEN                                  ;; 0d:4d36 $bf
      sEND                                             ;; 0d:4d37 $00
      sSPAWN_BOSS 17                                   ;; 0d:4d38 $fe $11
      sSET_MUSIC 16                                    ;; 0d:4d3a $f8 $10
    sENDIF                                             ;; 0d:4d3c
    sEND                                               ;; 0d:4d3c $00

script_019e:
    sEND                                               ;; 0d:4d3d $00

script_019f:
    sCALL script_053f                                  ;; 0d:4d3e $02 $6f $ba
    sCALL script_0540                                  ;; 0d:4d41 $02 $71 $ec
    sCALL script_0541                                  ;; 0d:4d44 $02 $74 $0c
    sHALT_GAME                                         ;; 0d:4d47 $cc
    sEND                                               ;; 0d:4d48 $00

script_01a0:
    sIF_FLAG !wScriptFlags04.3                         ;; 0d:4d49 $08 $a3 $00 $08
      sSFX 20                                          ;; 0d:4d4d $f9 $14
      sSET_MUSIC 15                                    ;; 0d:4d4f $f8 $0f
      sSPAWN_BOSS 1                                    ;; 0d:4d51 $fe $01
    sELSE                                              ;; 0d:4d53 $01 $01
      sRUN_ROOM_ALL_KILLED_SCRIPT                      ;; 0d:4d55 $ee
    sENDIF                                             ;; 0d:4d56
    sEND                                               ;; 0d:4d56 $00

script_01a1:
    sSET_MUSIC 7                                       ;; 0d:4d57 $f8 $07
    sEND                                               ;; 0d:4d59 $00

script_01a2:
    sSET_MUSIC 0                                       ;; 0d:4d5a $f8 $00
    sSET_NPC_TYPES 89                                  ;; 0d:4d5c $fc $59
    sSET_ROOM_TILE $25, 3, 4                           ;; 0d:4d5e $b0 $25 $03 $04
    sSET_ROOM_TILE $25, 4, 4                           ;; 0d:4d62 $b0 $25 $04 $04
    sSET_ROOM_TILE $25, 5, 4                           ;; 0d:4d66 $b0 $25 $05 $04
    sSET_ROOM_TILE $25, 6, 4                           ;; 0d:4d6a $b0 $25 $06 $04
    sSET_FLAG wScriptFlags04.3                         ;; 0d:4d6e $da $23
    sIF_FLAG !wScriptFlags09.1                         ;; 0d:4d70 $08 $c9 $00 $05
      sSPAWN_NPC 1                                     ;; 0d:4d74 $fd $01
      sSET_CHEST_OPEN_SCRIPT1 script_0450              ;; 0d:4d76 $c9 $04 $50
    sENDIF                                             ;; 0d:4d79
    sIF_FLAG !wScriptFlags09.0                         ;; 0d:4d79 $08 $c8 $00 $05
      sSPAWN_NPC 2                                     ;; 0d:4d7d $fd $02
      sSET_CHEST_OPEN_SCRIPT2 script_0451              ;; 0d:4d7f $ca $04 $51
    sENDIF                                             ;; 0d:4d82
    sEND                                               ;; 0d:4d82 $00

script_01a3:
    sIF_FLAG wScriptFlags0E.2, wScriptFlags0E.3, !wScriptFlags0E.4, wScriptFlags0E.5, !wScriptFlags0E.6, wScriptFlags0E.7 ;; 0d:4d83 $08 $72 $73 $f4 $75 $f6 $77 $00 $13
      sIF_FLAG !wScriptFlags06.4                       ;; 0d:4d8c $08 $b4 $00 $0b
        sSFX 20                                        ;; 0d:4d90 $f9 $14
        sFLASH_SCREEN                                  ;; 0d:4d92 $bf
        sDELAY 30                                      ;; 0d:4d93 $f0 $1e
        sSPAWN_BOSS 15                                 ;; 0d:4d95 $fe $0f
        sSET_MUSIC 15                                  ;; 0d:4d97 $f8 $0f
      sELSE                                            ;; 0d:4d99 $01 $04
        sSET_ROOM_TILE $59, 8, 1                       ;; 0d:4d9b $b0 $59 $08 $01
      sENDIF                                           ;; 0d:4d9f
    sENDIF                                             ;; 0d:4d9f
    sIF_FLAG wScriptFlags0E.2, wScriptFlags0E.3, !wScriptFlags0E.4, wScriptFlags0E.5, wScriptFlags0E.6, !wScriptFlags0E.7 ;; 0d:4d9f $08 $72 $73 $f4 $75 $76 $f7 $00 $13
      sIF_FLAG !wScriptFlags02.7                       ;; 0d:4da8 $08 $97 $00 $0b
        sSFX 20                                        ;; 0d:4dac $f9 $14
        sFLASH_SCREEN                                  ;; 0d:4dae $bf
        sDELAY 30                                      ;; 0d:4daf $f0 $1e
        sSPAWN_BOSS 20                                 ;; 0d:4db1 $fe $14
        sSET_MUSIC 15                                  ;; 0d:4db3 $f8 $0f
      sELSE                                            ;; 0d:4db5 $01 $04
        sSET_ROOM_TILE $59, 8, 1                       ;; 0d:4db7 $b0 $59 $08 $01
      sENDIF                                           ;; 0d:4dbb
    sENDIF                                             ;; 0d:4dbb
    sIF_FLAG wScriptFlags0E.2, wScriptFlags0E.3, !wScriptFlags0E.4, wScriptFlags0E.5, wScriptFlags0E.6, wScriptFlags0E.7 ;; 0d:4dbb $08 $72 $73 $f4 $75 $76 $77 $00 $13
      sIF_FLAG !wScriptFlags06.2                       ;; 0d:4dc4 $08 $b2 $00 $0b
        sSFX 20                                        ;; 0d:4dc8 $f9 $14
        sFLASH_SCREEN                                  ;; 0d:4dca $bf
        sDELAY 30                                      ;; 0d:4dcb $f0 $1e
        sSPAWN_BOSS 13                                 ;; 0d:4dcd $fe $0d
        sSET_MUSIC 15                                  ;; 0d:4dcf $f8 $0f
      sELSE                                            ;; 0d:4dd1 $01 $04
        sSET_ROOM_TILE $59, 8, 1                       ;; 0d:4dd3 $b0 $59 $08 $01
      sENDIF                                           ;; 0d:4dd7
    sENDIF                                             ;; 0d:4dd7
    sEND                                               ;; 0d:4dd7 $00

script_01a4:
    sSET_MUSIC 22                                      ;; 0d:4dd8 $f8 $16
    sEND                                               ;; 0d:4dda $00

script_01a5:
    sIF_FLAG wScriptFlags0E.2, wScriptFlags0E.3, !wScriptFlags0E.4, wScriptFlags0E.5, !wScriptFlags0E.6, wScriptFlags0E.7 ;; 0d:4ddb $08 $72 $73 $f4 $75 $f6 $77 $00 $23
      sSET_MUSIC 0                                     ;; 0d:4de4 $f8 $00
      sSFX 34                                          ;; 0d:4de6 $f9 $22
      sMSG                                             ;; 0d:4de8 $04
        db "<10>Defeated\n   Dragon Zombie!<12>"
        db "<11>", $00 ;; 0d:4de9
      sSET_FLAG wScriptFlags06.4                       ;; 0d:4e01 $da $34
      sSET_ROOM_TILE $59, 8, 1                         ;; 0d:4e03 $b0 $59 $08 $01
    sENDIF                                             ;; 0d:4e07
    sIF_FLAG wScriptFlags0E.2, wScriptFlags0E.3, !wScriptFlags0E.4, wScriptFlags0E.5, wScriptFlags0E.6, !wScriptFlags0E.7 ;; 0d:4e07 $08 $72 $73 $f4 $75 $76 $f7 $00 $21
      sSET_MUSIC 0                                     ;; 0d:4e10 $f8 $00
      sSFX 34                                          ;; 0d:4e12 $f9 $22
      sMSG                                             ;; 0d:4e14 $04
        db "<10>Defeated\n    Red Dragon!<12>"
        db "<11>", $00 ;; 0d:4e15
      sSET_FLAG wScriptFlags02.7                       ;; 0d:4e2b $da $17
      sSET_ROOM_TILE $59, 8, 1                         ;; 0d:4e2d $b0 $59 $08 $01
    sENDIF                                             ;; 0d:4e31
    sIF_FLAG wScriptFlags0E.2, wScriptFlags0E.3, !wScriptFlags0E.4, wScriptFlags0E.5, wScriptFlags0E.6, wScriptFlags0E.7 ;; 0d:4e31 $08 $72 $73 $f4 $75 $76 $77 $00 $1b
      sSET_MUSIC 0                                     ;; 0d:4e3a $f8 $00
      sSFX 34                                          ;; 0d:4e3c $f9 $22
      sMSG                                             ;; 0d:4e3e $04
        db "<10>Defeated Dragon!<12>"
        db "<11>", $00 ;; 0d:4e3f
      sSET_FLAG wScriptFlags06.2                       ;; 0d:4e4f $da $32
      sSET_ROOM_TILE $59, 8, 1                         ;; 0d:4e51 $b0 $59 $08 $01
    sENDIF                                             ;; 0d:4e55
    sDELAY 30                                          ;; 0d:4e55 $f0 $1e
    sSET_MUSIC 22                                      ;; 0d:4e57 $f8 $16
    sEND                                               ;; 0d:4e59 $00

script_01a6:
    sIF_FLAG !wScriptFlags04.4                         ;; 0d:4e5a $08 $a4 $00 $04
      sSET_NPC_TYPES 90                                ;; 0d:4e5e $fc $5a
      sSPAWN_NPC 1                                     ;; 0d:4e60 $fd $01
    sENDIF                                             ;; 0d:4e62
    sIF_FLAG wScriptFlags04.4                          ;; 0d:4e62 $08 $24 $00 $01
      sOPEN_EAST_DOOR                                  ;; 0d:4e66 $e4
    sENDIF                                             ;; 0d:4e67
    sIF_FLAG wScriptFlags08.0, !wScriptFlags04.5       ;; 0d:4e67 $08 $40 $a5 $00 $31
      sSET_ROOM_TILE $42, 4, 7                         ;; 0d:4e6c $b0 $42 $04 $07
      sSET_ROOM_TILE $43, 5, 7                         ;; 0d:4e70 $b0 $43 $05 $07
      sIF_FLAG wScriptFlags01.6                        ;; 0d:4e74 $08 $0e $00 $25
        sSET_MUSIC 0                                   ;; 0d:4e78 $f8 $00
        sDELAY 50                                      ;; 0d:4e7a $f0 $32
        sMSG                                           ;; 0d:4e7c $04
          db "<10>Lee:That's my\n victim!<12>"
          db "<11>", $00 ;; 0d:4e7d
        sSFX 20                                        ;; 0d:4e92 $f9 $14
        sFLASH_SCREEN                                  ;; 0d:4e94 $bf
        sFLASH_SCREEN                                  ;; 0d:4e95 $bf
        sFLASH_SCREEN                                  ;; 0d:4e96 $bf
        sDELAY 10                                      ;; 0d:4e97 $f0 $0a
        sSET_MUSIC 15                                  ;; 0d:4e99 $f8 $0f
        sSPAWN_BOSS 0                                  ;; 0d:4e9b $fe $00
      sENDIF                                           ;; 0d:4e9d
    sENDIF                                             ;; 0d:4e9d
    sEND                                               ;; 0d:4e9d $00

script_01a7:
    sSET_MUSIC 7                                       ;; 0d:4e9e $f8 $07
    sEND                                               ;; 0d:4ea0 $00

script_01a8:
    sIF_FLAG !wScriptFlags01.6                         ;; 0d:4ea1 $08 $8e $00 $12
      sUNK_D5 30                                       ;; 0d:4ea5 $d5 $1e
      sIF_EQUIPED $27                                  ;; 0d:4ea7 $09 $27 $00 $01
        sTAKE_EQUIPED_ITEM                             ;; 0d:4eab $de
      sENDIF                                           ;; 0d:4eac
      sSFX 16                                          ;; 0d:4eac $f9 $10
      sOPEN_EAST_DOOR                                  ;; 0d:4eae $e4
      sSET_FLAG wScriptFlags04.4                       ;; 0d:4eaf $da $24
      sDELAY 60                                        ;; 0d:4eb1 $f0 $3c
      sSET_MUSIC 7                                     ;; 0d:4eb3 $f8 $07
    sELSE                                              ;; 0d:4eb5 $01 $89
      sDELAY 30                                        ;; 0d:4eb7 $f0 $1e
      sSET_MUSIC 0                                     ;; 0d:4eb9 $f8 $00
      sMSG                                             ;; 0d:4ebb $04
        db "<10>Defeated Vampire!<12>"
        db "<1b>", $00 ;; 0d:4ebc
      sSFX 15                                          ;; 0d:4ecc $f9 $0f
      sMSG                                             ;; 0d:4ece $04
        db "<1b>Received the Magic\nBook of Sleep.\nLearned Slep.", $00 ;; 0d:4ecf
      sGIVE_MAGIC 3                                    ;; 0d:4ef2 $d6 $03
      sMSG                                             ;; 0d:4ef4 $04
        db "<12>"
        db "<1b><BOY>:Are you\n alright, <GIRL>?\n<GIRL>:_ Yeah.<12>"
        db "<11>", $00 ;; 0d:4ef5
      sDELAY 20                                        ;; 0d:4f12 $f0 $14
      sLOAD_ROOM 0, $a9, 10, 6                         ;; 0d:4f14 $f4 $00 $a9 $0a $06
      sDELAY 60                                        ;; 0d:4f19 $f0 $3c
      sMSG                                             ;; 0d:4f1b $04
        db "<10><GIRL>:Wendel is\n to the south.\n Let's hurry!<12>"
        db "<11>", $00 ;; 0d:4f1c
      sSET_MUSIC 20                                    ;; 0d:4f3b $f8 $14
      sSET_FLAG wScriptFlags04.5                       ;; 0d:4f3d $da $25
      sCLEAR_ROOM_HISTORY                              ;; 0d:4f3f $ab
    sENDIF                                             ;; 0d:4f40
    sEND                                               ;; 0d:4f40 $00

script_01a9:
    sSET_MUSIC 0                                       ;; 0d:4f41 $f8 $00
    sIF_FLAG !wScriptFlags04.6                         ;; 0d:4f43 $08 $a6 $00 $0b
      sSFX 20                                          ;; 0d:4f47 $f9 $14
      sFLASH_SCREEN                                    ;; 0d:4f49 $bf
      sDELAY 30                                        ;; 0d:4f4a $f0 $1e
      sSET_MUSIC 15                                    ;; 0d:4f4c $f8 $0f
      sSPAWN_BOSS 3                                    ;; 0d:4f4e $fe $03
    sELSE                                              ;; 0d:4f50 $01 $11
      sIF_FLAG !wScriptFlags02.4                       ;; 0d:4f52 $08 $94 $00 $09
        sSET_NPC_TYPES 89                              ;; 0d:4f56 $fc $59
        sSPAWN_NPC 0                                   ;; 0d:4f58 $fd $00
        sSET_CHEST_OPEN_SCRIPT1 script_0435            ;; 0d:4f5a $c9 $04 $35
      sELSE                                            ;; 0d:4f5d $01 $04
        sSET_ROOM_TILE $59, 2, 1                       ;; 0d:4f5f $b0 $59 $02 $01
      sENDIF                                           ;; 0d:4f63
    sENDIF                                             ;; 0d:4f63
    sEND                                               ;; 0d:4f63 $00

script_01aa:
    sSET_MUSIC 7                                       ;; 0d:4f64 $f8 $07
    sEND                                               ;; 0d:4f66 $00

script_01ab:
    sDELAY 20                                          ;; 0d:4f67 $f0 $14
    sMSG                                               ;; 0d:4f69 $04
      db "<10>Defeated Megapede!<12>"
      db "<11>", $00 ;; 0d:4f6a
    sSET_FLAG wScriptFlags04.6                         ;; 0d:4f7b $da $26
    sRUN_ROOM_SCRIPT                                   ;; 0d:4f7d $ec
    sEND                                               ;; 0d:4f7e $00

script_01ac:
    sIF_FLAG !wScriptFlags04.7                         ;; 0d:4f7f $08 $a7 $00 $33
      sDELAY 60                                        ;; 0d:4f83 $f0 $3c
      sMSG                                             ;; 0d:4f85 $04
        db "<10>Medusa:This will\n be your place\n to rest forever!<12>"
        db "<11>", $00 ;; 0d:4f86
      sDELAY 30                                        ;; 0d:4faa $f0 $1e
      sSFX 20                                          ;; 0d:4fac $f9 $14
      sFLASH_SCREEN                                    ;; 0d:4fae $bf
      sFLASH_SCREEN                                    ;; 0d:4faf $bf
      sDELAY 30                                        ;; 0d:4fb0 $f0 $1e
      sSET_MUSIC 15                                    ;; 0d:4fb2 $f8 $0f
      sSPAWN_BOSS 2                                    ;; 0d:4fb4 $fe $02
    sENDIF                                             ;; 0d:4fb6
    sIF_FLAG wScriptFlags04.7                          ;; 0d:4fb6 $08 $27 $00 $12
      sSET_NPC_TYPES 66                                ;; 0d:4fba $fc $42
      sSET_MUSIC 2                                     ;; 0d:4fbc $f8 $02
      sIF_FLAG !wScriptFlags0A.5, !wScriptFlags03.4    ;; 0d:4fbe $08 $d5 $9c $00 $02
        sSPAWN_NPC 0                                   ;; 0d:4fc3 $fd $00
      sENDIF                                           ;; 0d:4fc5
      sIF_FLAG wScriptFlags03.4, !wScriptFlags06.5     ;; 0d:4fc5 $08 $1c $b5 $00 $02
        sSPAWN_NPC 1                                   ;; 0d:4fca $fd $01
      sENDIF                                           ;; 0d:4fcc
    sENDIF                                             ;; 0d:4fcc
    sEND                                               ;; 0d:4fcc $00

script_01ad:
    sSET_MUSIC 8                                       ;; 0d:4fcd $f8 $08
    sEND                                               ;; 0d:4fcf $00

script_01ae:
    sIF_FLAG !wScriptFlags04.7                         ;; 0d:4fd0 $08 $a7 $00 $8e
      sSET_MUSIC 0                                     ;; 0d:4fd4 $f8 $00
      sSFX 34                                          ;; 0d:4fd6 $f9 $22
      sDELAY 180                                       ;; 0d:4fd8 $f0 $b4
      sFADE_TO_BLACK                                   ;; 0d:4fda $bd
      sLOAD_ROOM_INSTANT 15, $55, 20, 0                ;; 0d:4fdb $f3 $0f $55 $14 $00
      sSET_MUSIC 10                                    ;; 0d:4fe0 $f8 $0a
      sFADE_TO_NORMAL                                  ;; 0d:4fe2 $bc
      sMSG                                             ;; 0d:4fe3 $04
        db "<10>Madusa:Came here\n to get my tears?\n Huh! What a joke!<12>"
        db "<11>", $00 ;; 0d:4fe4
      sFADE_TO_BLACK                                   ;; 0d:500b $bd
      sDELAY 30                                        ;; 0d:500c $f0 $1e
      sLOAD_ROOM_INSTANT 1, $30, 12, 8                 ;; 0d:500e $f3 $01 $30 $0c $08
      sSET_PLAYER_DIRECTION_UP                         ;; 0d:5013 $84
      sFOLLOWER_SET_POSITION 10, 8                     ;; 0d:5014 $99 $0a $08
      sFADE_TO_NORMAL                                  ;; 0d:5017 $bc
      sDELAY 60                                        ;; 0d:5018 $f0 $3c
      sFOLLOWER_DIRECTION_LEFT                         ;; 0d:501a $97
      sDELAY 60                                        ;; 0d:501b $f0 $3c
      sFOLLOWER_DIRECTION_RIGHT                        ;; 0d:501d $96
      sDELAY 60                                        ;; 0d:501e $f0 $3c
      sSET_PLAYER_DIRECTION_LEFT                       ;; 0d:5020 $87
      sFOLLOWER_SET_POSITION 10, 8                     ;; 0d:5021 $99 $0a $08
      sDELAY 60                                        ;; 0d:5024 $f0 $3c
      sMSG                                             ;; 0d:5026 $04
        db "<10>Amanda:Can't find\n a drop of tear__<12>"
        db "<1b><BOY>:Let's go back\n to Jadd first.<12>"
        db "<11>", $00 ;; 0d:5027
      sSET_PLAYER_DIRECTION_RIGHT                      ;; 0d:5058 $86
      sPLAYER_STEP_FORWARD                             ;; 0d:5059 $80
      sPLAYER_STEP_FORWARD                             ;; 0d:505a $80
      sCALL script_0227                                ;; 0d:505b $02 $28 $9c
      sCLEAR_FLAG wScriptFlags0A.5                     ;; 0d:505e $db $55
      sSET_FLAG wScriptFlags04.7                       ;; 0d:5060 $da $27
    sENDIF                                             ;; 0d:5062
    sEND                                               ;; 0d:5062 $00

script_01af:
    sIF_FLAG wScriptFlags03.5, !wScriptFlags05.0       ;; 0d:5063 $08 $1d $a8 $00 $3a
      sSET_NPC_TYPES 65                                ;; 0d:5068 $fc $41
      sSPAWN_NPC 0                                     ;; 0d:506a $fd $00
      sDELAY 20                                        ;; 0d:506c $f0 $14
      sMSG                                             ;; 0d:506e $04
        db "<10>Davias:HA!\n You can never\n defeat me!<12>"
        db "<11>", $00 ;; 0d:506f
      sFLASH_SCREEN                                    ;; 0d:508f $bf
      sSFX 20                                          ;; 0d:5090 $f9 $14
      sFLASH_SCREEN                                    ;; 0d:5092 $bf
      sSFX 20                                          ;; 0d:5093 $f9 $14
      sDEL_NPC_1                                       ;; 0d:5095 $18
      sSFX 20                                          ;; 0d:5096 $f9 $14
      sFLASH_SCREEN                                    ;; 0d:5098 $bf
      sSFX 20                                          ;; 0d:5099 $f9 $14
      sFLASH_SCREEN                                    ;; 0d:509b $bf
      sDELAY 30                                        ;; 0d:509c $f0 $1e
      sSPAWN_BOSS 4                                    ;; 0d:509e $fe $04
      sSET_MUSIC 19                                    ;; 0d:50a0 $f8 $13
    sENDIF                                             ;; 0d:50a2
    sSET_FLAG wScriptFlags0F.1                         ;; 0d:50a2 $da $79
    sEND                                               ;; 0d:50a4 $00

script_01b0:
    sCLEAR_FLAG wScriptFlags0F.1                       ;; 0d:50a5 $db $79
    sSET_MUSIC 7                                       ;; 0d:50a7 $f8 $07
    sEND                                               ;; 0d:50a9 $00

script_01b1:
    sSET_MUSIC 0                                       ;; 0d:50aa $f8 $00
    sDELAY 80                                          ;; 0d:50ac $f0 $50
    sMSG                                               ;; 0d:50ae $04
      db "<10>Lester:We did it!<12>"
      db "<1b>Davias:The Pendant\n is no longer\n here, my dear__!", $00 ;; 0d:50af
    sSET_MUSIC 10                                      ;; 0d:50dd $f8 $0a
    sMSG                                               ;; 0d:50df $04
      db "<12>"
      db "<1b> Garuda is flying\n over Mt. Rocks\n to Glaive__<12>"
      db "<1b>\n   Davias fell__<12>"
      db "<11>", $00 ;; 0d:50e0
    sSET_MUSIC 0                                       ;; 0d:5110 $f8 $00
    sDELAY 60                                          ;; 0d:5112 $f0 $3c
    sFOLLOWER_DELETE                                   ;; 0d:5114 $98
    sDELAY 30                                          ;; 0d:5115 $f0 $1e
    sSET_PLAYER_DIRECTION_UP                           ;; 0d:5117 $84
    sLOAD_ROOM 14, $04, 12, 10                         ;; 0d:5118 $f4 $0e $04 $0c $0a
    sDELAY 30                                          ;; 0d:511d $f0 $1e
    sSET_NPC_TYPES 62                                  ;; 0d:511f $fc $3e
    sSPAWN_NPC 1                                       ;; 0d:5121 $fd $01
    sMSG                                               ;; 0d:5123 $04
      db "<10>Lester:__Going?\n<BOY>:Yeah__  But\n the poison gas__<12>"
      db "<1b>Lester:My harp\n tunes will clear\n the gas, <BOY>!<12>"
      db "<11>", $00 ;; 0d:5124
    sSPAWN_NPC 2                                       ;; 0d:5164 $fd $02
    sSET_MUSIC 13                                      ;; 0d:5166 $f8 $0d
    sDELAY 180                                         ;; 0d:5168 $f0 $b4
    sMSG                                               ;; 0d:516a $04
      db "<10> __ I'll stay here\n and play requiem\n for my sister.<12>"
      db "<1b><BOY>:Okay, Lester.\n I'm going.\n __ Take care.<12>"
      db "<1b>Lester:Take this\n book with you.\n It might help.<12>"
      db "<1b>", $00 ;; 0d:516b
    sSFX 15                                            ;; 0d:51d1 $f9 $0f
    sMSG                                               ;; 0d:51d3 $04
      db "Received the Magic\nBook of Mute.\nLearned Mute.<12>"
      db "<11>", $00 ;; 0d:51d4
    sGIVE_MAGIC 2                                      ;; 0d:51f5 $d6 $02
    sDELAY 60                                          ;; 0d:51f7 $f0 $3c
    sCLEAR_FLAG wScriptFlags0A.6                       ;; 0d:51f9 $db $56
    sSET_FLAG wScriptFlags05.0                         ;; 0d:51fb $da $28
    sCLEAR_ROOM_HISTORY                                ;; 0d:51fd $ab
    sEND                                               ;; 0d:51fe $00

script_01b2:
    sIF_FLAG !wScriptFlags05.1                         ;; 0d:51ff $08 $a9 $00 $0e
      sDELAY 30                                        ;; 0d:5203 $f0 $1e
      sSFX 20                                          ;; 0d:5205 $f9 $14
      sFLASH_SCREEN                                    ;; 0d:5207 $bf
      sSFX 20                                          ;; 0d:5208 $f9 $14
      sFLASH_SCREEN                                    ;; 0d:520a $bf
      sSET_MUSIC 15                                    ;; 0d:520b $f8 $0f
      sSPAWN_BOSS 6                                    ;; 0d:520d $fe $06
    sELSE                                              ;; 0d:520f $01 $0b
      sIF_FLAG !wScriptFlags09.6                       ;; 0d:5211 $08 $ce $00 $07
        sSET_NPC_TYPES 89                              ;; 0d:5215 $fc $59
        sSPAWN_NPC 1                                   ;; 0d:5217 $fd $01
        sSET_CHEST_OPEN_SCRIPT1 script_045d            ;; 0d:5219 $c9 $04 $5d
      sENDIF                                           ;; 0d:521c
    sENDIF                                             ;; 0d:521c
    sEND                                               ;; 0d:521c $00

script_01b3:
    sSET_MUSIC 7                                       ;; 0d:521d $f8 $07
    sEND                                               ;; 0d:521f $00

script_01b4:
    sSET_MUSIC 0                                       ;; 0d:5220 $f8 $00
    sDELAY 20                                          ;; 0d:5222 $f0 $14
    sMSG                                               ;; 0d:5224 $04
      db "<10>Defeated Cyclops!<12>"
      db "<11>", $00 ;; 0d:5225
    sSET_FLAG wScriptFlags05.1                         ;; 0d:5237 $da $29
    sRUN_ROOM_SCRIPT                                   ;; 0d:5239 $ec
    sEND                                               ;; 0d:523a $00

script_01b5:
    sIF_FLAG !wScriptFlags06.1                         ;; 0d:523b $08 $b1 $00 $0e
      sDELAY 30                                        ;; 0d:523f $f0 $1e
      sSFX 20                                          ;; 0d:5241 $f9 $14
      sFLASH_SCREEN                                    ;; 0d:5243 $bf
      sSFX 20                                          ;; 0d:5244 $f9 $14
      sFLASH_SCREEN                                    ;; 0d:5246 $bf
      sSPAWN_BOSS 12                                   ;; 0d:5247 $fe $0c
      sSET_MUSIC 15                                    ;; 0d:5249 $f8 $0f
    sELSE                                              ;; 0d:524b $01 $03
      sCALL script_0248                                ;; 0d:524d $02 $33 $e7
    sENDIF                                             ;; 0d:5250
    sEND                                               ;; 0d:5250 $00

script_01b6:
    sIF_FLAG !wScriptFlags06.1                         ;; 0d:5251 $08 $b1 $00 $02
      sSET_MUSIC 12                                    ;; 0d:5255 $f8 $0c
    sENDIF                                             ;; 0d:5257
    sEND                                               ;; 0d:5257 $00

script_01b7:
    sSET_MUSIC 9                                       ;; 0d:5258 $f8 $09
    sSFX 37                                            ;; 0d:525a $f9 $25
    sSHAKE_SCREEN                                      ;; 0d:525c $fb
    sCALL script_0248                                  ;; 0d:525d $02 $33 $e7
    sMSG                                               ;; 0d:5260 $04
      db "<10>Defeated Garuda!<12>"
      db "<11>", $00 ;; 0d:5261
    sDELAY 60                                          ;; 0d:5270 $f0 $3c
    sMSG                                               ;; 0d:5272 $04
      db "<10>Marcie:TOWER LOST\n ITS BALANCE.\n MUST HURRY OUT.<12>"
      db "<11>", $00 ;; 0d:5273
    sSET_FLAG wScriptFlags06.1                         ;; 0d:52a3 $da $31
    sEND                                               ;; 0d:52a5 $00

script_01b8:
    sIF_FLAG !wScriptFlags05.3                         ;; 0d:52a6 $08 $ab $00 $0e
      sDELAY 30                                        ;; 0d:52aa $f0 $1e
      sSFX 20                                          ;; 0d:52ac $f9 $14
      sFLASH_SCREEN                                    ;; 0d:52ae $bf
      sSFX 20                                          ;; 0d:52af $f9 $14
      sFLASH_SCREEN                                    ;; 0d:52b1 $bf
      sSPAWN_BOSS 5                                    ;; 0d:52b2 $fe $05
      sSET_MUSIC 15                                    ;; 0d:52b4 $f8 $0f
    sELSE                                              ;; 0d:52b6 $01 $01
      sOPEN_NORTH_DOOR                                 ;; 0d:52b8 $e0
    sENDIF                                             ;; 0d:52b9
    sEND                                               ;; 0d:52b9 $00

script_01b9:
    sSET_MUSIC 7                                       ;; 0d:52ba $f8 $07
    sEND                                               ;; 0d:52bc $00

script_01ba:
    sSET_MUSIC 0                                       ;; 0d:52bd $f8 $00
    sSFX 34                                            ;; 0d:52bf $f9 $22
    sMSG                                               ;; 0d:52c1 $04
      db "<10>Defeated Golem!<12>"
      db "", $00    ;; 0d:52c2
    sGIVE_MAGIC 6                                      ;; 0d:52d0 $d6 $06
    sSFX 15                                            ;; 0d:52d2 $f9 $0f
    sMSG                                               ;; 0d:52d4 $04
      db "<1b>Received the Magic\nBook of Lightning.\nLearned Lit.<12>"
      db "<11>", $00 ;; 0d:52d5
    sSET_FLAG wScriptFlags05.3                         ;; 0d:52fc $da $2b
    sOPEN_NORTH_DOOR                                   ;; 0d:52fe $e0
    sDELAY 30                                          ;; 0d:52ff $f0 $1e
    sSET_MUSIC 7                                       ;; 0d:5301 $f8 $07
    sEND                                               ;; 0d:5303 $00

script_01bb:
    sIF_FLAG !wScriptFlags05.4                         ;; 0d:5304 $08 $ac $00 $bb
      sSET_NPC_TYPES 23                                ;; 0d:5308 $fc $17
      sSPAWN_NPC 0                                     ;; 0d:530a $fd $00
      sSET_PLAYER_DIRECTION_LEFT                       ;; 0d:530c $87
      sFOLLOWER_DIRECTION_UP                           ;; 0d:530d $94
      sSET_PLAYER_POSITION 16, 12                      ;; 0d:530e $8a $10 $0c
      sFOLLOWER_SET_POSITION 16, 12                    ;; 0d:5311 $99 $10 $0c
      sLOOP 6, 2                                       ;; 0d:5314 $03 $06 $02
        sPLAYER_STEP_FORWARD                           ;; 0d:5317 $80
      sEND                                             ;; 0d:5318 $00
      sSET_PLAYER_DIRECTION_UP                         ;; 0d:5319 $84
      sMSG                                             ;; 0d:531a $04
        db "<10>Dark Lord:Looks\n like you've been\n a bit stronger.<12>"
        db "<1b> But, not enough\n to fight me, boy!<12>"
        db "<1b>", $00 ;; 0d:531b
      sSET_PLAYER_DIRECTION_RIGHT                      ;; 0d:5359 $86
      sFOLLOWER_DIRECTION_LEFT                         ;; 0d:535a $97
      sMSG                                             ;; 0d:535b $04
        db "<BOY>:Stay outside.\n It will be too\n dangerous here.<12>"
        db "<1b><GIRL>:__ Okay__\n Be careful.<12>"
        db "<11>", $00 ;; 0d:535c
      sFOLLOWER_DIRECTION_DOWN                         ;; 0d:5391 $95
      sFOLLOWER_STEP_FORWARD                           ;; 0d:5392 $90
      sFOLLOWER_STEP_FORWARD                           ;; 0d:5393 $90
      sFOLLOWER_DELETE                                 ;; 0d:5394 $98
      sSFX 16                                          ;; 0d:5395 $f9 $10
      sSET_ROOM_TILE $2f, 8, 7                         ;; 0d:5397 $b0 $2f $08 $07
      sSET_MUSIC 0                                     ;; 0d:539b $f8 $00
      sDELAY 20                                        ;; 0d:539d $f0 $14
      sSET_PLAYER_DIRECTION_UP                         ;; 0d:539f $84
      sMSG                                             ;; 0d:53a0 $04
        db "<10>Dark Lord:Good\n boy, <BOY>!\n __ Now, come!<12>"
        db "<11>", $00 ;; 0d:53a1
      sSET_MUSIC 19                                    ;; 0d:53c1 $f8 $13
    sENDIF                                             ;; 0d:53c3
    sEND                                               ;; 0d:53c3 $00

script_01bc:
    sEND                                               ;; 0d:53c4 $00

script_01bd:
    sSET_MUSIC 0                                       ;; 0d:53c5 $f8 $00
    sSFX 16                                            ;; 0d:53c7 $f9 $10
    sSET_ROOM_TILE $6b, 8, 7                           ;; 0d:53c9 $b0 $6b $08 $07
    sMSG                                               ;; 0d:53cd $04
      db "<10>Defeated Dark Lord<12>"
      db "<1b>Received Pendant__", $00 ;; 0d:53ce
    sDELAY 100                                         ;; 0d:53eb $f0 $64
    sMSG                                               ;; 0d:53ed $04
      db "<1b><BOY>:_", $00                            ;; 0d:53ee
    sDELAY 100                                         ;; 0d:53f3 $f0 $64
    sMSG                                               ;; 0d:53f5 $04
      db "_", $00                                      ;; 0d:53f6
    sDELAY 60                                          ;; 0d:53f8 $f0 $3c
    sMSG                                               ;; 0d:53fa $04
      db " It's fake!\n _ Then, where is\n the real Pendant?", $00 ;; 0d:53fb
    sDELAY 80                                          ;; 0d:541b $f0 $50
    sMSG                                               ;; 0d:541d $04
      db "<11>", $00                                   ;; 0d:541e
    sCLEAR_FLAG wScriptFlags0A.1                       ;; 0d:5420 $db $51
    sSET_FLAG wScriptFlags05.4                         ;; 0d:5422 $da $2c
    sSET_MUSIC 14                                      ;; 0d:5424 $f8 $0e
    sEND                                               ;; 0d:5426 $00

script_01be:
    sIF_FLAG !wScriptFlags05.5                         ;; 0d:5427 $08 $ad $00 $0e
      sDELAY 20                                        ;; 0d:542b $f0 $14
      sSFX 20                                          ;; 0d:542d $f9 $14
      sFLASH_SCREEN                                    ;; 0d:542f $bf
      sSFX 20                                          ;; 0d:5430 $f9 $14
      sFLASH_SCREEN                                    ;; 0d:5432 $bf
      sSPAWN_BOSS 8                                    ;; 0d:5433 $fe $08
      sSET_MUSIC 15                                    ;; 0d:5435 $f8 $0f
    sELSE                                              ;; 0d:5437 $01 $0b
      sIF_FLAG !wScriptFlags07.2                       ;; 0d:5439 $08 $ba $00 $07
        sSET_NPC_TYPES 89                              ;; 0d:543d $fc $59
        sSPAWN_NPC 0                                   ;; 0d:543f $fd $00
        sSET_CHEST_OPEN_SCRIPT1 script_0464            ;; 0d:5441 $c9 $04 $64
      sENDIF                                           ;; 0d:5444
    sENDIF                                             ;; 0d:5444
    sEND                                               ;; 0d:5444 $00

script_01bf:
    sSET_MUSIC 12                                      ;; 0d:5445 $f8 $0c
    sEND                                               ;; 0d:5447 $00

script_01c0:
    sSET_MUSIC 0                                       ;; 0d:5448 $f8 $00
    sMSG                                               ;; 0d:544a $04
      db "<10>Defeated Kary!<12>"
      db "<11>", $00 ;; 0d:544b
    sSET_FLAG wScriptFlags05.5                         ;; 0d:5459 $da $2d
    sRUN_ROOM_SCRIPT                                   ;; 0d:545b $ec
    sEND                                               ;; 0d:545c $00

script_01c1:
    sIF_FLAG !wScriptFlags05.7                         ;; 0d:545d $08 $af $00 $0e
      sDELAY 20                                        ;; 0d:5461 $f0 $14
      sSFX 20                                          ;; 0d:5463 $f9 $14
      sFLASH_SCREEN                                    ;; 0d:5465 $bf
      sSFX 20                                          ;; 0d:5466 $f9 $14
      sFLASH_SCREEN                                    ;; 0d:5468 $bf
      sSPAWN_BOSS 10                                   ;; 0d:5469 $fe $0a
      sSET_MUSIC 15                                    ;; 0d:546b $f8 $0f
    sELSE                                              ;; 0d:546d $01 $0b
      sIF_FLAG !wScriptFlags07.3                       ;; 0d:546f $08 $bb $00 $07
        sSET_NPC_TYPES 89                              ;; 0d:5473 $fc $59
        sSPAWN_NPC 0                                   ;; 0d:5475 $fd $00
        sSET_CHEST_OPEN_SCRIPT1 script_0437            ;; 0d:5477 $c9 $04 $37
      sENDIF                                           ;; 0d:547a
    sENDIF                                             ;; 0d:547a
    sEND                                               ;; 0d:547a $00

script_01c2:
    sSET_MUSIC 7                                       ;; 0d:547b $f8 $07
    sEND                                               ;; 0d:547d $00

script_01c3:
    sSET_MUSIC 0                                       ;; 0d:547e $f8 $00
    sMSG                                               ;; 0d:5480 $04
      db "<10>Defeated Iflyte!<12>"
      db "<11>", $00 ;; 0d:5481
    sSET_FLAG wScriptFlags05.7                         ;; 0d:5491 $da $2f
    sRUN_ROOM_SCRIPT                                   ;; 0d:5493 $ec
    sEND                                               ;; 0d:5494 $00

script_01c4:
    sIF_FLAG !wScriptFlags05.2                         ;; 0d:5495 $08 $aa $00 $12
      sSFX 16                                          ;; 0d:5499 $f9 $10
      sSET_ROOM_TILE $30, 1, 6                         ;; 0d:549b $b0 $30 $01 $06
      sDELAY 20                                        ;; 0d:549f $f0 $14
      sSFX 20                                          ;; 0d:54a1 $f9 $14
      sFLASH_SCREEN                                    ;; 0d:54a3 $bf
      sSFX 20                                          ;; 0d:54a4 $f9 $14
      sFLASH_SCREEN                                    ;; 0d:54a6 $bf
      sSPAWN_BOSS 7                                    ;; 0d:54a7 $fe $07
      sSET_MUSIC 15                                    ;; 0d:54a9 $f8 $0f
    sENDIF                                             ;; 0d:54ab
    sEND                                               ;; 0d:54ab $00

script_01c5:
    sSET_MUSIC 14                                      ;; 0d:54ac $f8 $0e
    sEND                                               ;; 0d:54ae $00

script_01c6:
    sSET_MUSIC 0                                       ;; 0d:54af $f8 $00
    sSFX 16                                            ;; 0d:54b1 $f9 $10
    sSET_ROOM_TILE $13, 1, 6                           ;; 0d:54b3 $b0 $13 $01 $06
    sMSG                                               ;; 0d:54b7 $04
      db "<10>Defeated Chimera!<12>"
      db "<11>", $00 ;; 0d:54b8
    sSET_FLAG wScriptFlags05.2                         ;; 0d:54c8 $da $2a
    sDELAY 30                                          ;; 0d:54ca $f0 $1e
    sSET_MUSIC 14                                      ;; 0d:54cc $f8 $0e
    sEND                                               ;; 0d:54ce $00

script_01c7:
    sIF_FLAG !wScriptFlags05.6                         ;; 0d:54cf $08 $ae $00 $0e
      sDELAY 20                                        ;; 0d:54d3 $f0 $14
      sSFX 20                                          ;; 0d:54d5 $f9 $14
      sFLASH_SCREEN                                    ;; 0d:54d7 $bf
      sSFX 20                                          ;; 0d:54d8 $f9 $14
      sFLASH_SCREEN                                    ;; 0d:54da $bf
      sSPAWN_BOSS 9                                    ;; 0d:54db $fe $09
      sSET_MUSIC 15                                    ;; 0d:54dd $f8 $0f
    sELSE                                              ;; 0d:54df $01 $04
      sSET_ROOM_TILE $4c, 8, 2                         ;; 0d:54e1 $b0 $4c $08 $02
    sENDIF                                             ;; 0d:54e5
    sEND                                               ;; 0d:54e5 $00

script_01c8:
    sSET_MUSIC 7                                       ;; 0d:54e6 $f8 $07
    sEND                                               ;; 0d:54e8 $00

script_01c9:
    sSET_MUSIC 0                                       ;; 0d:54e9 $f8 $00
    sMSG                                               ;; 0d:54eb $04
      db "<10>Defeated Kraken!<12>"
      db "<11>", $00 ;; 0d:54ec
    sSET_FLAG wScriptFlags05.6                         ;; 0d:54fc $da $2e
    sCREATE_EFFECT $10, $10, $04                       ;; 0d:54fe $ba $10 $10 $04
    sSET_ROOM_TILE $4c, 8, 2                           ;; 0d:5502 $b0 $4c $08 $02
    sDELAY 30                                          ;; 0d:5506 $f0 $1e
    sSET_MUSIC 7                                       ;; 0d:5508 $f8 $07
    sEND                                               ;; 0d:550a $00

script_01ca:
    sIF_FLAG !wScriptFlags06.0                         ;; 0d:550b $08 $b0 $00 $0c
      sDELAY 20                                        ;; 0d:550f $f0 $14
      sSFX 20                                          ;; 0d:5511 $f9 $14
      sFLASH_SCREEN                                    ;; 0d:5513 $bf
      sSFX 20                                          ;; 0d:5514 $f9 $14
      sFLASH_SCREEN                                    ;; 0d:5516 $bf
      sSPAWN_BOSS 11                                   ;; 0d:5517 $fe $0b
      sSET_MUSIC 15                                    ;; 0d:5519 $f8 $0f
    sENDIF                                             ;; 0d:551b
    sEND                                               ;; 0d:551b $00

script_01cb:
    sSET_MUSIC 7                                       ;; 0d:551c $f8 $07
    sEND                                               ;; 0d:551e $00

script_01cc:
    sSET_MUSIC 0                                       ;; 0d:551f $f8 $00
    sMSG                                               ;; 0d:5521 $04
      db "<10>Defeated Lich!<12>"
      db "<1b>", $00 ;; 0d:5522
    sSFX 15                                            ;; 0d:5531 $f9 $0f
    sGIVE_MAGIC 7                                      ;; 0d:5533 $d6 $07
    sMSG                                               ;; 0d:5535 $04
      db "Received the Magic\nBook of Nuke.\nLearned Nuke!<12>"
      db "<11>", $00 ;; 0d:5536
    sSET_FLAG wScriptFlags06.0                         ;; 0d:555a $da $30
    sDELAY 30                                          ;; 0d:555c $f0 $1e
    sLOAD_ROOM 0, $3e, 12, 7                           ;; 0d:555e $f4 $00 $3e $0c $07
    sSET_MUSIC 25                                      ;; 0d:5563 $f8 $19
    sCLEAR_ROOM_HISTORY                                ;; 0d:5565 $ab
    sRUN_ROOM_SCRIPT                                   ;; 0d:5566 $ec
    sEND                                               ;; 0d:5567 $00

script_01cd:
    sSET_NPC_TYPES 61                                  ;; 0d:5568 $fc $3d
    sSPAWN_NPC 1                                       ;; 0d:556a $fd $01
    sEND                                               ;; 0d:556c $00

script_01ce:
    sEND                                               ;; 0d:556d $00

script_01cf:
    sEND                                               ;; 0d:556e $00

script_01e0:
    sMSG                                               ;; 0d:556f $04
      db "<10>Welcome to Kett's.\nRooms ahead are\noccupied.<12>"
      db "<1b>Please feel free\nto use the\nwestern room.<12>"
      db "<1b>You can't get past\nthis door.\nIt's for Mr. Lee.", $00 ;; 0d:5570
    sIF_FLAG wScriptFlags01.5                          ;; 0d:55ce $08 $0d $00 $63
      sMSG                                             ;; 0d:55d2 $04
        db "<12>"
        db "<1b>", $00               ;; 0d:55d3
      sIF_EQUIPED $27                                  ;; 0d:55d6 $09 $27 $00 $3c
        sSET_MUSIC 0                                   ;; 0d:55da $f8 $00
        sMSG                                           ;; 0d:55dc $04
          db "T_that Mirror_!", $00                    ;; 0d:55dd
        sDELAY 30                                      ;; 0d:55e8 $f0 $1e
        sMSG                                           ;; 0d:55ea $04
          db "\nUGGG_ GRRH_", $00                      ;; 0d:55eb
        sDELAY 30                                      ;; 0d:55f7 $f0 $1e
        sMSG                                           ;; 0d:55f9 $04
          db "\nUG_ Hg_ GRRR_ _<12>"
          db "<11>", $00 ;; 0d:55fa
        sSFX 20                                        ;; 0d:560b $f9 $14
        sFLASH_SCREEN                                  ;; 0d:560d $bf
        sFLASH_SCREEN                                  ;; 0d:560e $bf
        sDEL_NPC_1                                     ;; 0d:560f $18
        sSPAWN_NPC 2                                   ;; 0d:5610 $fd $02
        sSET_MUSIC 26                                  ;; 0d:5612 $f8 $1a
      sELSE                                            ;; 0d:5614 $01 $1d
        sMSG                                           ;; 0d:5616 $04
          db "Your friend?\nNo__\nI do not know her.<12>"
          db "<11>", $00 ;; 0d:5617
      sENDIF                                           ;; 0d:5633
    sELSE                                              ;; 0d:5633 $01 $04
      sMSG                                             ;; 0d:5635 $04
        db "<12>"
        db "<11>", $00               ;; 0d:5636
    sENDIF                                             ;; 0d:5639
    sEND                                               ;; 0d:5639 $00

script_01e1:
    sMSG                                               ;; 0d:563a $04
      db "<10>The mystic Mirror\nreveals people's\ntrue colors.<12>"
      db "<1b>I heard that the\nman here threw it\naway in a cave.<12>"
      db "<11>", $00 ;; 0d:563b
    sEND                                               ;; 0d:567e $00

script_01e2:
    sMSG                                               ;; 0d:567f $04
      db "<10>Lizardmen's nest\nis to the south.<12>"
      db "<1b>They have the key\nto open the Cave\nof Marsh.<12>"
      db "<11><12>"
      db "<11>", $00 ;; 0d:5680
    sEND                                               ;; 0d:56bb $00

script_01e3:
    sDEL_NPC_1                                         ;; 0d:56bc $18
    sSPAWN_NPC 1                                       ;; 0d:56bd $fd $01
    sMSG                                               ;; 0d:56bf $04
      db "<10><BOY>:<GIRL>!\n<GIRL>:Oh, <BOY>!<12>"
      db "<1b><BOY>:Let's get\n out of here!<12>"
      db "<11>", $00 ;; 0d:56c0
    sGIVE_FOLLOWER 1                                   ;; 0d:56e1 $9c $01
    sSET_FLAG wScriptFlags0A.1                         ;; 0d:56e3 $da $51
    sSET_FLAG wScriptFlags01.6                         ;; 0d:56e5 $da $0e
    sEND                                               ;; 0d:56e7 $00

script_01e4:
    sMSG                                               ;; 0d:56e8 $04
      db "<10>Man:Your friend\n is missing?<12>"
      db "<1b> Many girls have\n disappeared in\n that place.<12>"
      db "<1b> They must be kept\n in the caskets\n at the basement.<12>"
      db "<1b> Looking for the \n Mirror?  Do you\n want me to help?<12>"
      db "<13><11>", $00 ;; 0d:56e9
    sIF_FLAG !wScriptFlags0F.7                         ;; 0d:5767 $08 $ff $00 $04
      sGIVE_FOLLOWER 2                                 ;; 0d:576b $9c $02
      sSET_FLAG wScriptFlags0A.2                       ;; 0d:576d $da $52
    sENDIF                                             ;; 0d:576f
    sEND                                               ;; 0d:576f $00

script_01e5:
    sCREATE_EFFECT $10, $0e, $0a                       ;; 0d:5770 $ba $10 $0e $0a
    sSET_ROOM_TILE $4b, 7, 5                           ;; 0d:5774 $b0 $4b $07 $05
    sSET_FLAG wScriptFlags06.6                         ;; 0d:5778 $da $36
    sEND                                               ;; 0d:577a $00

script_01e6:
    sMSG                                               ;; 0d:577b $04
      db "<10>Welcome to Wendel,\nthe sacred town.<12>"
      db "<11>", $00 ;; 0d:577c
    sEND                                               ;; 0d:5797 $00

script_01e7:
    sIF_FLAG wScriptFlags02.0, !wScriptFlags02.1       ;; 0d:5798 $08 $10 $91 $00 $19
      sMSG                                             ;; 0d:579d $04
        db "<10>H_ he attacked\nme from behind_!<12>"
        db "<11>", $00 ;; 0d:579e
    sENDIF                                             ;; 0d:57b6
    sEND                                               ;; 0d:57b6 $00

script_01e8:
    sMSG                                               ;; 0d:57b7 $04
      db "<10>Man:Hello again!\n How've you been?<12>"
      db "<11>", $00 ;; 0d:57b8
    sEND                                               ;; 0d:57d3 $00

script_01e9:
    sMSG                                               ;; 0d:57d4 $04
      db "<10>The Waterfalls\nmake all of our\nrivers flow.<12>"
      db "<1b>The water springs\nfrom the root of\nthe Tree of Mana.<12>"
      db "<1b>Mana is supporting\nour nature.<12>"
      db "<11>", $00 ;; 0d:57d5
    sEND                                               ;; 0d:582c $00

script_01ea:
    sMSG                                               ;; 0d:582d $04
      db "<10>Dwarf Cave is\nto the west!<12>"
      db "<11>", $00 ;; 0d:582e
    sEND                                               ;; 0d:5842 $00

script_01eb:
    sMSG                                               ;; 0d:5843 $04
      db "<10>Cibba is a sage.\nHe used to be a\ngreat warrior.<12>"
      db "<11>", $00 ;; 0d:5844
    sEND                                               ;; 0d:5867 $00

script_01ec:
    sMSG                                               ;; 0d:5868 $04
      db "<10>", $00                                   ;; 0d:5869
    sIF_FLAG !wScriptFlags03.7                         ;; 0d:586b $08 $9f $00 $0e
      sMSG                                             ;; 0d:586f $04
        db "Cibba's in here!", $00                     ;; 0d:5870
    sELSE                                              ;; 0d:587b $01 $47
      sMSG                                             ;; 0d:587d $04
        db "Lorim was attacked\nby many monsters.\nCibba went there.<12>"
        db "<1b>Lorim is south of\nthe Snowfield over\nthe southern sea.", $00 ;; 0d:587e
    sENDIF                                             ;; 0d:58c4
    sMSG                                               ;; 0d:58c4 $04
      db "<12>"
      db "<11>", $00                   ;; 0d:58c5
    sEND                                               ;; 0d:58c8 $00

script_01ed:
    sMSG                                               ;; 0d:58c9 $04
      db "<10>I hear that the\nTree of Mana is\nvery beautiful__<12>"
      db "<11>", $00 ;; 0d:58ca
    sEND                                               ;; 0d:58ea $00

script_01ee:
    sMSG                                               ;; 0d:58eb $04
      db "<10>", $00                                   ;; 0d:58ec
    sIF_FLAG wScriptFlags02.1                          ;; 0d:58ee $08 $11 $00 $21
      sMSG                                             ;; 0d:58f2 $04
        db "Cibba:Julius went\n westward in his\n airship.", $00 ;; 0d:58f3
    sELSE                                              ;; 0d:5911 $01 $12
      sMSG                                             ;; 0d:5913 $04
        db "Cibba:Who is\n that man?", $00             ;; 0d:5914
    sENDIF                                             ;; 0d:5925
    sMSG                                               ;; 0d:5925 $04
      db "<12>"
      db "<11>", $00                   ;; 0d:5926
    sEND                                               ;; 0d:5929 $00

script_01ef:
    sIF_INVENTORY $4f                                  ;; 0d:592a $0a $4f $00 $05
      sCALL script_01f0                                ;; 0d:592e $02 $19 $f5
    sELSE                                              ;; 0d:5931 $01 $c1
      sGIVE_ITEM 23                                    ;; 0d:5933 $d4 $17
      sIF_FLAG !wScriptFlags.5                         ;; 0d:5935 $08 $85 $00 $bb
        sMSG                                           ;; 0d:5939 $04
          db "<10>", $00                               ;; 0d:593a
        sSFX 15                                        ;; 0d:593c $f9 $0f
        sMSG                                           ;; 0d:593e $04
          db "Received <KEY>Bone.<12>"
          db "<1b>Cibba:Go up the\n wide river by the\n Ammonite Coast.<12>"
          db "<1b> Go beyond the\n Ammonite Coast\n to Floatrocks.<12>"
          db "<1b> Use this key at\n the cave in the\n Floatrocks!<12>"
          db "<1b> The guardian\n monster has the\n Legendary Sword.<12>"
          db "<1b> I'll tell you the\n rest when you\n return with it!<12>"
          db "<11>", $00 ;; 0d:593f
      sENDIF                                           ;; 0d:59f4
    sENDIF                                             ;; 0d:59f4
    sEND                                               ;; 0d:59f4 $00

script_01f0:
    sMSG                                               ;; 0d:59f5 $04
      db "<10>Cibba:The only way\n left is to reveal\n the Dime Tower.<12>"
      db "<1b><BOY>:Dime Tower?\n In the Desert of\n Crystal?  _ How?<12>"
      db "<1b>Cibba:That sword\n will help you.<12>"
      db "<1b> Use it in the\n Cave of Ruins.\n You'll see it.<12>"
      db "<1b><BOY>:This rusty\n sword has such\n a great power_?<12>"
      db "<1b>Cibba:The Sword of\n Legend shows its\n real power only<12>"
      db "<1b> when it approves\n of your using it.<12>"
      db "<1b> If you're a real\n Knight of Gemma,\n it will help you.<12>"
      db "<1b><BOY>:But_ I don't\n know if it _ _<12>"
      db "<1b>Cibba:Don't worry.\n __", $00 ;; 0d:59f6
    sDELAY 40                                          ;; 0d:5b25 $f0 $28
    sMSG                                               ;; 0d:5b27 $04
      db "Now, go!<12>"
      db "<1b> The Cave of Ruins\n is in the desert\n near Ish.<12>"
      db "<1b> Ask Dr. Bowow.\n He knows it well.<12>"
      db "<11>", $00 ;; 0d:5b28
    sEND                                               ;; 0d:5b6d $00

script_01f1:
    sCREATE_EFFECT $08, $09, $0b                       ;; 0d:5b6e $ba $08 $09 $0b
    sFULL_HP                                           ;; 0d:5b72 $c0
    sFULL_MANA                                         ;; 0d:5b73 $c1
    sEND                                               ;; 0d:5b74 $00

script_01f2:
    sMSG                                               ;; 0d:5b75 $04
      db "<10>Hello!\nWelcome to the\nDwarf Cave!<12>"
      db "<11>", $00 ;; 0d:5b76
    sEND                                               ;; 0d:5b90 $00

script_01f3:
    sMSG                                               ;; 0d:5b91 $04
      db "<10>", $00                                   ;; 0d:5b92
    sIF_FLAG wScriptFlags02.1, !wScriptFlags02.6       ;; 0d:5b94 $08 $11 $96 $00 $16
      sMSG                                             ;; 0d:5b99 $04
        db "The airship went\nto the west!<12>"
        db "<1b>", $00 ;; 0d:5b9a
    sENDIF                                             ;; 0d:5baf
    sMSG                                               ;; 0d:5baf $04
      db "The Gaia Pass\nleads to the\nwestern land.<12>"
      db "<11>", $00 ;; 0d:5bb0
    sEND                                               ;; 0d:5bcc $00

script_01f4:
    sMSG                                               ;; 0d:5bcd $04
      db "<10>", $00                                   ;; 0d:5bce
    sIF_FLAG !wScriptFlags04.6                         ;; 0d:5bd0 $08 $a6 $00 $5d
      sMSG                                             ;; 0d:5bd4 $04
        db "I used to play\nat the Old Mine\nwith Watts!", $00 ;; 0d:5bd5
      sIF_FLAG wScriptFlags02.1                        ;; 0d:5bf2 $08 $11 $00 $39
        sMSG                                           ;; 0d:5bf6 $04
          db "<12>"
          db "<1b>Wanna use the\ntrolley?  You\nhave to oil it!<12>"
          db "<1b>You can get it\nat the store\nto the south!", $00 ;; 0d:5bf7
      sENDIF                                           ;; 0d:5c2f
    sELSE                                              ;; 0d:5c2f $01 $15
      sMSG                                             ;; 0d:5c31 $04
        db "Watts is selling\nSilver stuff!", $00      ;; 0d:5c32
    sENDIF                                             ;; 0d:5c46
    sMSG                                               ;; 0d:5c46 $04
      db "<12>"
      db "<11>", $00                   ;; 0d:5c47
    sEND                                               ;; 0d:5c4a $00

script_01f5:
    sMSG                                               ;; 0d:5c4b $04
      db "<10>Gaia has its own\nwill and feelings.<12>"
      db "<1b>It likes Silver.\nStrange, isn't it?<12>"
      db "<11>", $00 ;; 0d:5c4c
    sEND                                               ;; 0d:5c7f $00

script_01f6:
    sMSG                                               ;; 0d:5c80 $04
      db "<10>", $00                                   ;; 0d:5c81
    sIF_FLAG !wScriptFlags04.6                         ;; 0d:5c83 $08 $a6 $00 $37
      sMSG                                             ;; 0d:5c87 $04
        db "Watts likes the\nmine!  He went\ntheir today, too!<12>"
        db "<1b>He's looking for\nsome Silver.", $00 ;; 0d:5c88
    sELSE                                              ;; 0d:5cbc $01 $19
      sMSG                                             ;; 0d:5cbe $04
        db "Hi!\nWatts made the\nSilver stuff!", $00   ;; 0d:5cbf
    sENDIF                                             ;; 0d:5cd7
    sMSG                                               ;; 0d:5cd7 $04
      db "<12>"
      db "<11>", $00                   ;; 0d:5cd8
    sEND                                               ;; 0d:5cdb $00

script_01f7:
    sEND                                               ;; 0d:5cdc $00

script_01f8:
    sMSG                                               ;; 0d:5cdd $04
      db "<10>Watts:I made some\n things out of\n that Silver!<12>"
      db "<1b> Take these and\n you can pass\n through Gaia!<12>"
      db "<11>", $00 ;; 0d:5cde
    sOPEN_SHOP 6                                       ;; 0d:5d1d $f6 $06
    sEND                                               ;; 0d:5d1f $00

script_01f9:
    sIF_EQUIPED $2d                                    ;; 0d:5d20 $09 $2d $00 $07
      sPLAYER_STEP_FORWARD                             ;; 0d:5d24 $80
      sPLAYER_STEP_FORWARD                             ;; 0d:5d25 $80
      sDEL_NPC_1                                       ;; 0d:5d26 $18
      sTAKE_EQUIPED_ITEM                               ;; 0d:5d27 $de
      sUNK_A3                                          ;; 0d:5d28 $a3
    sELSE                                              ;; 0d:5d29 $01 $11
      sMSG                                             ;; 0d:5d2b $04
        db "<10>\nNeeds to be oiled.<12>"
        db "<11>", $00 ;; 0d:5d2c
    sENDIF                                             ;; 0d:5d3c
    sEND                                               ;; 0d:5d3c $00

script_01fa:
    sIF_0B $81                                         ;; 0d:5d3d $0b $81 $00 $03
      sDEL_NPC_1                                       ;; 0d:5d41 $18
    sELSE                                              ;; 0d:5d42 $01 $05
      sCREATE_EFFECT $10, $09, $01                     ;; 0d:5d44 $ba $10 $09 $01
      sOPEN_NORTH_DOOR                                 ;; 0d:5d48 $e0
    sENDIF                                             ;; 0d:5d49
    sEND                                               ;; 0d:5d49 $00

script_01fb:
    sIF_0B $81                                         ;; 0d:5d4a $0b $81 $00 $03
      sDEL_NPC_1                                       ;; 0d:5d4e $18
    sELSE                                              ;; 0d:5d4f $01 $05
      sCREATE_EFFECT $10, $09, $0d                     ;; 0d:5d51 $ba $10 $09 $0d
      sOPEN_SOUTH_DOOR                                 ;; 0d:5d55 $e2
    sENDIF                                             ;; 0d:5d56
    sEND                                               ;; 0d:5d56 $00

script_01fc:
    sIF_0B $81                                         ;; 0d:5d57 $0b $81 $00 $03
      sDEL_NPC_1                                       ;; 0d:5d5b $18
    sELSE                                              ;; 0d:5d5c $01 $05
      sCREATE_EFFECT $10, $11, $07                     ;; 0d:5d5e $ba $10 $11 $07
      sOPEN_EAST_DOOR                                  ;; 0d:5d62 $e4
    sENDIF                                             ;; 0d:5d63
    sEND                                               ;; 0d:5d63 $00

script_01fd:
    sIF_0B $81                                         ;; 0d:5d64 $0b $81 $00 $03
      sDEL_NPC_1                                       ;; 0d:5d68 $18
    sELSE                                              ;; 0d:5d69 $01 $05
      sCREATE_EFFECT $10, $01, $07                     ;; 0d:5d6b $ba $10 $01 $07
      sOPEN_WEST_DOOR                                  ;; 0d:5d6f $e6
    sENDIF                                             ;; 0d:5d70
    sEND                                               ;; 0d:5d70 $00

script_01fe:
    sMSG                                               ;; 0d:5d71 $04
      db "<10>", $00                                   ;; 0d:5d72
    sIF_EQUIPED $4f                                    ;; 0d:5d74 $09 $4f $00 $21
      sMSG                                             ;; 0d:5d78 $04
        db "Release that\nsword from your\nequipment, <BOY>.", $00 ;; 0d:5d79
    sELSE                                              ;; 0d:5d97 $01 $67
      sMSG                                             ;; 0d:5d99 $04
        db "You have been a\ngreat Knight of\nGemma, I see.<12>"
        db "<1b>I shall give you\nthe Excalibur.\nNow defeat Julius!<12>"
        db "<11>", $00 ;; 0d:5d9a
      sLOOP 8, 4                                       ;; 0d:5ddd $03 $08 $04
        sFLASH_SCREEN                                  ;; 0d:5de0 $bf
        sSFX 20                                        ;; 0d:5de1 $f9 $14
      sEND                                             ;; 0d:5de3 $00
      sDEL_NPC_1                                       ;; 0d:5de4 $18
      sUNK_D9 13                                       ;; 0d:5de5 $d9 $0d
      sGIVE_EQUIPMENT 15                               ;; 0d:5de7 $d8 $0f
      sMSG                                             ;; 0d:5de9 $04
        db "<10>Received\n     Excalibur!", $00        ;; 0d:5dea
      sSET_FLAG wScriptFlags07.0                       ;; 0d:5dfe $da $38
    sENDIF                                             ;; 0d:5e00
    sMSG                                               ;; 0d:5e00 $04
      db "<12>"
      db "<11>", $00                   ;; 0d:5e01
    sEND                                               ;; 0d:5e04 $00

script_01ff:
    sIF_FLAG !wScriptFlags0F.1                         ;; 0d:5e05 $08 $f9 $00 $2c
      sMSG                                             ;; 0d:5e09 $04
        db "<10> Change music?<12>"
        db "<11>", $00 ;; 0d:5e0a
      sRNG                                             ;; 0d:5e18 $c7
      sIF_FLAG wScriptFlags0F.7, !wScriptFlags0F.6     ;; 0d:5e19 $08 $7f $fe $00 $02
        sSET_MUSIC 20                                  ;; 0d:5e1e $f8 $14
      sENDIF                                           ;; 0d:5e20
      sIF_FLAG wScriptFlags0F.7, wScriptFlags0F.6      ;; 0d:5e20 $08 $7f $7e $00 $02
        sSET_MUSIC 9                                   ;; 0d:5e25 $f8 $09
      sENDIF                                           ;; 0d:5e27
      sIF_FLAG !wScriptFlags0F.7, wScriptFlags0F.6     ;; 0d:5e27 $08 $ff $7e $00 $02
        sSET_MUSIC 7                                   ;; 0d:5e2c $f8 $07
      sENDIF                                           ;; 0d:5e2e
      sIF_FLAG !wScriptFlags0F.7, !wScriptFlags0F.6    ;; 0d:5e2e $08 $ff $fe $00 $02
        sSET_MUSIC 14                                  ;; 0d:5e33 $f8 $0e
      sENDIF                                           ;; 0d:5e35
    sENDIF                                             ;; 0d:5e35
    sEND                                               ;; 0d:5e35 $00

script_0200:
    sMSG                                               ;; 0d:5e36 $04
      db "<10>I RECOVER YOUR MP.<12>"
      db "<11>", $00 ;; 0d:5e37
    sSFX 5                                             ;; 0d:5e4b $f9 $05
    sFULL_MANA                                         ;; 0d:5e4d $c1
    sEND                                               ;; 0d:5e4e $00

script_0201:
    sEND                                               ;; 0d:5e4f $00

script_0202:
    sMSG                                               ;; 0d:5e50 $04
      db "<10> Let me treat\n your wound, <BOY>.<12>"
      db "<11>", $00 ;; 0d:5e51
    sSFX 5                                             ;; 0d:5e67 $f9 $05
    sPLAYER_GIVE_STATUS 16                             ;; 0d:5e69 $c4 $10
    sEND                                               ;; 0d:5e6b $00

script_0203:
    sMSG                                               ;; 0d:5e6c $04
      db "<10>Some walls may be\nbroken with <MSTAR>Star\nor <MATT>Mattock.<12>"
      db "<1b>Those walls sound\ndifferent when you\nhit them.<12>"
      db "<11>", $00 ;; 0d:5e6d
    sEND                                               ;; 0d:5eb1 $00

script_0204:
    sMSG                                               ;; 0d:5eb2 $04
      db "<10> I have very\n useful things!<12>"
      db "<11>", $00 ;; 0d:5eb3
    sOPEN_SHOP 3                                       ;; 0d:5ec9 $f6 $03
    sEND                                               ;; 0d:5ecb $00

script_0205:
    sMSG                                               ;; 0d:5ecc $04
      db "<10>Gemma Knights can\nuse the special\npowers of weapons.<12>"
      db "<1b>Try and see it\nwhen your Will\nPower is full.<12>"
      db "<11>", $00 ;; 0d:5ecd
    sEND                                               ;; 0d:5f11 $00

script_0206:
    sMSG                                               ;; 0d:5f12 $04
      db "<10> I'll heal you\n from Stone.<12>"
      db "<11>", $00 ;; 0d:5f13
    sSFX 5                                             ;; 0d:5f27 $f9 $05
    sUNK_C2 4                                          ;; 0d:5f29 $c2 $04
    sEND                                               ;; 0d:5f2b $00

script_0207:
    sMSG                                               ;; 0d:5f2c $04
      db "<10><BOY>:Let's go!\n<GIRL>:Keep this\n Pendant, <BOY>!<12>"
      db "<1b>Julius:Give me\n the Pendant!<12>"
      db "<11>", $00 ;; 0d:5f2d
    sSET_MUSIC 9                                       ;; 0d:5f61 $f8 $09
    sSPAWN_NPC 2                                       ;; 0d:5f63 $fd $02
    sSET_NPC_2_DIRECTION_RIGHT                         ;; 0d:5f65 $26
    sDELAY 20                                          ;; 0d:5f66 $f0 $14
    sSET_PLAYER_DIRECTION_LEFT                         ;; 0d:5f68 $87
    sDELAY 60                                          ;; 0d:5f69 $f0 $3c
    sSFX 20                                            ;; 0d:5f6b $f9 $14
    sFLASH_SCREEN                                      ;; 0d:5f6d $bf
    sFLASH_SCREEN                                      ;; 0d:5f6e $bf
    sCREATE_EFFECT $2c, $02, $08                       ;; 0d:5f6f $ba $2c $02 $08
    sCREATE_EFFECT $2c, $04, $08                       ;; 0d:5f73 $ba $2c $04 $08
    sCREATE_EFFECT $2c, $06, $08                       ;; 0d:5f77 $ba $2c $06 $08
    sCREATE_EFFECT $2c, $08, $08                       ;; 0d:5f7b $ba $2c $08 $08
    sCREATE_EFFECT $10, $0a, $08                       ;; 0d:5f7f $ba $10 $0a $08
    sFLASH_SCREEN                                      ;; 0d:5f83 $bf
    sSET_PLAYER_POSITION 10, 9                         ;; 0d:5f84 $8a $0a $09
    sSET_PLAYER_DIRECTION_UP                           ;; 0d:5f87 $84
    sMSG                                               ;; 0d:5f88 $04
      db "<10><GIRL>:Hold on!\n<BOY>:I_ can't_<12>"
      db "<11>", $00 ;; 0d:5f89
    sDELAY 40                                          ;; 0d:5f9f $f0 $28
    sSET_MUSIC 0                                       ;; 0d:5fa1 $f8 $00
    sSET_PLAYER_DIRECTION_DOWN                         ;; 0d:5fa3 $85
    sSET_PLAYER_HURT_SPRITE                            ;; 0d:5fa4 $a5
    sSET_FAST_MOVEMENT                                 ;; 0d:5fa5 $88
    sSFX 12                                            ;; 0d:5fa6 $f9 $0c
    sLOOP 6, 2                                         ;; 0d:5fa8 $03 $06 $02
      sPLAYER_STEP_FORWARD                             ;; 0d:5fab $80
    sEND                                               ;; 0d:5fac $00
    sSCROLL_ROOM_DOWN                                  ;; 0d:5fad $e8
    sSET_PLAYER_POSITION 10, 0                         ;; 0d:5fae $8a $0a $00
    sSFX 12                                            ;; 0d:5fb1 $f9 $0c
    sLOOP 14, 2                                        ;; 0d:5fb3 $03 $0e $02
      sPLAYER_STEP_FORWARD                             ;; 0d:5fb6 $80
    sEND                                               ;; 0d:5fb7 $00
    sLOAD_ROOM 14, $53, 20, 0                          ;; 0d:5fb8 $f4 $0e $53 $14 $00
    sDELAY 60                                          ;; 0d:5fbd $f0 $3c
    sSET_PLAYER_POSITION 14, 0                         ;; 0d:5fbf $8a $0e $00
    sSET_PLAYER_DIRECTION_DOWN                         ;; 0d:5fc2 $85
    sSFX 12                                            ;; 0d:5fc3 $f9 $0c
    sLOOP 5, 2                                         ;; 0d:5fc5 $03 $05 $02
      sPLAYER_STEP_FORWARD                             ;; 0d:5fc8 $80
    sEND                                               ;; 0d:5fc9 $00
    sSET_PLAYER_POSITION 20, 0                         ;; 0d:5fca $8a $14 $00
    sCREATE_EFFECT $10, $0e, $05                       ;; 0d:5fcd $ba $10 $0e $05
    sSFX 25                                            ;; 0d:5fd1 $f9 $19
    sFLASH_SCREEN                                      ;; 0d:5fd3 $bf
    sSHAKE_SCREEN                                      ;; 0d:5fd4 $fb
    sDELAY 60                                          ;; 0d:5fd5 $f0 $3c
    sCLEAR_FAST_MOVEMENT                               ;; 0d:5fd7 $89
    sSET_PLAYER_NORMAL_SPRITE                          ;; 0d:5fd8 $a4
    sSET_PLAYER_DIRECTION_RIGHT                        ;; 0d:5fd9 $86
    sCALL script_0208                                  ;; 0d:5fda $02 $1f $df
    sCLEAR_ROOM_HISTORY                                ;; 0d:5fdd $ab
    sEND                                               ;; 0d:5fde $00

script_0208:
    sMSG                                               ;; 0d:5fdf $04
      db "<10>_ Wow!  Somebody\n_ came down from\n_ the sky!<12>"
      db "<1b>_ __ <BOY>?!\n_ Do you know him?\n___ _ <BOY>__!<12>"
      db "<11>", $00 ;; 0d:5fe0
    sFADE_TO_BLACK                                     ;; 0d:6024 $bd
    sUNK_C5 7                                          ;; 0d:6025 $c5 $07
    sLOAD_ROOM_INSTANT 4, $00, 14, 3                   ;; 0d:6027 $f3 $04 $00 $0e $03
    sSET_NPC_TYPES 37                                  ;; 0d:602c $fc $25
    sSPAWN_NPC 2                                       ;; 0d:602e $fd $02
    sSET_NPC_1_POSITION 10, 4                          ;; 0d:6030 $19 $0a $04
    sSET_NPC_1_DIRECTION_RIGHT                         ;; 0d:6033 $16
    sDELAY 90                                          ;; 0d:6034 $f0 $5a
    sFADE_TO_NORMAL                                    ;; 0d:6036 $bc
    sSET_MUSIC 10                                      ;; 0d:6037 $f8 $0a
    sDELAY 70                                          ;; 0d:6039 $f0 $46
    sNPC_1_STEP_FORWARD                                ;; 0d:603b $10
    sNPC_1_STEP_FORWARD                                ;; 0d:603c $10
    sMSG                                               ;; 0d:603d $04
      db "<10>Amanda:I'm glad\n to see you again,\n my friend__<12>"
      db "<1b> I came back from\n Glaive after you\n left there__<12>"
      db "<1b> Oh, <BOY>__\n", $00 ;; 0d:603e
    sDELAY 50                                          ;; 0d:608a $f0 $32
    sMSG                                               ;; 0d:608c $04
      db " I'm sorry__", $00                           ;; 0d:608d
    sDELAY 40                                          ;; 0d:6096 $f0 $28
    sMSG                                               ;; 0d:6098 $04
      db "\n But I have to__<12>"
      db "<11>", $00 ;; 0d:6099
    sFADE_TO_BLACK                                     ;; 0d:60a6 $bd
    sDELAY 60                                          ;; 0d:60a7 $f0 $3c
    sDEL_NPC_1                                         ;; 0d:60a9 $18
    sSET_MUSIC 0                                       ;; 0d:60aa $f8 $00
    sDELAY 60                                          ;; 0d:60ac $f0 $3c
    sFADE_TO_NORMAL                                    ;; 0d:60ae $bc
    sSET_PLAYER_DIRECTION_DOWN                         ;; 0d:60af $85
    sPLAYER_STEP_FORWARD                               ;; 0d:60b0 $80
    sPLAYER_STEP_FORWARD                               ;; 0d:60b1 $80
    sDELAY 50                                          ;; 0d:60b2 $f0 $32
    sMSG                                               ;; 0d:60b4 $04
      db "<10><BOY>:_Where am I?\n", $00               ;; 0d:60b5
    sDELAY 30                                          ;; 0d:60c2 $f0 $1e
    sMSG                                               ;; 0d:60c4 $04
      db " __ Pendant!!\n __ Where is it?!<12>"
      db "<1b> __ I thought that\n it was Amanda\n talking to me__<12>"
      db "<11>", $00 ;; 0d:60c5
    sSET_MUSIC 4                                       ;; 0d:60fc $f8 $04
    sEND                                               ;; 0d:60fe $00

script_0209:
    sMSG                                               ;; 0d:60ff $04
      db "<10>A girl is being\nheld in a room\nin this airship!<12>"
      db "<11>", $00 ;; 0d:6100
    sEND                                               ;; 0d:6121 $00

script_020a:
    sEND                                               ;; 0d:6122 $00

script_020b:
    sMSG                                               ;; 0d:6123 $04
      db "<10>Get back to work!<12>"
      db "<11>", $00 ;; 0d:6124
    sEND                                               ;; 0d:6133 $00

script_020c:
    sEND                                               ;; 0d:6134 $00

script_020d:
    sMSG                                               ;; 0d:6135 $04
      db "<10>Many years ago,\nDark Lord found\na baby in a cave<12>"
      db "<1b>at the Waterfalls\nnear Glaive.\n__ That's Julius.<12>"
      db "<11>", $00 ;; 0d:6136
    sEND                                               ;; 0d:617b $00

script_020e:
    sMSG                                               ;; 0d:617c $04
      db "<10>Julius is taking\nthe charge of this\nairship.<12>"
      db "<11>", $00 ;; 0d:617d
    sEND                                               ;; 0d:619e $00

script_020f:
    sSET_NPC_1_DIRECTION_UP                            ;; 0d:619f $14
    sUNK_1A                                            ;; 0d:61a0 $1a
    sLOOP 4, 2                                         ;; 0d:61a1 $03 $04 $02
      sNPC_1_STEP_FORWARD                              ;; 0d:61a4 $10
    sEND                                               ;; 0d:61a5 $00
    sMSG                                               ;; 0d:61a6 $04
      db "<10>", $00                                   ;; 0d:61a7
    sIF_FLAG !wScriptFlags02.6                         ;; 0d:61a9 $08 $96 $00 $7d
      sMSG                                             ;; 0d:61ad $04
        db "<BOY>:<GIRL>!\n", $00                      ;; 0d:61ae
      sSFX 23                                          ;; 0d:61b4 $f9 $17
      sMSG                                             ;; 0d:61b6 $04
        db "Bogard:Hurry!\n It's moving!<12>"
        db "<1b><GIRL>:This door\n is locked!<12>"
        db "<1b>Bogard:How about\n the windows?<12>"
        db "<11>", $00 ;; 0d:61b7
      sSET_NPC_1_DIRECTION_DOWN                        ;; 0d:61f8 $15
      sLOOP 4, 2                                       ;; 0d:61f9 $03 $04 $02
        sNPC_1_STEP_FORWARD                            ;; 0d:61fc $10
      sEND                                             ;; 0d:61fd $00
      sDELAY 20                                        ;; 0d:61fe $f0 $14
      sSET_NPC_1_DIRECTION_UP                          ;; 0d:6200 $14
      sLOOP 4, 2                                       ;; 0d:6201 $03 $04 $02
        sNPC_1_STEP_FORWARD                            ;; 0d:6204 $10
      sEND                                             ;; 0d:6205 $00
      sMSG                                             ;; 0d:6206 $04
        db "<10><GIRL>:It may open.\n<BOY>:I'll get you\n from outside!<1b>", $00 ;; 0d:6207
      sSET_FLAG wScriptFlags02.6                       ;; 0d:6228 $da $16
    sENDIF                                             ;; 0d:622a
    sMSG                                               ;; 0d:622a $04
      db "<GIRL>:Be careful!<12>"
      db "<11>", $00 ;; 0d:622b
    sLOOP 4, 2                                         ;; 0d:6237 $03 $04 $02
      sNPC_1_STEP_BACKWARDS                            ;; 0d:623a $11
    sEND                                               ;; 0d:623b $00
    sUNK_1B                                            ;; 0d:623c $1b
    sEND                                               ;; 0d:623d $00

script_0210:
    sMSG                                               ;; 0d:623e $04
      db "Bogard:I knew you\n would do it.<12>"
      db "<1b> Now, listen.\n It'll be perilous\n from now on.<12>"
      db "<1b> Julius has got\n the power of Mana\n already.<12>"
      db "<1b> Only match is the\n Knight with the\n Legendary Sword.<12>"
      db "<1b><BOY>:Legend_ __!!\n The Excalbur?!\nBogard:Yes.<12>"
      db "<1b> And it is how we\n defeated the evil\n power of Vandole.<12>"
      db "<1b><BOY>:_ You_ _\n_ Where is that\n sword now?<12>"
      db "<1b>Bogard:Somewhere\n in this world__<12>"
      db "<1b> Go to Wendel and\n ask Cibba.\n He knows better.<12>"
      db "<1b> Ask Dr. Bowow\n how to get there.\n He'll help you.", $00 ;; 0d:623f
    sEND                                               ;; 0d:637d $00

script_0211:
    sMSG                                               ;; 0d:637e $04
      db "<10>Are you okay, boy?\n_You are in Menos.<12>"
      db "<1b>Amanda left the\nvillage earlier\nthis morning.<12>"
      db "<11>", $00 ;; 0d:637f
    sEND                                               ;; 0d:63bc $00

script_0212:
    sMSG                                               ;; 0d:63bd $04
      db "<10>We used to see\nmany Chocobos\naround here.<12>"
      db "<1b>I saw an egg in a\nforest up north!<12>"
      db "<11>", $00 ;; 0d:63be
    sEND                                               ;; 0d:63f7 $00

script_0213:
    sMSG                                               ;; 0d:63f8 $04
      db "<10>Amanda's little\nbrother, Lester,\nis a musician.<12>"
      db "<1b>He's playing harp\nin a town called\nJadd.<12>"
      db "<11>", $00 ;; 0d:63f9
    sEND                                               ;; 0d:6438 $00

script_0214:
    sMSG                                               ;; 0d:6439 $04
      db "<10>I used to hear a\nbeautiful sound of\nharp over in Jadd.<12>"
      db "<1b>Jadd is at the\nnorth end of\nthe desert.<12>"
      db "<11>", $00 ;; 0d:643a
    sEND                                               ;; 0d:647b $00

script_0215:
    sMSG                                               ;; 0d:647c $04
      db "<10>The Book of Ice is\nhidden somewhere\nin the desert!<12>"
      db "<11>", $00 ;; 0d:647d
    sEND                                               ;; 0d:64a1 $00

script_0216:
    sMSG                                               ;; 0d:64a2 $04
      db "<10>What's wrong with\nAmanda lately?\nShe's depressed.<12>"
      db "<11>", $00 ;; 0d:64a3
    sEND                                               ;; 0d:64c8 $00

script_0217:
    sMSG                                               ;; 0d:64c9 $04
      db "<10> __??", $00                              ;; 0d:64ca
    sDELAY 80                                          ;; 0d:64d0 $f0 $50
    sMSG                                               ;; 0d:64d2 $04
      db "  Wow!\n It's moving!<12>"
      db "<11>", $00 ;; 0d:64d3
    sDELAY 60                                          ;; 0d:64e4 $f0 $3c
    sDEL_NPC_1                                         ;; 0d:64e6 $18
    sSFX 15                                            ;; 0d:64e7 $f9 $0f
    sSPAWN_NPC 1                                       ;; 0d:64e9 $fd $01
    sSET_NPC_1_DIRECTION_LEFT                          ;; 0d:64eb $17
    sSET_MUSIC 5                                       ;; 0d:64ec $f8 $05
    sDELAY 120                                         ;; 0d:64ee $f0 $78
    sMSG                                               ;; 0d:64f0 $04
      db "<10>__ What are you??<12>"
      db "<11>", $00 ;; 0d:64f1
    sSET_PLAYER_DIRECTION_LEFT                         ;; 0d:64ff $87
    sPLAYER_STEP_FORWARD                               ;; 0d:6500 $80
    sPLAYER_STEP_FORWARD                               ;; 0d:6501 $80
    sNPC_1_STEP_FORWARD                                ;; 0d:6502 $10
    sSFX 7                                             ;; 0d:6503 $f9 $07
    sDELAY 15                                          ;; 0d:6505 $f0 $0f
    sSFX 7                                             ;; 0d:6507 $f9 $07
    sNPC_1_STEP_FORWARD                                ;; 0d:6509 $10
    sDELAY 60                                          ;; 0d:650a $f0 $3c
    sSET_PLAYER_DIRECTION_RIGHT                        ;; 0d:650c $86
    sDELAY 40                                          ;; 0d:650d $f0 $28
    sMSG                                               ;; 0d:650f $04
      db "<10>__ Hey!\nDon't follow me!<12>"
      db "<11>", $00 ;; 0d:6510
    sSET_PLAYER_DIRECTION_LEFT                         ;; 0d:6524 $87
    sPLAYER_STEP_FORWARD                               ;; 0d:6525 $80
    sPLAYER_STEP_FORWARD                               ;; 0d:6526 $80
    sNPC_1_STEP_FORWARD                                ;; 0d:6527 $10
    sSFX 7                                             ;; 0d:6528 $f9 $07
    sDELAY 15                                          ;; 0d:652a $f0 $0f
    sSFX 7                                             ;; 0d:652c $f9 $07
    sNPC_1_STEP_FORWARD                                ;; 0d:652e $10
    sDELAY 60                                          ;; 0d:652f $f0 $3c
    sSET_PLAYER_DIRECTION_RIGHT                        ;; 0d:6531 $86
    sMSG                                               ;; 0d:6532 $04
      db "<10>You think I'm\nyour mother?<12>"
      db "<1b>__ ", $00 ;; 0d:6533
    sDELAY 80                                          ;; 0d:654a $f0 $50
    sMSG                                               ;; 0d:654c $04
      db " Okay.\n__ Come with me!<12>"
      db "<11>", $00 ;; 0d:654d
    sGIVE_FOLLOWER 9                                   ;; 0d:6560 $9c $09
    sSET_FLAG wScriptFlags03.1                         ;; 0d:6562 $da $19
    sSET_FLAG wScriptFlags0B.0                         ;; 0d:6564 $da $58
    sSFX 7                                             ;; 0d:6566 $f9 $07
    sDELAY 10                                          ;; 0d:6568 $f0 $0a
    sSFX 7                                             ;; 0d:656a $f9 $07
    sDELAY 10                                          ;; 0d:656c $f0 $0a
    sSFX 7                                             ;; 0d:656e $f9 $07
    sSET_MUSIC 20                                      ;; 0d:6570 $f8 $14
    sEND                                               ;; 0d:6572 $00

script_0218:
    sMSG                                               ;; 0d:6573 $04
      db "<10>Davias:Better\n behave yourself\n in this town.<12>"
      db "<1b> __ Amanda__?\n Oh, yes!\n That girl__<12>"
      db "<1b> She went to the\n Cave of Medusa.\n<12>"
      db "<1b> Nobody ever came\n back from there\n alive though.<12>"
      db "", $00 ;; 0d:6574
    sSET_FLAG wScriptFlags03.2                         ;; 0d:65e7 $da $1a
    sMSG                                               ;; 0d:65e9 $04
      db "<11>", $00                                   ;; 0d:65ea
    sEND                                               ;; 0d:65ec $00

script_0219:
    sIF_EQUIPED $2a                                    ;; 0d:65ed $09 $2a $00 $53
      sSET_MUSIC 0                                     ;; 0d:65f1 $f8 $00
      sMSG                                             ;; 0d:65f3 $04
        db "<10><BOY> used <POT>Amanda,\nthe tears of\nAmanda__", $00 ;; 0d:65f4
      sDELAY 120                                       ;; 0d:660e $f0 $78
      sTAKE_EQUIPED_ITEM                               ;; 0d:6610 $de
      sMSG                                             ;; 0d:6611 $04
        db "<11>", $00                                 ;; 0d:6612
      sDEL_NPC_1                                       ;; 0d:6614 $18
      sSFX 6                                           ;; 0d:6615 $f9 $06
      sSPAWN_NPC 2                                     ;; 0d:6617 $fd $02
      sGIVE_FOLLOWER 6                                 ;; 0d:6619 $9c $06
      sMSG                                             ;; 0d:661b $04
        db "<10>    Lester was\n  released from\n Davias's curse__<12>"
        db "<1b>", $00 ;; 0d:661c
      sCALL script_053c                                ;; 0d:663b $02 $6d $32
      sSET_FLAG wScriptFlags0A.6                       ;; 0d:663e $da $56
      sSET_FLAG wScriptFlags03.5                       ;; 0d:6640 $da $1d
      sSET_MUSIC 14                                    ;; 0d:6642 $f8 $0e
    sENDIF                                             ;; 0d:6644
    sEND                                               ;; 0d:6644 $00

script_021a:
    sMSG                                               ;; 0d:6645 $04
      db "<10>Welcome to Jadd.", $00                   ;; 0d:6646
    sIF_FLAG !wScriptFlags05.0                         ;; 0d:6654 $08 $a8 $00 $19
      sMSG                                             ;; 0d:6658 $04
        db "\nDavias rules this\ntown. I hate it.", $00 ;; 0d:6659
    sENDIF                                             ;; 0d:6671
    sMSG                                               ;; 0d:6671 $04
      db "<12>"
      db "<11>", $00                   ;; 0d:6672
    sEND                                               ;; 0d:6675 $00

script_021b:
    sMSG                                               ;; 0d:6676 $04
      db "<10>", $00                                   ;; 0d:6677
    sIF_FLAG !wScriptFlags05.0                         ;; 0d:6679 $08 $a8 $00 $20
      sMSG                                             ;; 0d:667d $04
        db "Northern valley is\nfilled with fatal\npoison gas.", $00 ;; 0d:667e
    sELSE                                              ;; 0d:669b $01 $30
      sMSG                                             ;; 0d:669d $04
        db "The poison gas is\ncleared!<12>"
        db "<1b>Head north over\nthe valley to the\nMt. Rocks!", $00 ;; 0d:669e
    sENDIF                                             ;; 0d:66cd
    sMSG                                               ;; 0d:66cd $04
      db "<12>"
      db "<11>", $00                   ;; 0d:66ce
    sEND                                               ;; 0d:66d1 $00

script_021c:
    sMSG                                               ;; 0d:66d2 $04
      db "<10>The poison gas\nappeared when\nthe harp stopped.<12>"
      db "<11>", $00 ;; 0d:66d3
    sEND                                               ;; 0d:66f5 $00

script_021d:
    sMSG                                               ;; 0d:66f6 $04
      db "<10>See that huge\nmansion? That's\nDavias's house!<12>"
      db "<11>", $00 ;; 0d:66f7
    sEND                                               ;; 0d:6719 $00

script_021e:
    sMSG                                               ;; 0d:671a $04
      db "<10>Davias can cast a\nspell to change\npeople to animals.<12>"
      db "<1b>Many people went\nto his place and\nnever came back!<12>"
      db "<11>", $00 ;; 0d:671b
    sEND                                               ;; 0d:6765 $00

script_021f:
    sMSG                                               ;; 0d:6766 $04
      db "<10>To uncurse, you\nneed a teardrop\nof Medusa.<12>"
      db "<11>", $00 ;; 0d:6767
    sEND                                               ;; 0d:6785 $00

script_0220:
    sMSG                                               ;; 0d:6786 $04
      db "<10>Davias's mother\nis a Medusa.\nShe is in a cave.<12>"
      db "<1b>It's by the oasis\nat the desert, but\nit's hard to find.<12>"
      db "<1b>I don't know how,\nbut a boy knows\nhow to get in!<12>"
      db "<11>", $00 ;; 0d:6787
    sEND                                               ;; 0d:67eb $00

script_0221:
    sMSG                                               ;; 0d:67ec $04
      db "<10>Cave of Oasis?\nI'll tell you for\na bag of Fang!<12>"
      db "<13><1b>", $00 ;; 0d:67ed
    sIF_FLAG !wScriptFlags0F.7                         ;; 0d:6810 $08 $ff $00 $28
      sIF_EQUIPED $3b                                  ;; 0d:6814 $09 $3b $00 $06
        sTAKE_EQUIPED_ITEM                             ;; 0d:6818 $de
        sCALL script_022e                              ;; 0d:6819 $02 $2d $01
      sELSE                                            ;; 0d:681c $01 $1c
        sIF_INVENTORY $3b                              ;; 0d:681e $0a $3b $00 $07
          sUNK_D5 50                                   ;; 0d:6822 $d5 $32
          sCALL script_022e                            ;; 0d:6824 $02 $2d $01
        sELSE                                          ;; 0d:6827 $01 $11
          sMSG                                         ;; 0d:6829 $04
            db "But, you don't\nhave it!", $00         ;; 0d:682a
        sENDIF                                         ;; 0d:683a
      sENDIF                                           ;; 0d:683a
    sELSE                                              ;; 0d:683a $01 $1c
      sMSG                                             ;; 0d:683c $04
        db "Don't you know?\nIt's very\nvaluable!", $00 ;; 0d:683d
    sENDIF                                             ;; 0d:6858
    sMSG                                               ;; 0d:6858 $04
      db "<12>"
      db "<11>", $00                   ;; 0d:6859
    sEND                                               ;; 0d:685c $00

script_0222:
    sMSG                                               ;; 0d:685d $04
      db "<10>Lester:Good luck!<12>"
      db "<11>", $00 ;; 0d:685e
    sEND                                               ;; 0d:686d $00

script_0223:
    sSET_NPC_TYPES 94                                  ;; 0d:686e $fc $5e
    sSPAWN_NPC 0                                       ;; 0d:6870 $fd $00
    sEND                                               ;; 0d:6872 $00

script_0224:
    sEND                                               ;; 0d:6873 $00

script_0225:
    sEND                                               ;; 0d:6874 $00

script_0226:
    sSPAWN_NPC 1                                       ;; 0d:6875 $fd $01
    sMSG                                               ;; 0d:6877 $04
      db "<10><BOY>:__I'm sorry,\n Amanda __\n But I had to __<12>"
      db "<11>", $00 ;; 0d:6878
    sSET_FLAG wScriptFlags03.4                         ;; 0d:6899 $da $1c
    sEND                                               ;; 0d:689b $00

script_0227:
    sFOLLOWER_DIRECTION_DOWN                           ;; 0d:689c $95
    sMSG                                               ;; 0d:689d $04
      db "<10>", $00                                   ;; 0d:689e
    sSET_MUSIC 0                                       ;; 0d:68a0 $f8 $00
    sMSG                                               ;; 0d:68a2 $04
      db "Amanda:__Ouch!", $00                         ;; 0d:68a3
    sSET_PLAYER_DIRECTION_LEFT                         ;; 0d:68af $87
    sPLAYER_STEP_FORWARD                               ;; 0d:68b0 $80
    sMSG                                               ;; 0d:68b1 $04
      db "\n<BOY>:Are you okay?<12>"
      db "<1b>Amanda:I guess\n Medusa bit me\n while fighting__<12>"
      db "", $00 ;; 0d:68b2
    sSET_MUSIC 2                                       ;; 0d:68df $f8 $02
    sMSG                                               ;; 0d:68e1 $04
      db "<1b> __ One who was\n bitten by Medusa\n turns to Medusa.<12>"
      db "<1b> I'm gonna turn\n into a Medusa in\n a short while__<12>"
      db "<1b> Please do away\n with me and take\n my tears, <BOY>.<12>"
      db "<1b><BOY>:No, I can't!\nAmanda:I'm gonna\n be a monster__<12>"
      db "<1b> I might lose my\n mind and hurt\n people__<12>"
      db "<1b>", $00 ;; 0d:68e2
    sFOLLOWER_DELETE                                   ;; 0d:6986 $98
    sSET_NPC_TYPES 66                                  ;; 0d:6987 $fc $42
    sSPAWN_NPC 0                                       ;; 0d:6989 $fd $00
    sDELAY 30                                          ;; 0d:698b $f0 $1e
    sMSG                                               ;; 0d:698d $04
      db " Please__ <BOY>__\n Before I lose\n my feelings__<12>"
      db "<1b> Please take my\n tears to Lester.<12>"
      db "<1b> Tell him that\n I loved him__\n", $00 ;; 0d:698e
    sDELAY 40                                          ;; 0d:69d7 $f0 $28
    sMSG                                               ;; 0d:69d9 $04
      db " _ Please __<12>"
      db "<1b> <BOY> __\n", $00 ;; 0d:69da
    sDELAY 30                                          ;; 0d:69ea $f0 $1e
    sMSG                                               ;; 0d:69ec $04
      db " Pl_ please_ _ _<12>"
      db "<11>", $00   ;; 0d:69ed
    sEND                                               ;; 0d:69fe $00

script_0228:
    sGIVE_ITEM 33                                      ;; 0d:69ff $d4 $21
    sIF_FLAG !wScriptFlags.5                           ;; 0d:6a01 $08 $85 $00 $42
      sFADE_TO_BLACK                                   ;; 0d:6a05 $bd
      sLOAD_ROOM_INSTANT 15, $55, 20, 0                ;; 0d:6a06 $f3 $0f $55 $14 $00
      sFADE_TO_NORMAL                                  ;; 0d:6a0b $bc
      sMSG                                             ;; 0d:6a0c $04
        db "<10> <BOY> took a drop\n   of tear from\n  Amanda's face.<12>"
        db "<1b>", $00 ;; 0d:6a0d
      sDELAY 30                                        ;; 0d:6a2f $f0 $1e
      sMSG                                             ;; 0d:6a31 $04
        db "<11>", $00                                 ;; 0d:6a32
      sDELAY 60                                        ;; 0d:6a34 $f0 $3c
      sSET_MUSIC 0                                     ;; 0d:6a36 $f8 $00
      sDELAY 60                                        ;; 0d:6a38 $f0 $3c
      sLOAD_ROOM 0, $2c, 14, 4                         ;; 0d:6a3a $f4 $00 $2c $0e $04
      sSET_FLAG wScriptFlags06.5                       ;; 0d:6a3f $da $35
      sDELAY 10                                        ;; 0d:6a41 $f0 $0a
      sSET_MUSIC 20                                    ;; 0d:6a43 $f8 $14
      sCLEAR_ROOM_HISTORY                              ;; 0d:6a45 $ab
      sRUN_ROOM_SCRIPT                                 ;; 0d:6a46 $ec
    sENDIF                                             ;; 0d:6a47
    sEND                                               ;; 0d:6a47 $00

script_0229:
    sMSG                                               ;; 0d:6a48 $04
      db "<10>", $00                                   ;; 0d:6a49
    sIF_FLAG wScriptFlags0F.1                          ;; 0d:6a4b $08 $79 $00 $18
      sMSG                                             ;; 0d:6a4f $04
        db "Old man:Go away!", $00                     ;; 0d:6a50
      sIF_FLAG wScriptFlags01.3, wScriptFlags0A.1      ;; 0d:6a5d $08 $0b $51 $00 $05
        sCALL script_022a                              ;; 0d:6a62 $02 $2a $bb
        sSET_FLAG wScriptFlags01.4                     ;; 0d:6a65 $da $0c
      sENDIF                                           ;; 0d:6a67
    sENDIF                                             ;; 0d:6a67
    sIF_FLAG !wScriptFlags01.4                         ;; 0d:6a67 $08 $8c $00 $4f
      sIF_FLAG wScriptFlags0F.0, !wScriptFlags0F.1     ;; 0d:6a6b $08 $78 $f9 $00 $1b
        sMSG                                           ;; 0d:6a70 $04
          db "Old man:I don't\n know anything!", $00   ;; 0d:6a71
        sSET_FLAG wScriptFlags0F.1                     ;; 0d:6a89 $da $79
      sENDIF                                           ;; 0d:6a8b
      sIF_FLAG !wScriptFlags0F.0                       ;; 0d:6a8b $08 $f8 $00 $27
        sMSG                                           ;; 0d:6a8f $04
          db "<BOY>:Excuse me.\n I'm looking for a\n man name Bogard.", $00 ;; 0d:6a90
        sSET_FLAG wScriptFlags0F.0                     ;; 0d:6ab4 $da $78
      sENDIF                                           ;; 0d:6ab6
      sMSG                                             ;; 0d:6ab6 $04
        db "<12>"
        db "<11>", $00               ;; 0d:6ab7
    sENDIF                                             ;; 0d:6aba
    sEND                                               ;; 0d:6aba $00

script_022a:
    sMSG                                               ;; 0d:6abb $04
      db "\n", $00                                     ;; 0d:6abc
    sDELAY 40                                          ;; 0d:6abe $f0 $28
    sMSG                                               ;; 0d:6ac0 $04
      db " _", $00                                     ;; 0d:6ac1
    sDELAY 50                                          ;; 0d:6ac4 $f0 $32
    sMSG                                               ;; 0d:6ac6 $04
      db " _", $00                                     ;; 0d:6ac7
    sDELAY 30                                          ;; 0d:6aca $f0 $1e
    sMSG                                               ;; 0d:6acc $04
      db " That is_ the_\n Pendant of Mana.<12>"
      db "<1b><GIRL>:_ My mother\n gave me this.<12>"
      db "<1b><GIRL>:Are you the\n Gemma Knight?<12>"
      db "<1b>Bogard:_ Yes. It\n was when Vandole\n was trying to<12>"
      db "<1b> conquer the world\n with the power\n of Mana.<12>"
      db "<1b> We fought against\n them to retrieve\n the peace. But_<12>"
      db "<1b> We were losing_\n The power of Mana\n was too strong.<12>"
      db "<1b> But there was a\n lady who assured\n our victory.<12>"
      db "<1b> That lady had\n that Pendant on\n her chest.<12>"
      db "<1b> Seems like this\n girl is the key\n for this time.<12>"
      db "<1b> Take the Mattock\n in the next room!<12>"
      db "<11>", $00 ;; 0d:6acd
    sCALL script_022b                                  ;; 0d:6c0d $02 $2c $14
    sSFX 16                                            ;; 0d:6c10 $f9 $10
    sOPEN_NORTH_DOOR                                   ;; 0d:6c12 $e0
    sEND                                               ;; 0d:6c13 $00

script_022b:
    sMSG                                               ;; 0d:6c14 $04
      db "<10>", $00                                   ;; 0d:6c15
    sIF_FLAG wScriptFlags01.4                          ;; 0d:6c17 $08 $0c $00 $24
      sMSG                                             ;; 0d:6c1b $04
        db " You can buy the\n mattocks at the\n Item Shops also.<12>"
        db "<1b>", $00 ;; 0d:6c1c
    sENDIF                                             ;; 0d:6c3f
    sMSG                                               ;; 0d:6c3f $04
      db " Go to the cave on\n the east side of\n the mountains.<12>"
      db "<1b> Use Mattock to\n break the rocks\n in the cave. See<12>"
      db "<1b> Cibba in the town\n called Wendel.\n He knows more.<12>"
      db "<11>", $00 ;; 0d:6c40
    sEND                                               ;; 0d:6ca4 $00

script_022c:
    sMSG                                               ;; 0d:6ca5 $04
      db "<10>", $00                                   ;; 0d:6ca6
    sIF_FLAG !wScriptFlags04.1                         ;; 0d:6ca8 $08 $a1 $00 $0b
      sMSG                                             ;; 0d:6cac $04
        db "Bogard:_____", $00                         ;; 0d:6cad
    sENDIF                                             ;; 0d:6cb7
    sIF_FLAG wScriptFlags04.1, !wScriptFlags04.2       ;; 0d:6cb7 $08 $21 $a2 $00 $03
      sCALL script_0210                                ;; 0d:6cbc $02 $22 $3e
    sENDIF                                             ;; 0d:6cbf
    sIF_FLAG wScriptFlags04.2                          ;; 0d:6cbf $08 $22 $00 $1e
      sMSG                                             ;; 0d:6cc3 $04
        db "Bogard:To defeat\n the evil!\n Go on, <BOY>.", $00 ;; 0d:6cc4
    sENDIF                                             ;; 0d:6ce1
    sMSG                                               ;; 0d:6ce1 $04
      db "<12>"
      db "<11>", $00                   ;; 0d:6ce2
    sEND                                               ;; 0d:6ce5 $00

script_022d:
    sMSG                                               ;; 0d:6ce6 $04
      db "<10>Bogard:I'll take\n care of her.<12>"
      db "<11>", $00 ;; 0d:6ce7
    sEND                                               ;; 0d:6d00 $00

script_022e:
    sMSG                                               ;; 0d:6d01 $04
      db "Here's the clue.\nPalm trees_ and 8.\n", $00 ;; 0d:6d02
    sDELAY 20                                          ;; 0d:6d1b $f0 $14
    sMSG                                               ;; 0d:6d1d $04
      db "Got it?", $00                                ;; 0d:6d1e
    sEND                                               ;; 0d:6d24 $00

script_022f:
    sMSG                                               ;; 0d:6d25 $04
      db "<10>Bowow:", $00                             ;; 0d:6d26
    sIF_FLAG !wScriptFlags05.7                         ;; 0d:6d2c $08 $af $00 $43
      sMSG                                             ;; 0d:6d30 $04
        db "Go east on\n the sea from the\n pier at north.<12>"
        db "<1b> And go north to\n Wendel.__South is\n to the Ammonites.", $00 ;; 0d:6d31
    sELSE                                              ;; 0d:6d71 $01 $a5
      sMSG                                             ;; 0d:6d73 $04
        db "Finally!\n", $00                           ;; 0d:6d74
      sIF_INVENTORY $08                                ;; 0d:6d7c $0a $08 $00 $3c
        sMSG                                           ;; 0d:6d80 $04
          db "There is a piece\nof crystal you can<12>"
          db "<1b>blow with Nuke in\nCrystal Desert.\n__ Find it!", $00 ;; 0d:6d81
      sELSE                                            ;; 0d:6dba $01 $5c
        sMSG                                           ;; 0d:6dbc $04
          db "But you need the\nmagic of Nuke.<12>"
          db "<1b>The ultimate magic\nbook of Nuke is\nsealed by Lich.<12>"
          db "<1b>Go north to the\nPalmy Desert and\ndefeat Lich!", $00 ;; 0d:6dbd
      sENDIF                                           ;; 0d:6e18
    sENDIF                                             ;; 0d:6e18
    sMSG                                               ;; 0d:6e18 $04
      db "<12>"
      db "<11>", $00                   ;; 0d:6e19
    sEND                                               ;; 0d:6e1c $00

script_0230:
    sMSG                                               ;; 0d:6e1d $04
      db "<10>There is no way\nto go on water.\nBut, you know_<12>"
      db "<1b>Dr. Bowow may be\nable to make\nsomething.<12>"
      db "<1b>He lives in a\nhouse over there.<12>"
      db "<11>", $00 ;; 0d:6e1e
    sEND                                               ;; 0d:6e6e $00

script_0231:
    sMSG                                               ;; 0d:6e6f $04
      db "<10>", $00                                   ;; 0d:6e70
    sIF_FLAG wScriptFlags04.0                          ;; 0d:6e72 $08 $20 $00 $19
      sMSG                                             ;; 0d:6e76 $04
        db "Sarah:Please__\n Save us all_!<12>"
        db "<11>", $00 ;; 0d:6e77
    sELSE                                              ;; 0d:6e8d $01 $0a
      sCALL script_0232                                ;; 0d:6e8f $02 $2e $9a
      sNPC_1_STEP_BACKWARDS                            ;; 0d:6e92 $11
      sNPC_1_STEP_BACKWARDS                            ;; 0d:6e93 $11
      sSET_NPC_1_DIRECTION_DOWN                        ;; 0d:6e94 $15
      sNPC_1_STEP_BACKWARDS                            ;; 0d:6e95 $11
      sNPC_1_STEP_BACKWARDS                            ;; 0d:6e96 $11
      sSET_FLAG wScriptFlags04.0                       ;; 0d:6e97 $da $20
    sENDIF                                             ;; 0d:6e99
    sEND                                               ;; 0d:6e99 $00

script_0232:
    sMSG                                               ;; 0d:6e9a $04
      db "Sarah:He didn't\n wanna let you\n know, but_<12>"
      db "<1b> He can't move\n for a while for\n his broken back.<12>"
      db "<1b> He was distressed\n to hear of places\n being attacked.<12>"
      db "<1b> But he kept\n saying that there\n is a boy_<12>"
      db "<1b> A boy named <BOY>\n will come to\n save us all_<12>"
      db "<1b> I didn't really\n believe him, but\n when I saw you_<12>"
      db "<1b> _ Even a Chocobo\n knew you're the\n last hope_<12>"
      db "<1b> Bogard and the\n bird made me\n believe in you_<12>"
      db "<1b> We all believe\n that you'll save\n our world now.<12>"
      db "<1b> Chocobo is being\n treated at Doctor\n Bowow's house.<12>"
      db "<11>", $00 ;; 0d:6e9b
    sEND                                               ;; 0d:6feb $00

script_0233:
    sMSG                                               ;; 0d:6fec $04
      db "<10>This is Ish.<12>"
      db "<1b>The evil Vandole\nused to prosper\naround this area.<12>"
      db "<1b>But Gemma Knight\nwith some sword\ndefeated the evil.<12>"
      db "<1b>The ruins of\nVandole lies under\nthe desert.<12>"
      db "<11>", $00 ;; 0d:6fed
    sEND                                               ;; 0d:705c $00

script_0234:
    sMSG                                               ;; 0d:705d $04
      db "<10>Julius summoned\nevil monsters_", $00    ;; 0d:705e
    sDELAY 40                                          ;; 0d:7074 $f0 $28
    sMSG                                               ;; 0d:7076 $04
      db "\nIs it safe here?<12>"
      db "<11>", $00 ;; 0d:7077
    sEND                                               ;; 0d:7085 $00

script_0235:
    sMSG                                               ;; 0d:7086 $04
      db "<10>Vandole people\ncould build things\non desert sand.<12>"
      db "<1b>They built the\ngreat Dime Tower.\nBut it sank__<12>"
      db "<11>", $00 ;; 0d:7087
    sEND                                               ;; 0d:70cf $00

script_0236:
    sMSG                                               ;; 0d:70d0 $04
      db "<10>Julius became the\nking of Glaive.\nBut Julius is<12>"
      db "<1b>much crueler than\nthat Dark Lord!\n_ What'll we do?<12>"
      db "<11>", $00 ;; 0d:70d1
    sEND                                               ;; 0d:711b $00

script_0237:
    sMSG                                               ;; 0d:711c $04
      db "<10>It's hard to walk\naround in Crystal\nDesert.<12>"
      db "<1b>Even for Chocobos!<12>"
      db "<11>", $00 ;; 0d:711d
    sEND                                               ;; 0d:714d $00

script_0238:
    sEND                                               ;; 0d:714e $00

script_0239:
    sEND                                               ;; 0d:714f $00

script_023a:
    sEND                                               ;; 0d:7150 $00

script_023b:
    sEND                                               ;; 0d:7151 $00

script_023c:
    sEND                                               ;; 0d:7152 $00

script_023d:
    sEND                                               ;; 0d:7153 $00

script_023e:
    sMSG                                               ;; 0d:7154 $04
      db "<10>THE TREE OF MANA\nGROWS WITH THE\nENERGY OF NATURE.<12>"
      db "<11>", $00 ;; 0d:7155
    sEND                                               ;; 0d:7183 $00

script_023f:
    sMSG                                               ;; 0d:7184 $04
      db "<10>THE EVIL FORCE\nOF PEOPLE MAKES\nTHE TREE EVIL.<12>"
      db "<11>", $00 ;; 0d:7185
    sEND                                               ;; 0d:71b1 $00

script_0240:
    sMSG                                               ;; 0d:71b2 $04
      db "<10>WATER FROM THE\nEVIL MANA TREE\nTURNS PEOPLE EVIL.<12>"
      db "<1b>IT IS A VICIOUS\nCIRCLE BETWEEN\nENERGY AND MANA.<12>"
      db "<11>", $00 ;; 0d:71b3
    sEND                                               ;; 0d:7210 $00

script_0241:
    sMSG                                               ;; 0d:7211 $04
      db "<10>ONE WHO TOUCHES\nTHE MANA TREE GETS\nTHE MIGHTY POWER.<12>"
      db "<11>", $00 ;; 0d:7212
    sEND                                               ;; 0d:7241 $00

script_0242:
    sMSG                                               ;; 0d:7242 $04
      db "<10>KING OF VANDOLE\nGOT THE MIGHTY\nPOWER OF MANA.<12>"
      db "<1b>THE ONLY ONE WHO\nCAN STAND AGAINST\nIS THE __<12>"
      db "<1b>GEMMA KNIGHT__\nWITH THE__\nEXCALIBUR__<12>"
      db "<11>", $00 ;; 0d:7243
    sEND                                               ;; 0d:72ba $00

script_0243:
    sMSG                                               ;; 0d:72bb $04
      db "<10>GEMMA KNIGHT WITH\nTHE RUSTY SWORD\nWILL BE TESTED.<12>"
      db "<1b>THE TRUE GEMMA\nKNIGHT SHOULD\nBE GIVEN THE<12>"
      db "<1b>LEGENDARY SWORD,\nEXCALIBUR__!<12>"
      db "<11>", $00 ;; 0d:72bc
    sEND                                               ;; 0d:732e $00

script_0244:
    sMSG                                               ;; 0d:732f $04
      db "<10>FIGHT WITH THE 3\nDRAGONS IN THE\nSHRINE OF MANA.<12>"
      db "<11>", $00 ;; 0d:7330
    sEND                                               ;; 0d:735b $00

script_0245:
    sMSG                                               ;; 0d:735c $04
      db "<10>THE VANDOLE SOON\nSHOULD FALL.\n<12>"
      db "<1b>WE LEAVE OUR LAST\nHOPE IN THE CAVE\nOF THE WATERFALLS.<12>"
      db "<1b>GLORY TO VANDOLE\nAND TO OUR CHILD\nOF HOPE__!<12>"
      db "<11>", $00 ;; 0d:735d
    sEND                                               ;; 0d:73d6 $00

script_0246:
    sSFX 20                                            ;; 0d:73d7 $f9 $14
    sFLASH_SCREEN                                      ;; 0d:73d9 $bf
    sFLASH_SCREEN                                      ;; 0d:73da $bf
    sSFX 17                                            ;; 0d:73db $f9 $11
    sEND                                               ;; 0d:73dd $00

script_0247:
    sSFX 20                                            ;; 0d:73de $f9 $14
    sFLASH_SCREEN                                      ;; 0d:73e0 $bf
    sFLASH_SCREEN                                      ;; 0d:73e1 $bf
    sSFX 17                                            ;; 0d:73e2 $f9 $11
    sFLASH_SCREEN                                      ;; 0d:73e4 $bf
    sFLASH_SCREEN                                      ;; 0d:73e5 $bf
    sEND                                               ;; 0d:73e6 $00

script_0248:
    sSET_ROOM_TILE $51, 1, 3                           ;; 0d:73e7 $b0 $51 $01 $03
    sSET_ROOM_TILE $43, 1, 4                           ;; 0d:73eb $b0 $43 $01 $04
    sSET_ROOM_TILE $31, 1, 5                           ;; 0d:73ef $b0 $31 $01 $05
    sEND                                               ;; 0d:73f3 $00

script_0249:
    sFLASH_SCREEN                                      ;; 0d:73f4 $bf
    sSFX 37                                            ;; 0d:73f5 $f9 $25
    sFLASH_SCREEN                                      ;; 0d:73f7 $bf
    sSHAKE_SCREEN                                      ;; 0d:73f8 $fb
    sSET_PLAYER_POSITION 18, 8                         ;; 0d:73f9 $8a $12 $08
    sFOLLOWER_DIRECTION_LEFT                           ;; 0d:73fc $97
    sFOLLOWER_SET_POSITION 18, 8                       ;; 0d:73fd $99 $12 $08
    sSET_PLAYER_DIRECTION_LEFT                         ;; 0d:7400 $87
    sFLASH_SCREEN                                      ;; 0d:7401 $bf
    sSFX 20                                            ;; 0d:7402 $f9 $14
    sSET_ROOM_TILE $64, 7, 2                           ;; 0d:7404 $b0 $64 $07 $02
    sSET_ROOM_TILE $64, 7, 3                           ;; 0d:7408 $b0 $64 $07 $03
    sSET_ROOM_TILE $64, 7, 4                           ;; 0d:740c $b0 $64 $07 $04
    sSET_ROOM_TILE $32, 7, 5                           ;; 0d:7410 $b0 $32 $07 $05
    sSET_ROOM_TILE $51, 7, 6                           ;; 0d:7414 $b0 $51 $07 $06
    sSET_ROOM_TILE $43, 7, 7                           ;; 0d:7418 $b0 $43 $07 $07
    sDELAY 5                                           ;; 0d:741c $f0 $05
    sFLASH_SCREEN                                      ;; 0d:741e $bf
    sSFX 20                                            ;; 0d:741f $f9 $14
    sSET_ROOM_TILE $64, 7, 5                           ;; 0d:7421 $b0 $64 $07 $05
    sSET_ROOM_TILE $64, 7, 6                           ;; 0d:7425 $b0 $64 $07 $06
    sSET_ROOM_TILE $64, 7, 7                           ;; 0d:7429 $b0 $64 $07 $07
    sPLAYER_STEP_FORWARD                               ;; 0d:742d $80
    sPLAYER_STEP_FORWARD                               ;; 0d:742e $80
    sDELAY 80                                          ;; 0d:742f $f0 $50
    sSET_PLAYER_DIRECTION_RIGHT                        ;; 0d:7431 $86
    sMSG                                               ;; 0d:7432 $04
      db "<10><BOY>:Oh__ No__\nMarcie:I THROW YOU\n __ AND I JUMP.", $00 ;; 0d:7433
    sDELAY 50                                          ;; 0d:745d $f0 $32
    sMSG                                               ;; 0d:745f $04
      db "<1b><BOY>:Can you?\n Let's do that!<12>"
      db "<11>", $00 ;; 0d:7460
    sDELAY 60                                          ;; 0d:7476 $f0 $3c
    sSET_PLAYER_DIRECTION_LEFT                         ;; 0d:7478 $87
    sDELAY 50                                          ;; 0d:7479 $f0 $32
    sFOLLOWER_STEP_FORWARD                             ;; 0d:747b $90
    sDELAY 40                                          ;; 0d:747c $f0 $28
    sSFX 12                                            ;; 0d:747e $f9 $0c
    sPLAYER_JUMP 104                                   ;; 0d:7480 $8b $68
    sDELAY 40                                          ;; 0d:7482 $f0 $28
    sSET_PLAYER_DIRECTION_RIGHT                        ;; 0d:7484 $86
    sSFX 37                                            ;; 0d:7485 $f9 $25
    sSHAKE_SCREEN                                      ;; 0d:7487 $fb
    sMSG                                               ;; 0d:7488 $04
      db "<10><BOY>:Now!\n Come on, Marcie!", $00      ;; 0d:7489
    sSET_MUSIC 0                                       ;; 0d:749c $f8 $00
    sDELAY 80                                          ;; 0d:749e $f0 $50
    sMSG                                               ;; 0d:74a0 $04
      db "\nMarcie:__ __<12>"
      db "<1b>YOU HAVE TO SAVE\nTHE WORLD. YOU\nARE THE ONLY HOPE.", $00 ;; 0d:74a1
    sSET_MUSIC 2                                       ;; 0d:74d7 $f8 $02
    sMSG                                               ;; 0d:74d9 $04
      db "<12>"
      db "<1b><BOY>:What are you\n talking about?\n __ Come on!<12>"
      db "<1b>Marcie:_ I AM\n UNABLE TO JUMP__\n<BOY>:_ What_?!<12>"
      db "<1b>Marcie:I WAS MADE\n TO WORK IN HERE.\n AND I SLEEP HERE_<12>"
      db "<11>", $00 ;; 0d:74da
    sDELAY 40                                          ;; 0d:7551 $f0 $28
    sFLASH_SCREEN                                      ;; 0d:7553 $bf
    sSFX 37                                            ;; 0d:7554 $f9 $25
    sFLASH_SCREEN                                      ;; 0d:7556 $bf
    sSET_ROOM_TILE $64, 8, 3                           ;; 0d:7557 $b0 $64 $08 $03
    sSET_ROOM_TILE $64, 8, 4                           ;; 0d:755b $b0 $64 $08 $04
    sSET_ROOM_TILE $41, 8, 5                           ;; 0d:755f $b0 $41 $08 $05
    sSET_ROOM_TILE $43, 8, 6                           ;; 0d:7563 $b0 $43 $08 $06
    sSET_ROOM_TILE $31, 8, 7                           ;; 0d:7567 $b0 $31 $08 $07
    sFOLLOWER_SET_POSITION 17, 12                      ;; 0d:756b $99 $11 $0c
    sSET_ROOM_TILE $64, 9, 2                           ;; 0d:756e $b0 $64 $09 $02
    sSET_ROOM_TILE $64, 9, 3                           ;; 0d:7572 $b0 $64 $09 $03
    sSET_ROOM_TILE $32, 9, 4                           ;; 0d:7576 $b0 $32 $09 $04
    sSET_ROOM_TILE $51, 9, 5                           ;; 0d:757a $b0 $51 $09 $05
    sSET_ROOM_TILE $43, 9, 6                           ;; 0d:757e $b0 $43 $09 $06
    sSET_ROOM_TILE $30, 9, 7                           ;; 0d:7582 $b0 $30 $09 $07
    sDELAY 5                                           ;; 0d:7586 $f0 $05
    sFLASH_SCREEN                                      ;; 0d:7588 $bf
    sSFX 37                                            ;; 0d:7589 $f9 $25
    sFLASH_SCREEN                                      ;; 0d:758b $bf
    sSET_ROOM_TILE $64, 8, 5                           ;; 0d:758c $b0 $64 $08 $05
    sSET_ROOM_TILE $64, 8, 6                           ;; 0d:7590 $b0 $64 $08 $06
    sSET_ROOM_TILE $41, 8, 7                           ;; 0d:7594 $b0 $41 $08 $07
    sFOLLOWER_DELETE                                   ;; 0d:7598 $98
    sSET_ROOM_TILE $64, 9, 4                           ;; 0d:7599 $b0 $64 $09 $04
    sSET_ROOM_TILE $64, 9, 5                           ;; 0d:759d $b0 $64 $09 $05
    sSET_ROOM_TILE $32, 9, 6                           ;; 0d:75a1 $b0 $32 $09 $06
    sSET_ROOM_TILE $51, 9, 7                           ;; 0d:75a5 $b0 $51 $09 $07
    sDELAY 5                                           ;; 0d:75a9 $f0 $05
    sFLASH_SCREEN                                      ;; 0d:75ab $bf
    sSFX 37                                            ;; 0d:75ac $f9 $25
    sFLASH_SCREEN                                      ;; 0d:75ae $bf
    sSET_ROOM_TILE $64, 8, 7                           ;; 0d:75af $b0 $64 $08 $07
    sSET_ROOM_TILE $64, 9, 6                           ;; 0d:75b3 $b0 $64 $09 $06
    sSET_ROOM_TILE $64, 9, 7                           ;; 0d:75b7 $b0 $64 $09 $07
    sSFX 37                                            ;; 0d:75bb $f9 $25
    sSHAKE_SCREEN                                      ;; 0d:75bd $fb
    sFLASH_SCREEN                                      ;; 0d:75be $bf
    sFLASH_SCREEN                                      ;; 0d:75bf $bf
    sSFX 17                                            ;; 0d:75c0 $f9 $11
    sDELAY 140                                         ;; 0d:75c2 $f0 $8c
    sMSG                                               ;; 0d:75c4 $04
      db "<10><BOY>:__ Marcie!<12>"
      db "<11>", $00 ;; 0d:75c5
    sFADE_TO_BLACK                                     ;; 0d:75d1 $bd
    sLOAD_ROOM_INSTANT 15, $55, 20, 0                  ;; 0d:75d2 $f3 $0f $55 $14 $00
    sFADE_TO_NORMAL                                    ;; 0d:75d7 $bc
    sDELAY 20                                          ;; 0d:75d8 $f0 $14
    sMSG                                               ;; 0d:75da $04
      db "<10>Marcie:SEE YOU\n SOMETIME,", $00         ;; 0d:75db
    sDELAY 40                                          ;; 0d:75f3 $f0 $28
    sMSG                                               ;; 0d:75f5 $04
      db " KID__<12>"
      db "<11>", $00             ;; 0d:75f6
    sFADE_TO_BLACK                                     ;; 0d:75fe $bd
    sLOAD_ROOM_INSTANT 1, $56, 14, 6                   ;; 0d:75ff $f3 $01 $56 $0e $06
    sCLEAR_ROOM_HISTORY                                ;; 0d:7604 $ab
    sDELAY 60                                          ;; 0d:7605 $f0 $3c
    sFADE_TO_NORMAL                                    ;; 0d:7607 $bc
    sDELAY 60                                          ;; 0d:7608 $f0 $3c
    sCLEAR_FLAG wScriptFlags0A.7                       ;; 0d:760a $db $57
    sEND                                               ;; 0d:760c $00

script_024a:
    sEND                                               ;; 0d:760d $00

script_024b:
    sEND                                               ;; 0d:760e $00

script_024c:
    sEND                                               ;; 0d:760f $00

script_024d:
    sEND                                               ;; 0d:7610 $00

script_024e:
    sEND                                               ;; 0d:7611 $00

script_024f:
    sLOOP 8, 4                                         ;; 0d:7612 $03 $08 $04
      sSFX 20                                          ;; 0d:7615 $f9 $14
      sFLASH_SCREEN                                    ;; 0d:7617 $bf
    sEND                                               ;; 0d:7618 $00
    sEND                                               ;; 0d:7619 $00

script_0250:
    sMSG                                               ;; 0d:761a $04
      db "<10>", $00                                   ;; 0d:761b
    sIF_FLAG !wScriptFlags05.5                         ;; 0d:761d $08 $ad $00 $8b
      sMSG                                             ;; 0d:7621 $04
        db "King:Julius has\n summoned monsters\n in this world.<12>"
        db "<1b> One called Kary\n in the Snowfield\n has frozen us.<12>"
        db "<1b> Cibba came, but\n he's stuck in\n the other room.<12>"
        db "<1b> It is dangerous\n to keep them all\n frozen for long__", $00 ;; 0d:7622
    sELSE                                              ;; 0d:76aa $01 $24
      sMSG                                             ;; 0d:76ac $04
        db "Thank you so much.\nCibba is waiting\nin the other room.", $00 ;; 0d:76ad
    sENDIF                                             ;; 0d:76d0
    sMSG                                               ;; 0d:76d0 $04
      db "<12>"
      db "<11>", $00                   ;; 0d:76d1
    sEND                                               ;; 0d:76d4 $00

script_0251:
    sMSG                                               ;; 0d:76d5 $04
      db "<10>__ Frozen.<12>"
      db "<11>", $00     ;; 0d:76d6
    sEND                                               ;; 0d:76e1 $00

script_0252:
    sMSG                                               ;; 0d:76e2 $04
      db "<10>Wow!\nGood morning!<12>"
      db "<11>", $00 ;; 0d:76e3
    sEND                                               ;; 0d:76f4 $00

script_0253:
    sMSG                                               ;; 0d:76f5 $04
      db "<10>Welcome to Lorim!<12>"
      db "<11>", $00 ;; 0d:76f6
    sEND                                               ;; 0d:7706 $00

script_0254:
    sEND                                               ;; 0d:7707 $00

script_0255:
    sEND                                               ;; 0d:7708 $00

script_0256:
    sIF_FLAG wScriptFlags01.3, !wScriptFlags02.1       ;; 0d:7709 $08 $0b $91 $00 $03
      sCALL script_01e7                                ;; 0d:770e $02 $17 $98
    sENDIF                                             ;; 0d:7711
    sIF_FLAG wScriptFlags01.1, !wScriptFlags01.3       ;; 0d:7711 $08 $09 $8b $00 $03
      sCALL script_026c                                ;; 0d:7716 $02 $3a $70
    sENDIF                                             ;; 0d:7719
    sIF_FLAG !wScriptFlags01.1                         ;; 0d:7719 $08 $89 $00 $03
      sCALL script_0264                                ;; 0d:771d $02 $38 $f9
    sENDIF                                             ;; 0d:7720
    sEND                                               ;; 0d:7720 $00

script_0257:
    sIF_FLAG wScriptFlags03.7                          ;; 0d:7721 $08 $1f $00 $03
      sCALL script_022c                                ;; 0d:7725 $02 $2c $a5
    sENDIF                                             ;; 0d:7728
    sIF_FLAG wScriptFlags04.6, !wScriptFlags03.7       ;; 0d:7728 $08 $26 $9f $00 $03
      sCALL script_022d                                ;; 0d:772d $02 $2c $e6
    sENDIF                                             ;; 0d:7730
    sIF_FLAG wScriptFlags01.4, !wScriptFlags04.6       ;; 0d:7730 $08 $0c $a6 $00 $03
      sCALL script_022b                                ;; 0d:7735 $02 $2c $14
    sENDIF                                             ;; 0d:7738
    sIF_FLAG !wScriptFlags01.4                         ;; 0d:7738 $08 $8c $00 $03
      sCALL script_0229                                ;; 0d:773c $02 $2a $48
    sENDIF                                             ;; 0d:773f
    sEND                                               ;; 0d:773f $00

script_0258:
    sIF_FLAG wScriptFlags04.6                          ;; 0d:7740 $08 $26 $00 $03
      sCALL script_020f                                ;; 0d:7744 $02 $21 $9f
    sENDIF                                             ;; 0d:7747
    sIF_FLAG !wScriptFlags01.3                         ;; 0d:7747 $08 $8b $00 $03
      sCALL script_026b                                ;; 0d:774b $02 $3a $53
    sENDIF                                             ;; 0d:774e
    sEND                                               ;; 0d:774e $00

script_0259:
    sIF_FLAG wScriptFlags04.5, !wScriptFlags02.0       ;; 0d:774f $08 $25 $90 $00 $03
      sCALL script_01e8                                ;; 0d:7754 $02 $17 $b7
    sENDIF                                             ;; 0d:7757
    sIF_FLAG !wScriptFlags04.3                         ;; 0d:7757 $08 $a3 $00 $03
      sCALL script_01e4                                ;; 0d:775b $02 $16 $e8
    sENDIF                                             ;; 0d:775e
    sEND                                               ;; 0d:775e $00

script_025a:
    sIF_FLAG wScriptFlags03.7                          ;; 0d:775f $08 $1f $00 $03
      sCALL script_01ef                                ;; 0d:7763 $02 $19 $2a
    sENDIF                                             ;; 0d:7766
    sIF_FLAG !wScriptFlags03.7                         ;; 0d:7766 $08 $9f $00 $03
      sCALL script_01ee                                ;; 0d:776a $02 $18 $eb
    sENDIF                                             ;; 0d:776d
    sEND                                               ;; 0d:776d $00

script_025b:
    sEND                                               ;; 0d:776e $00

script_025c:
    sEND                                               ;; 0d:776f $00

script_025d:
    sIF_FLAG !wScriptFlags0E.4                         ;; 0d:7770 $08 $f4 $00 $04
      sOPEN_SHOP 3                                     ;; 0d:7774 $f6 $03
    sELSE                                              ;; 0d:7776 $01 $14
      sIF_FLAG !wScriptFlags0E.6, !wScriptFlags0E.7    ;; 0d:7778 $08 $f6 $f7 $00 $02
        sOPEN_SHOP 14                                  ;; 0d:777d $f6 $0e
      sENDIF                                           ;; 0d:777f
      sIF_FLAG !wScriptFlags0E.6, wScriptFlags0E.7     ;; 0d:777f $08 $f6 $77 $00 $02
        sOPEN_SHOP 15                                  ;; 0d:7784 $f6 $0f
      sENDIF                                           ;; 0d:7786
      sIF_FLAG wScriptFlags0E.6                        ;; 0d:7786 $08 $76 $00 $02
        sOPEN_SHOP 16                                  ;; 0d:778a $f6 $10
      sENDIF                                           ;; 0d:778c
    sENDIF                                             ;; 0d:778c
    sEND                                               ;; 0d:778c $00

script_025e:
    sSET_NPC_1_DIRECTION_DOWN                          ;; 0d:778d $15
    sIF_FLAG !wScriptFlags0E.4                         ;; 0d:778e $08 $f4 $00 $42
      sIF_FLAG !wScriptFlags0E.5, !wScriptFlags0E.6, !wScriptFlags0E.7 ;; 0d:7792 $08 $f5 $f6 $f7 $00 $02
        sOPEN_SHOP 4                                   ;; 0d:7798 $f6 $04
      sENDIF                                           ;; 0d:779a
      sIF_FLAG !wScriptFlags0E.5, !wScriptFlags0E.6, wScriptFlags0E.7 ;; 0d:779a $08 $f5 $f6 $77 $00 $02
        sOPEN_SHOP 5                                   ;; 0d:77a0 $f6 $05
      sENDIF                                           ;; 0d:77a2
      sIF_FLAG !wScriptFlags0E.5, wScriptFlags0E.6, !wScriptFlags0E.7 ;; 0d:77a2 $08 $f5 $76 $f7 $00 $02
        sOPEN_SHOP 7                                   ;; 0d:77a8 $f6 $07
      sENDIF                                           ;; 0d:77aa
      sIF_FLAG !wScriptFlags0E.5, wScriptFlags0E.6, wScriptFlags0E.7 ;; 0d:77aa $08 $f5 $76 $77 $00 $02
        sOPEN_SHOP 8                                   ;; 0d:77b0 $f6 $08
      sENDIF                                           ;; 0d:77b2
      sIF_FLAG wScriptFlags0E.5, !wScriptFlags0E.6, !wScriptFlags0E.7 ;; 0d:77b2 $08 $75 $f6 $f7 $00 $02
        sOPEN_SHOP 9                                   ;; 0d:77b8 $f6 $09
      sENDIF                                           ;; 0d:77ba
      sIF_FLAG wScriptFlags0E.5, !wScriptFlags0E.6, wScriptFlags0E.7 ;; 0d:77ba $08 $75 $f6 $77 $00 $02
        sOPEN_SHOP 10                                  ;; 0d:77c0 $f6 $0a
      sENDIF                                           ;; 0d:77c2
      sIF_FLAG wScriptFlags0E.5, wScriptFlags0E.6, !wScriptFlags0E.7 ;; 0d:77c2 $08 $75 $76 $f7 $00 $02
        sOPEN_SHOP 11                                  ;; 0d:77c8 $f6 $0b
      sENDIF                                           ;; 0d:77ca
      sIF_FLAG wScriptFlags0E.5, wScriptFlags0E.6, wScriptFlags0E.7 ;; 0d:77ca $08 $75 $76 $77 $00 $02
        sOPEN_SHOP 12                                  ;; 0d:77d0 $f6 $0c
      sENDIF                                           ;; 0d:77d2
    sELSE                                              ;; 0d:77d2 $01 $08
      sIF_FLAG !wScriptFlags0E.5, !wScriptFlags0E.6, !wScriptFlags0E.7 ;; 0d:77d4 $08 $f5 $f6 $f7 $00 $02
        sOPEN_SHOP 13                                  ;; 0d:77da $f6 $0d
      sENDIF                                           ;; 0d:77dc
    sENDIF                                             ;; 0d:77dc
    sEND                                               ;; 0d:77dc $00

script_025f:
    sSET_NPC_1_DIRECTION_DOWN                          ;; 0d:77dd $15
    sMSG                                               ;; 0d:77de $04
      db "<10> Howdy!\n 10GP/night!\n Wanna stay?<12>"
      db "<13>", $00 ;; 0d:77df
    sIF_FLAG !wScriptFlags0F.7                         ;; 0d:77fc $08 $ff $00 $21
      sTAKE_MONEY 10                                   ;; 0d:7800 $d1 $0a $00
      sIF_FLAG wScriptFlags.6                          ;; 0d:7803 $08 $06 $00 $17
        sMSG                                           ;; 0d:7807 $04
          db "<1b> Sorry.\n Not enough GP!<12>"
          db "<11>", $00 ;; 0d:7808
      sELSE                                            ;; 0d:781c $01 $03
        sCALL script_0405                              ;; 0d:781e $02 $51 $fb
      sENDIF                                           ;; 0d:7821
    sENDIF                                             ;; 0d:7821
    sCALL script_0004                                  ;; 0d:7821 $02 $00 $31
    sEND                                               ;; 0d:7824 $00

script_0260:
    sSET_NPC_1_DIRECTION_DOWN                          ;; 0d:7825 $15
    sIF_FLAG wScriptFlags0E.4                          ;; 0d:7826 $08 $74 $00 $04
      sOPEN_SHOP 3                                     ;; 0d:782a $f6 $03
    sELSE                                              ;; 0d:782c $01 $7b
      sIF_FLAG wScriptFlags0E.5                        ;; 0d:782e $08 $75 $00 $04
        sOPEN_SHOP 3                                   ;; 0d:7832 $f6 $03
      sELSE                                            ;; 0d:7834 $01 $73
        sIF_FLAG !wScriptFlags0E.6, !wScriptFlags0E.7  ;; 0d:7836 $08 $f6 $f7 $00 $0a
          sIF_FLAG !wScriptFlags01.4                   ;; 0d:783b $08 $8c $00 $04
            sOPEN_SHOP 0                               ;; 0d:783f $f6 $00
          sELSE                                        ;; 0d:7841 $01 $02
            sOPEN_SHOP 1                               ;; 0d:7843 $f6 $01
          sENDIF                                       ;; 0d:7845
        sENDIF                                         ;; 0d:7845
        sIF_FLAG !wScriptFlags0E.6, wScriptFlags0E.7   ;; 0d:7845 $08 $f6 $77 $00 $25
          sIF_INVENTORY $43                            ;; 0d:784a $0a $43 $00 $02
          sELSE                                        ;; 0d:784e $01 $03
            sCALL script_0549                          ;; 0d:7850 $02 $7a $c2
          sENDIF                                       ;; 0d:7853
          sOPEN_SHOP 1                                 ;; 0d:7853 $f6 $01
          sMSG                                         ;; 0d:7855 $04
            db "<10>It's swampy ahead.\nBe careful!<12>"
            db "<11>", $00 ;; 0d:7856
        sENDIF                                         ;; 0d:786f
        sIF_FLAG wScriptFlags0E.6, !wScriptFlags0E.7   ;; 0d:786f $08 $76 $f7 $00 $02
          sOPEN_SHOP 1                                 ;; 0d:7874 $f6 $01
        sENDIF                                         ;; 0d:7876
        sIF_FLAG wScriptFlags0E.6, wScriptFlags0E.7    ;; 0d:7876 $08 $76 $77 $00 $2e
          sIF_FLAG wScriptFlags02.1                    ;; 0d:787b $08 $11 $00 $04
            sOPEN_SHOP 2                               ;; 0d:787f $f6 $02
          sELSE                                        ;; 0d:7881 $01 $26
            sMSG                                       ;; 0d:7883 $04
              db "<10>Excuse me_", $00                 ;; 0d:7884
            sDELAY 30                                  ;; 0d:788e $f0 $1e
            sMSG                                       ;; 0d:7890 $04
              db "\n_ Hello_", $00                     ;; 0d:7891
            sDELAY 50                                  ;; 0d:7899 $f0 $32
            sMSG                                       ;; 0d:789b $04
              db "\n_ No answer.<12>"
              db "<11>", $00 ;; 0d:789c
          sENDIF                                       ;; 0d:78a9
        sENDIF                                         ;; 0d:78a9
      sENDIF                                           ;; 0d:78a9
    sENDIF                                             ;; 0d:78a9
    sEND                                               ;; 0d:78a9 $00

script_0261:
    sMSG                                               ;; 0d:78aa $04
      db "<10>Amanda:I'm sorry\n about Willy.<12>"
      db "<1b> We have to get\n out of here!!<12>"
      db "<1b> I wanna go home\n and see my\n little brother__<12>"
      db "<11>", $00 ;; 0d:78ab
    sEND                                               ;; 0d:78f6 $00

script_0262:
    sEND                                               ;; 0d:78f7 $00

script_0263:
    sEND                                               ;; 0d:78f8 $00

script_0264:
    sMSG                                               ;; 0d:78f9 $04
      db "<10><BOY>:Willy__\n I'll avenge you!<12>"
      db "<11>", $00 ;; 0d:78fa
    sEND                                               ;; 0d:7910 $00

script_0265:
    sMSG                                               ;; 0d:7911 $04
      db "<10>The entrance for\nthe monsters leads\nto outside.<12>"
      db "<1b>Take your chance!<12>"
      db "<11>", $00 ;; 0d:7912
    sEND                                               ;; 0d:7941 $00

script_0266:
    sMSG                                               ;; 0d:7942 $04
      db "<10>Hello, young man!\nWelcome to Topple!<12>"
      db "<11>", $00 ;; 0d:7943
    sEND                                               ;; 0d:795f $00

script_0267:
    sMSG                                               ;; 0d:7960 $04
      db "<10>Dark Lord is so\ncruel!!  I can't\nstand it anymore!<12>"
      db "<11>", $00 ;; 0d:7961
    sEND                                               ;; 0d:7987 $00

script_0268:
    sMSG                                               ;; 0d:7988 $04
      db "<10>Dark Lord is\nlooking for a\ngirl, I heard.<12>"
      db "<1b>Do you know a girl\nwith the secret of\nthe Tree of Mana?<12>"
      db "<11>", $00 ;; 0d:7989
    sEND                                               ;; 0d:79cb $00

script_0269:
    sMSG                                               ;; 0d:79cc $04
      db "<10>The old man by\nthe Waterfalls is\nsuch a weirdo!<12>"
      db "<1b>He use to be a\ngallant knight,\nbut not anymore!<12>"
      db "<11>", $00 ;; 0d:79cd
    sEND                                               ;; 0d:7a11 $00

script_026a:
    sMSG                                               ;; 0d:7a12 $04
      db "<10>Tree of Mana is\nwatching us from\nabove the clouds.<12>"
      db "<1b>It's protecting us\nfrom evil things.<12>"
      db "<11>", $00 ;; 0d:7a13
    sEND                                               ;; 0d:7a52 $00

script_026b:
    sMSG                                               ;; 0d:7a53 $04
      db "<10>Girl:Hasim's got\n a serious wound!<12>"
      db "<11>", $00 ;; 0d:7a54
    sEND                                               ;; 0d:7a6f $00

script_026c:
    sIF_FLAG wScriptFlags01.2                          ;; 0d:7a70 $08 $0a $00 $a2
      sMSG                                             ;; 0d:7a74 $04
        db "<10>", $00                                 ;; 0d:7a75
      sDELAY 10                                        ;; 0d:7a77 $f0 $0a
      sSET_MUSIC 23                                    ;; 0d:7a79 $f8 $17
      sCALL script_026d                                ;; 0d:7a7b $02 $3b $17
      sMSG                                             ;; 0d:7a7e $04
        db "Girl:Oh_ No_\n Don't leave me\n alone, Hasim!<12>"
        db "<1b><BOY>:I'm looking\n for that Bogard,\n too.<12>"
        db "<1b> Why don't you\n come with me?\nGirl:Oh _ Can I?<12>"
        db "<1b><BOY>:I can't leave\n you here alone.\n _ I am <BOY>.<12>"
        db "<1b><GIRL>:Call me <GIRL>.<12>"
        db "<1b>", $00 ;; 0d:7a7f
      sSET_MUSIC 0                                     ;; 0d:7b09 $f8 $00
      sGIVE_FOLLOWER 1                                 ;; 0d:7b0b $9c $01
      sMSG                                             ;; 0d:7b0d $04
        db "<11>", $00                                 ;; 0d:7b0e
      sSET_FLAG wScriptFlags01.3                       ;; 0d:7b10 $da $0b
      sSET_FLAG wScriptFlags0A.1                       ;; 0d:7b12 $da $51
      sSET_MUSIC 20                                    ;; 0d:7b14 $f8 $14
    sENDIF                                             ;; 0d:7b16
    sEND                                               ;; 0d:7b16 $00

script_026d:
    sMSG                                               ;; 0d:7b17 $04
      db "Hasim:Oh_ please_\n take this girl\n to_ Wendel_ and_<12>"
      db "<1b>", $00 ;; 0d:7b18
    sSET_NPC_1_DIRECTION_LEFT                          ;; 0d:7b3f $17
    sMSG                                               ;; 0d:7b40 $04
      db " see Bogard___\n He will take care\n of the rest_ _<12>"
      db "<1b>Girl:_ _ Hasim!?\n _ _ H A S I M!!<12>"
      db "<1b>", $00 ;; 0d:7b41
    sDELAY 30                                          ;; 0d:7b7f $f0 $1e
    sMSG                                               ;; 0d:7b81 $04
      db "\nHasim passed away.<12>"
      db "<1b>", $00 ;; 0d:7b82
    sEND                                               ;; 0d:7b92 $00

script_0270:
    sIF_0B $c9                                         ;; 0d:7b93 $0b $c9 $00 $21
      sIF_EQUIPED $20                                  ;; 0d:7b97 $09 $20 $00 $12
        sIF_FLAG wScriptFlags0B.0                      ;; 0d:7b9b $08 $58 $00 $05
          sCALL script_0473                            ;; 0d:7b9f $02 $5a $e2
          sSET_FLAG wScriptFlags0D.2                   ;; 0d:7ba2 $da $6a
        sENDIF                                         ;; 0d:7ba4
        sLOAD_ROOM 11, $07, 16, 12                     ;; 0d:7ba4 $f4 $0b $07 $10 $0c
        sSET_MUSIC 7                                   ;; 0d:7ba9 $f8 $07
      sELSE                                            ;; 0d:7bab $01 $0b
        sMSG                                           ;; 0d:7bad $04
          db "<10> Locked.<12>"
          db "<11>", $00 ;; 0d:7bae
      sENDIF                                           ;; 0d:7bb8
    sENDIF                                             ;; 0d:7bb8
    sEND                                               ;; 0d:7bb8 $00

script_0271:
    sIF_0B $c9                                         ;; 0d:7bb9 $0b $c9 $00 $13
      sIF_FLAG wScriptFlags0B.0                        ;; 0d:7bbd $08 $58 $00 $05
        sCALL script_0473                              ;; 0d:7bc1 $02 $5a $e2
        sSET_FLAG wScriptFlags0C.0                     ;; 0d:7bc4 $da $60
      sENDIF                                           ;; 0d:7bc6
      sLOAD_ROOM 14, $01, 14, 12                       ;; 0d:7bc6 $f4 $0e $01 $0e $0c
      sDELAY 20                                        ;; 0d:7bcb $f0 $14
      sSET_MUSIC 4                                     ;; 0d:7bcd $f8 $04
      sRUN_ROOM_SCRIPT                                 ;; 0d:7bcf $ec
    sENDIF                                             ;; 0d:7bd0
    sEND                                               ;; 0d:7bd0 $00

script_0272:
    sIF_0B $c9                                         ;; 0d:7bd1 $0b $c9 $00 $1b
      sLOAD_ROOM 6, $32, 9, 12                         ;; 0d:7bd5 $f4 $06 $32 $09 $0c
      sSET_MUSIC 4                                     ;; 0d:7bda $f8 $04
      sUNK_C5 2                                        ;; 0d:7bdc $c5 $02
      sIF_FLAG !wScriptFlags04.6                       ;; 0d:7bde $08 $a6 $00 $06
        sCLEAR_FLAG wScriptFlags0F.0                   ;; 0d:7be2 $db $78
        sCLEAR_FLAG wScriptFlags0F.1                   ;; 0d:7be4 $db $79
        sCLEAR_FLAG wScriptFlags0F.2                   ;; 0d:7be6 $db $7a
      sENDIF                                           ;; 0d:7be8
      sIF_FLAG wScriptFlags01.4                        ;; 0d:7be8 $08 $0c $00 $03
        sSFX 16                                        ;; 0d:7bec $f9 $10
        sOPEN_NORTH_DOOR                               ;; 0d:7bee $e0
      sENDIF                                           ;; 0d:7bef
      sRUN_ROOM_SCRIPT                                 ;; 0d:7bef $ec
    sENDIF                                             ;; 0d:7bf0
    sEND                                               ;; 0d:7bf0 $00

script_0273:
    sIF_0B $c9, $c1                                    ;; 0d:7bf1 $0b $c9 $c1 $00 $0d
      sSFX 12                                          ;; 0d:7bf6 $f9 $0c
      sSET_PLAYER_POSITION 20, 0                       ;; 0d:7bf8 $8a $14 $00
      sDELAY 60                                        ;; 0d:7bfb $f0 $3c
      sLOAD_ROOM 3, $11, 9, 7                          ;; 0d:7bfd $f4 $03 $11 $09 $07
      sRUN_ROOM_SCRIPT                                 ;; 0d:7c02 $ec
    sENDIF                                             ;; 0d:7c03
    sEND                                               ;; 0d:7c03 $00

script_0274:
    sIF_0B $c9, $c1                                    ;; 0d:7c04 $0b $c9 $c1 $00 $0d
      sSFX 12                                          ;; 0d:7c09 $f9 $0c
      sSET_PLAYER_POSITION 20, 0                       ;; 0d:7c0b $8a $14 $00
      sDELAY 60                                        ;; 0d:7c0e $f0 $3c
      sLOAD_ROOM 6, $07, 9, 7                          ;; 0d:7c10 $f4 $06 $07 $09 $07
      sRUN_ROOM_SCRIPT                                 ;; 0d:7c15 $ec
    sENDIF                                             ;; 0d:7c16
    sEND                                               ;; 0d:7c16 $00

script_0275:
    sIF_0B $c9                                         ;; 0d:7c17 $0b $c9 $00 $29
      sIF_EQUIPED $21                                  ;; 0d:7c1b $09 $21 $00 $1a
        sIF_FLAG wScriptFlags0B.0                      ;; 0d:7c1f $08 $58 $00 $05
          sCALL script_0473                            ;; 0d:7c23 $02 $5a $e2
          sSET_FLAG wScriptFlags0C.2                   ;; 0d:7c26 $da $62
        sENDIF                                         ;; 0d:7c28
        sLOAD_ROOM 9, $31, 16, 2                       ;; 0d:7c28 $f4 $09 $31 $10 $02
        sIF_FLAG !wScriptFlags09.0                     ;; 0d:7c2d $08 $c8 $00 $04
          sSET_NPC_TYPES 77                            ;; 0d:7c31 $fc $4d
          sSPAWN_NPC 0                                 ;; 0d:7c33 $fd $00
        sENDIF                                         ;; 0d:7c35
        sSET_MUSIC 7                                   ;; 0d:7c35 $f8 $07
      sELSE                                            ;; 0d:7c37 $01 $0b
        sMSG                                           ;; 0d:7c39 $04
          db "<10> Locked.<12>"
          db "<11>", $00 ;; 0d:7c3a
      sENDIF                                           ;; 0d:7c44
    sENDIF                                             ;; 0d:7c44
    sEND                                               ;; 0d:7c44 $00

script_0276:
    sIF_0B $c9                                         ;; 0d:7c45 $0b $c9 $00 $13
      sIF_FLAG wScriptFlags0B.0                        ;; 0d:7c49 $08 $58 $00 $05
        sCALL script_0473                              ;; 0d:7c4d $02 $5a $e2
        sSET_FLAG wScriptFlags0C.1                     ;; 0d:7c50 $da $61
      sENDIF                                           ;; 0d:7c52
      sUNK_C5 0                                        ;; 0d:7c52 $c5 $00
      sLOAD_ROOM 3, $41, 9, 12                         ;; 0d:7c54 $f4 $03 $41 $09 $0c
      sSET_MUSIC 7                                     ;; 0d:7c59 $f8 $07
      sRUN_ROOM_SCRIPT                                 ;; 0d:7c5b $ec
    sENDIF                                             ;; 0d:7c5c
    sEND                                               ;; 0d:7c5c $00

script_0277:
    sIF_0B $c9                                         ;; 0d:7c5d $0b $c9 $00 $11
      sIF_FLAG wScriptFlags0B.0                        ;; 0d:7c61 $08 $58 $00 $05
        sCALL script_0473                              ;; 0d:7c65 $02 $5a $e2
        sSET_FLAG wScriptFlags0C.3                     ;; 0d:7c68 $da $63
      sENDIF                                           ;; 0d:7c6a
      sLOAD_ROOM 14, $17, 11, 12                       ;; 0d:7c6a $f4 $0e $17 $0b $0c
      sSET_MUSIC 11                                    ;; 0d:7c6f $f8 $0b
      sRUN_ROOM_SCRIPT                                 ;; 0d:7c71 $ec
    sENDIF                                             ;; 0d:7c72
    sEND                                               ;; 0d:7c72 $00

script_0278:
    sIF_0B $c9                                         ;; 0d:7c73 $0b $c9 $00 $11
      sIF_FLAG wScriptFlags0B.0                        ;; 0d:7c77 $08 $58 $00 $05
        sCALL script_0473                              ;; 0d:7c7b $02 $5a $e2
        sSET_FLAG wScriptFlags0C.5                     ;; 0d:7c7e $da $65
      sENDIF                                           ;; 0d:7c80
      sLOAD_ROOM 10, $66, 16, 2                        ;; 0d:7c80 $f4 $0a $66 $10 $02
      sSET_MUSIC 24                                    ;; 0d:7c85 $f8 $18
      sRUN_ROOM_SCRIPT                                 ;; 0d:7c87 $ec
    sENDIF                                             ;; 0d:7c88
    sEND                                               ;; 0d:7c88 $00

script_0279:
    sIF_0B $c9                                         ;; 0d:7c89 $0b $c9 $00 $39
      sIF_FLAG wScriptFlags0B.0                        ;; 0d:7c8d $08 $58 $00 $05
        sCALL script_0473                              ;; 0d:7c91 $02 $5a $e2
        sSET_FLAG wScriptFlags0C.4                     ;; 0d:7c94 $da $64
      sENDIF                                           ;; 0d:7c96
      sIF_FLAG wScriptFlags0A.4                        ;; 0d:7c96 $08 $54 $00 $24
        sMSG                                           ;; 0d:7c9a $04
          db "<10>Bogard:Hey! Hey!\n Where are you\n going??<12>"
          db "<11>", $00 ;; 0d:7c9b
      sELSE                                            ;; 0d:7cbc $01 $08
        sLOAD_ROOM 10, $55, 16, 2                      ;; 0d:7cbe $f4 $0a $55 $10 $02
        sSET_MUSIC 7                                   ;; 0d:7cc3 $f8 $07
        sRUN_ROOM_SCRIPT                               ;; 0d:7cc5 $ec
      sENDIF                                           ;; 0d:7cc6
    sENDIF                                             ;; 0d:7cc6
    sEND                                               ;; 0d:7cc6 $00

script_027a:
    sIF_0B $c9                                         ;; 0d:7cc7 $0b $c9 $00 $7c
      sIF_EQUIPED $46                                  ;; 0d:7ccb $09 $46 $00 $09
        sLOAD_ROOM 10, $13, 16, 12                     ;; 0d:7ccf $f4 $0a $13 $10 $0c
        sSET_MUSIC 7                                   ;; 0d:7cd4 $f8 $07
      sELSE                                            ;; 0d:7cd6 $01 $6f
        sIF_EQUIPED $54                                ;; 0d:7cd8 $09 $54 $00 $09
          sLOAD_ROOM 10, $13, 16, 12                   ;; 0d:7cdc $f4 $0a $13 $10 $0c
          sSET_MUSIC 7                                 ;; 0d:7ce1 $f8 $07
        sELSE                                          ;; 0d:7ce3 $01 $62
          sIF_EQUIPED $5f                              ;; 0d:7ce5 $09 $5f $00 $09
            sLOAD_ROOM 10, $13, 16, 12                 ;; 0d:7ce9 $f4 $0a $13 $10 $0c
            sSET_MUSIC 7                               ;; 0d:7cee $f8 $07
          sELSE                                        ;; 0d:7cf0 $01 $55
            sIF_EQUIPED $6a                            ;; 0d:7cf2 $09 $6a $00 $09
              sLOAD_ROOM 10, $13, 16, 12               ;; 0d:7cf6 $f4 $0a $13 $10 $0c
              sSET_MUSIC 7                             ;; 0d:7cfb $f8 $07
            sELSE                                      ;; 0d:7cfd $01 $48
              sMSG                                     ;; 0d:7cff $04
                db "<10>Gaia:Whaaaa_", $00             ;; 0d:7d00
              sDELAY 40                                ;; 0d:7d0c $f0 $28
              sMSG                                     ;; 0d:7d0e $04
                db "\n Doooon't walk in\n my moooouth_<12>"
                db "<1b>\n Ooooo ", $00 ;; 0d:7d0f
              sDELAY 40                                ;; 0d:7d2e $f0 $28
              sMSG                                     ;; 0d:7d30 $04
                db "  Yuck!!", $00                     ;; 0d:7d31
              sDELAY 60                                ;; 0d:7d38 $f0 $3c
              sMSG                                     ;; 0d:7d3a $04
                db "<11>", $00                         ;; 0d:7d3b
              sSFX 12                                  ;; 0d:7d3d $f9 $0c
              sSET_PLAYER_POSITION 12, 3               ;; 0d:7d3f $8a $0c $03
              sLOOP 2, 2                               ;; 0d:7d42 $03 $02 $02
                sPLAYER_STEP_BACKWARD                  ;; 0d:7d45 $81
              sEND                                     ;; 0d:7d46 $00
            sENDIF                                     ;; 0d:7d47
          sENDIF                                       ;; 0d:7d47
        sENDIF                                         ;; 0d:7d47
      sENDIF                                           ;; 0d:7d47
    sENDIF                                             ;; 0d:7d47
    sEND                                               ;; 0d:7d47 $00

script_027b:
    sIF_0B $c9                                         ;; 0d:7d48 $0b $c9 $00 $08
      sLOAD_ROOM 10, $05, 16, 12                       ;; 0d:7d4c $f4 $0a $05 $10 $0c
      sSET_MUSIC 7                                     ;; 0d:7d51 $f8 $07
      sRUN_ROOM_SCRIPT                                 ;; 0d:7d53 $ec
    sENDIF                                             ;; 0d:7d54
    sEND                                               ;; 0d:7d54 $00

script_027c:
    sIF_0B $c9                                         ;; 0d:7d55 $0b $c9 $00 $0c
      sIF_FLAG !wScriptFlags02.6                       ;; 0d:7d59 $08 $96 $00 $08
        sLOAD_ROOM 14, $62, 12, 12                     ;; 0d:7d5d $f4 $0e $62 $0c $0c
        sSET_MUSIC 14                                  ;; 0d:7d62 $f8 $0e
        sRUN_ROOM_SCRIPT                               ;; 0d:7d64 $ec
      sENDIF                                           ;; 0d:7d65
    sENDIF                                             ;; 0d:7d65
    sEND                                               ;; 0d:7d65 $00

script_027d:
    sIF_0B $c9                                         ;; 0d:7d66 $0b $c9 $00 $06
      sSFX 24                                          ;; 0d:7d6a $f9 $18
      sSET_ROOM_TILE $02, 1, 1                         ;; 0d:7d6c $b0 $02 $01 $01
    sENDIF                                             ;; 0d:7d70
    sEND                                               ;; 0d:7d70 $00

script_027e:
    sIF_0B $c9, $a9                                    ;; 0d:7d71 $0b $c9 $a9 $00 $06
      sSFX 24                                          ;; 0d:7d76 $f9 $18
      sSET_ROOM_TILE $02, 8, 1                         ;; 0d:7d78 $b0 $02 $08 $01
    sENDIF                                             ;; 0d:7d7c
    sIF_0C $c9                                         ;; 0d:7d7c $0c $c9 $00 $06
      sSFX 24                                          ;; 0d:7d80 $f9 $18
      sSET_ROOM_TILE $00, 8, 1                         ;; 0d:7d82 $b0 $00 $08 $01
    sENDIF                                             ;; 0d:7d86
    sEND                                               ;; 0d:7d86 $00

script_027f:
    sIF_0B $c9                                         ;; 0d:7d87 $0b $c9 $00 $11
      sIF_FLAG wScriptFlags0B.0                        ;; 0d:7d8b $08 $58 $00 $05
        sCALL script_0473                              ;; 0d:7d8f $02 $5a $e2
        sSET_FLAG wScriptFlags0B.7                     ;; 0d:7d92 $da $5f
      sENDIF                                           ;; 0d:7d94
      sLOAD_ROOM 14, $53, 13, 12                       ;; 0d:7d94 $f4 $0e $53 $0d $0c
      sSET_MUSIC 4                                     ;; 0d:7d99 $f8 $04
      sRUN_ROOM_SCRIPT                                 ;; 0d:7d9b $ec
    sENDIF                                             ;; 0d:7d9c
    sEND                                               ;; 0d:7d9c $00

script_0280:
    sIF_0B $c9                                         ;; 0d:7d9d $0b $c9 $00 $1b
      sIF_FLAG wScriptFlags0B.0                        ;; 0d:7da1 $08 $58 $00 $05
        sCALL script_0473                              ;; 0d:7da5 $02 $5a $e2
        sSET_FLAG wScriptFlags0B.3                     ;; 0d:7da8 $da $5b
      sENDIF                                           ;; 0d:7daa
      sLOAD_ROOM 14, $15, 7, 12                        ;; 0d:7daa $f4 $0e $15 $07 $0c
      sIF_FLAG !wScriptFlags05.0                       ;; 0d:7daf $08 $a8 $00 $02
        sSET_MUSIC 0                                   ;; 0d:7db3 $f8 $00
      sENDIF                                           ;; 0d:7db5
      sIF_FLAG wScriptFlags05.0                        ;; 0d:7db5 $08 $28 $00 $02
        sSET_MUSIC 13                                  ;; 0d:7db9 $f8 $0d
      sENDIF                                           ;; 0d:7dbb
      sRUN_ROOM_SCRIPT                                 ;; 0d:7dbb $ec
    sENDIF                                             ;; 0d:7dbc
    sEND                                               ;; 0d:7dbc $00

script_0281:
    sIF_0B $c9                                         ;; 0d:7dbd $0b $c9 $00 $53
      sIF_FLAG wScriptFlags0B.0                        ;; 0d:7dc1 $08 $58 $00 $05
        sCALL script_0473                              ;; 0d:7dc5 $02 $5a $e2
        sSET_FLAG wScriptFlags0B.4                     ;; 0d:7dc8 $da $5c
      sENDIF                                           ;; 0d:7dca
      sLOAD_ROOM 8, $54, 16, 2                         ;; 0d:7dca $f4 $08 $54 $10 $02
      sSET_MUSIC 8                                     ;; 0d:7dcf $f8 $08
      sIF_FLAG !wScriptFlags04.7                       ;; 0d:7dd1 $08 $a7 $00 $3f
        sSET_NPC_TYPES 81                              ;; 0d:7dd5 $fc $51
        sSPAWN_NPC 0                                   ;; 0d:7dd7 $fd $00
        sSET_NPC_1_DIRECTION_RIGHT                     ;; 0d:7dd9 $16
        sSET_PLAYER_DIRECTION_DOWN                     ;; 0d:7dda $85
        sSET_PLAYER_POSITION 16, 3                     ;; 0d:7ddb $8a $10 $03
        sLOOP 4, 2                                     ;; 0d:7dde $03 $04 $02
          sPLAYER_STEP_FORWARD                         ;; 0d:7de1 $80
        sEND                                           ;; 0d:7de2 $00
        sSET_PLAYER_DIRECTION_LEFT                     ;; 0d:7de3 $87
        sLOOP 5, 2                                     ;; 0d:7de4 $03 $05 $02
          sPLAYER_STEP_FORWARD                         ;; 0d:7de7 $80
        sEND                                           ;; 0d:7de8 $00
        sMSG                                           ;; 0d:7de9 $04
          db "<10>", $00                               ;; 0d:7dea
        sIF_FLAG wScriptFlags03.3                      ;; 0d:7dec $08 $1b $00 $19
          sMSG                                         ;; 0d:7df0 $04
            db "Amanda:I'm glad\n you're back!", $00   ;; 0d:7df1
        sELSE                                          ;; 0d:7e07 $01 $03
          sCALL script_053d                            ;; 0d:7e09 $02 $6d $f9
        sENDIF                                         ;; 0d:7e0c
        sMSG                                           ;; 0d:7e0c $04
          db "<12>"
          db "<11>", $00           ;; 0d:7e0d
        sGIVE_FOLLOWER 5                               ;; 0d:7e10 $9c $05
        sSET_FLAG wScriptFlags0A.5                     ;; 0d:7e12 $da $55
      sENDIF                                           ;; 0d:7e14
    sENDIF                                             ;; 0d:7e14
    sEND                                               ;; 0d:7e14 $00

script_0282:
    sIF_0B $c9                                         ;; 0d:7e15 $0b $c9 $00 $98
      sIF_FLAG wScriptFlags0B.0                        ;; 0d:7e19 $08 $58 $00 $05
        sCALL script_0473                              ;; 0d:7e1d $02 $5a $e2
        sSET_FLAG wScriptFlags0B.5                     ;; 0d:7e20 $da $5d
      sENDIF                                           ;; 0d:7e22
      sUNK_C5 1                                        ;; 0d:7e22 $c5 $01
      sLOAD_ROOM 6, $17, 9, 12                         ;; 0d:7e24 $f4 $06 $17 $09 $0c
      sSET_MUSIC 12                                    ;; 0d:7e29 $f8 $0c
      sSET_NPC_TYPES 82                                ;; 0d:7e2b $fc $52
      sSET_PLAYER_DIRECTION_UP                         ;; 0d:7e2d $84
      sSPAWN_NPC 2                                     ;; 0d:7e2e $fd $02
      sNPC_1_STEP_FORWARD                              ;; 0d:7e30 $10
      sNPC_1_STEP_FORWARD                              ;; 0d:7e31 $10
      sNPC_1_STEP_FORWARD                              ;; 0d:7e32 $10
      sMSG                                             ;; 0d:7e33 $04
        db "<10>I AM MARCIE.\nI SEARCH RELICS.\nDR.BOWOW MADE ME.<12>"
        db "<1b>HE LEFT ME HERE.\nI WAITED 50 YEARS.\nHE FORGOT ME.<12>"
        db "<1b>I CAN HELP YOU.\nTAKE ME WITH YOU.<12>"
        db "<11>", $00 ;; 0d:7e34
      sGIVE_FOLLOWER 7                                 ;; 0d:7ead $9c $07
      sSET_FLAG wScriptFlags0A.7                       ;; 0d:7eaf $da $57
    sENDIF                                             ;; 0d:7eb1
    sEND                                               ;; 0d:7eb1 $00

script_0283:
    sEND                                               ;; 0d:7eb2 $00

script_0284:
    sIF_0B $c9                                         ;; 0d:7eb3 $0b $c9 $00 $11
      sIF_FLAG wScriptFlags0B.0                        ;; 0d:7eb7 $08 $58 $00 $05
        sCALL script_0473                              ;; 0d:7ebb $02 $5a $e2
        sSET_FLAG wScriptFlags0D.4                     ;; 0d:7ebe $da $6c
      sENDIF                                           ;; 0d:7ec0
      sLOAD_ROOM 9, $03, 2, 12                         ;; 0d:7ec0 $f4 $09 $03 $02 $0c
      sSET_MUSIC 8                                     ;; 0d:7ec5 $f8 $08
      sRUN_ROOM_SCRIPT                                 ;; 0d:7ec7 $ec
    sENDIF                                             ;; 0d:7ec8
    sEND                                               ;; 0d:7ec8 $00

script_0285:
    sIF_0B $c9                                         ;; 0d:7ec9 $0b $c9 $00 $11
      sIF_FLAG wScriptFlags0B.0                        ;; 0d:7ecd $08 $58 $00 $05
        sCALL script_0473                              ;; 0d:7ed1 $02 $5a $e2
        sSET_FLAG wScriptFlags0D.3                     ;; 0d:7ed4 $da $6b
      sENDIF                                           ;; 0d:7ed6
      sLOAD_ROOM 13, $77, 16, 12                       ;; 0d:7ed6 $f4 $0d $77 $10 $0c
      sSET_MUSIC 8                                     ;; 0d:7edb $f8 $08
      sRUN_ROOM_SCRIPT                                 ;; 0d:7edd $ec
    sENDIF                                             ;; 0d:7ede
    sEND                                               ;; 0d:7ede $00

script_0286:
    sIF_0B $c9                                         ;; 0d:7edf $0b $c9 $00 $10
      sIF_FLAG wScriptFlags0B.0                        ;; 0d:7ee3 $08 $58 $00 $05
        sCALL script_0473                              ;; 0d:7ee7 $02 $5a $e2
        sSET_FLAG wScriptFlags0D.5                     ;; 0d:7eea $da $6d
      sENDIF                                           ;; 0d:7eec
      sLOAD_ROOM 8, $03, 8, 8                          ;; 0d:7eec $f4 $08 $03 $08 $08
      sSET_MUSIC 7                                     ;; 0d:7ef1 $f8 $07
    sENDIF                                             ;; 0d:7ef3
    sEND                                               ;; 0d:7ef3 $00

script_0287:
    sIF_0B $c9                                         ;; 0d:7ef4 $0b $c9 $00 $07
      sLOAD_ROOM 15, $10, 16, 2                        ;; 0d:7ef8 $f4 $0f $10 $10 $02
      sSET_MUSIC 7                                     ;; 0d:7efd $f8 $07
    sENDIF                                             ;; 0d:7eff
    sEND                                               ;; 0d:7eff $00

script_0288:
    sIF_0B $c9                                         ;; 0d:7f00 $0b $c9 $00 $19
      sIF_FLAG wScriptFlags0B.0                        ;; 0d:7f04 $08 $58 $00 $05
        sCALL script_0473                              ;; 0d:7f08 $02 $5a $e2
        sSET_FLAG wScriptFlags0C.6                     ;; 0d:7f0b $da $66
      sENDIF                                           ;; 0d:7f0d
      sLOAD_ROOM 15, $37, 9, 12                        ;; 0d:7f0d $f4 $0f $37 $09 $0c
      sIF_FLAG wScriptFlags04.1                        ;; 0d:7f12 $08 $21 $00 $04
        sSET_MUSIC 4                                   ;; 0d:7f16 $f8 $04
      sELSE                                            ;; 0d:7f18 $01 $02
        sSET_MUSIC 27                                  ;; 0d:7f1a $f8 $1b
      sENDIF                                           ;; 0d:7f1c
      sRUN_ROOM_SCRIPT                                 ;; 0d:7f1c $ec
    sENDIF                                             ;; 0d:7f1d
    sEND                                               ;; 0d:7f1d $00

script_0289:
    sIF_0B $c9                                         ;; 0d:7f1e $0b $c9 $00 $08
      sLOAD_ROOM 13, $17, 16, 12                       ;; 0d:7f22 $f4 $0d $17 $10 $0c
      sSET_MUSIC 12                                    ;; 0d:7f27 $f8 $0c
      sRUN_ROOM_SCRIPT                                 ;; 0d:7f29 $ec
    sENDIF                                             ;; 0d:7f2a
    sEND                                               ;; 0d:7f2a $00

script_028a:
    sIF_0B $c9                                         ;; 0d:7f2b $0b $c9 $00 $1b
      sIF_FLAG wScriptFlags0B.0                        ;; 0d:7f2f $08 $58 $00 $05
        sCALL script_0473                              ;; 0d:7f33 $02 $5a $e2
        sSET_FLAG wScriptFlags0D.0                     ;; 0d:7f36 $da $68
      sENDIF                                           ;; 0d:7f38
      sUNK_C5 4                                        ;; 0d:7f38 $c5 $04
      sLOAD_ROOM 3, $47, 9, 12                         ;; 0d:7f3a $f4 $03 $47 $09 $0c
      sIF_FLAG wScriptFlags05.5                        ;; 0d:7f3f $08 $2d $00 $04
        sSET_MUSIC 11                                  ;; 0d:7f43 $f8 $0b
      sELSE                                            ;; 0d:7f45 $01 $02
        sSET_MUSIC 10                                  ;; 0d:7f47 $f8 $0a
      sENDIF                                           ;; 0d:7f49
      sRUN_ROOM_SCRIPT                                 ;; 0d:7f49 $ec
    sENDIF                                             ;; 0d:7f4a
    sEND                                               ;; 0d:7f4a $00

script_028b:
    sIF_0B $c9                                         ;; 0d:7f4b $0b $c9 $00 $13
      sIF_FLAG wScriptFlags0B.0                        ;; 0d:7f4f $08 $58 $00 $05
        sCALL script_0473                              ;; 0d:7f53 $02 $5a $e2
        sSET_FLAG wScriptFlags0C.7                     ;; 0d:7f56 $da $67
      sENDIF                                           ;; 0d:7f58
      sLOAD_ROOM 14, $77, 14, 2                        ;; 0d:7f58 $f4 $0e $77 $0e $02
      sSET_MUSIC 8                                     ;; 0d:7f5d $f8 $08
      sSET_FLAG wScriptFlags08.7                       ;; 0d:7f5f $da $47
      sRUN_ROOM_SCRIPT                                 ;; 0d:7f61 $ec
    sENDIF                                             ;; 0d:7f62
    sEND                                               ;; 0d:7f62 $00

script_028c:
    sIF_0B $c9                                         ;; 0d:7f63 $0b $c9 $00 $0a
      sLOAD_ROOM 1, $17, 16, 5                         ;; 0d:7f67 $f4 $01 $17 $10 $05
      sSET_MUSIC 7                                     ;; 0d:7f6c $f8 $07
      sCALL script_01c7                                ;; 0d:7f6e $02 $14 $cf
    sENDIF                                             ;; 0d:7f71
    sEND                                               ;; 0d:7f71 $00

script_028d:
    sIF_0B $c9                                         ;; 0d:7f72 $0b $c9 $00 $08
      sLOAD_ROOM 11, $76, 16, 2                        ;; 0d:7f76 $f4 $0b $76 $10 $02
      sSET_MUSIC 7                                     ;; 0d:7f7b $f8 $07
      sRUN_ROOM_SCRIPT                                 ;; 0d:7f7d $ec
    sENDIF                                             ;; 0d:7f7e
    sEND                                               ;; 0d:7f7e $00

script_028e:
    sEND                                               ;; 0d:7f7f $00

script_028f:
    sEND                                               ;; 0d:7f80 $00

script_0290:
    sIF_0B $c9                                         ;; 0d:7f81 $0b $c9 $00 $09
      sLOAD_ROOM 0, $f0, 8, 8                          ;; 0d:7f85 $f4 $00 $f0 $08 $08
      sSET_MUSIC 25                                    ;; 0d:7f8a $f8 $19
      sCLEAR_ROOM_HISTORY                              ;; 0d:7f8c $ab
      sRUN_ROOM_SCRIPT                                 ;; 0d:7f8d $ec
    sENDIF                                             ;; 0d:7f8e
    sEND                                               ;; 0d:7f8e $00

script_0291:
    sIF_0B $c9, $c1                                    ;; 0d:7f8f $0b $c9 $c1 $00 $0a
      sLOAD_ROOM 0, $87, 8, 2                          ;; 0d:7f94 $f4 $00 $87 $08 $02
      sDELAY 20                                        ;; 0d:7f99 $f0 $14
      sSET_MUSIC 20                                    ;; 0d:7f9b $f8 $14
      sRUN_ROOM_SCRIPT                                 ;; 0d:7f9d $ec
    sENDIF                                             ;; 0d:7f9e
    sEND                                               ;; 0d:7f9e $00

script_0292:
    sIF_0B $c9, $c1                                    ;; 0d:7f9f $0b $c9 $c1 $00 $0d
      sSFX 12                                          ;; 0d:7fa4 $f9 $0c
      sSET_PLAYER_POSITION 20, 0                       ;; 0d:7fa6 $8a $14 $00
      sDELAY 60                                        ;; 0d:7fa9 $f0 $3c
      sLOAD_ROOM 6, $26, 9, 7                          ;; 0d:7fab $f4 $06 $26 $09 $07
      sRUN_ROOM_SCRIPT                                 ;; 0d:7fb0 $ec
    sENDIF                                             ;; 0d:7fb1
    sEND                                               ;; 0d:7fb1 $00

script_0293:
    sEND                                               ;; 0d:7fb2 $00
    db   $0b, $c9, $00, $33, $08, $52, $c8, $00        ;; 0d:7fb3 ????????
    db   $25, $04, $10, $62, $e1, $f5, $bd, $dc        ;; 0d:7fbb ????????
    db   $d7, $e1, $ee, $28, $24, $e8, $1a, $87        ;; 0d:7fc3 ????????
    db   $64, $20, $2a, $38, $22, $36, $da, $98        ;; 0d:7fcb ????????
    db   $1a, $22, $2a, $51, $8b, $5f, $e5, $f4        ;; 0d:7fd3 ????????
    db   $12, $11, $00, $98, $db, $52, $f4, $00        ;; 0d:7fdb ????????
    db   $e8, $0a, $03, $f8, $14, $ab, $ec             ;; 0d:7fe3 ???????
