;; Disassembled with BadBoy Disassembler: https://github.com/daid/BadBoy

SECTION "bank0d", ROMX[$4000], BANK[$0d]

script_0000:
    db  $00 ;;END                                      ;; 0d:4000 $00

script_0001:
    db  $08 ;;IF ? JR                                  ;; 0d:4001 $08
    db   $01, $00, $05                                 ;; 0d:4002 ...
    db  $f9 ;;SFX                                      ;; 0d:4005 $f9
    db   $10                                           ;; 0d:4006 .
    db  $e4 ;;UNK_E4                                   ;; 0d:4007 $e4
    db  $01 ;;JR                                       ;; 0d:4008 $01
    db   $19                                           ;; 0d:4009 .
    db  $08 ;;IF ? JR                                  ;; 0d:400a $08
    db   $02, $00, $05                                 ;; 0d:400b ...
    db  $f9 ;;SFX                                      ;; 0d:400e $f9
    db   $10                                           ;; 0d:400f .
    db  $e6 ;;UNK_E6                                   ;; 0d:4010 $e6
    db  $01 ;;JR                                       ;; 0d:4011 $01
    db   $10                                           ;; 0d:4012 .
    db  $08 ;;IF ? JR                                  ;; 0d:4013 $08
    db   $03, $00, $05                                 ;; 0d:4014 ...
    db  $f9 ;;SFX                                      ;; 0d:4017 $f9
    db   $10                                           ;; 0d:4018 .
    db  $e0 ;;UNK_E0                                   ;; 0d:4019 $e0
    db  $01 ;;JR                                       ;; 0d:401a $01
    db   $07                                           ;; 0d:401b .
    db  $08 ;;IF ? JR                                  ;; 0d:401c $08
    db   $04, $00, $03                                 ;; 0d:401d ...
    db  $f9 ;;SFX                                      ;; 0d:4020 $f9
    db   $10                                           ;; 0d:4021 .
    db  $e2 ;;UNK_E2                                   ;; 0d:4022 $e2
    db  $00 ;;END                                      ;; 0d:4023 $00

script_0002:
    db  $00 ;;END                                      ;; 0d:4024 $00

script_0003:
    db  $f8 ;;SET_MUSIC                                ;; 0d:4025 $f8
    db   $01                                           ;; 0d:4026 .
    db  $c6 ;;UNK_C6                                   ;; 0d:4027 $c6
    db  $f4 ;;LOAD_ROOM                                ;; 0d:4028 $f4
    db   $01, $47, $12, $0a                            ;; 0d:4029 ....
    db  $02 ;;CALL                                     ;; 0d:402d $02
    db   $06, $cc                                      ;; 0d:402e ..
    db  $00 ;;END                                      ;; 0d:4030 $00

script_0004:
    db  $08 ;;IF ? JR                                  ;; 0d:4031 $08
    db   $f4, $00, $5a                                 ;; 0d:4032 ...
    db  $08 ;;IF ? JR                                  ;; 0d:4035 $08
    db   $f5, $f6, $f7, $00, $05                       ;; 0d:4036 .....
    db  $f4 ;;LOAD_ROOM                                ;; 0d:403b $f4
    db   $0e, $10, $0c, $09                            ;; 0d:403c ....
    db  $08 ;;IF ? JR                                  ;; 0d:4040 $08
    db   $f5, $f6, $77, $00, $05                       ;; 0d:4041 .....
    db  $f4 ;;LOAD_ROOM                                ;; 0d:4046 $f4
    db   $0e, $06, $0e, $08                            ;; 0d:4047 ....
    db  $08 ;;IF ? JR                                  ;; 0d:404b $08
    db   $f5, $76, $f7, $00, $05                       ;; 0d:404c .....
    db  $f4 ;;LOAD_ROOM                                ;; 0d:4051 $f4
    db   $00, $5b, $08, $04                            ;; 0d:4052 ....
    db  $08 ;;IF ? JR                                  ;; 0d:4056 $08
    db   $f5, $76, $77, $00, $05                       ;; 0d:4057 .....
    db  $f4 ;;LOAD_ROOM                                ;; 0d:405c $f4
    db   $0e, $53, $06, $06                            ;; 0d:405d ....
    db  $08 ;;IF ? JR                                  ;; 0d:4061 $08
    db   $75, $f6, $f7, $00, $05                       ;; 0d:4062 .....
    db  $f4 ;;LOAD_ROOM                                ;; 0d:4067 $f4
    db   $0e, $14, $02, $0c                            ;; 0d:4068 ....
    db  $08 ;;IF ? JR                                  ;; 0d:406c $08
    db   $75, $f6, $77, $00, $05                       ;; 0d:406d .....
    db  $f4 ;;LOAD_ROOM                                ;; 0d:4072 $f4
    db   $00, $33, $0c, $05                            ;; 0d:4073 ....
    db  $08 ;;IF ? JR                                  ;; 0d:4077 $08
    db   $75, $76, $f7, $00, $05                       ;; 0d:4078 .....
    db  $f4 ;;LOAD_ROOM                                ;; 0d:407d $f4
    db   $0f, $46, $0a, $06                            ;; 0d:407e ....
    db  $08 ;;IF ? JR                                  ;; 0d:4082 $08
    db   $75, $76, $77, $00, $05                       ;; 0d:4083 .....
    db  $f4 ;;LOAD_ROOM                                ;; 0d:4088 $f4
    db   $00, $d1, $04, $06                            ;; 0d:4089 ....
    db  $01 ;;JR                                       ;; 0d:408d $01
    db   $7f                                           ;; 0d:408e .
    db  $08 ;;IF ? JR                                  ;; 0d:408f $08
    db   $f5, $f6, $f7, $00, $05                       ;; 0d:4090 .....
    db  $f4 ;;LOAD_ROOM                                ;; 0d:4095 $f4
    db   $00, $df, $0a, $04                            ;; 0d:4096 ....
    db  $08 ;;IF ? JR                                  ;; 0d:409a $08
    db   $f5, $f6, $77, $00, $0f                       ;; 0d:409b .....
    db  $f4 ;;LOAD_ROOM                                ;; 0d:40a0 $f4
    db   $0e, $14, $0a, $06                            ;; 0d:40a1 ....
    db  $08 ;;IF ? JR                                  ;; 0d:40a5 $08
    db   $a8, $00, $04                                 ;; 0d:40a6 ...
    db  $f8 ;;SET_MUSIC                                ;; 0d:40a9 $f8
    db   $00                                           ;; 0d:40aa .
    db  $01 ;;JR                                       ;; 0d:40ab $01
    db   $02                                           ;; 0d:40ac .
    db  $f8 ;;SET_MUSIC                                ;; 0d:40ad $f8
    db   $0d                                           ;; 0d:40ae .
    db  $08 ;;IF ? JR                                  ;; 0d:40af $08
    db   $f5, $76, $f7, $00, $07                       ;; 0d:40b0 .....
    db  $f4 ;;LOAD_ROOM                                ;; 0d:40b5 $f4
    db   $00, $4d, $0a, $04                            ;; 0d:40b6 ....
    db  $f8 ;;SET_MUSIC                                ;; 0d:40ba $f8
    db   $14                                           ;; 0d:40bb .
    db  $08 ;;IF ? JR                                  ;; 0d:40bc $08
    db   $f5, $76, $77, $00, $0f                       ;; 0d:40bd .....
    db  $f4 ;;LOAD_ROOM                                ;; 0d:40c2 $f4
    db   $0f, $36, $02, $0b                            ;; 0d:40c3 ....
    db  $08 ;;IF ? JR                                  ;; 0d:40c7 $08
    db   $a1, $00, $04                                 ;; 0d:40c8 ...
    db  $f8 ;;SET_MUSIC                                ;; 0d:40cb $f8
    db   $1b                                           ;; 0d:40cc .
    db  $01 ;;JR                                       ;; 0d:40cd $01
    db   $02                                           ;; 0d:40ce .
    db  $f8 ;;SET_MUSIC                                ;; 0d:40cf $f8
    db   $04                                           ;; 0d:40d0 .
    db  $08 ;;IF ? JR                                  ;; 0d:40d1 $08
    db   $75, $f6, $f7, $00, $07                       ;; 0d:40d2 .....
    db  $f4 ;;LOAD_ROOM                                ;; 0d:40d7 $f4
    db   $0e, $01, $0e, $05                            ;; 0d:40d8 ....
    db  $f8 ;;SET_MUSIC                                ;; 0d:40dc $f8
    db   $04                                           ;; 0d:40dd .
    db  $08 ;;IF ? JR                                  ;; 0d:40de $08
    db   $75, $f6, $77, $00, $10                       ;; 0d:40df .....
    db  $f4 ;;LOAD_ROOM                                ;; 0d:40e4 $f4
    db   $0e, $17, $10, $08                            ;; 0d:40e5 ....
    db  $08 ;;IF ? JR                                  ;; 0d:40e9 $08
    db   $10, $91, $00, $04                            ;; 0d:40ea ....
    db  $f8 ;;SET_MUSIC                                ;; 0d:40ee $f8
    db   $09                                           ;; 0d:40ef .
    db  $01 ;;JR                                       ;; 0d:40f0 $01
    db   $02                                           ;; 0d:40f1 .
    db  $f8 ;;SET_MUSIC                                ;; 0d:40f2 $f8
    db   $0b                                           ;; 0d:40f3 .
    db  $08 ;;IF ? JR                                  ;; 0d:40f4 $08
    db   $75, $76, $f7, $00, $07                       ;; 0d:40f5 .....
    db  $f4 ;;LOAD_ROOM                                ;; 0d:40fa $f4
    db   $00, $aa, $0e, $08                            ;; 0d:40fb ....
    db  $f8 ;;SET_MUSIC                                ;; 0d:40ff $f8
    db   $14                                           ;; 0d:4100 .
    db  $08 ;;IF ? JR                                  ;; 0d:4101 $08
    db   $75, $76, $77, $00, $07                       ;; 0d:4102 .....
    db  $f4 ;;LOAD_ROOM                                ;; 0d:4107 $f4
    db   $00, $7c, $08, $04                            ;; 0d:4108 ....
    db  $f8 ;;SET_MUSIC                                ;; 0d:410c $f8
    db   $14                                           ;; 0d:410d .
    db  $ab ;;UNK_AB                                   ;; 0d:410e $ab
    db  $ec ;;RUN_ROOM_SCRIPT                          ;; 0d:410f $ec
    db  $00 ;;END                                      ;; 0d:4110 $00

script_0005:
    db  $09 ;;IF ? JR                                  ;; 0d:4111 $09
    db   $1f, $00, $25                                 ;; 0d:4112 ...
    db  $08 ;;IF ? JR                                  ;; 0d:4115 $08
    db   $01, $00, $05                                 ;; 0d:4116 ...
    db  $f9 ;;SFX                                      ;; 0d:4119 $f9
    db   $10                                           ;; 0d:411a .
    db  $e4 ;;UNK_E4                                   ;; 0d:411b $e4
    db  $01 ;;JR                                       ;; 0d:411c $01
    db   $19                                           ;; 0d:411d .
    db  $08 ;;IF ? JR                                  ;; 0d:411e $08
    db   $02, $00, $05                                 ;; 0d:411f ...
    db  $f9 ;;SFX                                      ;; 0d:4122 $f9
    db   $10                                           ;; 0d:4123 .
    db  $e6 ;;UNK_E6                                   ;; 0d:4124 $e6
    db  $01 ;;JR                                       ;; 0d:4125 $01
    db   $10                                           ;; 0d:4126 .
    db  $08 ;;IF ? JR                                  ;; 0d:4127 $08
    db   $03, $00, $05                                 ;; 0d:4128 ...
    db  $f9 ;;SFX                                      ;; 0d:412b $f9
    db   $10                                           ;; 0d:412c .
    db  $e0 ;;UNK_E0                                   ;; 0d:412d $e0
    db  $01 ;;JR                                       ;; 0d:412e $01
    db   $07                                           ;; 0d:412f .
    db  $08 ;;IF ? JR                                  ;; 0d:4130 $08
    db   $04, $00, $03                                 ;; 0d:4131 ...
    db  $f9 ;;SFX                                      ;; 0d:4134 $f9
    db   $10                                           ;; 0d:4135 .
    db  $e2 ;;UNK_E2                                   ;; 0d:4136 $e2
    db  $de ;;UNK_DE                                   ;; 0d:4137 $de
    db  $01 ;;JR                                       ;; 0d:4138 $01
    db   $0b, $04, $10, $ff, $c5, $e2, $9e, $39        ;; 0d:4139 .???????
    db   $f0, $12, $11, $00                            ;; 0d:4141 ????
    db  $00 ;;END                                      ;; 0d:4145 $00

script_0006:
    db  $00 ;;END                                      ;; 0d:4146 $00

script_0007:
    db  $f8 ;;SET_MUSIC                                ;; 0d:4147 $f8
    db   $00                                           ;; 0d:4148 .
    db  $03 ;;LOOP                                     ;; 0d:4149 $03
    db   $04, $0d                                      ;; 0d:414a ..
    db  $86 ;;SET_PLAYER_DIRECTION_RIGHT               ;; 0d:414c $86
    db  $f0 ;;DELAY                                    ;; 0d:414d $f0
    db   $05                                           ;; 0d:414e .
    db  $85 ;;SET_PLAYER_DIRECTION_DOWN                ;; 0d:414f $85
    db  $f0 ;;DELAY                                    ;; 0d:4150 $f0
    db   $05                                           ;; 0d:4151 .
    db  $87 ;;SET_PLAYER_DIRECTION_LEFT                ;; 0d:4152 $87
    db  $f0 ;;DELAY                                    ;; 0d:4153 $f0
    db   $05                                           ;; 0d:4154 .
    db  $84 ;;SET_PLAYER_DIRECTION_UP                  ;; 0d:4155 $84
    db  $f0 ;;DELAY                                    ;; 0d:4156 $f0
    db   $05                                           ;; 0d:4157 .
    db  $00 ;;END                                      ;; 0d:4158 $00
    db  $a6 ;;SET_PLAYER_LAYDOWN_SPRITE                ;; 0d:4159 $a6
    db  $86 ;;SET_PLAYER_DIRECTION_RIGHT               ;; 0d:415a $86
    db  $f0 ;;DELAY                                    ;; 0d:415b $f0
    db   $2c                                           ;; 0d:415c .
    db  $f8 ;;SET_MUSIC                                ;; 0d:415d $f8
    db   $17                                           ;; 0d:415e .
    db  $04 ;;MSG                                      ;; 0d:415f $04
    db   "<10>\n    <BOY> fell_<12>"                   ;; 0d:4160 .........
    db   "<11>", $00                                   ;; 0d:4169 ...
    db  $c8 ;;RESET_GAME                               ;; 0d:416c $c8
    db  $00 ;;END                                      ;; 0d:416d $00

script_0008:
    db  $08 ;;IF ? JR                                  ;; 0d:416e $08
    db   $f4, $00, $5a                                 ;; 0d:416f ...
    db  $08 ;;IF ? JR                                  ;; 0d:4172 $08
    db   $f5, $f6, $f7, $00, $05                       ;; 0d:4173 .....
    db  $f4 ;;LOAD_ROOM                                ;; 0d:4178 $f4
    db   $0e, $10, $06, $07                            ;; 0d:4179 ....
    db  $08 ;;IF ? JR                                  ;; 0d:417d $08
    db   $f5, $f6, $77, $00, $05                       ;; 0d:417e .....
    db  $f4 ;;LOAD_ROOM                                ;; 0d:4183 $f4
    db   $00, $c7, $08, $07                            ;; 0d:4184 ....
    db  $08 ;;IF ? JR                                  ;; 0d:4188 $08
    db   $f5, $76, $f7, $00, $05                       ;; 0d:4189 .....
    db  $f4 ;;LOAD_ROOM                                ;; 0d:418e $f4
    db   $0e, $07, $0c, $04                            ;; 0d:418f ....
    db  $08 ;;IF ? JR                                  ;; 0d:4193 $08
    db   $f5, $76, $77, $00, $05                       ;; 0d:4194 .....
    db  $f4 ;;LOAD_ROOM                                ;; 0d:4199 $f4
    db   $00, $af, $04, $04                            ;; 0d:419a ....
    db  $08 ;;IF ? JR                                  ;; 0d:419e $08
    db   $75, $f6, $f7, $00, $05                       ;; 0d:419f .....
    db  $f4 ;;LOAD_ROOM                                ;; 0d:41a4 $f4
    db   $0e, $63, $0e, $0a                            ;; 0d:41a5 ....
    db  $08 ;;IF ? JR                                  ;; 0d:41a9 $08
    db   $75, $f6, $77, $00, $05                       ;; 0d:41aa .....
    db  $f4 ;;LOAD_ROOM                                ;; 0d:41af $f4
    db   $0e, $24, $0a, $04                            ;; 0d:41b0 ....
    db  $08 ;;IF ? JR                                  ;; 0d:41b4 $08
    db   $75, $76, $f7, $00, $05                       ;; 0d:41b5 .....
    db  $f4 ;;LOAD_ROOM                                ;; 0d:41ba $f4
    db   $00, $23, $0a, $06                            ;; 0d:41bb ....
    db  $08 ;;IF ? JR                                  ;; 0d:41bf $08
    db   $75, $76, $77, $00, $05                       ;; 0d:41c0 .....
    db  $f4 ;;LOAD_ROOM                                ;; 0d:41c5 $f4
    db   $00, $90, $0c, $06                            ;; 0d:41c6 ....
    db  $01 ;;JR                                       ;; 0d:41ca $01
    db   $58                                           ;; 0d:41cb .
    db  $08 ;;IF ? JR                                  ;; 0d:41cc $08
    db   $f5, $f6, $f7, $00, $05                       ;; 0d:41cd .....
    db  $f4 ;;LOAD_ROOM                                ;; 0d:41d2 $f4
    db   $00, $db, $08, $04                            ;; 0d:41d3 ....
    db  $08 ;;IF ? JR                                  ;; 0d:41d7 $08
    db   $f5, $f6, $77, $00, $05                       ;; 0d:41d8 .....
    db  $f4 ;;LOAD_ROOM                                ;; 0d:41dd $f4
    db   $0f, $26, $04, $0c                            ;; 0d:41de ....
    db  $08 ;;IF ? JR                                  ;; 0d:41e2 $08
    db   $f5, $76, $f7, $00, $05                       ;; 0d:41e3 .....
    db  $f4 ;;LOAD_ROOM                                ;; 0d:41e8 $f4
    db   $0e, $00, $04, $08                            ;; 0d:41e9 ....
    db  $08 ;;IF ? JR                                  ;; 0d:41ed $08
    db   $f5, $76, $77, $00, $05                       ;; 0d:41ee .....
    db  $f4 ;;LOAD_ROOM                                ;; 0d:41f3 $f4
    db   $0e, $06, $06, $08                            ;; 0d:41f4 ....
    db  $08 ;;IF ? JR                                  ;; 0d:41f8 $08
    db   $75, $f6, $f7, $00, $05                       ;; 0d:41f9 .....
    db  $f4 ;;LOAD_ROOM                                ;; 0d:41fe $f4
    db   $0e, $13, $10, $08                            ;; 0d:41ff ....
    db  $08 ;;IF ? JR                                  ;; 0d:4203 $08
    db   $75, $f6, $77, $00, $05                       ;; 0d:4204 .....
    db  $f4 ;;LOAD_ROOM                                ;; 0d:4209 $f4
    db   $0e, $63, $0a, $04                            ;; 0d:420a ....
    db  $08 ;;IF ? JR                                  ;; 0d:420e $08
    db   $75, $76, $f7, $00, $05                       ;; 0d:420f .....
    db  $f4 ;;LOAD_ROOM                                ;; 0d:4214 $f4
    db   $0f, $46, $04, $0a                            ;; 0d:4215 ....
    db  $08 ;;IF ? JR                                  ;; 0d:4219 $08
    db   $75, $76, $77, $00, $05                       ;; 0d:421a .....
    db  $f4 ;;LOAD_ROOM                                ;; 0d:421f $f4
    db   $0f, $46, $0e, $06                            ;; 0d:4220 ....
    db  $ab ;;UNK_AB                                   ;; 0d:4224 $ab
    db  $ec ;;RUN_ROOM_SCRIPT                          ;; 0d:4225 $ec
    db  $00 ;;END                                      ;; 0d:4226 $00

script_0009:
    db  $04 ;;MSG                                      ;; 0d:4227 $04
    db   "<10> Doesn't open.<12>"                      ;; 0d:4228 ............
    db   "<11>", $00                                   ;; 0d:4234 ...
    db  $00 ;;END                                      ;; 0d:4237 $00

script_000a:
    db  $00 ;;END                                      ;; 0d:4238 $00

script_000b:
    db  $00 ;;END                                      ;; 0d:4239 $00

script_000c:
    db  $08 ;;IF ? JR                                  ;; 0d:423a $08
    db   $f4, $f5, $f6, $00, $6c                       ;; 0d:423b .....
    db  $08 ;;IF ? JR                                  ;; 0d:4240 $08
    db   $f7, $00, $14                                 ;; 0d:4241 ...
    db  $08 ;;IF ? JR                                  ;; 0d:4244 $08
    db   $40, $a5, $00, $02                            ;; 0d:4245 ....
    db  $01 ;;JR                                       ;; 0d:4249 $01
    db   $0b                                           ;; 0d:424a .
    db  $f4 ;;LOAD_ROOM                                ;; 0d:424b $f4
    db   $00, $a9, $0a, $05                            ;; 0d:424c ....
    db  $f8 ;;SET_MUSIC                                ;; 0d:4250 $f8
    db   $14                                           ;; 0d:4251 .
    db  $02 ;;CALL                                     ;; 0d:4252 $02
    db   $5b, $55                                      ;; 0d:4253 ..
    db  $ab ;;UNK_AB                                   ;; 0d:4255 $ab
    db  $01 ;;JR                                       ;; 0d:4256 $01
    db   $52                                           ;; 0d:4257 .
    db  $04 ;;MSG                                      ;; 0d:4258 $04
    db   "<10>", $00                                   ;; 0d:4259 ..
    db  $08 ;;IF ? JR                                  ;; 0d:425b $08
    db   $b1, $00, $2f                                 ;; 0d:425c ...
    db  $04 ;;MSG                                      ;; 0d:425f $04
    db   " I'LL STAY HERE\n AND RESEARCH.<12>"         ;; 0d:4260 ...........................
    db   "<11>", $00                                   ;; 0d:427b ...
    db  $98 ;;FOLLOWER_DELETE                          ;; 0d:427e $98
    db  $db ;;CLEAR_FLAG                               ;; 0d:427f $db
    db   $57                                           ;; 0d:4280 .
    db  $f4 ;;LOAD_ROOM                                ;; 0d:4281 $f4
    db   $00, $73, $0a, $06                            ;; 0d:4282 ....
    db  $f8 ;;SET_MUSIC                                ;; 0d:4286 $f8
    db   $14                                           ;; 0d:4287 .
    db  $02 ;;CALL                                     ;; 0d:4288 $02
    db   $4f, $ae                                      ;; 0d:4289 ..
    db  $ab ;;UNK_AB                                   ;; 0d:428b $ab
    db  $01 ;;JR                                       ;; 0d:428c $01
    db   $1c                                           ;; 0d:428d .
    db  $04 ;;MSG                                      ;; 0d:428e $04
    db   "Tower is sinking.\nUnable to get out!<12>"   ;; 0d:428f ........................
    db   "<11>", $00                                   ;; 0d:42a7 ...
    db  $01 ;;JR                                       ;; 0d:42aa $01
    db   $d7                                           ;; 0d:42ab .
    db  $08 ;;IF ? JR                                  ;; 0d:42ac $08
    db   $f4, $00, $84                                 ;; 0d:42ad ...
    db  $08 ;;IF ? JR                                  ;; 0d:42b0 $08
    db   $f5, $76, $f7, $00, $07                       ;; 0d:42b1 .....
    db  $f4 ;;LOAD_ROOM                                ;; 0d:42b6 $f4
    db   $00, $64, $0e, $07                            ;; 0d:42b7 ....
    db  $f8 ;;SET_MUSIC                                ;; 0d:42bb $f8
    db   $14                                           ;; 0d:42bc .
    db  $08 ;;IF ? JR                                  ;; 0d:42bd $08
    db   $f5, $76, $77, $00, $41                       ;; 0d:42be .....
    db  $08 ;;IF ? JR                                  ;; 0d:42c3 $08
    db   $56, $a8, $00, $2b                            ;; 0d:42c4 ....
    db  $04 ;;MSG                                      ;; 0d:42c8 $04
    db   "<10>Lester:Won't you\n avenge my sister?\n Well, I'm going!<12>" ;; 0d:42c9 ....................................
    db   "<11>", $00                                   ;; 0d:42ed ...
    db  $98 ;;FOLLOWER_DELETE                          ;; 0d:42f0 $98
    db  $db ;;CLEAR_FLAG                               ;; 0d:42f1 $db
    db   $56                                           ;; 0d:42f2 .
    db  $08 ;;IF ? JR                                  ;; 0d:42f3 $08
    db   $28, $00, $02                                 ;; 0d:42f4 ...
    db  $f8 ;;SET_MUSIC                                ;; 0d:42f7 $f8
    db   $0d                                           ;; 0d:42f8 .
    db  $08 ;;IF ? JR                                  ;; 0d:42f9 $08
    db   $a8, $00, $02                                 ;; 0d:42fa ...
    db  $f8 ;;SET_MUSIC                                ;; 0d:42fd $f8
    db   $00                                           ;; 0d:42fe .
    db  $f4 ;;LOAD_ROOM                                ;; 0d:42ff $f4
    db   $0e, $03, $0c, $08                            ;; 0d:4300 ....
    db  $08 ;;IF ? JR                                  ;; 0d:4304 $08
    db   $75, $f6, $f7, $00, $07                       ;; 0d:4305 .....
    db  $f4 ;;LOAD_ROOM                                ;; 0d:430a $f4
    db   $00, $c5, $09, $08                            ;; 0d:430b ....
    db  $f8 ;;SET_MUSIC                                ;; 0d:430f $f8
    db   $19                                           ;; 0d:4310 .
    db  $08 ;;IF ? JR                                  ;; 0d:4311 $08
    db   $75, $f6, $77, $00, $05                       ;; 0d:4312 .....
    db  $f4 ;;LOAD_ROOM                                ;; 0d:4317 $f4
    db   $01, $15, $09, $04                            ;; 0d:4318 ....
    db  $08 ;;IF ? JR                                  ;; 0d:431c $08
    db   $75, $76, $f7, $00, $05                       ;; 0d:431d .....
    db  $f4 ;;LOAD_ROOM                                ;; 0d:4322 $f4
    db   $0f, $22, $02, $0b                            ;; 0d:4323 ....
    db  $08 ;;IF ? JR                                  ;; 0d:4327 $08
    db   $75, $76, $77, $00, $05                       ;; 0d:4328 .....
    db  $f4 ;;LOAD_ROOM                                ;; 0d:432d $f4
    db   $0e, $53, $0e, $08                            ;; 0d:432e ....
    db  $01 ;;JR                                       ;; 0d:4332 $01
    db   $4d                                           ;; 0d:4333 .
    db  $08 ;;IF ? JR                                  ;; 0d:4334 $08
    db   $f5, $f6, $f7, $00, $05                       ;; 0d:4335 .....
    db  $f4 ;;LOAD_ROOM                                ;; 0d:433a $f4
    db   $00, $0a, $0e, $04                            ;; 0d:433b ....
    db  $08 ;;IF ? JR                                  ;; 0d:433f $08
    db   $f5, $f6, $77, $00, $05                       ;; 0d:4340 .....
    db  $f4 ;;LOAD_ROOM                                ;; 0d:4345 $f4
    db   $00, $55, $08, $04                            ;; 0d:4346 ....
    db  $08 ;;IF ? JR                                  ;; 0d:434a $08
    db   $f5, $76, $f7, $00, $05                       ;; 0d:434b .....
    db  $f4 ;;LOAD_ROOM                                ;; 0d:4350 $f4
    db   $00, $62, $0c, $06                            ;; 0d:4351 ....
    db  $08 ;;IF ? JR                                  ;; 0d:4355 $08
    db   $f5, $76, $77, $00, $05                       ;; 0d:4356 .....
    db  $f4 ;;LOAD_ROOM                                ;; 0d:435b $f4
    db   $00, $00, $06, $06                            ;; 0d:435c ....
    db  $08 ;;IF ? JR                                  ;; 0d:4360 $08
    db   $75, $f6, $f7, $00, $05                       ;; 0d:4361 .....
    db  $f4 ;;LOAD_ROOM                                ;; 0d:4366 $f4
    db   $0e, $01, $06, $09                            ;; 0d:4367 ....
    db  $08 ;;IF ? JR                                  ;; 0d:436b $08
    db   $75, $f6, $77, $00, $05                       ;; 0d:436c .....
    db  $f4 ;;LOAD_ROOM                                ;; 0d:4371 $f4
    db   $0e, $26, $08, $08                            ;; 0d:4372 ....
    db  $08 ;;IF ? JR                                  ;; 0d:4376 $08
    db   $75, $76, $f7, $00, $05                       ;; 0d:4377 .....
    db  $f4 ;;LOAD_ROOM                                ;; 0d:437c $f4
    db   $0e, $15, $0c, $0a                            ;; 0d:437d ....
    db  $ab ;;UNK_AB                                   ;; 0d:4381 $ab
    db  $ec ;;RUN_ROOM_SCRIPT                          ;; 0d:4382 $ec
    db  $00 ;;END                                      ;; 0d:4383 $00

script_000d:
    db  $08 ;;IF ? JR                                  ;; 0d:4384 $08
    db   $2d, $03, $00, $05                            ;; 0d:4385 ....
    db  $f9 ;;SFX                                      ;; 0d:4389 $f9
    db   $10                                           ;; 0d:438a .
    db  $e0 ;;UNK_E0                                   ;; 0d:438b $e0
    db  $01 ;;JR                                       ;; 0d:438c $01
    db   $1c                                           ;; 0d:438d .
    db  $04 ;;MSG                                      ;; 0d:438e $04
    db   "<10>_ _", $00                                ;; 0d:438f .....
    db  $f0 ;;DELAY                                    ;; 0d:4394 $f0
    db   $1e                                           ;; 0d:4395 .
    db  $04 ;;MSG                                      ;; 0d:4396 $04
    db   "_", $00                                      ;; 0d:4397 ..
    db  $f0 ;;DELAY                                    ;; 0d:4399 $f0
    db   $14                                           ;; 0d:439a .
    db  $04 ;;MSG                                      ;; 0d:439b $04
    db   "__\n_ It's frozen.<12>"                      ;; 0d:439c ...........
    db   "<11>", $00                                   ;; 0d:43a7 ...
    db  $00 ;;END                                      ;; 0d:43aa $00

script_000e:
    db  $00 ;;END                                      ;; 0d:43ab $00

script_000f:
    db  $00 ;;END                                      ;; 0d:43ac $00

script_0010:
    db  $00 ;;END                                      ;; 0d:43ad $00

script_0011:
    db  $00 ;;END                                      ;; 0d:43ae $00

script_0012:
    db  $00 ;;END                                      ;; 0d:43af $00

script_0013:
    db  $00 ;;END                                      ;; 0d:43b0 $00

script_0014:
    db  $00 ;;END                                      ;; 0d:43b1 $00

script_0015:
    db  $00 ;;END                                      ;; 0d:43b2 $00

script_0016:
    db  $00 ;;END                                      ;; 0d:43b3 $00

script_0017:
    db  $00 ;;END                                      ;; 0d:43b4 $00

script_0018:
    db  $00 ;;END                                      ;; 0d:43b5 $00

script_0019:
    db  $00 ;;END                                      ;; 0d:43b6 $00

script_001a:
    db  $00 ;;END                                      ;; 0d:43b7 $00

script_001b:
    db  $00 ;;END                                      ;; 0d:43b8 $00

script_001c:
    db  $00 ;;END                                      ;; 0d:43b9 $00

script_001d:
    db  $00 ;;END                                      ;; 0d:43ba $00

script_001e:
    db  $00 ;;END                                      ;; 0d:43bb $00

script_001f:
    db  $a9 ;;UNK_A9                                   ;; 0d:43bc $a9
    db  $08 ;;IF ? JR                                  ;; 0d:43bd $08
    db   $7f, $00, $03                                 ;; 0d:43be ...
    db  $ac ;;OPEN_MAP                                 ;; 0d:43c1 $ac
    db  $ad ;;WAIT_MAP_CLOSE                           ;; 0d:43c2 $ad
    db  $ae ;;CLOSE_MAP                                ;; 0d:43c3 $ae
    db  $00 ;;END                                      ;; 0d:43c4 $00

script_0020:
    db  $00 ;;END                                      ;; 0d:43c5 $00

script_0021:
    db  $00 ;;END                                      ;; 0d:43c6 $00

script_0022:
    db  $00 ;;END                                      ;; 0d:43c7 $00

script_0023:
    db  $00 ;;END                                      ;; 0d:43c8 $00

script_0024:
    db  $00 ;;END                                      ;; 0d:43c9 $00

script_0025:
    db  $00 ;;END                                      ;; 0d:43ca $00

script_0026:
    db  $00 ;;END                                      ;; 0d:43cb $00

script_0027:
    db  $00 ;;END                                      ;; 0d:43cc $00

script_0028:
    db  $00 ;;END                                      ;; 0d:43cd $00

script_0029:
    db  $00 ;;END                                      ;; 0d:43ce $00

script_002a:
    db  $00 ;;END                                      ;; 0d:43cf $00

script_002b:
    db  $00 ;;END                                      ;; 0d:43d0 $00

script_002c:
    db  $00 ;;END                                      ;; 0d:43d1 $00

script_002d:
    db  $00 ;;END                                      ;; 0d:43d2 $00

script_002e:
    db  $00 ;;END                                      ;; 0d:43d3 $00

script_002f:
    db  $00 ;;END                                      ;; 0d:43d4 $00

script_0030:
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:43d5 $fc
    db   $00                                           ;; 0d:43d6 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:43d7 $fd
    db   $00                                           ;; 0d:43d8 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:43d9 $fd
    db   $01                                           ;; 0d:43da .
    db  $00 ;;END                                      ;; 0d:43db $00

script_003d:
    db  $00 ;;END                                      ;; 0d:43dc $00

script_003e:
    db  $00 ;;END                                      ;; 0d:43dd $00

script_003f:
    db  $00 ;;END                                      ;; 0d:43de $00

script_0040:
    db  $08 ;;IF ? JR                                  ;; 0d:43df $08
    db   $87, $00, $06                                 ;; 0d:43e0 ...
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:43e3 $fc
    db   $00                                           ;; 0d:43e4 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:43e5 $fd
    db   $00                                           ;; 0d:43e6 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:43e7 $fd
    db   $01                                           ;; 0d:43e8 .
    db  $00 ;;END                                      ;; 0d:43e9 $00

script_0041:
    db  $00 ;;END                                      ;; 0d:43ea $00

script_0042:
    db  $00 ;;END                                      ;; 0d:43eb $00

script_0043:
    db  $08 ;;IF ? JR                                  ;; 0d:43ec $08
    db   $87, $00, $06                                 ;; 0d:43ed ...
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:43f0 $fc
    db   $01                                           ;; 0d:43f1 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:43f2 $fd
    db   $00                                           ;; 0d:43f3 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:43f4 $fd
    db   $01                                           ;; 0d:43f5 .
    db  $00 ;;END                                      ;; 0d:43f6 $00

script_0044:
    db  $00 ;;END                                      ;; 0d:43f7 $00

script_0045:
    db  $00 ;;END                                      ;; 0d:43f8 $00

script_0046:
    db  $08 ;;IF ? JR                                  ;; 0d:43f9 $08
    db   $87, $00, $04                                 ;; 0d:43fa ...
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:43fd $fc
    db   $00                                           ;; 0d:43fe .
    db  $fd ;;SPAWN_NPC                                ;; 0d:43ff $fd
    db   $02                                           ;; 0d:4400 .
    db  $00 ;;END                                      ;; 0d:4401 $00

script_0047:
    db  $00 ;;END                                      ;; 0d:4402 $00

script_0048:
    db  $00 ;;END                                      ;; 0d:4403 $00

script_0049:
    db  $08 ;;IF ? JR                                  ;; 0d:4404 $08
    db   $87, $00, $06                                 ;; 0d:4405 ...
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:4408 $fc
    db   $02                                           ;; 0d:4409 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:440a $fd
    db   $01                                           ;; 0d:440b .
    db  $fd ;;SPAWN_NPC                                ;; 0d:440c $fd
    db   $00                                           ;; 0d:440d .
    db  $00 ;;END                                      ;; 0d:440e $00

script_004a:
    db  $00 ;;END                                      ;; 0d:440f $00

script_004b:
    db  $00 ;;END                                      ;; 0d:4410 $00

script_004c:
    db  $08 ;;IF ? JR                                  ;; 0d:4411 $08
    db   $87, $00, $06                                 ;; 0d:4412 ...
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:4415 $fc
    db   $03                                           ;; 0d:4416 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4417 $fd
    db   $00                                           ;; 0d:4418 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4419 $fd
    db   $01                                           ;; 0d:441a .
    db  $00 ;;END                                      ;; 0d:441b $00

script_004d:
    db  $00 ;;END                                      ;; 0d:441c $00

script_004e:
    db  $00 ;;END                                      ;; 0d:441d $00

script_004f:
    db  $08 ;;IF ? JR                                  ;; 0d:441e $08
    db   $87, $00, $04                                 ;; 0d:441f ...
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:4422 $fc
    db   $08                                           ;; 0d:4423 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4424 $fd
    db   $00                                           ;; 0d:4425 .
    db  $00 ;;END                                      ;; 0d:4426 $00

script_0050:
    db  $00 ;;END                                      ;; 0d:4427 $00

script_0051:
    db  $00 ;;END                                      ;; 0d:4428 $00

script_0052:
    db  $08 ;;IF ? JR                                  ;; 0d:4429 $08
    db   $87, $00, $04                                 ;; 0d:442a ...
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:442d $fc
    db   $09                                           ;; 0d:442e .
    db  $fd ;;SPAWN_NPC                                ;; 0d:442f $fd
    db   $00                                           ;; 0d:4430 .
    db  $00 ;;END                                      ;; 0d:4431 $00

script_0053:
    db  $00 ;;END                                      ;; 0d:4432 $00

script_0054:
    db  $00 ;;END                                      ;; 0d:4433 $00

script_0055:
    db  $08 ;;IF ? JR                                  ;; 0d:4434 $08
    db   $87, $00, $04                                 ;; 0d:4435 ...
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:4438 $fc
    db   $09                                           ;; 0d:4439 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:443a $fd
    db   $01                                           ;; 0d:443b .
    db  $00 ;;END                                      ;; 0d:443c $00

script_0056:
    db  $00 ;;END                                      ;; 0d:443d $00

script_0057:
    db  $00 ;;END                                      ;; 0d:443e $00

script_0058:
    db  $08 ;;IF ? JR                                  ;; 0d:443f $08
    db   $87, $00, $06                                 ;; 0d:4440 ...
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:4443 $fc
    db   $0b                                           ;; 0d:4444 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4445 $fd
    db   $01                                           ;; 0d:4446 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4447 $fd
    db   $02                                           ;; 0d:4448 .
    db  $00 ;;END                                      ;; 0d:4449 $00

script_0059:
    db  $00 ;;END                                      ;; 0d:444a $00

script_005a:
    db  $00 ;;END                                      ;; 0d:444b $00

script_005b:
    db  $08 ;;IF ? JR                                  ;; 0d:444c $08
    db   $87, $00, $06                                 ;; 0d:444d ...
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:4450 $fc
    db   $0d                                           ;; 0d:4451 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4452 $fd
    db   $00                                           ;; 0d:4453 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4454 $fd
    db   $01                                           ;; 0d:4455 .
    db  $00 ;;END                                      ;; 0d:4456 $00

script_005c:
    db  $00 ;;END                                      ;; 0d:4457 $00

script_005d:
    db  $00 ;;END                                      ;; 0d:4458 $00

script_005e:
    db  $08 ;;IF ? JR                                  ;; 0d:4459 $08
    db   $87, $00, $04                                 ;; 0d:445a ...
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:445d $fc
    db   $0d                                           ;; 0d:445e .
    db  $fd ;;SPAWN_NPC                                ;; 0d:445f $fd
    db   $02                                           ;; 0d:4460 .
    db  $00 ;;END                                      ;; 0d:4461 $00

script_005f:
    db  $00 ;;END                                      ;; 0d:4462 $00

script_0060:
    db  $00 ;;END                                      ;; 0d:4463 $00

script_0061:
    db  $08 ;;IF ? JR                                  ;; 0d:4464 $08
    db   $87, $00, $06                                 ;; 0d:4465 ...
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:4468 $fc
    db   $12                                           ;; 0d:4469 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:446a $fd
    db   $00                                           ;; 0d:446b .
    db  $fd ;;SPAWN_NPC                                ;; 0d:446c $fd
    db   $01                                           ;; 0d:446d .
    db  $00 ;;END                                      ;; 0d:446e $00

script_0062:
    db  $00 ;;END                                      ;; 0d:446f $00

script_0063:
    db  $00 ;;END                                      ;; 0d:4470 $00

script_0064:
    db  $08 ;;IF ? JR                                  ;; 0d:4471 $08
    db   $87, $00, $06                                 ;; 0d:4472 ...
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:4475 $fc
    db   $13                                           ;; 0d:4476 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4477 $fd
    db   $00                                           ;; 0d:4478 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4479 $fd
    db   $01                                           ;; 0d:447a .
    db  $db ;;CLEAR_FLAG                               ;; 0d:447b $db
    db   $78                                           ;; 0d:447c .
    db  $db ;;CLEAR_FLAG                               ;; 0d:447d $db
    db   $79                                           ;; 0d:447e .
    db  $00 ;;END                                      ;; 0d:447f $00

script_0065:
    db  $00 ;;END                                      ;; 0d:4480 $00

script_0066:
    db  $00 ;;END                                      ;; 0d:4481 $00

script_0067:
    db  $08 ;;IF ? JR                                  ;; 0d:4482 $08
    db   $87, $00, $06                                 ;; 0d:4483 ...
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:4486 $fc
    db   $12                                           ;; 0d:4487 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4488 $fd
    db   $01                                           ;; 0d:4489 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:448a $fd
    db   $02                                           ;; 0d:448b .
    db  $00 ;;END                                      ;; 0d:448c $00

script_0068:
    db  $00 ;;END                                      ;; 0d:448d $00

script_0069:
    db  $00 ;;END                                      ;; 0d:448e $00

script_006a:
    db  $08 ;;IF ? JR                                  ;; 0d:448f $08
    db   $87, $00, $06                                 ;; 0d:4490 ...
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:4493 $fc
    db   $18                                           ;; 0d:4494 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4495 $fd
    db   $00                                           ;; 0d:4496 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4497 $fd
    db   $01                                           ;; 0d:4498 .
    db  $00 ;;END                                      ;; 0d:4499 $00

script_006b:
    db  $00 ;;END                                      ;; 0d:449a $00

script_006c:
    db  $00 ;;END                                      ;; 0d:449b $00

script_006d:
    db  $08 ;;IF ? JR                                  ;; 0d:449c $08
    db   $87, $00, $04                                 ;; 0d:449d ...
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:44a0 $fc
    db   $18                                           ;; 0d:44a1 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:44a2 $fd
    db   $02                                           ;; 0d:44a3 .
    db  $00 ;;END                                      ;; 0d:44a4 $00

script_006e:
    db  $00 ;;END                                      ;; 0d:44a5 $00

script_006f:
    db  $00 ;;END                                      ;; 0d:44a6 $00

script_0070:
    db  $08 ;;IF ? JR                                  ;; 0d:44a7 $08
    db   $87, $00, $04                                 ;; 0d:44a8 ...
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:44ab $fc
    db   $19                                           ;; 0d:44ac .
    db  $fd ;;SPAWN_NPC                                ;; 0d:44ad $fd
    db   $00                                           ;; 0d:44ae .
    db  $00 ;;END                                      ;; 0d:44af $00

script_0071:
    db  $00 ;;END                                      ;; 0d:44b0 $00

script_0072:
    db  $00 ;;END                                      ;; 0d:44b1 $00

script_0073:
    db  $08 ;;IF ? JR                                  ;; 0d:44b2 $08
    db   $87, $00, $06                                 ;; 0d:44b3 ...
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:44b6 $fc
    db   $19                                           ;; 0d:44b7 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:44b8 $fd
    db   $01                                           ;; 0d:44b9 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:44ba $fd
    db   $02                                           ;; 0d:44bb .
    db  $00 ;;END                                      ;; 0d:44bc $00

script_0074:
    db  $00 ;;END                                      ;; 0d:44bd $00

script_0075:
    db  $00 ;;END                                      ;; 0d:44be $00

script_0076:
    db  $08 ;;IF ? JR                                  ;; 0d:44bf $08
    db   $87, $00, $06                                 ;; 0d:44c0 ...
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:44c3 $fc
    db   $1c                                           ;; 0d:44c4 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:44c5 $fd
    db   $00                                           ;; 0d:44c6 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:44c7 $fd
    db   $01                                           ;; 0d:44c8 .
    db  $00 ;;END                                      ;; 0d:44c9 $00

script_0077:
    db  $00 ;;END                                      ;; 0d:44ca $00

script_0078:
    db  $00 ;;END                                      ;; 0d:44cb $00

script_0079:
    db  $08 ;;IF ? JR                                  ;; 0d:44cc $08
    db   $87, $00, $04                                 ;; 0d:44cd ...
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:44d0 $fc
    db   $1d                                           ;; 0d:44d1 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:44d2 $fd
    db   $00                                           ;; 0d:44d3 .
    db  $00 ;;END                                      ;; 0d:44d4 $00

script_007a:
    db  $00 ;;END                                      ;; 0d:44d5 $00

script_007b:
    db  $00 ;;END                                      ;; 0d:44d6 $00

script_007c:
    db  $08 ;;IF ? JR                                  ;; 0d:44d7 $08
    db   $87, $00, $04                                 ;; 0d:44d8 ...
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:44db $fc
    db   $1c                                           ;; 0d:44dc .
    db  $fd ;;SPAWN_NPC                                ;; 0d:44dd $fd
    db   $02                                           ;; 0d:44de .
    db  $00 ;;END                                      ;; 0d:44df $00

script_007d:
    db  $00 ;;END                                      ;; 0d:44e0 $00

script_007e:
    db  $00 ;;END                                      ;; 0d:44e1 $00

script_007f:
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:44e2 $fc
    db   $04                                           ;; 0d:44e3 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:44e4 $fd
    db   $00                                           ;; 0d:44e5 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:44e6 $fd
    db   $01                                           ;; 0d:44e7 .
    db  $db ;;CLEAR_FLAG                               ;; 0d:44e8 $db
    db   $78                                           ;; 0d:44e9 .
    db  $db ;;CLEAR_FLAG                               ;; 0d:44ea $db
    db   $79                                           ;; 0d:44eb .
    db  $00 ;;END                                      ;; 0d:44ec $00

script_0080:
    db  $00 ;;END                                      ;; 0d:44ed $00

script_0081:
    db  $00 ;;END                                      ;; 0d:44ee $00

script_0082:
    db  $08 ;;IF ? JR                                  ;; 0d:44ef $08
    db   $87, $00, $06                                 ;; 0d:44f0 ...
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:44f3 $fc
    db   $05                                           ;; 0d:44f4 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:44f5 $fd
    db   $00                                           ;; 0d:44f6 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:44f7 $fd
    db   $01                                           ;; 0d:44f8 .
    db  $00 ;;END                                      ;; 0d:44f9 $00

script_0083:
    db  $00 ;;END                                      ;; 0d:44fa $00

script_0084:
    db  $00 ;;END                                      ;; 0d:44fb $00

script_0085:
    db  $08 ;;IF ? JR                                  ;; 0d:44fc $08
    db   $87, $00, $06                                 ;; 0d:44fd ...
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:4500 $fc
    db   $06                                           ;; 0d:4501 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4502 $fd
    db   $00                                           ;; 0d:4503 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4504 $fd
    db   $01                                           ;; 0d:4505 .
    db  $00 ;;END                                      ;; 0d:4506 $00

script_0086:
    db  $00 ;;END                                      ;; 0d:4507 $00

script_0087:
    db  $00 ;;END                                      ;; 0d:4508 $00

script_0088:
    db  $08 ;;IF ? JR                                  ;; 0d:4509 $08
    db   $87, $00, $06                                 ;; 0d:450a ...
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:450d $fc
    db   $07                                           ;; 0d:450e .
    db  $fd ;;SPAWN_NPC                                ;; 0d:450f $fd
    db   $00                                           ;; 0d:4510 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4511 $fd
    db   $01                                           ;; 0d:4512 .
    db  $00 ;;END                                      ;; 0d:4513 $00

script_0089:
    db  $00 ;;END                                      ;; 0d:4514 $00

script_008a:
    db  $00 ;;END                                      ;; 0d:4515 $00

script_008b:
    db  $08 ;;IF ? JR                                  ;; 0d:4516 $08
    db   $87, $00, $04                                 ;; 0d:4517 ...
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:451a $fc
    db   $0a                                           ;; 0d:451b .
    db  $fd ;;SPAWN_NPC                                ;; 0d:451c $fd
    db   $00                                           ;; 0d:451d .
    db  $00 ;;END                                      ;; 0d:451e $00

script_008c:
    db  $00 ;;END                                      ;; 0d:451f $00

script_008d:
    db  $00 ;;END                                      ;; 0d:4520 $00

script_008e:
    db  $08 ;;IF ? JR                                  ;; 0d:4521 $08
    db   $87, $00, $06                                 ;; 0d:4522 ...
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:4525 $fc
    db   $0a                                           ;; 0d:4526 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4527 $fd
    db   $01                                           ;; 0d:4528 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4529 $fd
    db   $02                                           ;; 0d:452a .
    db  $db ;;CLEAR_FLAG                               ;; 0d:452b $db
    db   $78                                           ;; 0d:452c .
    db  $00 ;;END                                      ;; 0d:452d $00

script_008f:
    db  $00 ;;END                                      ;; 0d:452e $00

script_0090:
    db  $00 ;;END                                      ;; 0d:452f $00

script_0091:
    db  $08 ;;IF ? JR                                  ;; 0d:4530 $08
    db   $87, $00, $04                                 ;; 0d:4531 ...
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:4534 $fc
    db   $0c                                           ;; 0d:4535 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4536 $fd
    db   $00                                           ;; 0d:4537 .
    db  $00 ;;END                                      ;; 0d:4538 $00

script_0092:
    db  $00 ;;END                                      ;; 0d:4539 $00

script_0093:
    db  $00 ;;END                                      ;; 0d:453a $00

script_0094:
    db  $08 ;;IF ? JR                                  ;; 0d:453b $08
    db   $87, $00, $04                                 ;; 0d:453c ...
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:453f $fc
    db   $0c                                           ;; 0d:4540 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4541 $fd
    db   $02                                           ;; 0d:4542 .
    db  $00 ;;END                                      ;; 0d:4543 $00

script_0095:
    db  $00 ;;END                                      ;; 0d:4544 $00

script_0096:
    db  $00 ;;END                                      ;; 0d:4545 $00

script_0097:
    db  $08 ;;IF ? JR                                  ;; 0d:4546 $08
    db   $87, $00, $06                                 ;; 0d:4547 ...
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:454a $fc
    db   $0e                                           ;; 0d:454b .
    db  $fd ;;SPAWN_NPC                                ;; 0d:454c $fd
    db   $01                                           ;; 0d:454d .
    db  $fd ;;SPAWN_NPC                                ;; 0d:454e $fd
    db   $02                                           ;; 0d:454f .
    db  $db ;;CLEAR_FLAG                               ;; 0d:4550 $db
    db   $78                                           ;; 0d:4551 .
    db  $db ;;CLEAR_FLAG                               ;; 0d:4552 $db
    db   $79                                           ;; 0d:4553 .
    db  $00 ;;END                                      ;; 0d:4554 $00

script_0098:
    db  $00 ;;END                                      ;; 0d:4555 $00

script_0099:
    db  $00 ;;END                                      ;; 0d:4556 $00

script_009a:
    db  $08 ;;IF ? JR                                  ;; 0d:4557 $08
    db   $87, $00, $06                                 ;; 0d:4558 ...
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:455b $fc
    db   $0f                                           ;; 0d:455c .
    db  $fd ;;SPAWN_NPC                                ;; 0d:455d $fd
    db   $01                                           ;; 0d:455e .
    db  $fd ;;SPAWN_NPC                                ;; 0d:455f $fd
    db   $02                                           ;; 0d:4560 .
    db  $00 ;;END                                      ;; 0d:4561 $00

script_009b:
    db  $00 ;;END                                      ;; 0d:4562 $00

script_009c:
    db  $00 ;;END                                      ;; 0d:4563 $00

script_009d:
    db  $08 ;;IF ? JR                                  ;; 0d:4564 $08
    db   $87, $00, $06                                 ;; 0d:4565 ...
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:4568 $fc
    db   $10                                           ;; 0d:4569 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:456a $fd
    db   $01                                           ;; 0d:456b .
    db  $fd ;;SPAWN_NPC                                ;; 0d:456c $fd
    db   $02                                           ;; 0d:456d .
    db  $db ;;CLEAR_FLAG                               ;; 0d:456e $db
    db   $78                                           ;; 0d:456f .
    db  $db ;;CLEAR_FLAG                               ;; 0d:4570 $db
    db   $79                                           ;; 0d:4571 .
    db  $db ;;CLEAR_FLAG                               ;; 0d:4572 $db
    db   $7a                                           ;; 0d:4573 .
    db  $db ;;CLEAR_FLAG                               ;; 0d:4574 $db
    db   $7b                                           ;; 0d:4575 .
    db  $00 ;;END                                      ;; 0d:4576 $00

script_009e:
    db  $00 ;;END                                      ;; 0d:4577 $00

script_009f:
    db  $00 ;;END                                      ;; 0d:4578 $00

script_00a0:
    db  $08 ;;IF ? JR                                  ;; 0d:4579 $08
    db   $87, $00, $04                                 ;; 0d:457a ...
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:457d $fc
    db   $11                                           ;; 0d:457e .
    db  $fd ;;SPAWN_NPC                                ;; 0d:457f $fd
    db   $02                                           ;; 0d:4580 .
    db  $00 ;;END                                      ;; 0d:4581 $00

script_00a1:
    db  $00 ;;END                                      ;; 0d:4582 $00

script_00a2:
    db  $00 ;;END                                      ;; 0d:4583 $00

script_00a3:
    db  $08 ;;IF ? JR                                  ;; 0d:4584 $08
    db   $87, $00, $06                                 ;; 0d:4585 ...
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:4588 $fc
    db   $14                                           ;; 0d:4589 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:458a $fd
    db   $00                                           ;; 0d:458b .
    db  $fd ;;SPAWN_NPC                                ;; 0d:458c $fd
    db   $01                                           ;; 0d:458d .
    db  $00 ;;END                                      ;; 0d:458e $00

script_00a4:
    db  $00 ;;END                                      ;; 0d:458f $00

script_00a5:
    db  $00 ;;END                                      ;; 0d:4590 $00

script_00a6:
    db  $08 ;;IF ? JR                                  ;; 0d:4591 $08
    db   $87, $00, $04                                 ;; 0d:4592 ...
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:4595 $fc
    db   $08                                           ;; 0d:4596 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4597 $fd
    db   $01                                           ;; 0d:4598 .
    db  $00 ;;END                                      ;; 0d:4599 $00

script_00a7:
    db  $00 ;;END                                      ;; 0d:459a $00

script_00a8:
    db  $00 ;;END                                      ;; 0d:459b $00

script_00a9:
    db  $08 ;;IF ? JR                                  ;; 0d:459c $08
    db   $87, $00, $06                                 ;; 0d:459d ...
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:45a0 $fc
    db   $16                                           ;; 0d:45a1 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:45a2 $fd
    db   $01                                           ;; 0d:45a3 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:45a4 $fd
    db   $02                                           ;; 0d:45a5 .
    db  $db ;;CLEAR_FLAG                               ;; 0d:45a6 $db
    db   $78                                           ;; 0d:45a7 .
    db  $db ;;CLEAR_FLAG                               ;; 0d:45a8 $db
    db   $79                                           ;; 0d:45a9 .
    db  $00 ;;END                                      ;; 0d:45aa $00

script_00aa:
    db  $00 ;;END                                      ;; 0d:45ab $00

script_00ab:
    db  $00 ;;END                                      ;; 0d:45ac $00

script_00ac:
    db  $08 ;;IF ? JR                                  ;; 0d:45ad $08
    db   $87, $00, $04                                 ;; 0d:45ae ...
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:45b1 $fc
    db   $17                                           ;; 0d:45b2 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:45b3 $fd
    db   $00                                           ;; 0d:45b4 .
    db  $00 ;;END                                      ;; 0d:45b5 $00

script_00ad:
    db  $00 ;;END                                      ;; 0d:45b6 $00

script_00ae:
    db  $00 ;;END                                      ;; 0d:45b7 $00

script_00af:
    db  $e7 ;;UNK_E7                                   ;; 0d:45b8 $e7
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:45b9 $fc
    db   $05                                           ;; 0d:45ba .
    db  $fd ;;SPAWN_NPC                                ;; 0d:45bb $fd
    db   $00                                           ;; 0d:45bc .
    db  $fd ;;SPAWN_NPC                                ;; 0d:45bd $fd
    db   $00                                           ;; 0d:45be .
    db  $fd ;;SPAWN_NPC                                ;; 0d:45bf $fd
    db   $00                                           ;; 0d:45c0 .
    db  $00 ;;END                                      ;; 0d:45c1 $00

script_00b0:
    db  $00 ;;END                                      ;; 0d:45c2 $00

script_00b1:
    db  $08 ;;IF ? JR                                  ;; 0d:45c3 $08
    db   $cf, $00, $07                                 ;; 0d:45c4 ...
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:45c7 $fc
    db   $59                                           ;; 0d:45c8 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:45c9 $fd
    db   $02                                           ;; 0d:45ca .
    db  $ca ;;UNK_CA                                   ;; 0d:45cb $ca
    db   $04, $5e                                      ;; 0d:45cc ..
    db  $e6 ;;UNK_E6                                   ;; 0d:45ce $e6
    db  $00 ;;END                                      ;; 0d:45cf $00

script_00b2:
    db  $08 ;;IF ? JR                                  ;; 0d:45d0 $08
    db   $87, $00, $04                                 ;; 0d:45d1 ...
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:45d4 $fc
    db   $1a                                           ;; 0d:45d5 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:45d6 $fd
    db   $01                                           ;; 0d:45d7 .
    db  $00 ;;END                                      ;; 0d:45d8 $00

script_00b3:
    db  $00 ;;END                                      ;; 0d:45d9 $00

script_00b4:
    db  $00 ;;END                                      ;; 0d:45da $00

script_00b5:
    db  $08 ;;IF ? JR                                  ;; 0d:45db $08
    db   $87, $00, $06                                 ;; 0d:45dc ...
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:45df $fc
    db   $1b                                           ;; 0d:45e0 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:45e1 $fd
    db   $00                                           ;; 0d:45e2 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:45e3 $fd
    db   $01                                           ;; 0d:45e4 .
    db  $00 ;;END                                      ;; 0d:45e5 $00

script_00b6:
    db  $00 ;;END                                      ;; 0d:45e6 $00

script_00b7:
    db  $00 ;;END                                      ;; 0d:45e7 $00

script_00b8:
    db  $08 ;;IF ? JR                                  ;; 0d:45e8 $08
    db   $87, $00, $06                                 ;; 0d:45e9 ...
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:45ec $fc
    db   $1e                                           ;; 0d:45ed .
    db  $fd ;;SPAWN_NPC                                ;; 0d:45ee $fd
    db   $00                                           ;; 0d:45ef .
    db  $fd ;;SPAWN_NPC                                ;; 0d:45f0 $fd
    db   $01                                           ;; 0d:45f1 .
    db  $00 ;;END                                      ;; 0d:45f2 $00

script_00b9:
    db  $00 ;;END                                      ;; 0d:45f3 $00

script_00ba:
    db  $00 ;;END                                      ;; 0d:45f4 $00

script_00bb:
    db  $08 ;;IF ? JR                                  ;; 0d:45f5 $08
    db   $87, $00, $04                                 ;; 0d:45f6 ...
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:45f9 $fc
    db   $1a                                           ;; 0d:45fa .
    db  $fd ;;SPAWN_NPC                                ;; 0d:45fb $fd
    db   $00                                           ;; 0d:45fc .
    db  $00 ;;END                                      ;; 0d:45fd $00

script_00bc:
    db  $00 ;;END                                      ;; 0d:45fe $00

script_00bd:
    db  $00 ;;END                                      ;; 0d:45ff $00

script_00be:
    db  $08 ;;IF ? JR                                  ;; 0d:4600 $08
    db   $87, $00, $06                                 ;; 0d:4601 ...
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:4604 $fc
    db   $1f                                           ;; 0d:4605 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4606 $fd
    db   $00                                           ;; 0d:4607 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4608 $fd
    db   $01                                           ;; 0d:4609 .
    db  $00 ;;END                                      ;; 0d:460a $00

script_00bf:
    db  $00 ;;END                                      ;; 0d:460b $00

script_00c0:
    db  $00 ;;END                                      ;; 0d:460c $00

script_00c1:
    db  $08 ;;IF ? JR                                  ;; 0d:460d $08
    db   $87, $00, $04                                 ;; 0d:460e ...
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:4611 $fc
    db   $1f                                           ;; 0d:4612 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4613 $fd
    db   $02                                           ;; 0d:4614 .
    db  $00 ;;END                                      ;; 0d:4615 $00

script_00c2:
    db  $00 ;;END                                      ;; 0d:4616 $00

script_00c3:
    db  $00 ;;END                                      ;; 0d:4617 $00

script_00c4:
    db  $08 ;;IF ? JR                                  ;; 0d:4618 $08
    db   $87, $00, $06                                 ;; 0d:4619 ...
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:461c $fc
    db   $20                                           ;; 0d:461d .
    db  $fd ;;SPAWN_NPC                                ;; 0d:461e $fd
    db   $01                                           ;; 0d:461f .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4620 $fd
    db   $02                                           ;; 0d:4621 .
    db  $db ;;CLEAR_FLAG                               ;; 0d:4622 $db
    db   $78                                           ;; 0d:4623 .
    db  $db ;;CLEAR_FLAG                               ;; 0d:4624 $db
    db   $79                                           ;; 0d:4625 .
    db  $db ;;CLEAR_FLAG                               ;; 0d:4626 $db
    db   $7a                                           ;; 0d:4627 .
    db  $db ;;CLEAR_FLAG                               ;; 0d:4628 $db
    db   $7b                                           ;; 0d:4629 .
    db  $00 ;;END                                      ;; 0d:462a $00

script_00c5:
    db  $00 ;;END                                      ;; 0d:462b $00

script_00c6:
    db  $00 ;;END                                      ;; 0d:462c $00

script_00c7:
    db  $08 ;;IF ? JR                                  ;; 0d:462d $08
    db   $87, $00, $06                                 ;; 0d:462e ...
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:4631 $fc
    db   $21                                           ;; 0d:4632 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4633 $fd
    db   $00                                           ;; 0d:4634 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4635 $fd
    db   $01                                           ;; 0d:4636 .
    db  $00 ;;END                                      ;; 0d:4637 $00

script_00c8:
    db  $00 ;;END                                      ;; 0d:4638 $00

script_00c9:
    db  $00 ;;END                                      ;; 0d:4639 $00

script_00ca:
    db  $08 ;;IF ? JR                                  ;; 0d:463a $08
    db   $87, $00, $04                                 ;; 0d:463b ...
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:463e $fc
    db   $22                                           ;; 0d:463f .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4640 $fd
    db   $00                                           ;; 0d:4641 .
    db  $00 ;;END                                      ;; 0d:4642 $00

script_00cb:
    db  $00 ;;END                                      ;; 0d:4643 $00

script_00cc:
    db  $00 ;;END                                      ;; 0d:4644 $00

script_00cd:
    db  $08 ;;IF ? JR                                  ;; 0d:4645 $08
    db   $87, $00, $04                                 ;; 0d:4646 ...
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:4649 $fc
    db   $22                                           ;; 0d:464a .
    db  $fd ;;SPAWN_NPC                                ;; 0d:464b $fd
    db   $01                                           ;; 0d:464c .
    db  $00 ;;END                                      ;; 0d:464d $00

script_00ce:
    db  $00 ;;END                                      ;; 0d:464e $00

script_00cf:
    db  $00 ;;END                                      ;; 0d:464f $00

script_00d0:
    db  $08 ;;IF ? JR                                  ;; 0d:4650 $08
    db   $87, $00, $04                                 ;; 0d:4651 ...
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:4654 $fc
    db   $23                                           ;; 0d:4655 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4656 $fd
    db   $01                                           ;; 0d:4657 .
    db  $00 ;;END                                      ;; 0d:4658 $00

script_00d1:
    db  $00 ;;END                                      ;; 0d:4659 $00

script_00d2:
    db  $00 ;;END                                      ;; 0d:465a $00

script_00d3:
    db  $08 ;;IF ? JR                                  ;; 0d:465b $08
    db   $87, $00, $04                                 ;; 0d:465c ...
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:465f $fc
    db   $23                                           ;; 0d:4660 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4661 $fd
    db   $02                                           ;; 0d:4662 .
    db  $00 ;;END                                      ;; 0d:4663 $00

script_00d4:
    db  $00 ;;END                                      ;; 0d:4664 $00

script_00d5:
    db  $00 ;;END                                      ;; 0d:4665 $00

script_00d6:
    db  $db ;;CLEAR_FLAG                               ;; 0d:4666 $db
    db   $78                                           ;; 0d:4667 .
    db  $08 ;;IF ? JR                                  ;; 0d:4668 $08
    db   $87, $00, $10                                 ;; 0d:4669 ...
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:466c $fc
    db   $03                                           ;; 0d:466d .
    db  $08 ;;IF ? JR                                  ;; 0d:466e $08
    db   $8d, $00, $06                                 ;; 0d:466f ...
    db  $fd ;;SPAWN_NPC                                ;; 0d:4672 $fd
    db   $00                                           ;; 0d:4673 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4674 $fd
    db   $01                                           ;; 0d:4675 .
    db  $01 ;;JR                                       ;; 0d:4676 $01
    db   $04                                           ;; 0d:4677 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4678 $fd
    db   $02                                           ;; 0d:4679 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:467a $fd
    db   $02                                           ;; 0d:467b .
    db  $00 ;;END                                      ;; 0d:467c $00

script_00d7:
    db  $00 ;;END                                      ;; 0d:467d $00

script_00d8:
    db  $08 ;;IF ? JR                                  ;; 0d:467e $08
    db   $0d, $00, $0b                                 ;; 0d:467f ...
    db  $08 ;;IF ? JR                                  ;; 0d:4682 $08
    db   $f8, $00, $07                                 ;; 0d:4683 ...
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:4686 $fc
    db   $59                                           ;; 0d:4687 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4688 $fd
    db   $00                                           ;; 0d:4689 .
    db  $c9 ;;UNK_C9                                   ;; 0d:468a $c9
    db   $04, $41                                      ;; 0d:468b ..
    db  $da ;;SET_FLAG                                 ;; 0d:468d $da
    db   $78                                           ;; 0d:468e .
    db  $00 ;;END                                      ;; 0d:468f $00

script_00d9:
    db  $e1 ;;UNK_E1                                   ;; 0d:4690 $e1
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:4691 $fc
    db   $0e                                           ;; 0d:4692 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4693 $fd
    db   $02                                           ;; 0d:4694 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4695 $fd
    db   $02                                           ;; 0d:4696 .
    db  $00 ;;END                                      ;; 0d:4697 $00

script_00da:
    db  $00 ;;END                                      ;; 0d:4698 $00

script_00db:
    db  $08 ;;IF ? JR                                  ;; 0d:4699 $08
    db   $b9, $00, $07                                 ;; 0d:469a ...
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:469d $fc
    db   $59                                           ;; 0d:469e .
    db  $fd ;;SPAWN_NPC                                ;; 0d:469f $fd
    db   $00                                           ;; 0d:46a0 .
    db  $c9 ;;UNK_C9                                   ;; 0d:46a1 $c9
    db   $04, $5f                                      ;; 0d:46a2 ..
    db  $e0 ;;UNK_E0                                   ;; 0d:46a4 $e0
    db  $00 ;;END                                      ;; 0d:46a5 $00

script_00dc:
    db  $e7 ;;UNK_E7                                   ;; 0d:46a6 $e7
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:46a7 $fc
    db   $0a                                           ;; 0d:46a8 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:46a9 $fd
    db   $01                                           ;; 0d:46aa .
    db  $fd ;;SPAWN_NPC                                ;; 0d:46ab $fd
    db   $01                                           ;; 0d:46ac .
    db  $00 ;;END                                      ;; 0d:46ad $00

script_00dd:
    db  $00 ;;END                                      ;; 0d:46ae $00

script_00de:
    db  $08 ;;IF ? JR                                  ;; 0d:46af $08
    db   $bf, $00, $07                                 ;; 0d:46b0 ...
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:46b3 $fc
    db   $59                                           ;; 0d:46b4 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:46b5 $fd
    db   $00                                           ;; 0d:46b6 .
    db  $c9 ;;UNK_C9                                   ;; 0d:46b7 $c9
    db   $04, $60                                      ;; 0d:46b8 ..
    db  $e6 ;;UNK_E6                                   ;; 0d:46ba $e6
    db  $00 ;;END                                      ;; 0d:46bb $00

script_00e0:
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:46bc $fc
    db   $24                                           ;; 0d:46bd .
    db  $fd ;;SPAWN_NPC                                ;; 0d:46be $fd
    db   $02                                           ;; 0d:46bf .
    db  $00 ;;END                                      ;; 0d:46c0 $00

script_00e1:
    db  $00 ;;END                                      ;; 0d:46c1 $00

script_00e2:
    db  $00 ;;END                                      ;; 0d:46c2 $00

script_00e3:
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:46c3 $fc
    db   $25                                           ;; 0d:46c4 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:46c5 $fd
    db   $00                                           ;; 0d:46c6 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:46c7 $fd
    db   $02                                           ;; 0d:46c8 .
    db  $00 ;;END                                      ;; 0d:46c9 $00

script_00e4:
    db  $00 ;;END                                      ;; 0d:46ca $00

script_00e5:
    db  $00 ;;END                                      ;; 0d:46cb $00

script_00e6:
    db  $f8 ;;SET_MUSIC                                ;; 0d:46cc $f8
    db   $00                                           ;; 0d:46cd .
    db  $8a ;;SET_PLAYER_POSITION                      ;; 0d:46ce $8a
    db   $13, $0a                                      ;; 0d:46cf ..
    db  $87 ;;SET_PLAYER_DIRECTION_LEFT                ;; 0d:46d1 $87
    db  $03 ;;LOOP                                     ;; 0d:46d2 $03
    db   $0a, $02                                      ;; 0d:46d3 ..
    db  $80 ;;PLAYER_STEP_FORWARD                      ;; 0d:46d5 $80
    db  $00 ;;END                                      ;; 0d:46d6 $00
    db  $f9 ;;SFX                                      ;; 0d:46d7 $f9
    db   $10                                           ;; 0d:46d8 .
    db  $b0 ;;SET_ROOM_TILE                            ;; 0d:46d9 $b0
    db   $6c, $09, $05                                 ;; 0d:46da ...
    db  $f0 ;;DELAY                                    ;; 0d:46dd $f0
    db   $1e                                           ;; 0d:46de .
    db  $84 ;;SET_PLAYER_DIRECTION_UP                  ;; 0d:46df $84
    db  $f0 ;;DELAY                                    ;; 0d:46e0 $f0
    db   $14                                           ;; 0d:46e1 .
    db  $04 ;;MSG                                      ;; 0d:46e2 $04
    db   "<10>Now fight!", $00                         ;; 0d:46e3 ........
    db  $f0 ;;DELAY                                    ;; 0d:46eb $f0
    db   $46                                           ;; 0d:46ec .
    db  $04 ;;MSG                                      ;; 0d:46ed $04
    db   "<11>", $00                                   ;; 0d:46ee ..
    db  $f8 ;;SET_MUSIC                                ;; 0d:46f0 $f8
    db   $1a                                           ;; 0d:46f1 .
    db  $f0 ;;DELAY                                    ;; 0d:46f2 $f0
    db   $3c                                           ;; 0d:46f3 .
    db  $b0 ;;SET_ROOM_TILE                            ;; 0d:46f4 $b0
    db   $6a, $04, $01                                 ;; 0d:46f5 ...
    db  $b0 ;;SET_ROOM_TILE                            ;; 0d:46f8 $b0
    db   $6a, $05, $01                                 ;; 0d:46f9 ...
    db  $b0 ;;SET_ROOM_TILE                            ;; 0d:46fc $b0
    db   $6a, $04, $00                                 ;; 0d:46fd ...
    db  $b0 ;;SET_ROOM_TILE                            ;; 0d:4700 $b0
    db   $6a, $05, $00                                 ;; 0d:4701 ...
    db  $f9 ;;SFX                                      ;; 0d:4704 $f9
    db   $10                                           ;; 0d:4705 .
    db  $fe ;;SPAWN_BOSS                               ;; 0d:4706 $fe
    db   $10                                           ;; 0d:4707 .
    db  $f0 ;;DELAY                                    ;; 0d:4708 $f0
    db   $3c                                           ;; 0d:4709 .
    db  $b0 ;;SET_ROOM_TILE                            ;; 0d:470a $b0
    db   $0f, $04, $00                                 ;; 0d:470b ...
    db  $b0 ;;SET_ROOM_TILE                            ;; 0d:470e $b0
    db   $0f, $05, $00                                 ;; 0d:470f ...
    db  $b0 ;;SET_ROOM_TILE                            ;; 0d:4712 $b0
    db   $1f, $04, $01                                 ;; 0d:4713 ...
    db  $b0 ;;SET_ROOM_TILE                            ;; 0d:4716 $b0
    db   $1f, $05, $01                                 ;; 0d:4717 ...
    db  $f9 ;;SFX                                      ;; 0d:471a $f9
    db   $10                                           ;; 0d:471b .
    db  $00 ;;END                                      ;; 0d:471c $00

script_00e7:
    db  $00 ;;END                                      ;; 0d:471d $00

script_00e8:
    db  $08 ;;IF ? JR                                  ;; 0d:471e $08
    db   $08, $00, $16                                 ;; 0d:471f ...
    db  $f9 ;;SFX                                      ;; 0d:4722 $f9
    db   $10                                           ;; 0d:4723 .
    db  $b0 ;;SET_ROOM_TILE                            ;; 0d:4724 $b0
    db   $1f, $04, $00                                 ;; 0d:4725 ...
    db  $b0 ;;SET_ROOM_TILE                            ;; 0d:4728 $b0
    db   $1f, $05, $00                                 ;; 0d:4729 ...
    db  $b0 ;;SET_ROOM_TILE                            ;; 0d:472c $b0
    db   $6a, $04, $01                                 ;; 0d:472d ...
    db  $b0 ;;SET_ROOM_TILE                            ;; 0d:4730 $b0
    db   $6a, $05, $01                                 ;; 0d:4731 ...
    db  $f8 ;;SET_MUSIC                                ;; 0d:4734 $f8
    db   $0e                                           ;; 0d:4735 .
    db  $01 ;;JR                                       ;; 0d:4736 $01
    db   $05                                           ;; 0d:4737 .
    db  $f0 ;;DELAY                                    ;; 0d:4738 $f0
    db   $3c                                           ;; 0d:4739 .
    db  $02 ;;CALL                                     ;; 0d:473a $02
    db   $61, $29                                      ;; 0d:473b ..
    db  $00 ;;END                                      ;; 0d:473d $00

script_00e9:
    db  $08 ;;IF ? JR                                  ;; 0d:473e $08
    db   $28, $00, $08                                 ;; 0d:473f ...
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:4742 $fc
    db   $3e                                           ;; 0d:4743 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4744 $fd
    db   $01                                           ;; 0d:4745 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4746 $fd
    db   $02                                           ;; 0d:4747 .
    db  $01 ;;JR                                       ;; 0d:4748 $01
    db   $04                                           ;; 0d:4749 .
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:474a $fc
    db   $3b                                           ;; 0d:474b .
    db  $fd ;;SPAWN_NPC                                ;; 0d:474c $fd
    db   $01                                           ;; 0d:474d .
    db  $00 ;;END                                      ;; 0d:474e $00

script_00ea:
    db  $00 ;;END                                      ;; 0d:474f $00

script_00eb:
    db  $00 ;;END                                      ;; 0d:4750 $00

script_00ec:
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:4751 $fc
    db   $3c                                           ;; 0d:4752 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4753 $fd
    db   $01                                           ;; 0d:4754 .
    db  $00 ;;END                                      ;; 0d:4755 $00

script_00ed:
    db  $00 ;;END                                      ;; 0d:4756 $00

script_00ee:
    db  $00 ;;END                                      ;; 0d:4757 $00

script_00ef:
    db  $08 ;;IF ? JR                                  ;; 0d:4758 $08
    db   $2d, $00, $06                                 ;; 0d:4759 ...
    db  $02 ;;CALL                                     ;; 0d:475c $02
    db   $77, $4e                                      ;; 0d:475d ..
    db  $02 ;;CALL                                     ;; 0d:475f $02
    db   $77, $14                                      ;; 0d:4760 ..
    db  $08 ;;IF ? JR                                  ;; 0d:4762 $08
    db   $2c, $9f, $00, $09                            ;; 0d:4763 ....
    db  $02 ;;CALL                                     ;; 0d:4767 $02
    db   $64, $da                                      ;; 0d:4768 ..
    db  $02 ;;CALL                                     ;; 0d:476a $02
    db   $66, $80                                      ;; 0d:476b ..
    db  $02 ;;CALL                                     ;; 0d:476d $02
    db   $67, $54                                      ;; 0d:476e ..
    db  $08 ;;IF ? JR                                  ;; 0d:4770 $08
    db   $89, $00, $09                                 ;; 0d:4771 ...
    db  $02 ;;CALL                                     ;; 0d:4774 $02
    db   $62, $b2                                      ;; 0d:4775 ..
    db  $02 ;;CALL                                     ;; 0d:4777 $02
    db   $63, $de                                      ;; 0d:4778 ..
    db  $02 ;;CALL                                     ;; 0d:477a $02
    db   $64, $3a                                      ;; 0d:477b ..
    db  $00 ;;END                                      ;; 0d:477d $00

script_00f0:
    db  $00 ;;END                                      ;; 0d:477e $00

script_00f1:
    db  $00 ;;END                                      ;; 0d:477f $00

script_00f2:
    db  $e7 ;;UNK_E7                                   ;; 0d:4780 $e7
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:4781 $fc
    db   $16                                           ;; 0d:4782 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4783 $fd
    db   $02                                           ;; 0d:4784 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4785 $fd
    db   $02                                           ;; 0d:4786 .
    db  $00 ;;END                                      ;; 0d:4787 $00

script_00f3:
    db  $00 ;;END                                      ;; 0d:4788 $00

script_00f4:
    db  $08 ;;IF ? JR                                  ;; 0d:4789 $08
    db   $bc, $00, $07                                 ;; 0d:478a ...
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:478d $fc
    db   $59                                           ;; 0d:478e .
    db  $fd ;;SPAWN_NPC                                ;; 0d:478f $fd
    db   $00                                           ;; 0d:4790 .
    db  $c9 ;;UNK_C9                                   ;; 0d:4791 $c9
    db   $04, $63                                      ;; 0d:4792 ..
    db  $e6 ;;UNK_E6                                   ;; 0d:4794 $e6
    db  $00 ;;END                                      ;; 0d:4795 $00

script_00f5:
    db  $08 ;;IF ? JR                                  ;; 0d:4796 $08
    db   $8b, $00, $06                                 ;; 0d:4797 ...
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:479a $fc
    db   $2a                                           ;; 0d:479b .
    db  $fd ;;SPAWN_NPC                                ;; 0d:479c $fd
    db   $00                                           ;; 0d:479d .
    db  $fd ;;SPAWN_NPC                                ;; 0d:479e $fd
    db   $02                                           ;; 0d:479f .
    db  $08 ;;IF ? JR                                  ;; 0d:47a0 $08
    db   $8a, $00, $19                                 ;; 0d:47a1 ...
    db  $f8 ;;SET_MUSIC                                ;; 0d:47a4 $f8
    db   $00                                           ;; 0d:47a5 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:47a6 $fd
    db   $01                                           ;; 0d:47a7 .
    db  $04 ;;MSG                                      ;; 0d:47a8 $04
    db   "<10> HELP!\n H E L P!!<12>"                  ;; 0d:47a9 ...............
    db   "<11>", $00                                   ;; 0d:47b8 ...
    db  $f8 ;;SET_MUSIC                                ;; 0d:47bb $f8
    db   $1a                                           ;; 0d:47bc .
    db  $08 ;;IF ? JR                                  ;; 0d:47bd $08
    db   $0b, $00, $03                                 ;; 0d:47be ...
    db  $02 ;;CALL                                     ;; 0d:47c1 $02
    db   $03, $ec                                      ;; 0d:47c2 ..
    db  $00 ;;END                                      ;; 0d:47c4 $00

script_00f6:
    db  $08 ;;IF ? JR                                  ;; 0d:47c5 $08
    db   $8b, $00, $02                                 ;; 0d:47c6 ...
    db  $f8 ;;SET_MUSIC                                ;; 0d:47c9 $f8
    db   $14                                           ;; 0d:47ca .
    db  $00 ;;END                                      ;; 0d:47cb $00

script_00f7:
    db  $08 ;;IF ? JR                                  ;; 0d:47cc $08
    db   $8a, $00, $04                                 ;; 0d:47cd ...
    db  $f8 ;;SET_MUSIC                                ;; 0d:47d0 $f8
    db   $00                                           ;; 0d:47d1 .
    db  $da ;;SET_FLAG                                 ;; 0d:47d2 $da
    db   $0a                                           ;; 0d:47d3 .
    db  $00 ;;END                                      ;; 0d:47d4 $00

script_00f8:
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:47d5 $fc
    db   $2b                                           ;; 0d:47d6 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:47d7 $fd
    db   $00                                           ;; 0d:47d8 .
    db  $00 ;;END                                      ;; 0d:47d9 $00

script_00f9:
    db  $00 ;;END                                      ;; 0d:47da $00

script_00fa:
    db  $00 ;;END                                      ;; 0d:47db $00

script_00fb:
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:47dc $fc
    db   $2b                                           ;; 0d:47dd .
    db  $fd ;;SPAWN_NPC                                ;; 0d:47de $fd
    db   $01                                           ;; 0d:47df .
    db  $00 ;;END                                      ;; 0d:47e0 $00

script_00fc:
    db  $00 ;;END                                      ;; 0d:47e1 $00

script_00fd:
    db  $00 ;;END                                      ;; 0d:47e2 $00

script_00fe:
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:47e3 $fc
    db   $31                                           ;; 0d:47e4 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:47e5 $fd
    db   $01                                           ;; 0d:47e6 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:47e7 $fd
    db   $02                                           ;; 0d:47e8 .
    db  $00 ;;END                                      ;; 0d:47e9 $00

script_00ff:
    db  $00 ;;END                                      ;; 0d:47ea $00

script_0100:
    db  $00 ;;END                                      ;; 0d:47eb $00

script_0101:
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:47ec $fc
    db   $1a                                           ;; 0d:47ed .
    db  $fd ;;SPAWN_NPC                                ;; 0d:47ee $fd
    db   $00                                           ;; 0d:47ef .
    db  $fd ;;SPAWN_NPC                                ;; 0d:47f0 $fd
    db   $00                                           ;; 0d:47f1 .
    db  $00 ;;END                                      ;; 0d:47f2 $00

script_0102:
    db  $00 ;;END                                      ;; 0d:47f3 $00

script_0103:
    db  $08 ;;IF ? JR                                  ;; 0d:47f4 $08
    db   $be, $00, $07                                 ;; 0d:47f5 ...
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:47f8 $fc
    db   $59                                           ;; 0d:47f9 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:47fa $fd
    db   $00                                           ;; 0d:47fb .
    db  $c9 ;;UNK_C9                                   ;; 0d:47fc $c9
    db   $04, $61                                      ;; 0d:47fd ..
    db  $00 ;;END                                      ;; 0d:47ff $00

script_0104:
    db  $00 ;;END                                      ;; 0d:4800 $00

script_0105:
    db  $00 ;;END                                      ;; 0d:4801 $00

script_0106:
    db  $08 ;;IF ? JR                                  ;; 0d:4802 $08
    db   $90, $00, $06                                 ;; 0d:4803 ...
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:4806 $fc
    db   $33                                           ;; 0d:4807 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4808 $fd
    db   $00                                           ;; 0d:4809 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:480a $fd
    db   $01                                           ;; 0d:480b .
    db  $08 ;;IF ? JR                                  ;; 0d:480c $08
    db   $10, $91, $00, $0a                            ;; 0d:480d ....
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:4811 $fc
    db   $00                                           ;; 0d:4812 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4813 $fd
    db   $00                                           ;; 0d:4814 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4815 $fd
    db   $01                                           ;; 0d:4816 .
    db  $bf ;;FLASH_SCREEN                             ;; 0d:4817 $bf
    db  $f9 ;;SFX                                      ;; 0d:4818 $f9
    db   $14                                           ;; 0d:4819 .
    db  $bf ;;FLASH_SCREEN                             ;; 0d:481a $bf
    db  $08 ;;IF ? JR                                  ;; 0d:481b $08
    db   $11, $00, $06                                 ;; 0d:481c ...
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:481f $fc
    db   $33                                           ;; 0d:4820 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4821 $fd
    db   $00                                           ;; 0d:4822 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4823 $fd
    db   $01                                           ;; 0d:4824 .
    db  $00 ;;END                                      ;; 0d:4825 $00

script_0107:
    db  $00 ;;END                                      ;; 0d:4826 $00

script_0108:
    db  $00 ;;END                                      ;; 0d:4827 $00

script_0109:
    db  $08 ;;IF ? JR                                  ;; 0d:4828 $08
    db   $90, $00, $04                                 ;; 0d:4829 ...
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:482c $fc
    db   $34                                           ;; 0d:482d .
    db  $fd ;;SPAWN_NPC                                ;; 0d:482e $fd
    db   $00                                           ;; 0d:482f .
    db  $08 ;;IF ? JR                                  ;; 0d:4830 $08
    db   $10, $91, $00, $0a                            ;; 0d:4831 ....
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:4835 $fc
    db   $00                                           ;; 0d:4836 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4837 $fd
    db   $00                                           ;; 0d:4838 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4839 $fd
    db   $01                                           ;; 0d:483a .
    db  $f9 ;;SFX                                      ;; 0d:483b $f9
    db   $14                                           ;; 0d:483c .
    db  $bf ;;FLASH_SCREEN                             ;; 0d:483d $bf
    db  $bf ;;FLASH_SCREEN                             ;; 0d:483e $bf
    db  $08 ;;IF ? JR                                  ;; 0d:483f $08
    db   $11, $00, $04                                 ;; 0d:4840 ...
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:4843 $fc
    db   $34                                           ;; 0d:4844 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4845 $fd
    db   $00                                           ;; 0d:4846 .
    db  $00 ;;END                                      ;; 0d:4847 $00

script_010a:
    db  $00 ;;END                                      ;; 0d:4848 $00

script_010b:
    db  $00 ;;END                                      ;; 0d:4849 $00

script_010c:
    db  $08 ;;IF ? JR                                  ;; 0d:484a $08
    db   $10, $91, $00, $04                            ;; 0d:484b ....
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:484f $fc
    db   $24                                           ;; 0d:4850 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4851 $fd
    db   $02                                           ;; 0d:4852 .
    db  $00 ;;END                                      ;; 0d:4853 $00

script_010d:
    db  $00 ;;END                                      ;; 0d:4854 $00

script_010e:
    db  $00 ;;END                                      ;; 0d:4855 $00

script_010f:
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:4856 $fc
    db   $37                                           ;; 0d:4857 .
    db  $08 ;;IF ? JR                                  ;; 0d:4858 $08
    db   $10, $9f, $00, $02                            ;; 0d:4859 ....
    db  $fd ;;SPAWN_NPC                                ;; 0d:485d $fd
    db   $02                                           ;; 0d:485e .
    db  $08 ;;IF ? JR                                  ;; 0d:485f $08
    db   $90, $00, $be                                 ;; 0d:4860 ...
    db  $94 ;;FOLLOWER_DIRECTION_UP                    ;; 0d:4863 $94
    db  $99 ;;FOLLOWER_SET_POSITION                    ;; 0d:4864 $99
    db   $09, $0e                                      ;; 0d:4865 ..
    db  $fd ;;SPAWN_NPC                                ;; 0d:4867 $fd
    db   $02                                           ;; 0d:4868 .
    db  $84 ;;SET_PLAYER_DIRECTION_UP                  ;; 0d:4869 $84
    db  $8a ;;SET_PLAYER_POSITION                      ;; 0d:486a $8a
    db   $09, $0e                                      ;; 0d:486b ..
    db  $80 ;;PLAYER_STEP_FORWARD                      ;; 0d:486d $80
    db  $80 ;;PLAYER_STEP_FORWARD                      ;; 0d:486e $80
    db  $87 ;;SET_PLAYER_DIRECTION_LEFT                ;; 0d:486f $87
    db  $03 ;;LOOP                                     ;; 0d:4870 $03
    db   $03, $02                                      ;; 0d:4871 ..
    db  $80 ;;PLAYER_STEP_FORWARD                      ;; 0d:4873 $80
    db  $00 ;;END                                      ;; 0d:4874 $00
    db  $86 ;;SET_PLAYER_DIRECTION_RIGHT               ;; 0d:4875 $86
    db  $17 ;;SET_NPC_1_DIRECTION_LEFT                 ;; 0d:4876 $17
    db  $10 ;;NPC_1_STEP_FORWARD                       ;; 0d:4877 $10
    db  $15 ;;SET_NPC_1_DIRECTION_DOWN                 ;; 0d:4878 $15
    db  $03 ;;LOOP                                     ;; 0d:4879 $03
    db   $06, $02                                      ;; 0d:487a ..
    db  $10 ;;NPC_1_STEP_FORWARD                       ;; 0d:487c $10
    db  $00 ;;END                                      ;; 0d:487d $00
    db  $04 ;;MSG                                      ;; 0d:487e $04
    db   "<10>Cibba:I am Cibba.\n Bogard told me\n about you.<12>" ;; 0d:487f .................................
    db   "<1b> __ Oh, yes!\n It sure is the\n symbol of Mana.<12>" ;; 0d:48a0 ................................
    db   "<1b> Step forward.\n You'll see what\n you must see.<12>" ;; 0d:48c0 ..............................
    db   "<11>", $00                                   ;; 0d:48de ...
    db  $17 ;;SET_NPC_1_DIRECTION_LEFT                 ;; 0d:48e1 $17
    db  $03 ;;LOOP                                     ;; 0d:48e2 $03
    db   $03, $02                                      ;; 0d:48e3 ..
    db  $11 ;;NPC_1_STEP_BACKWARDS                     ;; 0d:48e5 $11
    db  $00 ;;END                                      ;; 0d:48e6 $00
    db  $03 ;;LOOP                                     ;; 0d:48e7 $03
    db   $04, $02                                      ;; 0d:48e8 ..
    db  $90 ;;FOLLOWER_STEP_FORWARD                    ;; 0d:48ea $90
    db  $00 ;;END                                      ;; 0d:48eb $00
    db  $f0 ;;DELAY                                    ;; 0d:48ec $f0
    db   $14                                           ;; 0d:48ed .
    db  $90 ;;FOLLOWER_STEP_FORWARD                    ;; 0d:48ee $90
    db  $f0 ;;DELAY                                    ;; 0d:48ef $f0
    db   $0a                                           ;; 0d:48f0 .
    db  $90 ;;FOLLOWER_STEP_FORWARD                    ;; 0d:48f1 $90
    db  $f0 ;;DELAY                                    ;; 0d:48f2 $f0
    db   $0a                                           ;; 0d:48f3 .
    db  $90 ;;FOLLOWER_STEP_FORWARD                    ;; 0d:48f4 $90
    db  $87 ;;SET_PLAYER_DIRECTION_LEFT                ;; 0d:48f5 $87
    db  $16 ;;SET_NPC_1_DIRECTION_RIGHT                ;; 0d:48f6 $16
    db  $80 ;;PLAYER_STEP_FORWARD                      ;; 0d:48f7 $80
    db  $10 ;;NPC_1_STEP_FORWARD                       ;; 0d:48f8 $10
    db  $80 ;;PLAYER_STEP_FORWARD                      ;; 0d:48f9 $80
    db  $10 ;;NPC_1_STEP_FORWARD                       ;; 0d:48fa $10
    db  $84 ;;SET_PLAYER_DIRECTION_UP                  ;; 0d:48fb $84
    db  $14 ;;SET_NPC_1_DIRECTION_UP                   ;; 0d:48fc $14
    db  $03 ;;LOOP                                     ;; 0d:48fd $03
    db   $06, $03                                      ;; 0d:48fe ..
    db  $80 ;;PLAYER_STEP_FORWARD                      ;; 0d:4900 $80
    db  $10 ;;NPC_1_STEP_FORWARD                       ;; 0d:4901 $10
    db  $00 ;;END                                      ;; 0d:4902 $00
    db  $f8 ;;SET_MUSIC                                ;; 0d:4903 $f8
    db   $00                                           ;; 0d:4904 .
    db  $f0 ;;DELAY                                    ;; 0d:4905 $f0
    db   $3c                                           ;; 0d:4906 .
    db  $bf ;;FLASH_SCREEN                             ;; 0d:4907 $bf
    db  $f9 ;;SFX                                      ;; 0d:4908 $f9
    db   $14                                           ;; 0d:4909 .
    db  $bf ;;FLASH_SCREEN                             ;; 0d:490a $bf
    db  $f0 ;;DELAY                                    ;; 0d:490b $f0
    db   $14                                           ;; 0d:490c .
    db  $f9 ;;SFX                                      ;; 0d:490d $f9
    db   $25                                           ;; 0d:490e .
    db  $03 ;;LOOP                                     ;; 0d:490f $03
    db   $05, $02                                      ;; 0d:4910 ..
    db  $bf ;;FLASH_SCREEN                             ;; 0d:4912 $bf
    db  $00 ;;END                                      ;; 0d:4913 $00
    db  $bd ;;FADE_TO_BLACK                            ;; 0d:4914 $bd
    db  $f0 ;;DELAY                                    ;; 0d:4915 $f0
    db   $28                                           ;; 0d:4916 .
    db  $f8 ;;SET_MUSIC                                ;; 0d:4917 $f8
    db   $03                                           ;; 0d:4918 .
    db  $f0 ;;DELAY                                    ;; 0d:4919 $f0
    db   $c8                                           ;; 0d:491a .
    db  $fd ;;SPAWN_NPC                                ;; 0d:491b $fd
    db   $01                                           ;; 0d:491c .
    db  $bc ;;FADE_TO_NORMAL                           ;; 0d:491d $bc
    db  $02 ;;CALL                                     ;; 0d:491e $02
    db   $68, $e9                                      ;; 0d:491f ..
    db  $00 ;;END                                      ;; 0d:4921 $00

script_0110:
    db  $00 ;;END                                      ;; 0d:4922 $00

script_0111:
    db  $00 ;;END                                      ;; 0d:4923 $00

script_0112:
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:4924 $fc
    db   $2d                                           ;; 0d:4925 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4926 $fd
    db   $00                                           ;; 0d:4927 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4928 $fd
    db   $01                                           ;; 0d:4929 .
    db  $00 ;;END                                      ;; 0d:492a $00

script_0113:
    db  $00 ;;END                                      ;; 0d:492b $00

script_0114:
    db  $00 ;;END                                      ;; 0d:492c $00

script_0115:
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:492d $fc
    db   $2e                                           ;; 0d:492e .
    db  $fd ;;SPAWN_NPC                                ;; 0d:492f $fd
    db   $00                                           ;; 0d:4930 .
    db  $00 ;;END                                      ;; 0d:4931 $00

script_0116:
    db  $00 ;;END                                      ;; 0d:4932 $00

script_0117:
    db  $00 ;;END                                      ;; 0d:4933 $00

script_0118:
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:4934 $fc
    db   $2f                                           ;; 0d:4935 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4936 $fd
    db   $00                                           ;; 0d:4937 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4938 $fd
    db   $01                                           ;; 0d:4939 .
    db  $00 ;;END                                      ;; 0d:493a $00

script_0119:
    db  $00 ;;END                                      ;; 0d:493b $00

script_011a:
    db  $00 ;;END                                      ;; 0d:493c $00

script_011b:
    db  $08 ;;IF ? JR                                  ;; 0d:493d $08
    db   $26, $00, $04                                 ;; 0d:493e ...
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:4941 $fc
    db   $30                                           ;; 0d:4942 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4943 $fd
    db   $00                                           ;; 0d:4944 .
    db  $00 ;;END                                      ;; 0d:4945 $00

script_011c:
    db  $00 ;;END                                      ;; 0d:4946 $00

script_011d:
    db  $00 ;;END                                      ;; 0d:4947 $00

script_011e:
    db  $08 ;;IF ? JR                                  ;; 0d:4948 $08
    db   $98, $00, $0f                                 ;; 0d:4949 ...
    db  $f8 ;;SET_MUSIC                                ;; 0d:494c $f8
    db   $0f                                           ;; 0d:494d .
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:494e $fc
    db   $6c                                           ;; 0d:494f .
    db  $03 ;;LOOP                                     ;; 0d:4950 $03
    db   $05, $04                                      ;; 0d:4951 ..
    db  $f9 ;;SFX                                      ;; 0d:4953 $f9
    db   $14                                           ;; 0d:4954 .
    db  $bf ;;FLASH_SCREEN                             ;; 0d:4955 $bf
    db  $00 ;;END                                      ;; 0d:4956 $00
    db  $fd ;;SPAWN_NPC                                ;; 0d:4957 $fd
    db   $00                                           ;; 0d:4958 .
    db  $01 ;;JR                                       ;; 0d:4959 $01
    db   $32                                           ;; 0d:495a .
    db  $03 ;;LOOP                                     ;; 0d:495b $03
    db   $03, $04                                      ;; 0d:495c ..
    db  $f9 ;;SFX                                      ;; 0d:495e $f9
    db   $14                                           ;; 0d:495f .
    db  $bf ;;FLASH_SCREEN                             ;; 0d:4960 $bf
    db  $00 ;;END                                      ;; 0d:4961 $00
    db  $04 ;;MSG                                      ;; 0d:4962 $04
    db   "<10>Julius:See the\n true power of\n Mana now!<12>" ;; 0d:4963 ............................
    db   "<11>", $00                                   ;; 0d:497f ...
    db  $03 ;;LOOP                                     ;; 0d:4982 $03
    db   $05, $04                                      ;; 0d:4983 ..
    db  $f9 ;;SFX                                      ;; 0d:4985 $f9
    db   $14                                           ;; 0d:4986 .
    db  $bf ;;FLASH_SCREEN                             ;; 0d:4987 $bf
    db  $00 ;;END                                      ;; 0d:4988 $00
    db  $fe ;;SPAWN_BOSS                               ;; 0d:4989 $fe
    db   $0e                                           ;; 0d:498a .
    db  $f8 ;;SET_MUSIC                                ;; 0d:498b $f8
    db   $13                                           ;; 0d:498c .
    db  $00 ;;END                                      ;; 0d:498d $00

script_011f:
    db  $00 ;;END                                      ;; 0d:498e $00

script_0120:
    db  $08 ;;IF ? JR                                  ;; 0d:498f $08
    db   $98, $00, $20                                 ;; 0d:4990 ...
    db  $f8 ;;SET_MUSIC                                ;; 0d:4993 $f8
    db   $00                                           ;; 0d:4994 .
    db  $f9 ;;SFX                                      ;; 0d:4995 $f9
    db   $22                                           ;; 0d:4996 .
    db  $da ;;SET_FLAG                                 ;; 0d:4997 $da
    db   $18                                           ;; 0d:4998 .
    db  $f0 ;;DELAY                                    ;; 0d:4999 $f0
    db   $3c                                           ;; 0d:499a .
    db  $04 ;;MSG                                      ;; 0d:499b $04
    db   "<10> Defeated Julius.<12>"                   ;; 0d:499c .............
    db   "<11>", $00                                   ;; 0d:49a9 ...
    db  $f0 ;;DELAY                                    ;; 0d:49ac $f0
    db   $1e                                           ;; 0d:49ad .
    db  $02 ;;CALL                                     ;; 0d:49ae $02
    db   $09, $48                                      ;; 0d:49af ..
    db  $01 ;;JR                                       ;; 0d:49b1 $01
    db   $b2                                           ;; 0d:49b2 .
    db  $f8 ;;SET_MUSIC                                ;; 0d:49b3 $f8
    db   $00                                           ;; 0d:49b4 .
    db  $f9 ;;SFX                                      ;; 0d:49b5 $f9
    db   $22                                           ;; 0d:49b6 .
    db  $f0 ;;DELAY                                    ;; 0d:49b7 $f0
    db   $14                                           ;; 0d:49b8 .
    db  $04 ;;MSG                                      ;; 0d:49b9 $04
    db   "<10>Julius:GRRRR", $00                       ;; 0d:49ba ............
    db  $f0 ;;DELAY                                    ;; 0d:49c6 $f0
    db   $1e                                           ;; 0d:49c7 .
    db  $04 ;;MSG                                      ;; 0d:49c8 $04
    db   " __<12>"                                     ;; 0d:49c9 ..
    db   "<11>", $00                                   ;; 0d:49cb ...
    db  $f0 ;;DELAY                                    ;; 0d:49ce $f0
    db   $3c                                           ;; 0d:49cf .
    db  $bd ;;FADE_TO_BLACK                            ;; 0d:49d0 $bd
    db  $f3 ;;LOAD_ROOM_INSTANT                        ;; 0d:49d1 $f3
    db   $0f, $50, $08, $0a                            ;; 0d:49d2 ....
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:49d6 $fc
    db   $32                                           ;; 0d:49d7 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:49d8 $fd
    db   $01                                           ;; 0d:49d9 .
    db  $8a ;;SET_PLAYER_POSITION                      ;; 0d:49da $8a
    db   $08, $0a                                      ;; 0d:49db ..
    db  $86 ;;SET_PLAYER_DIRECTION_RIGHT               ;; 0d:49dd $86
    db  $bc ;;FADE_TO_NORMAL                           ;; 0d:49de $bc
    db  $f0 ;;DELAY                                    ;; 0d:49df $f0
    db   $64                                           ;; 0d:49e0 .
    db  $04 ;;MSG                                      ;; 0d:49e1 $04
    db   "<10><GIRL>:__ <BOY>.\n<BOY>:Are you\n okay, <GIRL>?<12>" ;; 0d:49e2 ......................
    db   "<1b><BOY>:I defeated\n Julius.\n It's all over.<12>" ;; 0d:49f8 ............................
    db   "<11>", $00                                   ;; 0d:4a14 ...
    db  $f0 ;;DELAY                                    ;; 0d:4a17 $f0
    db   $3c                                           ;; 0d:4a18 .
    db  $04 ;;MSG                                      ;; 0d:4a19 $04
    db   "<10>Julius:__ No!!\n __ It is not!<12>"      ;; 0d:4a1a ......................
    db   "<11>", $00                                   ;; 0d:4a30 ...
    db  $84 ;;SET_PLAYER_DIRECTION_UP                  ;; 0d:4a33 $84
    db  $14 ;;SET_NPC_1_DIRECTION_UP                   ;; 0d:4a34 $14
    db  $03 ;;LOOP                                     ;; 0d:4a35 $03
    db   $05, $04                                      ;; 0d:4a36 ..
    db  $f9 ;;SFX                                      ;; 0d:4a38 $f9
    db   $14                                           ;; 0d:4a39 .
    db  $bf ;;FLASH_SCREEN                             ;; 0d:4a3a $bf
    db  $00 ;;END                                      ;; 0d:4a3b $00
    db  $f0 ;;DELAY                                    ;; 0d:4a3c $f0
    db   $28                                           ;; 0d:4a3d .
    db  $04 ;;MSG                                      ;; 0d:4a3e $04
    db   "<10>Julius:<BOY>!\n You will never\n leave here alive!<12>" ;; 0d:4a3f ..............................
    db   "<11>", $00                                   ;; 0d:4a5d ...
    db  $9c ;;GIVE_FOLLOWER                            ;; 0d:4a60 $9c
    db   $01                                           ;; 0d:4a61 .
    db  $da ;;SET_FLAG                                 ;; 0d:4a62 $da
    db   $51                                           ;; 0d:4a63 .
    db  $ec ;;RUN_ROOM_SCRIPT                          ;; 0d:4a64 $ec
    db  $00 ;;END                                      ;; 0d:4a65 $00

script_0121:
    db  $08 ;;IF ? JR                                  ;; 0d:4a66 $08
    db   $90, $00, $04                                 ;; 0d:4a67 ...
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:4a6a $fc
    db   $37                                           ;; 0d:4a6b .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4a6c $fd
    db   $00                                           ;; 0d:4a6d .
    db  $08 ;;IF ? JR                                  ;; 0d:4a6e $08
    db   $10, $91, $00, $0a                            ;; 0d:4a6f ....
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:4a73 $fc
    db   $00                                           ;; 0d:4a74 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4a75 $fd
    db   $00                                           ;; 0d:4a76 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4a77 $fd
    db   $01                                           ;; 0d:4a78 .
    db  $f9 ;;SFX                                      ;; 0d:4a79 $f9
    db   $14                                           ;; 0d:4a7a .
    db  $bf ;;FLASH_SCREEN                             ;; 0d:4a7b $bf
    db  $bf ;;FLASH_SCREEN                             ;; 0d:4a7c $bf
    db  $08 ;;IF ? JR                                  ;; 0d:4a7d $08
    db   $2f, $00, $04                                 ;; 0d:4a7e ...
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:4a81 $fc
    db   $34                                           ;; 0d:4a82 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4a83 $fd
    db   $01                                           ;; 0d:4a84 .
    db  $00 ;;END                                      ;; 0d:4a85 $00

script_0122:
    db  $00 ;;END                                      ;; 0d:4a86 $00

script_0123:
    db  $00 ;;END                                      ;; 0d:4a87 $00

script_0124:
    db  $08 ;;IF ? JR                                  ;; 0d:4a88 $08
    db   $a6, $00, $04                                 ;; 0d:4a89 ...
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:4a8c $fc
    db   $2c                                           ;; 0d:4a8d .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4a8e $fd
    db   $02                                           ;; 0d:4a8f .
    db  $00 ;;END                                      ;; 0d:4a90 $00

script_0125:
    db  $00 ;;END                                      ;; 0d:4a91 $00

script_0126:
    db  $00 ;;END                                      ;; 0d:4a92 $00

script_0127:
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:4a93 $fc
    db   $59                                           ;; 0d:4a94 .
    db  $08 ;;IF ? JR                                  ;; 0d:4a95 $08
    db   $cd, $00, $05                                 ;; 0d:4a96 ...
    db  $fd ;;SPAWN_NPC                                ;; 0d:4a99 $fd
    db   $01                                           ;; 0d:4a9a .
    db  $c9 ;;UNK_C9                                   ;; 0d:4a9b $c9
    db   $04, $43                                      ;; 0d:4a9c ..
    db  $00 ;;END                                      ;; 0d:4a9e $00

script_0128:
    db  $00 ;;END                                      ;; 0d:4a9f $00

script_0129:
    db  $00 ;;END                                      ;; 0d:4aa0 $00

script_012a:
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:4aa1 $fc
    db   $04                                           ;; 0d:4aa2 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4aa3 $fd
    db   $02                                           ;; 0d:4aa4 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4aa5 $fd
    db   $00                                           ;; 0d:4aa6 .
    db  $00 ;;END                                      ;; 0d:4aa7 $00

script_012b:
    db  $00 ;;END                                      ;; 0d:4aa8 $00

script_012c:
    db  $00 ;;END                                      ;; 0d:4aa9 $00

script_012d:
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:4aaa $fc
    db   $3f                                           ;; 0d:4aab .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4aac $fd
    db   $01                                           ;; 0d:4aad .
    db  $00 ;;END                                      ;; 0d:4aae $00

script_012e:
    db  $00 ;;END                                      ;; 0d:4aaf $00

script_012f:
    db  $00 ;;END                                      ;; 0d:4ab0 $00

script_0130:
    db  $08 ;;IF ? JR                                  ;; 0d:4ab1 $08
    db   $16, $00, $04                                 ;; 0d:4ab2 ...
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:4ab5 $fc
    db   $60                                           ;; 0d:4ab6 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4ab7 $fd
    db   $00                                           ;; 0d:4ab8 .
    db  $00 ;;END                                      ;; 0d:4ab9 $00

script_0131:
    db  $00 ;;END                                      ;; 0d:4aba $00

script_0132:
    db  $00 ;;END                                      ;; 0d:4abb $00

script_0133:
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:4abc $fc
    db   $40                                           ;; 0d:4abd .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4abe $fd
    db   $00                                           ;; 0d:4abf .
    db  $00 ;;END                                      ;; 0d:4ac0 $00

script_0134:
    db  $00 ;;END                                      ;; 0d:4ac1 $00

script_0135:
    db  $00 ;;END                                      ;; 0d:4ac2 $00

script_0136:
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:4ac3 $fc
    db   $40                                           ;; 0d:4ac4 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4ac5 $fd
    db   $01                                           ;; 0d:4ac6 .
    db  $00 ;;END                                      ;; 0d:4ac7 $00

script_0137:
    db  $00 ;;END                                      ;; 0d:4ac8 $00

script_0138:
    db  $00 ;;END                                      ;; 0d:4ac9 $00

script_0139:
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:4aca $fc
    db   $05                                           ;; 0d:4acb .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4acc $fd
    db   $02                                           ;; 0d:4acd .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4ace $fd
    db   $00                                           ;; 0d:4acf .
    db  $00 ;;END                                      ;; 0d:4ad0 $00

script_013a:
    db  $00 ;;END                                      ;; 0d:4ad1 $00

script_013b:
    db  $00 ;;END                                      ;; 0d:4ad2 $00

script_013c:
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:4ad3 $fc
    db   $40                                           ;; 0d:4ad4 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4ad5 $fd
    db   $02                                           ;; 0d:4ad6 .
    db  $00 ;;END                                      ;; 0d:4ad7 $00

script_013d:
    db  $00 ;;END                                      ;; 0d:4ad8 $00

script_013e:
    db  $00 ;;END                                      ;; 0d:4ad9 $00

script_013f:
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:4ada $fc
    db   $58                                           ;; 0d:4adb .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4adc $fd
    db   $00                                           ;; 0d:4add .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4ade $fd
    db   $01                                           ;; 0d:4adf .
    db  $08 ;;IF ? JR                                  ;; 0d:4ae0 $08
    db   $16, $d4, $00, $02                            ;; 0d:4ae1 ....
    db  $fd ;;SPAWN_NPC                                ;; 0d:4ae5 $fd
    db   $02                                           ;; 0d:4ae6 .
    db  $00 ;;END                                      ;; 0d:4ae7 $00

script_0140:
    db  $08 ;;IF ? JR                                  ;; 0d:4ae8 $08
    db   $16, $54, $00, $27                            ;; 0d:4ae9 ....
    db  $04 ;;MSG                                      ;; 0d:4aed $04
    db   "<10>Bogard:I'll stay\n and guard <GIRL>.\n<BOY>:__ Okay.<12>" ;; 0d:4aee ................................
    db   "<11>", $00                                   ;; 0d:4b0e ...
    db  $98 ;;FOLLOWER_DELETE                          ;; 0d:4b11 $98
    db  $db ;;CLEAR_FLAG                               ;; 0d:4b12 $db
    db   $54                                           ;; 0d:4b13 .
    db  $00 ;;END                                      ;; 0d:4b14 $00

script_0141:
    db  $00 ;;END                                      ;; 0d:4b15 $00

script_0142:
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:4b16 $fc
    db   $38                                           ;; 0d:4b17 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4b18 $fd
    db   $00                                           ;; 0d:4b19 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4b1a $fd
    db   $01                                           ;; 0d:4b1b .
    db  $00 ;;END                                      ;; 0d:4b1c $00

script_0143:
    db  $00 ;;END                                      ;; 0d:4b1d $00

script_0144:
    db  $00 ;;END                                      ;; 0d:4b1e $00

script_0145:
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:4b1f $fc
    db   $39                                           ;; 0d:4b20 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4b21 $fd
    db   $00                                           ;; 0d:4b22 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4b23 $fd
    db   $01                                           ;; 0d:4b24 .
    db  $00 ;;END                                      ;; 0d:4b25 $00

script_0146:
    db  $00 ;;END                                      ;; 0d:4b26 $00

script_0147:
    db  $00 ;;END                                      ;; 0d:4b27 $00

script_0148:
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:4b28 $fc
    db   $3b                                           ;; 0d:4b29 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4b2a $fd
    db   $00                                           ;; 0d:4b2b .
    db  $00 ;;END                                      ;; 0d:4b2c $00

script_0149:
    db  $00 ;;END                                      ;; 0d:4b2d $00

script_014a:
    db  $00 ;;END                                      ;; 0d:4b2e $00

script_014b:
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:4b2f $fc
    db   $3c                                           ;; 0d:4b30 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4b31 $fd
    db   $00                                           ;; 0d:4b32 .
    db  $00 ;;END                                      ;; 0d:4b33 $00

script_014c:
    db  $00 ;;END                                      ;; 0d:4b34 $00

script_014d:
    db  $00 ;;END                                      ;; 0d:4b35 $00

script_014e:
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:4b36 $fc
    db   $3b                                           ;; 0d:4b37 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4b38 $fd
    db   $02                                           ;; 0d:4b39 .
    db  $00 ;;END                                      ;; 0d:4b3a $00

script_014f:
    db  $00 ;;END                                      ;; 0d:4b3b $00

script_0150:
    db  $00 ;;END                                      ;; 0d:4b3c $00

script_0151:
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:4b3d $fc
    db   $30                                           ;; 0d:4b3e .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4b3f $fd
    db   $01                                           ;; 0d:4b40 .
    db  $00 ;;END                                      ;; 0d:4b41 $00

script_0152:
    db  $00 ;;END                                      ;; 0d:4b42 $00

script_0153:
    db  $00 ;;END                                      ;; 0d:4b43 $00

script_0154:
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:4b44 $fc
    db   $41                                           ;; 0d:4b45 .
    db  $08 ;;IF ? JR                                  ;; 0d:4b46 $08
    db   $a7, $00, $04                                 ;; 0d:4b47 ...
    db  $fd ;;SPAWN_NPC                                ;; 0d:4b4a $fd
    db   $00                                           ;; 0d:4b4b .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4b4c $fd
    db   $01                                           ;; 0d:4b4d .
    db  $08 ;;IF ? JR                                  ;; 0d:4b4e $08
    db   $27, $9d, $00, $02                            ;; 0d:4b4f ....
    db  $fd ;;SPAWN_NPC                                ;; 0d:4b53 $fd
    db   $01                                           ;; 0d:4b54 .
    db  $08 ;;IF ? JR                                  ;; 0d:4b55 $08
    db   $1d, $00, $04                                 ;; 0d:4b56 ...
    db  $b0 ;;SET_ROOM_TILE                            ;; 0d:4b59 $b0
    db   $02, $08, $06                                 ;; 0d:4b5a ...
    db  $08 ;;IF ? JR                                  ;; 0d:4b5d $08
    db   $1d, $d6, $a8, $00, $2c                       ;; 0d:4b5e .....
    db  $fd ;;SPAWN_NPC                                ;; 0d:4b63 $fd
    db   $02                                           ;; 0d:4b64 .
    db  $9c ;;GIVE_FOLLOWER                            ;; 0d:4b65 $9c
    db   $06                                           ;; 0d:4b66 .
    db  $80 ;;PLAYER_STEP_FORWARD                      ;; 0d:4b67 $80
    db  $80 ;;PLAYER_STEP_FORWARD                      ;; 0d:4b68 $80
    db  $80 ;;PLAYER_STEP_FORWARD                      ;; 0d:4b69 $80
    db  $17 ;;SET_NPC_1_DIRECTION_LEFT                 ;; 0d:4b6a $17
    db  $04 ;;MSG                                      ;; 0d:4b6b $04
    db   "<10>Lester:Phew__\n I was helpless\n all by myself.<12>" ;; 0d:4b6c ..............................
    db   "<11>", $00                                   ;; 0d:4b8a ...
    db  $da ;;SET_FLAG                                 ;; 0d:4b8d $da
    db   $56                                           ;; 0d:4b8e .
    db  $00 ;;END                                      ;; 0d:4b8f $00

script_0155:
    db  $00 ;;END                                      ;; 0d:4b90 $00

script_0156:
    db  $00 ;;END                                      ;; 0d:4b91 $00

script_0157:
    db  $08 ;;IF ? JR                                  ;; 0d:4b92 $08
    db   $1f, $a0, $00, $04                            ;; 0d:4b93 ....
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:4b97 $fc
    db   $4c                                           ;; 0d:4b98 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4b99 $fd
    db   $01                                           ;; 0d:4b9a .
    db  $00 ;;END                                      ;; 0d:4b9b $00

script_0158:
    db  $00 ;;END                                      ;; 0d:4b9c $00

script_0159:
    db  $00 ;;END                                      ;; 0d:4b9d $00

script_015a:
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:4b9e $fc
    db   $48                                           ;; 0d:4b9f .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4ba0 $fd
    db   $00                                           ;; 0d:4ba1 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4ba2 $fd
    db   $01                                           ;; 0d:4ba3 .
    db  $00 ;;END                                      ;; 0d:4ba4 $00

script_015b:
    db  $00 ;;END                                      ;; 0d:4ba5 $00

script_015c:
    db  $00 ;;END                                      ;; 0d:4ba6 $00

script_015d:
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:4ba7 $fc
    db   $49                                           ;; 0d:4ba8 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4ba9 $fd
    db   $00                                           ;; 0d:4baa .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4bab $fd
    db   $01                                           ;; 0d:4bac .
    db  $00 ;;END                                      ;; 0d:4bad $00

script_015e:
    db  $00 ;;END                                      ;; 0d:4bae $00

script_015f:
    db  $00 ;;END                                      ;; 0d:4baf $00

script_0160:
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:4bb0 $fc
    db   $43                                           ;; 0d:4bb1 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4bb2 $fd
    db   $00                                           ;; 0d:4bb3 .
    db  $00 ;;END                                      ;; 0d:4bb4 $00

script_0161:
    db  $00 ;;END                                      ;; 0d:4bb5 $00

script_0162:
    db  $00 ;;END                                      ;; 0d:4bb6 $00

script_0163:
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:4bb7 $fc
    db   $43                                           ;; 0d:4bb8 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4bb9 $fd
    db   $01                                           ;; 0d:4bba .
    db  $00 ;;END                                      ;; 0d:4bbb $00

script_0164:
    db  $00 ;;END                                      ;; 0d:4bbc $00

script_0165:
    db  $00 ;;END                                      ;; 0d:4bbd $00

script_0166:
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:4bbe $fc
    db   $43                                           ;; 0d:4bbf .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4bc0 $fd
    db   $02                                           ;; 0d:4bc1 .
    db  $00 ;;END                                      ;; 0d:4bc2 $00

script_0167:
    db  $00 ;;END                                      ;; 0d:4bc3 $00

script_0168:
    db  $00 ;;END                                      ;; 0d:4bc4 $00

script_0169:
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:4bc5 $fc
    db   $44                                           ;; 0d:4bc6 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4bc7 $fd
    db   $00                                           ;; 0d:4bc8 .
    db  $00 ;;END                                      ;; 0d:4bc9 $00

script_016a:
    db  $00 ;;END                                      ;; 0d:4bca $00

script_016b:
    db  $00 ;;END                                      ;; 0d:4bcb $00

script_016c:
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:4bcc $fc
    db   $44                                           ;; 0d:4bcd .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4bce $fd
    db   $02                                           ;; 0d:4bcf .
    db  $00 ;;END                                      ;; 0d:4bd0 $00

script_016d:
    db  $00 ;;END                                      ;; 0d:4bd1 $00

script_016e:
    db  $00 ;;END                                      ;; 0d:4bd2 $00

script_016f:
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:4bd3 $fc
    db   $44                                           ;; 0d:4bd4 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4bd5 $fd
    db   $01                                           ;; 0d:4bd6 .
    db  $00 ;;END                                      ;; 0d:4bd7 $00

script_0170:
    db  $00 ;;END                                      ;; 0d:4bd8 $00

script_0171:
    db  $00 ;;END                                      ;; 0d:4bd9 $00

script_0172:
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:4bda $fc
    db   $45                                           ;; 0d:4bdb .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4bdc $fd
    db   $00                                           ;; 0d:4bdd .
    db  $00 ;;END                                      ;; 0d:4bde $00

script_0173:
    db  $00 ;;END                                      ;; 0d:4bdf $00

script_0174:
    db  $00 ;;END                                      ;; 0d:4be0 $00

script_0175:
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:4be1 $fc
    db   $45                                           ;; 0d:4be2 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4be3 $fd
    db   $01                                           ;; 0d:4be4 .
    db  $00 ;;END                                      ;; 0d:4be5 $00

script_0176:
    db  $00 ;;END                                      ;; 0d:4be6 $00

script_0177:
    db  $00 ;;END                                      ;; 0d:4be7 $00

script_0178:
    db  $08 ;;IF ? JR                                  ;; 0d:4be8 $08
    db   $9e, $00, $04                                 ;; 0d:4be9 ...
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:4bec $fc
    db   $28                                           ;; 0d:4bed .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4bee $fd
    db   $02                                           ;; 0d:4bef .
    db  $00 ;;END                                      ;; 0d:4bf0 $00

script_0179:
    db  $00 ;;END                                      ;; 0d:4bf1 $00

script_017a:
    db  $00 ;;END                                      ;; 0d:4bf2 $00

script_017b:
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:4bf3 $fc
    db   $46                                           ;; 0d:4bf4 .
    db  $08 ;;IF ? JR                                  ;; 0d:4bf5 $08
    db   $ad, $00, $04                                 ;; 0d:4bf6 ...
    db  $fd ;;SPAWN_NPC                                ;; 0d:4bf9 $fd
    db   $01                                           ;; 0d:4bfa .
    db  $01 ;;JR                                       ;; 0d:4bfb $01
    db   $02                                           ;; 0d:4bfc .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4bfd $fd
    db   $00                                           ;; 0d:4bfe .
    db  $00 ;;END                                      ;; 0d:4bff $00

script_017c:
    db  $00 ;;END                                      ;; 0d:4c00 $00

script_017d:
    db  $00 ;;END                                      ;; 0d:4c01 $00

script_017e:
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:4c02 $fc
    db   $46                                           ;; 0d:4c03 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4c04 $fd
    db   $02                                           ;; 0d:4c05 .
    db  $00 ;;END                                      ;; 0d:4c06 $00

script_017f:
    db  $00 ;;END                                      ;; 0d:4c07 $00

script_0180:
    db  $00 ;;END                                      ;; 0d:4c08 $00

script_0181:
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:4c09 $fc
    db   $47                                           ;; 0d:4c0a .
    db  $08 ;;IF ? JR                                  ;; 0d:4c0b $08
    db   $ad, $00, $04                                 ;; 0d:4c0c ...
    db  $fd ;;SPAWN_NPC                                ;; 0d:4c0f $fd
    db   $01                                           ;; 0d:4c10 .
    db  $01 ;;JR                                       ;; 0d:4c11 $01
    db   $02                                           ;; 0d:4c12 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4c13 $fd
    db   $00                                           ;; 0d:4c14 .
    db  $00 ;;END                                      ;; 0d:4c15 $00

script_0182:
    db  $00 ;;END                                      ;; 0d:4c16 $00

script_0183:
    db  $00 ;;END                                      ;; 0d:4c17 $00

script_0184:
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:4c18 $fc
    db   $37                                           ;; 0d:4c19 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4c1a $fd
    db   $02                                           ;; 0d:4c1b .
    db  $00 ;;END                                      ;; 0d:4c1c $00

script_0185:
    db  $00 ;;END                                      ;; 0d:4c1d $00

script_0186:
    db  $00 ;;END                                      ;; 0d:4c1e $00

script_0187:
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:4c1f $fc
    db   $06                                           ;; 0d:4c20 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4c21 $fd
    db   $02                                           ;; 0d:4c22 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4c23 $fd
    db   $01                                           ;; 0d:4c24 .
    db  $00 ;;END                                      ;; 0d:4c25 $00

script_0188:
    db  $00 ;;END                                      ;; 0d:4c26 $00

script_0189:
    db  $00 ;;END                                      ;; 0d:4c27 $00

script_018a:
    db  $08 ;;IF ? JR                                  ;; 0d:4c28 $08
    db   $90, $00, $04                                 ;; 0d:4c29 ...
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:4c2c $fc
    db   $35                                           ;; 0d:4c2d .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4c2e $fd
    db   $00                                           ;; 0d:4c2f .
    db  $00 ;;END                                      ;; 0d:4c30 $00

script_018b:
    db  $00 ;;END                                      ;; 0d:4c31 $00

script_018c:
    db  $00 ;;END                                      ;; 0d:4c32 $00

script_018d:
    db  $08 ;;IF ? JR                                  ;; 0d:4c33 $08
    db   $8e, $00, $04                                 ;; 0d:4c34 ...
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:4c37 $fc
    db   $32                                           ;; 0d:4c38 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4c39 $fd
    db   $00                                           ;; 0d:4c3a .
    db  $00 ;;END                                      ;; 0d:4c3b $00

script_018e:
    db  $00 ;;END                                      ;; 0d:4c3c $00

script_018f:
    db  $00 ;;END                                      ;; 0d:4c3d $00

script_0190:
    db  $08 ;;IF ? JR                                  ;; 0d:4c3e $08
    db   $c8, $d2, $00, $04                            ;; 0d:4c3f ....
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:4c43 $fc
    db   $4d                                           ;; 0d:4c44 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4c45 $fd
    db   $00                                           ;; 0d:4c46 .
    db  $00 ;;END                                      ;; 0d:4c47 $00

script_0191:
    db  $00 ;;END                                      ;; 0d:4c48 $00

script_0192:
    db  $00 ;;END                                      ;; 0d:4c49 $00

script_0193:
    db  $08 ;;IF ? JR                                  ;; 0d:4c4a $08
    db   $1f, $00, $02                                 ;; 0d:4c4b ...
    db  $01 ;;JR                                       ;; 0d:4c4e $01
    db   $08                                           ;; 0d:4c4f .
    db  $08 ;;IF ? JR                                  ;; 0d:4c50 $08
    db   $99, $00, $04                                 ;; 0d:4c51 ...
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:4c54 $fc
    db   $50                                           ;; 0d:4c55 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4c56 $fd
    db   $00                                           ;; 0d:4c57 .
    db  $00 ;;END                                      ;; 0d:4c58 $00

script_0194:
    db  $08 ;;IF ? JR                                  ;; 0d:4c59 $08
    db   $d8, $00, $02                                 ;; 0d:4c5a ...
    db  $f8 ;;SET_MUSIC                                ;; 0d:4c5d $f8
    db   $14                                           ;; 0d:4c5e .
    db  $00 ;;END                                      ;; 0d:4c5f $00

script_0195:
    db  $00 ;;END                                      ;; 0d:4c60 $00

script_0196:
    db  $08 ;;IF ? JR                                  ;; 0d:4c61 $08
    db   $14, $a6, $00, $04                            ;; 0d:4c62 ....
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:4c66 $fc
    db   $30                                           ;; 0d:4c67 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4c68 $fd
    db   $00                                           ;; 0d:4c69 .
    db  $00 ;;END                                      ;; 0d:4c6a $00

script_0197:
    db  $00 ;;END                                      ;; 0d:4c6b $00

script_0198:
    db  $00 ;;END                                      ;; 0d:4c6c $00

script_0199:
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:4c6d $fc
    db   $07                                           ;; 0d:4c6e .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4c6f $fd
    db   $02                                           ;; 0d:4c70 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4c71 $fd
    db   $00                                           ;; 0d:4c72 .
    db  $00 ;;END                                      ;; 0d:4c73 $00

script_019a:
    db  $00 ;;END                                      ;; 0d:4c74 $00

script_019b:
    db  $00 ;;END                                      ;; 0d:4c75 $00

script_019c:
    db  $00 ;;END                                      ;; 0d:4c76 $00

script_019d:
    db  $08 ;;IF ? JR                                  ;; 0d:4c77 $08
    db   $98, $00, $ae                                 ;; 0d:4c78 ...
    db  $f8 ;;SET_MUSIC                                ;; 0d:4c7b $f8
    db   $00                                           ;; 0d:4c7c .
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:4c7d $fc
    db   $26                                           ;; 0d:4c7e .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4c7f $fd
    db   $00                                           ;; 0d:4c80 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4c81 $fd
    db   $01                                           ;; 0d:4c82 .
    db  $f0 ;;DELAY                                    ;; 0d:4c83 $f0
    db   $3c                                           ;; 0d:4c84 .
    db  $f8 ;;SET_MUSIC                                ;; 0d:4c85 $f8
    db   $0a                                           ;; 0d:4c86 .
    db  $04 ;;MSG                                      ;; 0d:4c87 $04
    db   "<10><BOY>:<GIRL>!\n<GIRL>:__", $00           ;; 0d:4c88 ..........
    db  $f0 ;;DELAY                                    ;; 0d:4c92 $f0
    db   $1e                                           ;; 0d:4c93 .
    db  $04 ;;MSG                                      ;; 0d:4c94 $04
    db   "___", $00                                    ;; 0d:4c95 ...
    db  $f0 ;;DELAY                                    ;; 0d:4c98 $f0
    db   $32                                           ;; 0d:4c99 .
    db  $04 ;;MSG                                      ;; 0d:4c9a $04
    db   "<1b>Julius:You're\n late, <BOY>_<12>"        ;; 0d:4c9b .................
    db   "<1b> I already got\n the greatest\n power of Mana!<12>" ;; 0d:4cac ...............................
    db   "<1b> The time has come\n for the Empire\n Neo-Vandole!<12>" ;; 0d:4ccb ....................................
    db   "<1b> Now that I have\n the mighty power_<12>" ;; 0d:4cef ......................
    db   "<1b> I do not need you\n anymore, <BOY>!<12>" ;; 0d:4d05 .......................
    db   "<11>", $00                                   ;; 0d:4d1c ...
    db  $f4 ;;LOAD_ROOM                                ;; 0d:4d1f $f4
    db   $01, $67, $09, $0a                            ;; 0d:4d20 ....
    db  $02 ;;CALL                                     ;; 0d:4d24 $02
    db   $09, $48                                      ;; 0d:4d25 ..
    db  $01 ;;JR                                       ;; 0d:4d27 $01
    db   $13                                           ;; 0d:4d28 .
    db  $b0 ;;SET_ROOM_TILE                            ;; 0d:4d29 $b0
    db   $11, $04, $07                                 ;; 0d:4d2a ...
    db  $f9 ;;SFX                                      ;; 0d:4d2d $f9
    db   $10                                           ;; 0d:4d2e .
    db  $f0 ;;DELAY                                    ;; 0d:4d2f $f0
    db   $0a                                           ;; 0d:4d30 .
    db  $03 ;;LOOP                                     ;; 0d:4d31 $03
    db   $0a, $04                                      ;; 0d:4d32 ..
    db  $f9 ;;SFX                                      ;; 0d:4d34 $f9
    db   $14                                           ;; 0d:4d35 .
    db  $bf ;;FLASH_SCREEN                             ;; 0d:4d36 $bf
    db  $00 ;;END                                      ;; 0d:4d37 $00
    db  $fe ;;SPAWN_BOSS                               ;; 0d:4d38 $fe
    db   $11                                           ;; 0d:4d39 .
    db  $f8 ;;SET_MUSIC                                ;; 0d:4d3a $f8
    db   $10                                           ;; 0d:4d3b .
    db  $00 ;;END                                      ;; 0d:4d3c $00

script_019e:
    db  $00 ;;END                                      ;; 0d:4d3d $00

script_019f:
    db  $02 ;;CALL                                     ;; 0d:4d3e $02
    db   $6f, $ba                                      ;; 0d:4d3f ..
    db  $02 ;;CALL                                     ;; 0d:4d41 $02
    db   $71, $ec                                      ;; 0d:4d42 ..
    db  $02 ;;CALL                                     ;; 0d:4d44 $02
    db   $74, $0c                                      ;; 0d:4d45 ..
    db  $cc ;;UNK_CC                                   ;; 0d:4d47 $cc
    db  $00 ;;END                                      ;; 0d:4d48 $00

script_01a0:
    db  $08 ;;IF ? JR                                  ;; 0d:4d49 $08
    db   $a3, $00, $08                                 ;; 0d:4d4a ...
    db  $f9 ;;SFX                                      ;; 0d:4d4d $f9
    db   $14                                           ;; 0d:4d4e .
    db  $f8 ;;SET_MUSIC                                ;; 0d:4d4f $f8
    db   $0f                                           ;; 0d:4d50 .
    db  $fe ;;SPAWN_BOSS                               ;; 0d:4d51 $fe
    db   $01                                           ;; 0d:4d52 .
    db  $01 ;;JR                                       ;; 0d:4d53 $01
    db   $01                                           ;; 0d:4d54 .
    db  $ee ;;UNK_EE                                   ;; 0d:4d55 $ee
    db  $00 ;;END                                      ;; 0d:4d56 $00

script_01a1:
    db  $f8 ;;SET_MUSIC                                ;; 0d:4d57 $f8
    db   $07                                           ;; 0d:4d58 .
    db  $00 ;;END                                      ;; 0d:4d59 $00

script_01a2:
    db  $f8 ;;SET_MUSIC                                ;; 0d:4d5a $f8
    db   $00                                           ;; 0d:4d5b .
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:4d5c $fc
    db   $59                                           ;; 0d:4d5d .
    db  $b0 ;;SET_ROOM_TILE                            ;; 0d:4d5e $b0
    db   $25, $03, $04                                 ;; 0d:4d5f ...
    db  $b0 ;;SET_ROOM_TILE                            ;; 0d:4d62 $b0
    db   $25, $04, $04                                 ;; 0d:4d63 ...
    db  $b0 ;;SET_ROOM_TILE                            ;; 0d:4d66 $b0
    db   $25, $05, $04                                 ;; 0d:4d67 ...
    db  $b0 ;;SET_ROOM_TILE                            ;; 0d:4d6a $b0
    db   $25, $06, $04                                 ;; 0d:4d6b ...
    db  $da ;;SET_FLAG                                 ;; 0d:4d6e $da
    db   $23                                           ;; 0d:4d6f .
    db  $08 ;;IF ? JR                                  ;; 0d:4d70 $08
    db   $c9, $00, $05                                 ;; 0d:4d71 ...
    db  $fd ;;SPAWN_NPC                                ;; 0d:4d74 $fd
    db   $01                                           ;; 0d:4d75 .
    db  $c9 ;;UNK_C9                                   ;; 0d:4d76 $c9
    db   $04, $50                                      ;; 0d:4d77 ..
    db  $08 ;;IF ? JR                                  ;; 0d:4d79 $08
    db   $c8, $00, $05                                 ;; 0d:4d7a ...
    db  $fd ;;SPAWN_NPC                                ;; 0d:4d7d $fd
    db   $02                                           ;; 0d:4d7e .
    db  $ca ;;UNK_CA                                   ;; 0d:4d7f $ca
    db   $04, $51                                      ;; 0d:4d80 ..
    db  $00 ;;END                                      ;; 0d:4d82 $00

script_01a3:
    db  $08 ;;IF ? JR                                  ;; 0d:4d83 $08
    db   $72, $73, $f4, $75, $f6, $77, $00, $13        ;; 0d:4d84 ........
    db  $08 ;;IF ? JR                                  ;; 0d:4d8c $08
    db   $b4, $00, $0b                                 ;; 0d:4d8d ...
    db  $f9 ;;SFX                                      ;; 0d:4d90 $f9
    db   $14                                           ;; 0d:4d91 .
    db  $bf ;;FLASH_SCREEN                             ;; 0d:4d92 $bf
    db  $f0 ;;DELAY                                    ;; 0d:4d93 $f0
    db   $1e                                           ;; 0d:4d94 .
    db  $fe ;;SPAWN_BOSS                               ;; 0d:4d95 $fe
    db   $0f                                           ;; 0d:4d96 .
    db  $f8 ;;SET_MUSIC                                ;; 0d:4d97 $f8
    db   $0f                                           ;; 0d:4d98 .
    db  $01 ;;JR                                       ;; 0d:4d99 $01
    db   $04                                           ;; 0d:4d9a .
    db  $b0 ;;SET_ROOM_TILE                            ;; 0d:4d9b $b0
    db   $59, $08, $01                                 ;; 0d:4d9c ...
    db  $08 ;;IF ? JR                                  ;; 0d:4d9f $08
    db   $72, $73, $f4, $75, $76, $f7, $00, $13        ;; 0d:4da0 ........
    db  $08 ;;IF ? JR                                  ;; 0d:4da8 $08
    db   $97, $00, $0b                                 ;; 0d:4da9 ...
    db  $f9 ;;SFX                                      ;; 0d:4dac $f9
    db   $14                                           ;; 0d:4dad .
    db  $bf ;;FLASH_SCREEN                             ;; 0d:4dae $bf
    db  $f0 ;;DELAY                                    ;; 0d:4daf $f0
    db   $1e                                           ;; 0d:4db0 .
    db  $fe ;;SPAWN_BOSS                               ;; 0d:4db1 $fe
    db   $14                                           ;; 0d:4db2 .
    db  $f8 ;;SET_MUSIC                                ;; 0d:4db3 $f8
    db   $0f                                           ;; 0d:4db4 .
    db  $01 ;;JR                                       ;; 0d:4db5 $01
    db   $04                                           ;; 0d:4db6 .
    db  $b0 ;;SET_ROOM_TILE                            ;; 0d:4db7 $b0
    db   $59, $08, $01                                 ;; 0d:4db8 ...
    db  $08 ;;IF ? JR                                  ;; 0d:4dbb $08
    db   $72, $73, $f4, $75, $76, $77, $00, $13        ;; 0d:4dbc ........
    db  $08 ;;IF ? JR                                  ;; 0d:4dc4 $08
    db   $b2, $00, $0b                                 ;; 0d:4dc5 ...
    db  $f9 ;;SFX                                      ;; 0d:4dc8 $f9
    db   $14                                           ;; 0d:4dc9 .
    db  $bf ;;FLASH_SCREEN                             ;; 0d:4dca $bf
    db  $f0 ;;DELAY                                    ;; 0d:4dcb $f0
    db   $1e                                           ;; 0d:4dcc .
    db  $fe ;;SPAWN_BOSS                               ;; 0d:4dcd $fe
    db   $0d                                           ;; 0d:4dce .
    db  $f8 ;;SET_MUSIC                                ;; 0d:4dcf $f8
    db   $0f                                           ;; 0d:4dd0 .
    db  $01 ;;JR                                       ;; 0d:4dd1 $01
    db   $04                                           ;; 0d:4dd2 .
    db  $b0 ;;SET_ROOM_TILE                            ;; 0d:4dd3 $b0
    db   $59, $08, $01                                 ;; 0d:4dd4 ...
    db  $00 ;;END                                      ;; 0d:4dd7 $00

script_01a4:
    db  $f8 ;;SET_MUSIC                                ;; 0d:4dd8 $f8
    db   $16                                           ;; 0d:4dd9 .
    db  $00 ;;END                                      ;; 0d:4dda $00

script_01a5:
    db  $08 ;;IF ? JR                                  ;; 0d:4ddb $08
    db   $72, $73, $f4, $75, $f6, $77, $00, $23        ;; 0d:4ddc ........
    db  $f8 ;;SET_MUSIC                                ;; 0d:4de4 $f8
    db   $00                                           ;; 0d:4de5 .
    db  $f9 ;;SFX                                      ;; 0d:4de6 $f9
    db   $22                                           ;; 0d:4de7 .
    db  $04 ;;MSG                                      ;; 0d:4de8 $04
    db   "<10>Defeated\n   Dragon Zombie!<12>"         ;; 0d:4de9 .....................
    db   "<11>", $00                                   ;; 0d:4dfe ...
    db  $da ;;SET_FLAG                                 ;; 0d:4e01 $da
    db   $34                                           ;; 0d:4e02 .
    db  $b0 ;;SET_ROOM_TILE                            ;; 0d:4e03 $b0
    db   $59, $08, $01                                 ;; 0d:4e04 ...
    db  $08 ;;IF ? JR                                  ;; 0d:4e07 $08
    db   $72, $73, $f4, $75, $76, $f7, $00, $21        ;; 0d:4e08 ........
    db  $f8 ;;SET_MUSIC                                ;; 0d:4e10 $f8
    db   $00                                           ;; 0d:4e11 .
    db  $f9 ;;SFX                                      ;; 0d:4e12 $f9
    db   $22                                           ;; 0d:4e13 .
    db  $04 ;;MSG                                      ;; 0d:4e14 $04
    db   "<10>Defeated\n    Red Dragon!<12>"           ;; 0d:4e15 ...................
    db   "<11>", $00                                   ;; 0d:4e28 ...
    db  $da ;;SET_FLAG                                 ;; 0d:4e2b $da
    db   $17                                           ;; 0d:4e2c .
    db  $b0 ;;SET_ROOM_TILE                            ;; 0d:4e2d $b0
    db   $59, $08, $01                                 ;; 0d:4e2e ...
    db  $08 ;;IF ? JR                                  ;; 0d:4e31 $08
    db   $72, $73, $f4, $75, $76, $77, $00, $1b        ;; 0d:4e32 ........
    db  $f8 ;;SET_MUSIC                                ;; 0d:4e3a $f8
    db   $00                                           ;; 0d:4e3b .
    db  $f9 ;;SFX                                      ;; 0d:4e3c $f9
    db   $22                                           ;; 0d:4e3d .
    db  $04 ;;MSG                                      ;; 0d:4e3e $04
    db   "<10>Defeated Dragon!<12>"                    ;; 0d:4e3f .............
    db   "<11>", $00                                   ;; 0d:4e4c ...
    db  $da ;;SET_FLAG                                 ;; 0d:4e4f $da
    db   $32                                           ;; 0d:4e50 .
    db  $b0 ;;SET_ROOM_TILE                            ;; 0d:4e51 $b0
    db   $59, $08, $01                                 ;; 0d:4e52 ...
    db  $f0 ;;DELAY                                    ;; 0d:4e55 $f0
    db   $1e                                           ;; 0d:4e56 .
    db  $f8 ;;SET_MUSIC                                ;; 0d:4e57 $f8
    db   $16                                           ;; 0d:4e58 .
    db  $00 ;;END                                      ;; 0d:4e59 $00

script_01a6:
    db  $08 ;;IF ? JR                                  ;; 0d:4e5a $08
    db   $a4, $00, $04                                 ;; 0d:4e5b ...
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:4e5e $fc
    db   $5a                                           ;; 0d:4e5f .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4e60 $fd
    db   $01                                           ;; 0d:4e61 .
    db  $08 ;;IF ? JR                                  ;; 0d:4e62 $08
    db   $24, $00, $01                                 ;; 0d:4e63 ...
    db  $e4 ;;UNK_E4                                   ;; 0d:4e66 $e4
    db  $08 ;;IF ? JR                                  ;; 0d:4e67 $08
    db   $40, $a5, $00, $31                            ;; 0d:4e68 ....
    db  $b0 ;;SET_ROOM_TILE                            ;; 0d:4e6c $b0
    db   $42, $04, $07                                 ;; 0d:4e6d ...
    db  $b0 ;;SET_ROOM_TILE                            ;; 0d:4e70 $b0
    db   $43, $05, $07                                 ;; 0d:4e71 ...
    db  $08 ;;IF ? JR                                  ;; 0d:4e74 $08
    db   $0e, $00, $25                                 ;; 0d:4e75 ...
    db  $f8 ;;SET_MUSIC                                ;; 0d:4e78 $f8
    db   $00                                           ;; 0d:4e79 .
    db  $f0 ;;DELAY                                    ;; 0d:4e7a $f0
    db   $32                                           ;; 0d:4e7b .
    db  $04 ;;MSG                                      ;; 0d:4e7c $04
    db   "<10>Lee:That's my\n victim!<12>"             ;; 0d:4e7d ..................
    db   "<11>", $00                                   ;; 0d:4e8f ...
    db  $f9 ;;SFX                                      ;; 0d:4e92 $f9
    db   $14                                           ;; 0d:4e93 .
    db  $bf ;;FLASH_SCREEN                             ;; 0d:4e94 $bf
    db  $bf ;;FLASH_SCREEN                             ;; 0d:4e95 $bf
    db  $bf ;;FLASH_SCREEN                             ;; 0d:4e96 $bf
    db  $f0 ;;DELAY                                    ;; 0d:4e97 $f0
    db   $0a                                           ;; 0d:4e98 .
    db  $f8 ;;SET_MUSIC                                ;; 0d:4e99 $f8
    db   $0f                                           ;; 0d:4e9a .
    db  $fe ;;SPAWN_BOSS                               ;; 0d:4e9b $fe
    db   $00                                           ;; 0d:4e9c .
    db  $00 ;;END                                      ;; 0d:4e9d $00

script_01a7:
    db  $f8 ;;SET_MUSIC                                ;; 0d:4e9e $f8
    db   $07                                           ;; 0d:4e9f .
    db  $00 ;;END                                      ;; 0d:4ea0 $00

script_01a8:
    db  $08 ;;IF ? JR                                  ;; 0d:4ea1 $08
    db   $8e, $00, $12                                 ;; 0d:4ea2 ...
    db  $d5 ;;UNK_D5                                   ;; 0d:4ea5 $d5
    db   $1e                                           ;; 0d:4ea6 .
    db  $09 ;;IF ? JR                                  ;; 0d:4ea7 $09
    db   $27, $00, $01                                 ;; 0d:4ea8 ...
    db  $de ;;UNK_DE                                   ;; 0d:4eab $de
    db  $f9 ;;SFX                                      ;; 0d:4eac $f9
    db   $10                                           ;; 0d:4ead .
    db  $e4 ;;UNK_E4                                   ;; 0d:4eae $e4
    db  $da ;;SET_FLAG                                 ;; 0d:4eaf $da
    db   $24                                           ;; 0d:4eb0 .
    db  $f0 ;;DELAY                                    ;; 0d:4eb1 $f0
    db   $3c                                           ;; 0d:4eb2 .
    db  $f8 ;;SET_MUSIC                                ;; 0d:4eb3 $f8
    db   $07                                           ;; 0d:4eb4 .
    db  $01 ;;JR                                       ;; 0d:4eb5 $01
    db   $89                                           ;; 0d:4eb6 .
    db  $f0 ;;DELAY                                    ;; 0d:4eb7 $f0
    db   $1e                                           ;; 0d:4eb8 .
    db  $f8 ;;SET_MUSIC                                ;; 0d:4eb9 $f8
    db   $00                                           ;; 0d:4eba .
    db  $04 ;;MSG                                      ;; 0d:4ebb $04
    db   "<10>Defeated Vampire!<12>"                   ;; 0d:4ebc .............
    db   "<1b>", $00                                   ;; 0d:4ec9 ...
    db  $f9 ;;SFX                                      ;; 0d:4ecc $f9
    db   $0f                                           ;; 0d:4ecd .
    db  $04 ;;MSG                                      ;; 0d:4ece $04
    db   "<1b>Received the Magic\nBook of Sleep.\nLearned Slep.", $00 ;; 0d:4ecf ...................................
    db  $d6 ;;GIVE_MAGIC                               ;; 0d:4ef2 $d6
    db   $03                                           ;; 0d:4ef3 .
    db  $04 ;;MSG                                      ;; 0d:4ef4 $04
    db   "<12>"                                        ;; 0d:4ef5 
    db   "<1b><BOY>:Are you\n alright, <GIRL>?\n<GIRL>:_ Yeah.<12>" ;; 0d:4ef5 ..........................
    db   "<11>", $00                                   ;; 0d:4f0f ...
    db  $f0 ;;DELAY                                    ;; 0d:4f12 $f0
    db   $14                                           ;; 0d:4f13 .
    db  $f4 ;;LOAD_ROOM                                ;; 0d:4f14 $f4
    db   $00, $a9, $0a, $06                            ;; 0d:4f15 ....
    db  $f0 ;;DELAY                                    ;; 0d:4f19 $f0
    db   $3c                                           ;; 0d:4f1a .
    db  $04 ;;MSG                                      ;; 0d:4f1b $04
    db   "<10><GIRL>:Wendel is\n to the south.\n Let's hurry!<12>" ;; 0d:4f1c ............................
    db   "<11>", $00                                   ;; 0d:4f38 ...
    db  $f8 ;;SET_MUSIC                                ;; 0d:4f3b $f8
    db   $14                                           ;; 0d:4f3c .
    db  $da ;;SET_FLAG                                 ;; 0d:4f3d $da
    db   $25                                           ;; 0d:4f3e .
    db  $ab ;;UNK_AB                                   ;; 0d:4f3f $ab
    db  $00 ;;END                                      ;; 0d:4f40 $00

script_01a9:
    db  $f8 ;;SET_MUSIC                                ;; 0d:4f41 $f8
    db   $00                                           ;; 0d:4f42 .
    db  $08 ;;IF ? JR                                  ;; 0d:4f43 $08
    db   $a6, $00, $0b                                 ;; 0d:4f44 ...
    db  $f9 ;;SFX                                      ;; 0d:4f47 $f9
    db   $14                                           ;; 0d:4f48 .
    db  $bf ;;FLASH_SCREEN                             ;; 0d:4f49 $bf
    db  $f0 ;;DELAY                                    ;; 0d:4f4a $f0
    db   $1e                                           ;; 0d:4f4b .
    db  $f8 ;;SET_MUSIC                                ;; 0d:4f4c $f8
    db   $0f                                           ;; 0d:4f4d .
    db  $fe ;;SPAWN_BOSS                               ;; 0d:4f4e $fe
    db   $03                                           ;; 0d:4f4f .
    db  $01 ;;JR                                       ;; 0d:4f50 $01
    db   $11                                           ;; 0d:4f51 .
    db  $08 ;;IF ? JR                                  ;; 0d:4f52 $08
    db   $94, $00, $09                                 ;; 0d:4f53 ...
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:4f56 $fc
    db   $59                                           ;; 0d:4f57 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:4f58 $fd
    db   $00                                           ;; 0d:4f59 .
    db  $c9 ;;UNK_C9                                   ;; 0d:4f5a $c9
    db   $04, $35                                      ;; 0d:4f5b ..
    db  $01 ;;JR                                       ;; 0d:4f5d $01
    db   $04                                           ;; 0d:4f5e .
    db  $b0 ;;SET_ROOM_TILE                            ;; 0d:4f5f $b0
    db   $59, $02, $01                                 ;; 0d:4f60 ...
    db  $00 ;;END                                      ;; 0d:4f63 $00

script_01aa:
    db  $f8 ;;SET_MUSIC                                ;; 0d:4f64 $f8
    db   $07                                           ;; 0d:4f65 .
    db  $00 ;;END                                      ;; 0d:4f66 $00

script_01ab:
    db  $f0 ;;DELAY                                    ;; 0d:4f67 $f0
    db   $14                                           ;; 0d:4f68 .
    db  $04 ;;MSG                                      ;; 0d:4f69 $04
    db   "<10>Defeated Megapede!<12>"                  ;; 0d:4f6a ..............
    db   "<11>", $00                                   ;; 0d:4f78 ...
    db  $da ;;SET_FLAG                                 ;; 0d:4f7b $da
    db   $26                                           ;; 0d:4f7c .
    db  $ec ;;RUN_ROOM_SCRIPT                          ;; 0d:4f7d $ec
    db  $00 ;;END                                      ;; 0d:4f7e $00

script_01ac:
    db  $08 ;;IF ? JR                                  ;; 0d:4f7f $08
    db   $a7, $00, $33                                 ;; 0d:4f80 ...
    db  $f0 ;;DELAY                                    ;; 0d:4f83 $f0
    db   $3c                                           ;; 0d:4f84 .
    db  $04 ;;MSG                                      ;; 0d:4f85 $04
    db   "<10>Medusa:This will\n be your place\n to rest forever!<12>" ;; 0d:4f86 .................................
    db   "<11>", $00                                   ;; 0d:4fa7 ...
    db  $f0 ;;DELAY                                    ;; 0d:4faa $f0
    db   $1e                                           ;; 0d:4fab .
    db  $f9 ;;SFX                                      ;; 0d:4fac $f9
    db   $14                                           ;; 0d:4fad .
    db  $bf ;;FLASH_SCREEN                             ;; 0d:4fae $bf
    db  $bf ;;FLASH_SCREEN                             ;; 0d:4faf $bf
    db  $f0 ;;DELAY                                    ;; 0d:4fb0 $f0
    db   $1e                                           ;; 0d:4fb1 .
    db  $f8 ;;SET_MUSIC                                ;; 0d:4fb2 $f8
    db   $0f                                           ;; 0d:4fb3 .
    db  $fe ;;SPAWN_BOSS                               ;; 0d:4fb4 $fe
    db   $02                                           ;; 0d:4fb5 .
    db  $08 ;;IF ? JR                                  ;; 0d:4fb6 $08
    db   $27, $00, $12                                 ;; 0d:4fb7 ...
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:4fba $fc
    db   $42                                           ;; 0d:4fbb .
    db  $f8 ;;SET_MUSIC                                ;; 0d:4fbc $f8
    db   $02                                           ;; 0d:4fbd .
    db  $08 ;;IF ? JR                                  ;; 0d:4fbe $08
    db   $d5, $9c, $00, $02                            ;; 0d:4fbf ....
    db  $fd ;;SPAWN_NPC                                ;; 0d:4fc3 $fd
    db   $00                                           ;; 0d:4fc4 .
    db  $08 ;;IF ? JR                                  ;; 0d:4fc5 $08
    db   $1c, $b5, $00, $02                            ;; 0d:4fc6 ....
    db  $fd ;;SPAWN_NPC                                ;; 0d:4fca $fd
    db   $01                                           ;; 0d:4fcb .
    db  $00 ;;END                                      ;; 0d:4fcc $00

script_01ad:
    db  $f8 ;;SET_MUSIC                                ;; 0d:4fcd $f8
    db   $08                                           ;; 0d:4fce .
    db  $00 ;;END                                      ;; 0d:4fcf $00

script_01ae:
    db  $08 ;;IF ? JR                                  ;; 0d:4fd0 $08
    db   $a7, $00, $8e                                 ;; 0d:4fd1 ...
    db  $f8 ;;SET_MUSIC                                ;; 0d:4fd4 $f8
    db   $00                                           ;; 0d:4fd5 .
    db  $f9 ;;SFX                                      ;; 0d:4fd6 $f9
    db   $22                                           ;; 0d:4fd7 .
    db  $f0 ;;DELAY                                    ;; 0d:4fd8 $f0
    db   $b4                                           ;; 0d:4fd9 .
    db  $bd ;;FADE_TO_BLACK                            ;; 0d:4fda $bd
    db  $f3 ;;LOAD_ROOM_INSTANT                        ;; 0d:4fdb $f3
    db   $0f, $55, $14, $00                            ;; 0d:4fdc ....
    db  $f8 ;;SET_MUSIC                                ;; 0d:4fe0 $f8
    db   $0a                                           ;; 0d:4fe1 .
    db  $bc ;;FADE_TO_NORMAL                           ;; 0d:4fe2 $bc
    db  $04 ;;MSG                                      ;; 0d:4fe3 $04
    db   "<10>Madusa:Came here\n to get my tears?\n Huh! What a joke!<12>" ;; 0d:4fe4 ....................................
    db   "<11>", $00                                   ;; 0d:5008 ...
    db  $bd ;;FADE_TO_BLACK                            ;; 0d:500b $bd
    db  $f0 ;;DELAY                                    ;; 0d:500c $f0
    db   $1e                                           ;; 0d:500d .
    db  $f3 ;;LOAD_ROOM_INSTANT                        ;; 0d:500e $f3
    db   $01, $30, $0c, $08                            ;; 0d:500f ....
    db  $84 ;;SET_PLAYER_DIRECTION_UP                  ;; 0d:5013 $84
    db  $99 ;;FOLLOWER_SET_POSITION                    ;; 0d:5014 $99
    db   $0a, $08                                      ;; 0d:5015 ..
    db  $bc ;;FADE_TO_NORMAL                           ;; 0d:5017 $bc
    db  $f0 ;;DELAY                                    ;; 0d:5018 $f0
    db   $3c                                           ;; 0d:5019 .
    db  $97 ;;FOLLOWER_DIRECTION_LEFT                  ;; 0d:501a $97
    db  $f0 ;;DELAY                                    ;; 0d:501b $f0
    db   $3c                                           ;; 0d:501c .
    db  $96 ;;FOLLOWER_DIRECTION_RIGHT                 ;; 0d:501d $96
    db  $f0 ;;DELAY                                    ;; 0d:501e $f0
    db   $3c                                           ;; 0d:501f .
    db  $87 ;;SET_PLAYER_DIRECTION_LEFT                ;; 0d:5020 $87
    db  $99 ;;FOLLOWER_SET_POSITION                    ;; 0d:5021 $99
    db   $0a, $08                                      ;; 0d:5022 ..
    db  $f0 ;;DELAY                                    ;; 0d:5024 $f0
    db   $3c                                           ;; 0d:5025 .
    db  $04 ;;MSG                                      ;; 0d:5026 $04
    db   "<10>Amanda:Can't find\n a drop of tear__<12>" ;; 0d:5027 ........................
    db   "<1b><BOY>:Let's go back\n to Jadd first.<12>" ;; 0d:503f ......................
    db   "<11>", $00                                   ;; 0d:5055 ...
    db  $86 ;;SET_PLAYER_DIRECTION_RIGHT               ;; 0d:5058 $86
    db  $80 ;;PLAYER_STEP_FORWARD                      ;; 0d:5059 $80
    db  $80 ;;PLAYER_STEP_FORWARD                      ;; 0d:505a $80
    db  $02 ;;CALL                                     ;; 0d:505b $02
    db   $28, $9c                                      ;; 0d:505c ..
    db  $db ;;CLEAR_FLAG                               ;; 0d:505e $db
    db   $55                                           ;; 0d:505f .
    db  $da ;;SET_FLAG                                 ;; 0d:5060 $da
    db   $27                                           ;; 0d:5061 .
    db  $00 ;;END                                      ;; 0d:5062 $00

script_01af:
    db  $08 ;;IF ? JR                                  ;; 0d:5063 $08
    db   $1d, $a8, $00, $3a                            ;; 0d:5064 ....
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:5068 $fc
    db   $41                                           ;; 0d:5069 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:506a $fd
    db   $00                                           ;; 0d:506b .
    db  $f0 ;;DELAY                                    ;; 0d:506c $f0
    db   $14                                           ;; 0d:506d .
    db  $04 ;;MSG                                      ;; 0d:506e $04
    db   "<10>Davias:HA!\n You can never\n defeat me!<12>" ;; 0d:506f .............................
    db   "<11>", $00                                   ;; 0d:508c ...
    db  $bf ;;FLASH_SCREEN                             ;; 0d:508f $bf
    db  $f9 ;;SFX                                      ;; 0d:5090 $f9
    db   $14                                           ;; 0d:5091 .
    db  $bf ;;FLASH_SCREEN                             ;; 0d:5092 $bf
    db  $f9 ;;SFX                                      ;; 0d:5093 $f9
    db   $14                                           ;; 0d:5094 .
    db  $18 ;;DEL_NPC_1                                ;; 0d:5095 $18
    db  $f9 ;;SFX                                      ;; 0d:5096 $f9
    db   $14                                           ;; 0d:5097 .
    db  $bf ;;FLASH_SCREEN                             ;; 0d:5098 $bf
    db  $f9 ;;SFX                                      ;; 0d:5099 $f9
    db   $14                                           ;; 0d:509a .
    db  $bf ;;FLASH_SCREEN                             ;; 0d:509b $bf
    db  $f0 ;;DELAY                                    ;; 0d:509c $f0
    db   $1e                                           ;; 0d:509d .
    db  $fe ;;SPAWN_BOSS                               ;; 0d:509e $fe
    db   $04                                           ;; 0d:509f .
    db  $f8 ;;SET_MUSIC                                ;; 0d:50a0 $f8
    db   $13                                           ;; 0d:50a1 .
    db  $da ;;SET_FLAG                                 ;; 0d:50a2 $da
    db   $79                                           ;; 0d:50a3 .
    db  $00 ;;END                                      ;; 0d:50a4 $00

script_01b0:
    db  $db ;;CLEAR_FLAG                               ;; 0d:50a5 $db
    db   $79                                           ;; 0d:50a6 .
    db  $f8 ;;SET_MUSIC                                ;; 0d:50a7 $f8
    db   $07                                           ;; 0d:50a8 .
    db  $00 ;;END                                      ;; 0d:50a9 $00

script_01b1:
    db  $f8 ;;SET_MUSIC                                ;; 0d:50aa $f8
    db   $00                                           ;; 0d:50ab .
    db  $f0 ;;DELAY                                    ;; 0d:50ac $f0
    db   $50                                           ;; 0d:50ad .
    db  $04 ;;MSG                                      ;; 0d:50ae $04
    db   "<10>Lester:We did it!<12>"                   ;; 0d:50af ............
    db   "<1b>Davias:The Pendant\n is no longer\n here, my dear__!", $00 ;; 0d:50bb ..................................
    db  $f8 ;;SET_MUSIC                                ;; 0d:50dd $f8
    db   $0a                                           ;; 0d:50de .
    db  $04 ;;MSG                                      ;; 0d:50df $04
    db   "<12>"                                        ;; 0d:50e0 
    db   "<1b> Garuda is flying\n over Mt. Rocks\n to Glaive__<12>" ;; 0d:50e0 ................................
    db   "<1b>\n   Davias fell__<12>"                  ;; 0d:5100 .............
    db   "<11>", $00                                   ;; 0d:510d ...
    db  $f8 ;;SET_MUSIC                                ;; 0d:5110 $f8
    db   $00                                           ;; 0d:5111 .
    db  $f0 ;;DELAY                                    ;; 0d:5112 $f0
    db   $3c                                           ;; 0d:5113 .
    db  $98 ;;FOLLOWER_DELETE                          ;; 0d:5114 $98
    db  $f0 ;;DELAY                                    ;; 0d:5115 $f0
    db   $1e                                           ;; 0d:5116 .
    db  $84 ;;SET_PLAYER_DIRECTION_UP                  ;; 0d:5117 $84
    db  $f4 ;;LOAD_ROOM                                ;; 0d:5118 $f4
    db   $0e, $04, $0c, $0a                            ;; 0d:5119 ....
    db  $f0 ;;DELAY                                    ;; 0d:511d $f0
    db   $1e                                           ;; 0d:511e .
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:511f $fc
    db   $3e                                           ;; 0d:5120 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:5121 $fd
    db   $01                                           ;; 0d:5122 .
    db  $04 ;;MSG                                      ;; 0d:5123 $04
    db   "<10>Lester:__Going?\n<BOY>:Yeah__  But\n the poison gas__<12>" ;; 0d:5124 ................................
    db   "<1b>Lester:My harp\n tunes will clear\n the gas, <BOY>!<12>" ;; 0d:5144 .............................
    db   "<11>", $00                                   ;; 0d:5161 ...
    db  $fd ;;SPAWN_NPC                                ;; 0d:5164 $fd
    db   $02                                           ;; 0d:5165 .
    db  $f8 ;;SET_MUSIC                                ;; 0d:5166 $f8
    db   $0d                                           ;; 0d:5167 .
    db  $f0 ;;DELAY                                    ;; 0d:5168 $f0
    db   $b4                                           ;; 0d:5169 .
    db  $04 ;;MSG                                      ;; 0d:516a $04
    db   "<10> __ I'll stay here\n and play requiem\n for my sister.<12>" ;; 0d:516b ...................................
    db   "<1b><BOY>:Okay, Lester.\n I'm going.\n __ Take care.<12>" ;; 0d:518e ................................
    db   "<1b>Lester:Take this\n book with you.\n It might help.<12>" ;; 0d:51ae ................................
    db   "<1b>", $00                                   ;; 0d:51ce ...
    db  $f9 ;;SFX                                      ;; 0d:51d1 $f9
    db   $0f                                           ;; 0d:51d2 .
    db  $04 ;;MSG                                      ;; 0d:51d3 $04
    db   "Received the Magic\nBook of Mute.\nLearned Mute.<12>" ;; 0d:51d4 ..............................
    db   "<11>", $00                                   ;; 0d:51f2 ...
    db  $d6 ;;GIVE_MAGIC                               ;; 0d:51f5 $d6
    db   $02                                           ;; 0d:51f6 .
    db  $f0 ;;DELAY                                    ;; 0d:51f7 $f0
    db   $3c                                           ;; 0d:51f8 .
    db  $db ;;CLEAR_FLAG                               ;; 0d:51f9 $db
    db   $56                                           ;; 0d:51fa .
    db  $da ;;SET_FLAG                                 ;; 0d:51fb $da
    db   $28                                           ;; 0d:51fc .
    db  $ab ;;UNK_AB                                   ;; 0d:51fd $ab
    db  $00 ;;END                                      ;; 0d:51fe $00

script_01b2:
    db  $08 ;;IF ? JR                                  ;; 0d:51ff $08
    db   $a9, $00, $0e                                 ;; 0d:5200 ...
    db  $f0 ;;DELAY                                    ;; 0d:5203 $f0
    db   $1e                                           ;; 0d:5204 .
    db  $f9 ;;SFX                                      ;; 0d:5205 $f9
    db   $14                                           ;; 0d:5206 .
    db  $bf ;;FLASH_SCREEN                             ;; 0d:5207 $bf
    db  $f9 ;;SFX                                      ;; 0d:5208 $f9
    db   $14                                           ;; 0d:5209 .
    db  $bf ;;FLASH_SCREEN                             ;; 0d:520a $bf
    db  $f8 ;;SET_MUSIC                                ;; 0d:520b $f8
    db   $0f                                           ;; 0d:520c .
    db  $fe ;;SPAWN_BOSS                               ;; 0d:520d $fe
    db   $06                                           ;; 0d:520e .
    db  $01 ;;JR                                       ;; 0d:520f $01
    db   $0b                                           ;; 0d:5210 .
    db  $08 ;;IF ? JR                                  ;; 0d:5211 $08
    db   $ce, $00, $07                                 ;; 0d:5212 ...
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:5215 $fc
    db   $59                                           ;; 0d:5216 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:5217 $fd
    db   $01                                           ;; 0d:5218 .
    db  $c9 ;;UNK_C9                                   ;; 0d:5219 $c9
    db   $04, $5d                                      ;; 0d:521a ..
    db  $00 ;;END                                      ;; 0d:521c $00

script_01b3:
    db  $f8 ;;SET_MUSIC                                ;; 0d:521d $f8
    db   $07                                           ;; 0d:521e .
    db  $00 ;;END                                      ;; 0d:521f $00

script_01b4:
    db  $f8 ;;SET_MUSIC                                ;; 0d:5220 $f8
    db   $00                                           ;; 0d:5221 .
    db  $f0 ;;DELAY                                    ;; 0d:5222 $f0
    db   $14                                           ;; 0d:5223 .
    db  $04 ;;MSG                                      ;; 0d:5224 $04
    db   "<10>Defeated Cyclops!<12>"                   ;; 0d:5225 ...............
    db   "<11>", $00                                   ;; 0d:5234 ...
    db  $da ;;SET_FLAG                                 ;; 0d:5237 $da
    db   $29                                           ;; 0d:5238 .
    db  $ec ;;RUN_ROOM_SCRIPT                          ;; 0d:5239 $ec
    db  $00 ;;END                                      ;; 0d:523a $00

script_01b5:
    db  $08 ;;IF ? JR                                  ;; 0d:523b $08
    db   $b1, $00, $0e                                 ;; 0d:523c ...
    db  $f0 ;;DELAY                                    ;; 0d:523f $f0
    db   $1e                                           ;; 0d:5240 .
    db  $f9 ;;SFX                                      ;; 0d:5241 $f9
    db   $14                                           ;; 0d:5242 .
    db  $bf ;;FLASH_SCREEN                             ;; 0d:5243 $bf
    db  $f9 ;;SFX                                      ;; 0d:5244 $f9
    db   $14                                           ;; 0d:5245 .
    db  $bf ;;FLASH_SCREEN                             ;; 0d:5246 $bf
    db  $fe ;;SPAWN_BOSS                               ;; 0d:5247 $fe
    db   $0c                                           ;; 0d:5248 .
    db  $f8 ;;SET_MUSIC                                ;; 0d:5249 $f8
    db   $0f                                           ;; 0d:524a .
    db  $01 ;;JR                                       ;; 0d:524b $01
    db   $03                                           ;; 0d:524c .
    db  $02 ;;CALL                                     ;; 0d:524d $02
    db   $33, $e7                                      ;; 0d:524e ..
    db  $00 ;;END                                      ;; 0d:5250 $00

script_01b6:
    db  $08 ;;IF ? JR                                  ;; 0d:5251 $08
    db   $b1, $00, $02                                 ;; 0d:5252 ...
    db  $f8 ;;SET_MUSIC                                ;; 0d:5255 $f8
    db   $0c                                           ;; 0d:5256 .
    db  $00 ;;END                                      ;; 0d:5257 $00

script_01b7:
    db  $f8 ;;SET_MUSIC                                ;; 0d:5258 $f8
    db   $09                                           ;; 0d:5259 .
    db  $f9 ;;SFX                                      ;; 0d:525a $f9
    db   $25                                           ;; 0d:525b .
    db  $fb ;;SHAKE_SCREEN                             ;; 0d:525c $fb
    db  $02 ;;CALL                                     ;; 0d:525d $02
    db   $33, $e7                                      ;; 0d:525e ..
    db  $04 ;;MSG                                      ;; 0d:5260 $04
    db   "<10>Defeated Garuda!<12>"                    ;; 0d:5261 ............
    db   "<11>", $00                                   ;; 0d:526d ...
    db  $f0 ;;DELAY                                    ;; 0d:5270 $f0
    db   $3c                                           ;; 0d:5271 .
    db  $04 ;;MSG                                      ;; 0d:5272 $04
    db   "<10>Marcie:TOWER LOST\n ITS BALANCE.\n MUST HURRY OUT.<12>" ;; 0d:5273 .............................................
    db   "<11>", $00                                   ;; 0d:52a0 ...
    db  $da ;;SET_FLAG                                 ;; 0d:52a3 $da
    db   $31                                           ;; 0d:52a4 .
    db  $00 ;;END                                      ;; 0d:52a5 $00

script_01b8:
    db  $08 ;;IF ? JR                                  ;; 0d:52a6 $08
    db   $ab, $00, $0e                                 ;; 0d:52a7 ...
    db  $f0 ;;DELAY                                    ;; 0d:52aa $f0
    db   $1e                                           ;; 0d:52ab .
    db  $f9 ;;SFX                                      ;; 0d:52ac $f9
    db   $14                                           ;; 0d:52ad .
    db  $bf ;;FLASH_SCREEN                             ;; 0d:52ae $bf
    db  $f9 ;;SFX                                      ;; 0d:52af $f9
    db   $14                                           ;; 0d:52b0 .
    db  $bf ;;FLASH_SCREEN                             ;; 0d:52b1 $bf
    db  $fe ;;SPAWN_BOSS                               ;; 0d:52b2 $fe
    db   $05                                           ;; 0d:52b3 .
    db  $f8 ;;SET_MUSIC                                ;; 0d:52b4 $f8
    db   $0f                                           ;; 0d:52b5 .
    db  $01 ;;JR                                       ;; 0d:52b6 $01
    db   $01                                           ;; 0d:52b7 .
    db  $e0 ;;UNK_E0                                   ;; 0d:52b8 $e0
    db  $00 ;;END                                      ;; 0d:52b9 $00

script_01b9:
    db  $f8 ;;SET_MUSIC                                ;; 0d:52ba $f8
    db   $07                                           ;; 0d:52bb .
    db  $00 ;;END                                      ;; 0d:52bc $00

script_01ba:
    db  $f8 ;;SET_MUSIC                                ;; 0d:52bd $f8
    db   $00                                           ;; 0d:52be .
    db  $f9 ;;SFX                                      ;; 0d:52bf $f9
    db   $22                                           ;; 0d:52c0 .
    db  $04 ;;MSG                                      ;; 0d:52c1 $04
    db   "<10>Defeated Golem!<12>"                     ;; 0d:52c2 ............
    db   "", $00                                       ;; 0d:52ce ..
    db  $d6 ;;GIVE_MAGIC                               ;; 0d:52d0 $d6
    db   $06                                           ;; 0d:52d1 .
    db  $f9 ;;SFX                                      ;; 0d:52d2 $f9
    db   $0f                                           ;; 0d:52d3 .
    db  $04 ;;MSG                                      ;; 0d:52d4 $04
    db   "<1b>Received the Magic\nBook of Lightning.\nLearned Lit.<12>" ;; 0d:52d5 ....................................
    db   "<11>", $00                                   ;; 0d:52f9 ...
    db  $da ;;SET_FLAG                                 ;; 0d:52fc $da
    db   $2b                                           ;; 0d:52fd .
    db  $e0 ;;UNK_E0                                   ;; 0d:52fe $e0
    db  $f0 ;;DELAY                                    ;; 0d:52ff $f0
    db   $1e                                           ;; 0d:5300 .
    db  $f8 ;;SET_MUSIC                                ;; 0d:5301 $f8
    db   $07                                           ;; 0d:5302 .
    db  $00 ;;END                                      ;; 0d:5303 $00

script_01bb:
    db  $08 ;;IF ? JR                                  ;; 0d:5304 $08
    db   $ac, $00, $bb                                 ;; 0d:5305 ...
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:5308 $fc
    db   $17                                           ;; 0d:5309 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:530a $fd
    db   $00                                           ;; 0d:530b .
    db  $87 ;;SET_PLAYER_DIRECTION_LEFT                ;; 0d:530c $87
    db  $94 ;;FOLLOWER_DIRECTION_UP                    ;; 0d:530d $94
    db  $8a ;;SET_PLAYER_POSITION                      ;; 0d:530e $8a
    db   $10, $0c                                      ;; 0d:530f ..
    db  $99 ;;FOLLOWER_SET_POSITION                    ;; 0d:5311 $99
    db   $10, $0c                                      ;; 0d:5312 ..
    db  $03 ;;LOOP                                     ;; 0d:5314 $03
    db   $06, $02                                      ;; 0d:5315 ..
    db  $80 ;;PLAYER_STEP_FORWARD                      ;; 0d:5317 $80
    db  $00 ;;END                                      ;; 0d:5318 $00
    db  $84 ;;SET_PLAYER_DIRECTION_UP                  ;; 0d:5319 $84
    db  $04 ;;MSG                                      ;; 0d:531a $04
    db   "<10>Dark Lord:Looks\n like you've been\n a bit stronger.<12>" ;; 0d:531b ...................................
    db   "<1b> But, not enough\n to fight me, boy!<12>" ;; 0d:533e ........................
    db   "<1b>", $00                                   ;; 0d:5356 ...
    db  $86 ;;SET_PLAYER_DIRECTION_RIGHT               ;; 0d:5359 $86
    db  $97 ;;FOLLOWER_DIRECTION_LEFT                  ;; 0d:535a $97
    db  $04 ;;MSG                                      ;; 0d:535b $04
    db   "<BOY>:Stay outside.\n It will be too\n dangerous here.<12>" ;; 0d:535c ..............................
    db   "<1b><GIRL>:__ Okay__\n Be careful.<12>"      ;; 0d:537a ....................
    db   "<11>", $00                                   ;; 0d:538e ...
    db  $95 ;;FOLLOWER_DIRECTION_DOWN                  ;; 0d:5391 $95
    db  $90 ;;FOLLOWER_STEP_FORWARD                    ;; 0d:5392 $90
    db  $90 ;;FOLLOWER_STEP_FORWARD                    ;; 0d:5393 $90
    db  $98 ;;FOLLOWER_DELETE                          ;; 0d:5394 $98
    db  $f9 ;;SFX                                      ;; 0d:5395 $f9
    db   $10                                           ;; 0d:5396 .
    db  $b0 ;;SET_ROOM_TILE                            ;; 0d:5397 $b0
    db   $2f, $08, $07                                 ;; 0d:5398 ...
    db  $f8 ;;SET_MUSIC                                ;; 0d:539b $f8
    db   $00                                           ;; 0d:539c .
    db  $f0 ;;DELAY                                    ;; 0d:539d $f0
    db   $14                                           ;; 0d:539e .
    db  $84 ;;SET_PLAYER_DIRECTION_UP                  ;; 0d:539f $84
    db  $04 ;;MSG                                      ;; 0d:53a0 $04
    db   "<10>Dark Lord:Good\n boy, <BOY>!\n __ Now, come!<12>" ;; 0d:53a1 .............................
    db   "<11>", $00                                   ;; 0d:53be ...
    db  $f8 ;;SET_MUSIC                                ;; 0d:53c1 $f8
    db   $13                                           ;; 0d:53c2 .
    db  $00 ;;END                                      ;; 0d:53c3 $00

script_01bc:
    db  $00 ;;END                                      ;; 0d:53c4 $00

script_01bd:
    db  $f8 ;;SET_MUSIC                                ;; 0d:53c5 $f8
    db   $00                                           ;; 0d:53c6 .
    db  $f9 ;;SFX                                      ;; 0d:53c7 $f9
    db   $10                                           ;; 0d:53c8 .
    db  $b0 ;;SET_ROOM_TILE                            ;; 0d:53c9 $b0
    db   $6b, $08, $07                                 ;; 0d:53ca ...
    db  $04 ;;MSG                                      ;; 0d:53cd $04
    db   "<10>Defeated Dark Lord<12>"                  ;; 0d:53ce ..............
    db   "<1b>Received Pendant__", $00                 ;; 0d:53dc ...............
    db  $f0 ;;DELAY                                    ;; 0d:53eb $f0
    db   $64                                           ;; 0d:53ec .
    db  $04 ;;MSG                                      ;; 0d:53ed $04
    db   "<1b><BOY>:_", $00                            ;; 0d:53ee .....
    db  $f0 ;;DELAY                                    ;; 0d:53f3 $f0
    db   $64                                           ;; 0d:53f4 .
    db  $04 ;;MSG                                      ;; 0d:53f5 $04
    db   "_", $00                                      ;; 0d:53f6 ..
    db  $f0 ;;DELAY                                    ;; 0d:53f8 $f0
    db   $3c                                           ;; 0d:53f9 .
    db  $04 ;;MSG                                      ;; 0d:53fa $04
    db   " It's fake!\n _ Then, where is\n the real Pendant?", $00 ;; 0d:53fb ................................
    db  $f0 ;;DELAY                                    ;; 0d:541b $f0
    db   $50                                           ;; 0d:541c .
    db  $04 ;;MSG                                      ;; 0d:541d $04
    db   "<11>", $00                                   ;; 0d:541e ..
    db  $db ;;CLEAR_FLAG                               ;; 0d:5420 $db
    db   $51                                           ;; 0d:5421 .
    db  $da ;;SET_FLAG                                 ;; 0d:5422 $da
    db   $2c                                           ;; 0d:5423 .
    db  $f8 ;;SET_MUSIC                                ;; 0d:5424 $f8
    db   $0e                                           ;; 0d:5425 .
    db  $00 ;;END                                      ;; 0d:5426 $00

script_01be:
    db  $08 ;;IF ? JR                                  ;; 0d:5427 $08
    db   $ad, $00, $0e                                 ;; 0d:5428 ...
    db  $f0 ;;DELAY                                    ;; 0d:542b $f0
    db   $14                                           ;; 0d:542c .
    db  $f9 ;;SFX                                      ;; 0d:542d $f9
    db   $14                                           ;; 0d:542e .
    db  $bf ;;FLASH_SCREEN                             ;; 0d:542f $bf
    db  $f9 ;;SFX                                      ;; 0d:5430 $f9
    db   $14                                           ;; 0d:5431 .
    db  $bf ;;FLASH_SCREEN                             ;; 0d:5432 $bf
    db  $fe ;;SPAWN_BOSS                               ;; 0d:5433 $fe
    db   $08                                           ;; 0d:5434 .
    db  $f8 ;;SET_MUSIC                                ;; 0d:5435 $f8
    db   $0f                                           ;; 0d:5436 .
    db  $01 ;;JR                                       ;; 0d:5437 $01
    db   $0b                                           ;; 0d:5438 .
    db  $08 ;;IF ? JR                                  ;; 0d:5439 $08
    db   $ba, $00, $07                                 ;; 0d:543a ...
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:543d $fc
    db   $59                                           ;; 0d:543e .
    db  $fd ;;SPAWN_NPC                                ;; 0d:543f $fd
    db   $00                                           ;; 0d:5440 .
    db  $c9 ;;UNK_C9                                   ;; 0d:5441 $c9
    db   $04, $64                                      ;; 0d:5442 ..
    db  $00 ;;END                                      ;; 0d:5444 $00

script_01bf:
    db  $f8 ;;SET_MUSIC                                ;; 0d:5445 $f8
    db   $0c                                           ;; 0d:5446 .
    db  $00 ;;END                                      ;; 0d:5447 $00

script_01c0:
    db  $f8 ;;SET_MUSIC                                ;; 0d:5448 $f8
    db   $00                                           ;; 0d:5449 .
    db  $04 ;;MSG                                      ;; 0d:544a $04
    db   "<10>Defeated Kary!<12>"                      ;; 0d:544b ...........
    db   "<11>", $00                                   ;; 0d:5456 ...
    db  $da ;;SET_FLAG                                 ;; 0d:5459 $da
    db   $2d                                           ;; 0d:545a .
    db  $ec ;;RUN_ROOM_SCRIPT                          ;; 0d:545b $ec
    db  $00 ;;END                                      ;; 0d:545c $00

script_01c1:
    db  $08 ;;IF ? JR                                  ;; 0d:545d $08
    db   $af, $00, $0e                                 ;; 0d:545e ...
    db  $f0 ;;DELAY                                    ;; 0d:5461 $f0
    db   $14                                           ;; 0d:5462 .
    db  $f9 ;;SFX                                      ;; 0d:5463 $f9
    db   $14                                           ;; 0d:5464 .
    db  $bf ;;FLASH_SCREEN                             ;; 0d:5465 $bf
    db  $f9 ;;SFX                                      ;; 0d:5466 $f9
    db   $14                                           ;; 0d:5467 .
    db  $bf ;;FLASH_SCREEN                             ;; 0d:5468 $bf
    db  $fe ;;SPAWN_BOSS                               ;; 0d:5469 $fe
    db   $0a                                           ;; 0d:546a .
    db  $f8 ;;SET_MUSIC                                ;; 0d:546b $f8
    db   $0f                                           ;; 0d:546c .
    db  $01 ;;JR                                       ;; 0d:546d $01
    db   $0b                                           ;; 0d:546e .
    db  $08 ;;IF ? JR                                  ;; 0d:546f $08
    db   $bb, $00, $07                                 ;; 0d:5470 ...
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:5473 $fc
    db   $59                                           ;; 0d:5474 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:5475 $fd
    db   $00                                           ;; 0d:5476 .
    db  $c9 ;;UNK_C9                                   ;; 0d:5477 $c9
    db   $04, $37                                      ;; 0d:5478 ..
    db  $00 ;;END                                      ;; 0d:547a $00

script_01c2:
    db  $f8 ;;SET_MUSIC                                ;; 0d:547b $f8
    db   $07                                           ;; 0d:547c .
    db  $00 ;;END                                      ;; 0d:547d $00

script_01c3:
    db  $f8 ;;SET_MUSIC                                ;; 0d:547e $f8
    db   $00                                           ;; 0d:547f .
    db  $04 ;;MSG                                      ;; 0d:5480 $04
    db   "<10>Defeated Iflyte!<12>"                    ;; 0d:5481 .............
    db   "<11>", $00                                   ;; 0d:548e ...
    db  $da ;;SET_FLAG                                 ;; 0d:5491 $da
    db   $2f                                           ;; 0d:5492 .
    db  $ec ;;RUN_ROOM_SCRIPT                          ;; 0d:5493 $ec
    db  $00 ;;END                                      ;; 0d:5494 $00

script_01c4:
    db  $08 ;;IF ? JR                                  ;; 0d:5495 $08
    db   $aa, $00, $12                                 ;; 0d:5496 ...
    db  $f9 ;;SFX                                      ;; 0d:5499 $f9
    db   $10                                           ;; 0d:549a .
    db  $b0 ;;SET_ROOM_TILE                            ;; 0d:549b $b0
    db   $30, $01, $06                                 ;; 0d:549c ...
    db  $f0 ;;DELAY                                    ;; 0d:549f $f0
    db   $14                                           ;; 0d:54a0 .
    db  $f9 ;;SFX                                      ;; 0d:54a1 $f9
    db   $14                                           ;; 0d:54a2 .
    db  $bf ;;FLASH_SCREEN                             ;; 0d:54a3 $bf
    db  $f9 ;;SFX                                      ;; 0d:54a4 $f9
    db   $14                                           ;; 0d:54a5 .
    db  $bf ;;FLASH_SCREEN                             ;; 0d:54a6 $bf
    db  $fe ;;SPAWN_BOSS                               ;; 0d:54a7 $fe
    db   $07                                           ;; 0d:54a8 .
    db  $f8 ;;SET_MUSIC                                ;; 0d:54a9 $f8
    db   $0f                                           ;; 0d:54aa .
    db  $00 ;;END                                      ;; 0d:54ab $00

script_01c5:
    db  $f8 ;;SET_MUSIC                                ;; 0d:54ac $f8
    db   $0e                                           ;; 0d:54ad .
    db  $00 ;;END                                      ;; 0d:54ae $00

script_01c6:
    db  $f8 ;;SET_MUSIC                                ;; 0d:54af $f8
    db   $00                                           ;; 0d:54b0 .
    db  $f9 ;;SFX                                      ;; 0d:54b1 $f9
    db   $10                                           ;; 0d:54b2 .
    db  $b0 ;;SET_ROOM_TILE                            ;; 0d:54b3 $b0
    db   $13, $01, $06                                 ;; 0d:54b4 ...
    db  $04 ;;MSG                                      ;; 0d:54b7 $04
    db   "<10>Defeated Chimera!<12>"                   ;; 0d:54b8 .............
    db   "<11>", $00                                   ;; 0d:54c5 ...
    db  $da ;;SET_FLAG                                 ;; 0d:54c8 $da
    db   $2a                                           ;; 0d:54c9 .
    db  $f0 ;;DELAY                                    ;; 0d:54ca $f0
    db   $1e                                           ;; 0d:54cb .
    db  $f8 ;;SET_MUSIC                                ;; 0d:54cc $f8
    db   $0e                                           ;; 0d:54cd .
    db  $00 ;;END                                      ;; 0d:54ce $00

script_01c7:
    db  $08 ;;IF ? JR                                  ;; 0d:54cf $08
    db   $ae, $00, $0e                                 ;; 0d:54d0 ...
    db  $f0 ;;DELAY                                    ;; 0d:54d3 $f0
    db   $14                                           ;; 0d:54d4 .
    db  $f9 ;;SFX                                      ;; 0d:54d5 $f9
    db   $14                                           ;; 0d:54d6 .
    db  $bf ;;FLASH_SCREEN                             ;; 0d:54d7 $bf
    db  $f9 ;;SFX                                      ;; 0d:54d8 $f9
    db   $14                                           ;; 0d:54d9 .
    db  $bf ;;FLASH_SCREEN                             ;; 0d:54da $bf
    db  $fe ;;SPAWN_BOSS                               ;; 0d:54db $fe
    db   $09                                           ;; 0d:54dc .
    db  $f8 ;;SET_MUSIC                                ;; 0d:54dd $f8
    db   $0f                                           ;; 0d:54de .
    db  $01 ;;JR                                       ;; 0d:54df $01
    db   $04                                           ;; 0d:54e0 .
    db  $b0 ;;SET_ROOM_TILE                            ;; 0d:54e1 $b0
    db   $4c, $08, $02                                 ;; 0d:54e2 ...
    db  $00 ;;END                                      ;; 0d:54e5 $00

script_01c8:
    db  $f8 ;;SET_MUSIC                                ;; 0d:54e6 $f8
    db   $07                                           ;; 0d:54e7 .
    db  $00 ;;END                                      ;; 0d:54e8 $00

script_01c9:
    db  $f8 ;;SET_MUSIC                                ;; 0d:54e9 $f8
    db   $00                                           ;; 0d:54ea .
    db  $04 ;;MSG                                      ;; 0d:54eb $04
    db   "<10>Defeated Kraken!<12>"                    ;; 0d:54ec .............
    db   "<11>", $00                                   ;; 0d:54f9 ...
    db  $da ;;SET_FLAG                                 ;; 0d:54fc $da
    db   $2e                                           ;; 0d:54fd .
    db  $ba ;;UNK_BA                                   ;; 0d:54fe $ba
    db   $10, $10, $04                                 ;; 0d:54ff ...
    db  $b0 ;;SET_ROOM_TILE                            ;; 0d:5502 $b0
    db   $4c, $08, $02                                 ;; 0d:5503 ...
    db  $f0 ;;DELAY                                    ;; 0d:5506 $f0
    db   $1e                                           ;; 0d:5507 .
    db  $f8 ;;SET_MUSIC                                ;; 0d:5508 $f8
    db   $07                                           ;; 0d:5509 .
    db  $00 ;;END                                      ;; 0d:550a $00

script_01ca:
    db  $08 ;;IF ? JR                                  ;; 0d:550b $08
    db   $b0, $00, $0c                                 ;; 0d:550c ...
    db  $f0 ;;DELAY                                    ;; 0d:550f $f0
    db   $14                                           ;; 0d:5510 .
    db  $f9 ;;SFX                                      ;; 0d:5511 $f9
    db   $14                                           ;; 0d:5512 .
    db  $bf ;;FLASH_SCREEN                             ;; 0d:5513 $bf
    db  $f9 ;;SFX                                      ;; 0d:5514 $f9
    db   $14                                           ;; 0d:5515 .
    db  $bf ;;FLASH_SCREEN                             ;; 0d:5516 $bf
    db  $fe ;;SPAWN_BOSS                               ;; 0d:5517 $fe
    db   $0b                                           ;; 0d:5518 .
    db  $f8 ;;SET_MUSIC                                ;; 0d:5519 $f8
    db   $0f                                           ;; 0d:551a .
    db  $00 ;;END                                      ;; 0d:551b $00

script_01cb:
    db  $f8 ;;SET_MUSIC                                ;; 0d:551c $f8
    db   $07                                           ;; 0d:551d .
    db  $00 ;;END                                      ;; 0d:551e $00

script_01cc:
    db  $f8 ;;SET_MUSIC                                ;; 0d:551f $f8
    db   $00                                           ;; 0d:5520 .
    db  $04 ;;MSG                                      ;; 0d:5521 $04
    db   "<10>Defeated Lich!<12>"                      ;; 0d:5522 ............
    db   "<1b>", $00                                   ;; 0d:552e ...
    db  $f9 ;;SFX                                      ;; 0d:5531 $f9
    db   $0f                                           ;; 0d:5532 .
    db  $d6 ;;GIVE_MAGIC                               ;; 0d:5533 $d6
    db   $07                                           ;; 0d:5534 .
    db  $04 ;;MSG                                      ;; 0d:5535 $04
    db   "Received the Magic\nBook of Nuke.\nLearned Nuke!<12>" ;; 0d:5536 .................................
    db   "<11>", $00                                   ;; 0d:5557 ...
    db  $da ;;SET_FLAG                                 ;; 0d:555a $da
    db   $30                                           ;; 0d:555b .
    db  $f0 ;;DELAY                                    ;; 0d:555c $f0
    db   $1e                                           ;; 0d:555d .
    db  $f4 ;;LOAD_ROOM                                ;; 0d:555e $f4
    db   $00, $3e, $0c, $07                            ;; 0d:555f ....
    db  $f8 ;;SET_MUSIC                                ;; 0d:5563 $f8
    db   $19                                           ;; 0d:5564 .
    db  $ab ;;UNK_AB                                   ;; 0d:5565 $ab
    db  $ec ;;RUN_ROOM_SCRIPT                          ;; 0d:5566 $ec
    db  $00 ;;END                                      ;; 0d:5567 $00

script_01cd:
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:5568 $fc
    db   $3d                                           ;; 0d:5569 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:556a $fd
    db   $01                                           ;; 0d:556b .
    db  $00 ;;END                                      ;; 0d:556c $00

script_01ce:
    db  $00 ;;END                                      ;; 0d:556d $00

script_01cf:
    db  $00 ;;END                                      ;; 0d:556e $00

script_01e0:
    db  $04 ;;MSG                                      ;; 0d:556f $04
    db   "<10>Welcome to Kett's.\nRooms ahead are\noccupied.<12>" ;; 0d:5570 .................................
    db   "<1b>Please feel free\nto use the\nwestern room.<12>" ;; 0d:5591 ...........................
    db   "<1b>You can't get past\nthis door.\nIt's for Mr. Lee.", $00 ;; 0d:55ac ..................................
    db  $08 ;;IF ? JR                                  ;; 0d:55ce $08
    db   $0d, $00, $63                                 ;; 0d:55cf ...
    db  $04 ;;MSG                                      ;; 0d:55d2 $04
    db   "<12>"                                        ;; 0d:55d3 
    db   "<1b>", $00                                   ;; 0d:55d3 ...
    db  $09 ;;IF ? JR                                  ;; 0d:55d6 $09
    db   $27, $00, $3c                                 ;; 0d:55d7 ...
    db  $f8 ;;SET_MUSIC                                ;; 0d:55da $f8
    db   $00                                           ;; 0d:55db .
    db  $04 ;;MSG                                      ;; 0d:55dc $04
    db   "T_that Mirror_!", $00                        ;; 0d:55dd ...........
    db  $f0 ;;DELAY                                    ;; 0d:55e8 $f0
    db   $1e                                           ;; 0d:55e9 .
    db  $04 ;;MSG                                      ;; 0d:55ea $04
    db   "\nUGGG_ GRRH_", $00                          ;; 0d:55eb ............
    db  $f0 ;;DELAY                                    ;; 0d:55f7 $f0
    db   $1e                                           ;; 0d:55f8 .
    db  $04 ;;MSG                                      ;; 0d:55f9 $04
    db   "\nUG_ Hg_ GRRR_ _<12>"                       ;; 0d:55fa ..............
    db   "<11>", $00                                   ;; 0d:5608 ...
    db  $f9 ;;SFX                                      ;; 0d:560b $f9
    db   $14                                           ;; 0d:560c .
    db  $bf ;;FLASH_SCREEN                             ;; 0d:560d $bf
    db  $bf ;;FLASH_SCREEN                             ;; 0d:560e $bf
    db  $18 ;;DEL_NPC_1                                ;; 0d:560f $18
    db  $fd ;;SPAWN_NPC                                ;; 0d:5610 $fd
    db   $02                                           ;; 0d:5611 .
    db  $f8 ;;SET_MUSIC                                ;; 0d:5612 $f8
    db   $1a                                           ;; 0d:5613 .
    db  $01 ;;JR                                       ;; 0d:5614 $01
    db   $1d, $04, $d2, $21, $4c, $d9, $e5, $dc        ;; 0d:5615 .???????
    db   $4e, $d7, $f4, $1a, $c7, $e2, $35, $1a        ;; 0d:561d ????????
    db   $5b, $d7, $36, $95, $28, $de, $95, $ea        ;; 0d:5625 ????????
    db   $40, $27, $f0, $12, $11, $00                  ;; 0d:562d ??????
    db  $01 ;;JR                                       ;; 0d:5633 $01
    db   $04                                           ;; 0d:5634 .
    db  $04 ;;MSG                                      ;; 0d:5635 $04
    db   "<12>"                                        ;; 0d:5636 
    db   "<11>", $00                                   ;; 0d:5636 ...
    db  $00 ;;END                                      ;; 0d:5639 $00

script_01e1:
    db  $04 ;;MSG                                      ;; 0d:563a $04
    db   "<10>The mystic Mirror\nreveals people's\ntrue colors.<12>" ;; 0d:563b ..................................
    db   "<1b>I heard that the\nman here threw it\naway in a cave.<12>" ;; 0d:565d ..............................
    db   "<11>", $00                                   ;; 0d:567b ...
    db  $00 ;;END                                      ;; 0d:567e $00

script_01e2:
    db  $04 ;;MSG                                      ;; 0d:567f $04
    db   "<10>Lizardmen's nest\nis to the south.<12>"  ;; 0d:5680 .......................
    db   "<1b>They have the key\nto open the Cave\nof Marsh.<12>" ;; 0d:5697 ...............................
    db   "<11><12>"                                    ;; 0d:56b6 ..
    db   "<11>", $00                                   ;; 0d:56b8 ...
    db  $00 ;;END                                      ;; 0d:56bb $00

script_01e3:
    db  $18 ;;DEL_NPC_1                                ;; 0d:56bc $18
    db  $fd ;;SPAWN_NPC                                ;; 0d:56bd $fd
    db   $01                                           ;; 0d:56be .
    db  $04 ;;MSG                                      ;; 0d:56bf $04
    db   "<10><BOY>:<GIRL>!\n<GIRL>:Oh, <BOY>!<12>"    ;; 0d:56c0 .............
    db   "<1b><BOY>:Let's get\n out of here!<12>"      ;; 0d:56cd .................
    db   "<11>", $00                                   ;; 0d:56de ...
    db  $9c ;;GIVE_FOLLOWER                            ;; 0d:56e1 $9c
    db   $01                                           ;; 0d:56e2 .
    db  $da ;;SET_FLAG                                 ;; 0d:56e3 $da
    db   $51                                           ;; 0d:56e4 .
    db  $da ;;SET_FLAG                                 ;; 0d:56e5 $da
    db   $0e                                           ;; 0d:56e6 .
    db  $00 ;;END                                      ;; 0d:56e7 $00

script_01e4:
    db  $04 ;;MSG                                      ;; 0d:56e8 $04
    db   "<10>Man:Your friend\n is missing?<12>"       ;; 0d:56e9 .....................
    db   "<1b> Many girls have\n disappeared in\n that place.<12>" ;; 0d:56fe ...............................
    db   "<1b> They must be kept\n in the caskets\n at the basement.<12>" ;; 0d:571d ...................................
    db   "<1b> Looking for the \n Mirror?  Do you\n want me to help?<12>" ;; 0d:5740 ...................................
    db   "<13><11>", $00                               ;; 0d:5763 ....
    db  $08 ;;IF ? JR                                  ;; 0d:5767 $08
    db   $ff, $00, $04                                 ;; 0d:5768 ...
    db  $9c ;;GIVE_FOLLOWER                            ;; 0d:576b $9c
    db   $02                                           ;; 0d:576c .
    db  $da ;;SET_FLAG                                 ;; 0d:576d $da
    db   $52                                           ;; 0d:576e .
    db  $00 ;;END                                      ;; 0d:576f $00

script_01e5:
    db  $ba ;;UNK_BA                                   ;; 0d:5770 $ba
    db   $10, $0e, $0a                                 ;; 0d:5771 ...
    db  $b0 ;;SET_ROOM_TILE                            ;; 0d:5774 $b0
    db   $4b, $07, $05                                 ;; 0d:5775 ...
    db  $da ;;SET_FLAG                                 ;; 0d:5778 $da
    db   $36                                           ;; 0d:5779 .
    db  $00 ;;END                                      ;; 0d:577a $00

script_01e6:
    db  $04 ;;MSG                                      ;; 0d:577b $04
    db   "<10>Welcome to Wendel,\nthe sacred town.<12>" ;; 0d:577c ........................
    db   "<11>", $00                                   ;; 0d:5794 ...
    db  $00 ;;END                                      ;; 0d:5797 $00

script_01e7:
    db  $08 ;;IF ? JR                                  ;; 0d:5798 $08
    db   $10, $91, $00, $19                            ;; 0d:5799 ....
    db  $04 ;;MSG                                      ;; 0d:579d $04
    db   "<10>H_ he attacked\nme from behind_!<12>"    ;; 0d:579e .....................
    db   "<11>", $00                                   ;; 0d:57b3 ...
    db  $00 ;;END                                      ;; 0d:57b6 $00

script_01e8:
    db  $04 ;;MSG                                      ;; 0d:57b7 $04
    db   "<10>Man:Hello again!\n How've you been?<12>" ;; 0d:57b8 ........................
    db   "<11>", $00                                   ;; 0d:57d0 ...
    db  $00 ;;END                                      ;; 0d:57d3 $00

script_01e9:
    db  $04 ;;MSG                                      ;; 0d:57d4 $04
    db   "<10>The Waterfalls\nmake all of our\nrivers flow.<12>" ;; 0d:57d5 .............................
    db   "<1b>The water springs\nfrom the root of\nthe Tree of Mana.<12>" ;; 0d:57f2 ..................................
    db   "<1b>Mana is supporting\nour nature.<12>"     ;; 0d:5814 .....................
    db   "<11>", $00                                   ;; 0d:5829 ...
    db  $00 ;;END                                      ;; 0d:582c $00

script_01ea:
    db  $04 ;;MSG                                      ;; 0d:582d $04
    db   "<10>Dwarf Cave is\nto the west!<12>"         ;; 0d:582e .................
    db   "<11>", $00                                   ;; 0d:583f ...
    db  $00 ;;END                                      ;; 0d:5842 $00

script_01eb:
    db  $04 ;;MSG                                      ;; 0d:5843 $04
    db   "<10>Cibba is a sage.\nHe used to be a\ngreat warrior.<12>" ;; 0d:5844 ................................
    db   "<11>", $00                                   ;; 0d:5864 ...
    db  $00 ;;END                                      ;; 0d:5867 $00

script_01ec:
    db  $04 ;;MSG                                      ;; 0d:5868 $04
    db   "<10>", $00                                   ;; 0d:5869 ..
    db  $08 ;;IF ? JR                                  ;; 0d:586b $08
    db   $9f, $00, $0e                                 ;; 0d:586c ...
    db  $04 ;;MSG                                      ;; 0d:586f $04
    db   "Cibba's in here!", $00                       ;; 0d:5870 ...........
    db  $01 ;;JR                                       ;; 0d:587b $01
    db   $47                                           ;; 0d:587c .
    db  $04 ;;MSG                                      ;; 0d:587d $04
    db   "Lorim was attacked\nby many monsters.\nCibba went there.<12>" ;; 0d:587e .................................
    db   "<1b>Lorim is south of\nthe Snowfield over\nthe southern sea.", $00 ;; 0d:589f .....................................
    db  $04 ;;MSG                                      ;; 0d:58c4 $04
    db   "<12>"                                        ;; 0d:58c5 
    db   "<11>", $00                                   ;; 0d:58c5 ...
    db  $00 ;;END                                      ;; 0d:58c8 $00

script_01ed:
    db  $04 ;;MSG                                      ;; 0d:58c9 $04
    db   "<10>I hear that the\nTree of Mana is\nvery beautiful__<12>" ;; 0d:58ca .............................
    db   "<11>", $00                                   ;; 0d:58e7 ...
    db  $00 ;;END                                      ;; 0d:58ea $00

script_01ee:
    db  $04 ;;MSG                                      ;; 0d:58eb $04
    db   "<10>", $00                                   ;; 0d:58ec ..
    db  $08 ;;IF ? JR                                  ;; 0d:58ee $08
    db   $11, $00, $21                                 ;; 0d:58ef ...
    db  $04 ;;MSG                                      ;; 0d:58f2 $04
    db   "Cibba:Julius went\n westward in his\n airship.", $00 ;; 0d:58f3 ..............................
    db  $01 ;;JR                                       ;; 0d:5911 $01
    db   $12                                           ;; 0d:5912 .
    db  $04 ;;MSG                                      ;; 0d:5913 $04
    db   "Cibba:Who is\n that man?", $00               ;; 0d:5914 .................
    db  $04 ;;MSG                                      ;; 0d:5925 $04
    db   "<12>"                                        ;; 0d:5926 
    db   "<11>", $00                                   ;; 0d:5926 ...
    db  $00 ;;END                                      ;; 0d:5929 $00

script_01ef:
    db  $0a ;;IF ? JR                                  ;; 0d:592a $0a
    db   $4f, $00, $05                                 ;; 0d:592b ...
    db  $02 ;;CALL                                     ;; 0d:592e $02
    db   $19, $f5                                      ;; 0d:592f ..
    db  $01 ;;JR                                       ;; 0d:5931 $01
    db   $c1, $d4, $17, $08, $85, $00, $bb, $04        ;; 0d:5932 .???????
    db   $10, $00, $f9, $0f, $04, $cb, $d8, $d6        ;; 0d:593a ????????
    db   $d8, $dc, $4d, $25, $aa, $bb, $47, $61        ;; 0d:5942 ????????
    db   $12, $1b, $bc, $dc, $d5, $92, $f5, $c0        ;; 0d:594a ????????
    db   $36, $e8, $e3, $22, $2a, $1a, $43, $dc        ;; 0d:5952 ????????
    db   $d7, $20, $e5, $dc, $4d, $4c, $d5, $57        ;; 0d:595a ????????
    db   $23, $d8, $1a, $ff, $ba, $e0, $e0, $47        ;; 0d:5962 ????????
    db   $48, $20, $bc, $e2, $4b, $e7, $f0, $12        ;; 0d:596a ????????
    db   $1b, $94, $36, $d5, $d8, $24, $2b, $22        ;; 0d:5972 ????????
    db   $2a, $1a, $ff, $ba, $e0, $e0, $47, $48        ;; 0d:597a ????????
    db   $20, $bc, $e2, $4b, $e7, $1a, $22, $36        ;; 0d:5982 ????????
    db   $bf, $df, $e2, $30, $5f, $9e, $e6, $f0        ;; 0d:598a ????????
    db   $12, $1b, $ff, $ce, $6b, $22, $5c, $26        ;; 0d:5992 ????????
    db   $de, $d8, $57, $30, $1a, $22, $2a, $87        ;; 0d:599a ????????
    db   $5a, $20, $2f, $22, $2a, $1a, $ff, $bf        ;; 0d:59a2 ????????
    db   $df, $e2, $30, $5f, $9e, $e6, $f3, $12        ;; 0d:59aa ????????
    db   $1b, $68, $2a, $60, $e8, $2e, $d7, $dc        ;; 0d:59b2 ????????
    db   $29, $1a, $42, $47, $45, $27, $40, $4b        ;; 0d:59ba ????????
    db   $22, $2a, $1a, $ff, $8d, $da, $4e, $86        ;; 0d:59c2 ????????
    db   $e5, $57, $cc, $ea, $3c, $d7, $f0, $12        ;; 0d:59ca ????????
    db   $1b, $49, $ee, $3a, $22, $66, $65, $24        ;; 0d:59d2 ????????
    db   $81, $23, $d8, $1a, $ff, $38, $45, $43        ;; 0d:59da ????????
    db   $2a, $4a, $24, $e8, $1a, $ff, $38, $e7        ;; 0d:59e2 ????????
    db   $67, $4a, $9c, $23, $37, $e7, $f3, $12        ;; 0d:59ea ????????
    db   $11, $00                                      ;; 0d:59f2 ??
    db  $00 ;;END                                      ;; 0d:59f4 $00

script_01f0:
    db  $04 ;;MSG                                      ;; 0d:59f5 $04
    db   "<10>Cibba:The only way\n left is to reveal\n the Dime Tower.<12>" ;; 0d:59f6 ....................................
    db   "<1b><BOY>:Dime Tower?\n In the Desert of\n Crystal?  _ How?<12>" ;; 0d:5a1a ...................................
    db   "<1b>Cibba:That sword\n will help you.<12>"   ;; 0d:5a3d .......................
    db   "<1b> Use it in the\n Cave of Ruins.\n You'll see it.<12>" ;; 0d:5a54 .................................
    db   "<1b><BOY>:This rusty\n sword has such\n a great power_?<12>" ;; 0d:5a75 .................................
    db   "<1b>Cibba:The Sword of\n Legend shows its\n real power only<12>" ;; 0d:5a96 ......................................
    db   "<1b> when it approves\n of your using it.<12>" ;; 0d:5abc ........................
    db   "<1b> If you're a real\n Knight of Gemma,\n it will help you.<12>" ;; 0d:5ad4 ....................................
    db   "<1b><BOY>:But_ I don't\n know if it _ _<12>" ;; 0d:5af8 .........................
    db   "<1b>Cibba:Don't worry.\n __", $00            ;; 0d:5b11 ....................
    db  $f0 ;;DELAY                                    ;; 0d:5b25 $f0
    db   $28                                           ;; 0d:5b26 .
    db  $04 ;;MSG                                      ;; 0d:5b27 $04
    db   "Now, go!<12>"                                ;; 0d:5b28 ......
    db   "<1b> The Cave of Ruins\n is in the desert\n near Ish.<12>" ;; 0d:5b2e ..................................
    db   "<1b> Ask Dr. Bowow.\n He knows it well.<12>" ;; 0d:5b50 ..........................
    db   "<11>", $00                                   ;; 0d:5b6a ...
    db  $00 ;;END                                      ;; 0d:5b6d $00

script_01f1:
    db  $ba ;;UNK_BA                                   ;; 0d:5b6e $ba
    db   $08, $09, $0b                                 ;; 0d:5b6f ...
    db  $c0 ;;FULL_HP                                  ;; 0d:5b72 $c0
    db  $c1 ;;FULL_MANA                                ;; 0d:5b73 $c1
    db  $00 ;;END                                      ;; 0d:5b74 $00

script_01f2:
    db  $04 ;;MSG                                      ;; 0d:5b75 $04
    db   "<10>Hello!\nWelcome to the\nDwarf Cave!<12>" ;; 0d:5b76 .......................
    db   "<11>", $00                                   ;; 0d:5b8d ...
    db  $00 ;;END                                      ;; 0d:5b90 $00

script_01f3:
    db  $04 ;;MSG                                      ;; 0d:5b91 $04
    db   "<10>", $00                                   ;; 0d:5b92 ..
    db  $08 ;;IF ? JR                                  ;; 0d:5b94 $08
    db   $11, $96, $00, $16                            ;; 0d:5b95 ....
    db  $04 ;;MSG                                      ;; 0d:5b99 $04
    db   "The airship went\nto the west!<12>"          ;; 0d:5b9a ..................
    db   "<1b>", $00                                   ;; 0d:5bac ...
    db  $04 ;;MSG                                      ;; 0d:5baf $04
    db   "The Gaia Pass\nleads to the\nwestern land.<12>" ;; 0d:5bb0 .........................
    db   "<11>", $00                                   ;; 0d:5bc9 ...
    db  $00 ;;END                                      ;; 0d:5bcc $00

script_01f4:
    db  $04 ;;MSG                                      ;; 0d:5bcd $04
    db   "<10>", $00                                   ;; 0d:5bce ..
    db  $08 ;;IF ? JR                                  ;; 0d:5bd0 $08
    db   $a6, $00, $5d                                 ;; 0d:5bd1 ...
    db  $04 ;;MSG                                      ;; 0d:5bd4 $04
    db   "I used to play\nat the Old Mine\nwith Watts!", $00 ;; 0d:5bd5 .............................
    db  $08 ;;IF ? JR                                  ;; 0d:5bf2 $08
    db   $11, $00, $39                                 ;; 0d:5bf3 ...
    db  $04 ;;MSG                                      ;; 0d:5bf6 $04
    db   "<12>"                                        ;; 0d:5bf7 
    db   "<1b>Wanna use the\ntrolley?  You\nhave to oil it!<12>" ;; 0d:5bf7 ..............................
    db   "<1b>You can get it\nat the store\nto the south!", $00 ;; 0d:5c15 ..........................
    db  $01 ;;JR                                       ;; 0d:5c2f $01
    db   $15                                           ;; 0d:5c30 .
    db  $04 ;;MSG                                      ;; 0d:5c31 $04
    db   "Watts is selling\nSilver stuff!", $00        ;; 0d:5c32 ....................
    db  $04 ;;MSG                                      ;; 0d:5c46 $04
    db   "<12>"                                        ;; 0d:5c47 
    db   "<11>", $00                                   ;; 0d:5c47 ...
    db  $00 ;;END                                      ;; 0d:5c4a $00

script_01f5:
    db  $04 ;;MSG                                      ;; 0d:5c4b $04
    db   "<10>Gaia has its own\nwill and feelings.<12>" ;; 0d:5c4c ......................
    db   "<1b>It likes Silver.\nStrange, isn't it?<12>" ;; 0d:5c62 ..........................
    db   "<11>", $00                                   ;; 0d:5c7c ...
    db  $00 ;;END                                      ;; 0d:5c7f $00

script_01f6:
    db  $04 ;;MSG                                      ;; 0d:5c80 $04
    db   "<10>", $00                                   ;; 0d:5c81 ..
    db  $08 ;;IF ? JR                                  ;; 0d:5c83 $08
    db   $a6, $00, $37                                 ;; 0d:5c84 ...
    db  $04 ;;MSG                                      ;; 0d:5c87 $04
    db   "Watts likes the\nmine!  He went\ntheir today, too!<12>" ;; 0d:5c88 ..............................
    db   "<1b>He's looking for\nsome Silver.", $00     ;; 0d:5ca6 ......................
    db  $01 ;;JR                                       ;; 0d:5cbc $01
    db   $19                                           ;; 0d:5cbd .
    db  $04 ;;MSG                                      ;; 0d:5cbe $04
    db   "Hi!\nWatts made the\nSilver stuff!", $00     ;; 0d:5cbf ........................
    db  $04 ;;MSG                                      ;; 0d:5cd7 $04
    db   "<12>"                                        ;; 0d:5cd8 
    db   "<11>", $00                                   ;; 0d:5cd8 ...
    db  $00 ;;END                                      ;; 0d:5cdb $00

script_01f7:
    db  $00 ;;END                                      ;; 0d:5cdc $00

script_01f8:
    db  $04 ;;MSG                                      ;; 0d:5cdd $04
    db   "<10>Watts:I made some\n things out of\n that Silver!<12>" ;; 0d:5cde ..............................
    db   "<1b> Take these and\n you can pass\n through Gaia!<12>" ;; 0d:5cfc ..............................
    db   "<11>", $00                                   ;; 0d:5d1a ...
    db  $f6 ;;OPEN_SHOP                                ;; 0d:5d1d $f6
    db   $06                                           ;; 0d:5d1e .
    db  $00 ;;END                                      ;; 0d:5d1f $00

script_01f9:
    db  $09 ;;IF ? JR                                  ;; 0d:5d20 $09
    db   $2d, $00, $07                                 ;; 0d:5d21 ...
    db  $80 ;;PLAYER_STEP_FORWARD                      ;; 0d:5d24 $80
    db  $80 ;;PLAYER_STEP_FORWARD                      ;; 0d:5d25 $80
    db  $18 ;;DEL_NPC_1                                ;; 0d:5d26 $18
    db  $de ;;UNK_DE                                   ;; 0d:5d27 $de
    db  $a3 ;;UNK_A3                                   ;; 0d:5d28 $a3
    db  $01 ;;JR                                       ;; 0d:5d29 $01
    db   $11, $04, $10, $1a, $c7, $d8, $39, $26        ;; 0d:5d2a .???????
    db   $33, $6f, $20, $e2, $83, $39, $f0, $12        ;; 0d:5d32 ????????
    db   $11, $00                                      ;; 0d:5d3a ??
    db  $00 ;;END                                      ;; 0d:5d3c $00

script_01fa:
    db  $0b ;;IF JR                                    ;; 0d:5d3d $0b
    db   $81, $00, $03                                 ;; 0d:5d3e ...
    db  $18 ;;DEL_NPC_1                                ;; 0d:5d41 $18
    db  $01 ;;JR                                       ;; 0d:5d42 $01
    db   $05                                           ;; 0d:5d43 .
    db  $ba ;;UNK_BA                                   ;; 0d:5d44 $ba
    db   $10, $09, $01                                 ;; 0d:5d45 ...
    db  $e0 ;;UNK_E0                                   ;; 0d:5d48 $e0
    db  $00 ;;END                                      ;; 0d:5d49 $00

script_01fb:
    db  $0b ;;IF JR                                    ;; 0d:5d4a $0b
    db   $81, $00, $03                                 ;; 0d:5d4b ...
    db  $18 ;;DEL_NPC_1                                ;; 0d:5d4e $18
    db  $01 ;;JR                                       ;; 0d:5d4f $01
    db   $05                                           ;; 0d:5d50 .
    db  $ba ;;UNK_BA                                   ;; 0d:5d51 $ba
    db   $10, $09, $0d                                 ;; 0d:5d52 ...
    db  $e2 ;;UNK_E2                                   ;; 0d:5d55 $e2
    db  $00 ;;END                                      ;; 0d:5d56 $00

script_01fc:
    db  $0b ;;IF JR                                    ;; 0d:5d57 $0b
    db   $81, $00, $03                                 ;; 0d:5d58 ...
    db  $18 ;;DEL_NPC_1                                ;; 0d:5d5b $18
    db  $01 ;;JR                                       ;; 0d:5d5c $01
    db   $05                                           ;; 0d:5d5d .
    db  $ba ;;UNK_BA                                   ;; 0d:5d5e $ba
    db   $10, $11, $07                                 ;; 0d:5d5f ...
    db  $e4 ;;UNK_E4                                   ;; 0d:5d62 $e4
    db  $00 ;;END                                      ;; 0d:5d63 $00

script_01fd:
    db  $0b ;;IF JR                                    ;; 0d:5d64 $0b
    db   $81, $00, $03                                 ;; 0d:5d65 ...
    db  $18 ;;DEL_NPC_1                                ;; 0d:5d68 $18
    db  $01 ;;JR                                       ;; 0d:5d69 $01
    db   $05                                           ;; 0d:5d6a .
    db  $ba ;;UNK_BA                                   ;; 0d:5d6b $ba
    db   $10, $01, $07                                 ;; 0d:5d6c ...
    db  $e6 ;;UNK_E6                                   ;; 0d:5d6f $e6
    db  $00 ;;END                                      ;; 0d:5d70 $00

script_01fe:
    db  $04 ;;MSG                                      ;; 0d:5d71 $04
    db   "<10>", $00                                   ;; 0d:5d72 ..
    db  $09 ;;IF ? JR                                  ;; 0d:5d74 $09
    db   $4f, $00, $21                                 ;; 0d:5d75 ...
    db  $04 ;;MSG                                      ;; 0d:5d78 $04
    db   "Release that\nsword from your\nequipment, <BOY>.", $00 ;; 0d:5d79 ..............................
    db  $01 ;;JR                                       ;; 0d:5d97 $01
    db   $67, $04, $d2, $21, $40, $5a, $20, $d5        ;; 0d:5d98 .???????
    db   $d8, $4e, $2d, $1a, $da, $38, $30, $ff        ;; 0d:5da0 ????????
    db   $c4, $e1, $8f, $91, $3e, $d9, $1a, $c0        ;; 0d:5da8 ????????
    db   $d8, $e0, $63, $80, $5b, $6b, $61, $12        ;; 0d:5db0 ????????
    db   $1b, $5b, $e6, $3b, $3a, $60, $dc, $4d        ;; 0d:5db8 ????????
    db   $59, $21, $1a, $23, $20, $be, $eb, $89        ;; 0d:5dc0 ????????
    db   $6e, $d5, $67, $f0, $1a, $c7, $46, $ff        ;; 0d:5dc8 ????????
    db   $d7, $d8, $d9, $32, $28, $c3, $90, $dc        ;; 0d:5dd0 ????????
    db   $41, $f3, $12, $11, $00, $03, $08, $04        ;; 0d:5dd8 ????????
    db   $bf, $f9, $14, $00, $18, $d9, $0d, $d8        ;; 0d:5de0 ????????
    db   $0f, $04, $10, $cb, $d8, $d6, $d8, $dc        ;; 0d:5de8 ????????
    db   $4d, $d7, $1a, $69, $69, $ff, $be, $eb        ;; 0d:5df0 ????????
    db   $89, $6e, $d5, $67, $f3, $00, $da, $38        ;; 0d:5df8 ????????
    db  $04 ;;MSG                                      ;; 0d:5e00 $04
    db   "<12>"                                        ;; 0d:5e01 
    db   "<11>", $00                                   ;; 0d:5e01 ...
    db  $00 ;;END                                      ;; 0d:5e04 $00

script_01ff:
    db  $08 ;;IF ? JR                                  ;; 0d:5e05 $08
    db   $f9, $00, $2c                                 ;; 0d:5e06 ...
    db  $04 ;;MSG                                      ;; 0d:5e09 $04
    db   "<10> Change music?<12>"                      ;; 0d:5e0a ...........
    db   "<11>", $00                                   ;; 0d:5e15 ...
    db  $c7 ;;UNK_C7                                   ;; 0d:5e18 $c7
    db  $08 ;;IF ? JR                                  ;; 0d:5e19 $08
    db   $7f, $fe, $00, $02                            ;; 0d:5e1a ....
    db  $f8 ;;SET_MUSIC                                ;; 0d:5e1e $f8
    db   $14                                           ;; 0d:5e1f .
    db  $08 ;;IF ? JR                                  ;; 0d:5e20 $08
    db   $7f, $7e, $00, $02                            ;; 0d:5e21 ....
    db  $f8 ;;SET_MUSIC                                ;; 0d:5e25 $f8
    db   $09                                           ;; 0d:5e26 .
    db  $08 ;;IF ? JR                                  ;; 0d:5e27 $08
    db   $ff, $7e, $00, $02                            ;; 0d:5e28 ....
    db  $f8 ;;SET_MUSIC                                ;; 0d:5e2c $f8
    db   $07                                           ;; 0d:5e2d .
    db  $08 ;;IF ? JR                                  ;; 0d:5e2e $08
    db   $ff, $fe, $00, $02                            ;; 0d:5e2f ....
    db  $f8 ;;SET_MUSIC                                ;; 0d:5e33 $f8
    db   $0e                                           ;; 0d:5e34 .
    db  $00 ;;END                                      ;; 0d:5e35 $00

script_0200:
    db  $04 ;;MSG                                      ;; 0d:5e36 $04
    db   "<10>I RECOVER YOUR MP.<12>"                  ;; 0d:5e37 .................
    db   "<11>", $00                                   ;; 0d:5e48 ...
    db  $f9 ;;SFX                                      ;; 0d:5e4b $f9
    db   $05                                           ;; 0d:5e4c .
    db  $c1 ;;FULL_MANA                                ;; 0d:5e4d $c1
    db  $00 ;;END                                      ;; 0d:5e4e $00

script_0201:
    db  $00 ;;END                                      ;; 0d:5e4f $00

script_0202:
    db  $04 ;;MSG                                      ;; 0d:5e50 $04
    db   "<10> Let me treat\n your wound, <BOY>.<12>"  ;; 0d:5e51 ...................
    db   "<11>", $00                                   ;; 0d:5e64 ...
    db  $f9 ;;SFX                                      ;; 0d:5e67 $f9
    db   $05                                           ;; 0d:5e68 .
    db  $c4 ;;PLAYER_GIVE_STATUS                       ;; 0d:5e69 $c4
    db   $10                                           ;; 0d:5e6a .
    db  $00 ;;END                                      ;; 0d:5e6b $00

script_0203:
    db  $04 ;;MSG                                      ;; 0d:5e6c $04
    db   "<10>Some walls may be\nbroken with <a7>Star\nor <ac>Mattock.<12>" ;; 0d:5e6d .................................
    db   "<1b>Those walls sound\ndifferent when you\nhit them.<12>" ;; 0d:5e8e ................................
    db   "<11>", $00                                   ;; 0d:5eae ...
    db  $00 ;;END                                      ;; 0d:5eb1 $00

script_0204:
    db  $04 ;;MSG                                      ;; 0d:5eb2 $04
    db   "<10> I have very\n useful things!<12>"       ;; 0d:5eb3 ...................
    db   "<11>", $00                                   ;; 0d:5ec6 ...
    db  $f6 ;;OPEN_SHOP                                ;; 0d:5ec9 $f6
    db   $03                                           ;; 0d:5eca .
    db  $00 ;;END                                      ;; 0d:5ecb $00

script_0205:
    db  $04 ;;MSG                                      ;; 0d:5ecc $04
    db   "<10>Gemma Knights can\nuse the special\npowers of weapons.<12>" ;; 0d:5ecd ....................................
    db   "<1b>Try and see it\nwhen your Will\nPower is full.<12>" ;; 0d:5ef1 .............................
    db   "<11>", $00                                   ;; 0d:5f0e ...
    db  $00 ;;END                                      ;; 0d:5f11 $00

script_0206:
    db  $04 ;;MSG                                      ;; 0d:5f12 $04
    db   "<10> I'll heal you\n from Stone.<12>"        ;; 0d:5f13 .................
    db   "<11>", $00                                   ;; 0d:5f24 ...
    db  $f9 ;;SFX                                      ;; 0d:5f27 $f9
    db   $05                                           ;; 0d:5f28 .
    db  $c2 ;;UNK_C2                                   ;; 0d:5f29 $c2
    db   $04                                           ;; 0d:5f2a .
    db  $00 ;;END                                      ;; 0d:5f2b $00

script_0207:
    db  $04 ;;MSG                                      ;; 0d:5f2c $04
    db   "<10><BOY>:Let's go!\n<GIRL>:Keep this\n Pendant, <BOY>!<12>" ;; 0d:5f2d ............................
    db   "<1b>Julius:Give me\n the Pendant!<12>"       ;; 0d:5f49 .....................
    db   "<11>", $00                                   ;; 0d:5f5e ...
    db  $f8 ;;SET_MUSIC                                ;; 0d:5f61 $f8
    db   $09                                           ;; 0d:5f62 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:5f63 $fd
    db   $02                                           ;; 0d:5f64 .
    db  $26 ;;SET_NPC_2_DIRECTION_RIGHT                ;; 0d:5f65 $26
    db  $f0 ;;DELAY                                    ;; 0d:5f66 $f0
    db   $14                                           ;; 0d:5f67 .
    db  $87 ;;SET_PLAYER_DIRECTION_LEFT                ;; 0d:5f68 $87
    db  $f0 ;;DELAY                                    ;; 0d:5f69 $f0
    db   $3c                                           ;; 0d:5f6a .
    db  $f9 ;;SFX                                      ;; 0d:5f6b $f9
    db   $14                                           ;; 0d:5f6c .
    db  $bf ;;FLASH_SCREEN                             ;; 0d:5f6d $bf
    db  $bf ;;FLASH_SCREEN                             ;; 0d:5f6e $bf
    db  $ba ;;UNK_BA                                   ;; 0d:5f6f $ba
    db   $2c, $02, $08                                 ;; 0d:5f70 ...
    db  $ba ;;UNK_BA                                   ;; 0d:5f73 $ba
    db   $2c, $04, $08                                 ;; 0d:5f74 ...
    db  $ba ;;UNK_BA                                   ;; 0d:5f77 $ba
    db   $2c, $06, $08                                 ;; 0d:5f78 ...
    db  $ba ;;UNK_BA                                   ;; 0d:5f7b $ba
    db   $2c, $08, $08                                 ;; 0d:5f7c ...
    db  $ba ;;UNK_BA                                   ;; 0d:5f7f $ba
    db   $10, $0a, $08                                 ;; 0d:5f80 ...
    db  $bf ;;FLASH_SCREEN                             ;; 0d:5f83 $bf
    db  $8a ;;SET_PLAYER_POSITION                      ;; 0d:5f84 $8a
    db   $0a, $09                                      ;; 0d:5f85 ..
    db  $84 ;;SET_PLAYER_DIRECTION_UP                  ;; 0d:5f87 $84
    db  $04 ;;MSG                                      ;; 0d:5f88 $04
    db   "<10><GIRL>:Hold on!\n<BOY>:I_ can't_<12>"    ;; 0d:5f89 ...................
    db   "<11>", $00                                   ;; 0d:5f9c ...
    db  $f0 ;;DELAY                                    ;; 0d:5f9f $f0
    db   $28                                           ;; 0d:5fa0 .
    db  $f8 ;;SET_MUSIC                                ;; 0d:5fa1 $f8
    db   $00                                           ;; 0d:5fa2 .
    db  $85 ;;SET_PLAYER_DIRECTION_DOWN                ;; 0d:5fa3 $85
    db  $a5 ;;SET_PLAYER_HURT_SPRITE                   ;; 0d:5fa4 $a5
    db  $88 ;;SET_FAST_MOVEMENT                        ;; 0d:5fa5 $88
    db  $f9 ;;SFX                                      ;; 0d:5fa6 $f9
    db   $0c                                           ;; 0d:5fa7 .
    db  $03 ;;LOOP                                     ;; 0d:5fa8 $03
    db   $06, $02                                      ;; 0d:5fa9 ..
    db  $80 ;;PLAYER_STEP_FORWARD                      ;; 0d:5fab $80
    db  $00 ;;END                                      ;; 0d:5fac $00
    db  $e8 ;;SCROLL_ROOM_DOWN                         ;; 0d:5fad $e8
    db  $8a ;;SET_PLAYER_POSITION                      ;; 0d:5fae $8a
    db   $0a, $00                                      ;; 0d:5faf ..
    db  $f9 ;;SFX                                      ;; 0d:5fb1 $f9
    db   $0c                                           ;; 0d:5fb2 .
    db  $03 ;;LOOP                                     ;; 0d:5fb3 $03
    db   $0e, $02                                      ;; 0d:5fb4 ..
    db  $80 ;;PLAYER_STEP_FORWARD                      ;; 0d:5fb6 $80
    db  $00 ;;END                                      ;; 0d:5fb7 $00
    db  $f4 ;;LOAD_ROOM                                ;; 0d:5fb8 $f4
    db   $0e, $53, $14, $00                            ;; 0d:5fb9 ....
    db  $f0 ;;DELAY                                    ;; 0d:5fbd $f0
    db   $3c                                           ;; 0d:5fbe .
    db  $8a ;;SET_PLAYER_POSITION                      ;; 0d:5fbf $8a
    db   $0e, $00                                      ;; 0d:5fc0 ..
    db  $85 ;;SET_PLAYER_DIRECTION_DOWN                ;; 0d:5fc2 $85
    db  $f9 ;;SFX                                      ;; 0d:5fc3 $f9
    db   $0c                                           ;; 0d:5fc4 .
    db  $03 ;;LOOP                                     ;; 0d:5fc5 $03
    db   $05, $02                                      ;; 0d:5fc6 ..
    db  $80 ;;PLAYER_STEP_FORWARD                      ;; 0d:5fc8 $80
    db  $00 ;;END                                      ;; 0d:5fc9 $00
    db  $8a ;;SET_PLAYER_POSITION                      ;; 0d:5fca $8a
    db   $14, $00                                      ;; 0d:5fcb ..
    db  $ba ;;UNK_BA                                   ;; 0d:5fcd $ba
    db   $10, $0e, $05                                 ;; 0d:5fce ...
    db  $f9 ;;SFX                                      ;; 0d:5fd1 $f9
    db   $19                                           ;; 0d:5fd2 .
    db  $bf ;;FLASH_SCREEN                             ;; 0d:5fd3 $bf
    db  $fb ;;SHAKE_SCREEN                             ;; 0d:5fd4 $fb
    db  $f0 ;;DELAY                                    ;; 0d:5fd5 $f0
    db   $3c                                           ;; 0d:5fd6 .
    db  $89 ;;CLEAR_FAST_MOVEMENT                      ;; 0d:5fd7 $89
    db  $a4 ;;SET_PLAYER_NORMAL_SPRITE                 ;; 0d:5fd8 $a4
    db  $86 ;;SET_PLAYER_DIRECTION_RIGHT               ;; 0d:5fd9 $86
    db  $02 ;;CALL                                     ;; 0d:5fda $02
    db   $1f, $df                                      ;; 0d:5fdb ..
    db  $ab ;;UNK_AB                                   ;; 0d:5fdd $ab
    db  $00 ;;END                                      ;; 0d:5fde $00

script_0208:
    db  $04 ;;MSG                                      ;; 0d:5fdf $04
    db   "<10>_ Wow!  Somebody\n_ came down from\n_ the sky!<12>" ;; 0d:5fe0 .................................
    db   "<1b>_ __ <BOY>?!\n_ Do you know him?\n___ _ <BOY>__!<12>" ;; 0d:6001 ................................
    db   "<11>", $00                                   ;; 0d:6021 ...
    db  $bd ;;FADE_TO_BLACK                            ;; 0d:6024 $bd
    db  $c5 ;;UNK_C5                                   ;; 0d:6025 $c5
    db   $07                                           ;; 0d:6026 .
    db  $f3 ;;LOAD_ROOM_INSTANT                        ;; 0d:6027 $f3
    db   $04, $00, $0e, $03                            ;; 0d:6028 ....
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:602c $fc
    db   $25                                           ;; 0d:602d .
    db  $fd ;;SPAWN_NPC                                ;; 0d:602e $fd
    db   $02                                           ;; 0d:602f .
    db  $19 ;;SET_NPC_1_POSITION                       ;; 0d:6030 $19
    db   $0a, $04                                      ;; 0d:6031 ..
    db  $16 ;;SET_NPC_1_DIRECTION_RIGHT                ;; 0d:6033 $16
    db  $f0 ;;DELAY                                    ;; 0d:6034 $f0
    db   $5a                                           ;; 0d:6035 .
    db  $bc ;;FADE_TO_NORMAL                           ;; 0d:6036 $bc
    db  $f8 ;;SET_MUSIC                                ;; 0d:6037 $f8
    db   $0a                                           ;; 0d:6038 .
    db  $f0 ;;DELAY                                    ;; 0d:6039 $f0
    db   $46                                           ;; 0d:603a .
    db  $10 ;;NPC_1_STEP_FORWARD                       ;; 0d:603b $10
    db  $10 ;;NPC_1_STEP_FORWARD                       ;; 0d:603c $10
    db  $04 ;;MSG                                      ;; 0d:603d $04
    db   "<10>Amanda:I'm glad\n to see you again,\n my friend__<12>" ;; 0d:603e ..................................
    db   "<1b> I came back from\n Glaive after you\n left there__<12>" ;; 0d:6060 ................................
    db   "<1b> Oh, <BOY>__\n", $00                     ;; 0d:6080 ..........
    db  $f0 ;;DELAY                                    ;; 0d:608a $f0
    db   $32                                           ;; 0d:608b .
    db  $04 ;;MSG                                      ;; 0d:608c $04
    db   " I'm sorry__", $00                           ;; 0d:608d .........
    db  $f0 ;;DELAY                                    ;; 0d:6096 $f0
    db   $28                                           ;; 0d:6097 .
    db  $04 ;;MSG                                      ;; 0d:6098 $04
    db   "\n But I have to__<12>"                      ;; 0d:6099 ..........
    db   "<11>", $00                                   ;; 0d:60a3 ...
    db  $bd ;;FADE_TO_BLACK                            ;; 0d:60a6 $bd
    db  $f0 ;;DELAY                                    ;; 0d:60a7 $f0
    db   $3c                                           ;; 0d:60a8 .
    db  $18 ;;DEL_NPC_1                                ;; 0d:60a9 $18
    db  $f8 ;;SET_MUSIC                                ;; 0d:60aa $f8
    db   $00                                           ;; 0d:60ab .
    db  $f0 ;;DELAY                                    ;; 0d:60ac $f0
    db   $3c                                           ;; 0d:60ad .
    db  $bc ;;FADE_TO_NORMAL                           ;; 0d:60ae $bc
    db  $85 ;;SET_PLAYER_DIRECTION_DOWN                ;; 0d:60af $85
    db  $80 ;;PLAYER_STEP_FORWARD                      ;; 0d:60b0 $80
    db  $80 ;;PLAYER_STEP_FORWARD                      ;; 0d:60b1 $80
    db  $f0 ;;DELAY                                    ;; 0d:60b2 $f0
    db   $32                                           ;; 0d:60b3 .
    db  $04 ;;MSG                                      ;; 0d:60b4 $04
    db   "<10><BOY>:_Where am I?\n", $00               ;; 0d:60b5 .............
    db  $f0 ;;DELAY                                    ;; 0d:60c2 $f0
    db   $1e                                           ;; 0d:60c3 .
    db  $04 ;;MSG                                      ;; 0d:60c4 $04
    db   " __ Pendant!!\n __ Where is it?!<12>"        ;; 0d:60c5 ....................
    db   "<1b> __ I thought that\n it was Amanda\n talking to me__<12>" ;; 0d:60d9 ................................
    db   "<11>", $00                                   ;; 0d:60f9 ...
    db  $f8 ;;SET_MUSIC                                ;; 0d:60fc $f8
    db   $04                                           ;; 0d:60fd .
    db  $00 ;;END                                      ;; 0d:60fe $00

script_0209:
    db  $04 ;;MSG                                      ;; 0d:60ff $04
    db   "<10>A girl is being\nheld in a room\nin this airship!<12>" ;; 0d:6100 ..............................
    db   "<11>", $00                                   ;; 0d:611e ...
    db  $00 ;;END                                      ;; 0d:6121 $00

script_020a:
    db  $00 ;;END                                      ;; 0d:6122 $00

script_020b:
    db  $04 ;;MSG                                      ;; 0d:6123 $04
    db   "<10>Get back to work!<12>"                   ;; 0d:6124 ............
    db   "<11>", $00                                   ;; 0d:6130 ...
    db  $00 ;;END                                      ;; 0d:6133 $00

script_020c:
    db  $00 ;;END                                      ;; 0d:6134 $00

script_020d:
    db  $04 ;;MSG                                      ;; 0d:6135 $04
    db   "<10>Many years ago,\nDark Lord found\na baby in a cave<12>" ;; 0d:6136 .................................
    db   "<1b>at the Waterfalls\nnear Glaive.\n__ That's Julius.<12>" ;; 0d:6157 .................................
    db   "<11>", $00                                   ;; 0d:6178 ...
    db  $00 ;;END                                      ;; 0d:617b $00

script_020e:
    db  $04 ;;MSG                                      ;; 0d:617c $04
    db   "<10>Julius is taking\nthe charge of this\nairship.<12>" ;; 0d:617d ..............................
    db   "<11>", $00                                   ;; 0d:619b ...
    db  $00 ;;END                                      ;; 0d:619e $00

script_020f:
    db  $14 ;;SET_NPC_1_DIRECTION_UP                   ;; 0d:619f $14
    db  $1a ;;UNK_1A                                   ;; 0d:61a0 $1a
    db  $03 ;;LOOP                                     ;; 0d:61a1 $03
    db   $04, $02                                      ;; 0d:61a2 ..
    db  $10 ;;NPC_1_STEP_FORWARD                       ;; 0d:61a4 $10
    db  $00 ;;END                                      ;; 0d:61a5 $00
    db  $04 ;;MSG                                      ;; 0d:61a6 $04
    db   "<10>", $00                                   ;; 0d:61a7 ..
    db  $08 ;;IF ? JR                                  ;; 0d:61a9 $08
    db   $96, $00, $7d                                 ;; 0d:61aa ...
    db  $04 ;;MSG                                      ;; 0d:61ad $04
    db   "<BOY>:<GIRL>!\n", $00                        ;; 0d:61ae ......
    db  $f9 ;;SFX                                      ;; 0d:61b4 $f9
    db   $17                                           ;; 0d:61b5 .
    db  $04 ;;MSG                                      ;; 0d:61b6 $04
    db   "Bogard:Hurry!\n It's moving!<12>"            ;; 0d:61b7 .....................
    db   "<1b><GIRL>:This door\n is locked!<12>"       ;; 0d:61cc ..................
    db   "<1b>Bogard:How about\n the windows?<12>"     ;; 0d:61de .......................
    db   "<11>", $00                                   ;; 0d:61f5 ...
    db  $15 ;;SET_NPC_1_DIRECTION_DOWN                 ;; 0d:61f8 $15
    db  $03 ;;LOOP                                     ;; 0d:61f9 $03
    db   $04, $02                                      ;; 0d:61fa ..
    db  $10 ;;NPC_1_STEP_FORWARD                       ;; 0d:61fc $10
    db  $00 ;;END                                      ;; 0d:61fd $00
    db  $f0 ;;DELAY                                    ;; 0d:61fe $f0
    db   $14                                           ;; 0d:61ff .
    db  $14 ;;SET_NPC_1_DIRECTION_UP                   ;; 0d:6200 $14
    db  $03 ;;LOOP                                     ;; 0d:6201 $03
    db   $04, $02                                      ;; 0d:6202 ..
    db  $10 ;;NPC_1_STEP_FORWARD                       ;; 0d:6204 $10
    db  $00 ;;END                                      ;; 0d:6205 $00
    db  $04 ;;MSG                                      ;; 0d:6206 $04
    db   "<10><GIRL>:It may open.\n<BOY>:I'll get you\n from outside!<1b>", $00 ;; 0d:6207 .................................
    db  $da ;;SET_FLAG                                 ;; 0d:6228 $da
    db   $16                                           ;; 0d:6229 .
    db  $04 ;;MSG                                      ;; 0d:622a $04
    db   "<GIRL>:Be careful!<12>"                      ;; 0d:622b .........
    db   "<11>", $00                                   ;; 0d:6234 ...
    db  $03 ;;LOOP                                     ;; 0d:6237 $03
    db   $04, $02                                      ;; 0d:6238 ..
    db  $11 ;;NPC_1_STEP_BACKWARDS                     ;; 0d:623a $11
    db  $00 ;;END                                      ;; 0d:623b $00
    db  $1b ;;UNK_1B                                   ;; 0d:623c $1b
    db  $00 ;;END                                      ;; 0d:623d $00

script_0210:
    db  $04 ;;MSG                                      ;; 0d:623e $04
    db   "Bogard:I knew you\n would do it.<12>"        ;; 0d:623f ......................
    db   "<1b> Now, listen.\n It'll be perilous\n from now on.<12>" ;; 0d:6255 ...............................
    db   "<1b> Julius has got\n the power of Mana\n already.<12>" ;; 0d:6274 ................................
    db   "<1b> Only match is the\n Knight with the\n Legendary Sword.<12>" ;; 0d:6294 .......................................
    db   "<1b><BOY>:Legend_ __!!\n The Excalbur?!\nBogard:Yes.<12>" ;; 0d:62bb ...................................
    db   "<1b> And it is how we\n defeated the evil\n power of Vandole.<12>" ;; 0d:62de ......................................
    db   "<1b><BOY>:_ You_ _\n_ Where is that\n sword now?<12>" ;; 0d:6304 ............................
    db   "<1b>Bogard:Somewhere\n in this world__<12>"  ;; 0d:6320 ........................
    db   "<1b> Go to Wendel and\n ask Cibba.\n He knows better.<12>" ;; 0d:6338 .................................
    db   "<1b> Ask Dr. Bowow\n how to get there.\n He'll help you.", $00 ;; 0d:6359 ....................................
    db  $00 ;;END                                      ;; 0d:637d $00

script_0211:
    db  $04 ;;MSG                                      ;; 0d:637e $04
    db   "<10>Are you okay, boy?\n_You are in Menos.<12>" ;; 0d:637f ...........................
    db   "<1b>Amanda left the\nvillage earlier\nthis morning.<12>" ;; 0d:639a ...............................
    db   "<11>", $00                                   ;; 0d:63b9 ...
    db  $00 ;;END                                      ;; 0d:63bc $00

script_0212:
    db  $04 ;;MSG                                      ;; 0d:63bd $04
    db   "<10>We used to see\nmany Chocobos\naround here.<12>" ;; 0d:63be ............................
    db   "<1b>I saw an egg in a\nforest up north!<12>" ;; 0d:63da ..........................
    db   "<11>", $00                                   ;; 0d:63f4 ...
    db  $00 ;;END                                      ;; 0d:63f7 $00

script_0213:
    db  $04 ;;MSG                                      ;; 0d:63f8 $04
    db   "<10>Amanda's little\nbrother, Lester,\nis a musician.<12>" ;; 0d:63f9 ..............................
    db   "<1b>He's playing harp\nin a town called\nJadd.<12>" ;; 0d:6417 ..............................
    db   "<11>", $00                                   ;; 0d:6435 ...
    db  $00 ;;END                                      ;; 0d:6438 $00

script_0214:
    db  $04 ;;MSG                                      ;; 0d:6439 $04
    db   "<10>I used to hear a\nbeautiful sound of\nharp over in Jadd.<12>" ;; 0d:643a ...................................
    db   "<1b>Jadd is at the\nnorth end of\nthe desert.<12>" ;; 0d:645d ...........................
    db   "<11>", $00                                   ;; 0d:6478 ...
    db  $00 ;;END                                      ;; 0d:647b $00

script_0215:
    db  $04 ;;MSG                                      ;; 0d:647c $04
    db   "<10>The Book of Ice is\nhidden somewhere\nin the desert!<12>" ;; 0d:647d .................................
    db   "<11>", $00                                   ;; 0d:649e ...
    db  $00 ;;END                                      ;; 0d:64a1 $00

script_0216:
    db  $04 ;;MSG                                      ;; 0d:64a2 $04
    db   "<10>What's wrong with\nAmanda lately?\nShe's depressed.<12>" ;; 0d:64a3 ..................................
    db   "<11>", $00                                   ;; 0d:64c5 ...
    db  $00 ;;END                                      ;; 0d:64c8 $00

script_0217:
    db  $04 ;;MSG                                      ;; 0d:64c9 $04
    db   "<10> __??", $00                              ;; 0d:64ca ......
    db  $f0 ;;DELAY                                    ;; 0d:64d0 $f0
    db   $50                                           ;; 0d:64d1 .
    db  $04 ;;MSG                                      ;; 0d:64d2 $04
    db   "  Wow!\n It's moving!<12>"                   ;; 0d:64d3 ..............
    db   "<11>", $00                                   ;; 0d:64e1 ...
    db  $f0 ;;DELAY                                    ;; 0d:64e4 $f0
    db   $3c                                           ;; 0d:64e5 .
    db  $18 ;;DEL_NPC_1                                ;; 0d:64e6 $18
    db  $f9 ;;SFX                                      ;; 0d:64e7 $f9
    db   $0f                                           ;; 0d:64e8 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:64e9 $fd
    db   $01                                           ;; 0d:64ea .
    db  $17 ;;SET_NPC_1_DIRECTION_LEFT                 ;; 0d:64eb $17
    db  $f8 ;;SET_MUSIC                                ;; 0d:64ec $f8
    db   $05                                           ;; 0d:64ed .
    db  $f0 ;;DELAY                                    ;; 0d:64ee $f0
    db   $78                                           ;; 0d:64ef .
    db  $04 ;;MSG                                      ;; 0d:64f0 $04
    db   "<10>__ What are you??<12>"                   ;; 0d:64f1 ...........
    db   "<11>", $00                                   ;; 0d:64fc ...
    db  $87 ;;SET_PLAYER_DIRECTION_LEFT                ;; 0d:64ff $87
    db  $80 ;;PLAYER_STEP_FORWARD                      ;; 0d:6500 $80
    db  $80 ;;PLAYER_STEP_FORWARD                      ;; 0d:6501 $80
    db  $10 ;;NPC_1_STEP_FORWARD                       ;; 0d:6502 $10
    db  $f9 ;;SFX                                      ;; 0d:6503 $f9
    db   $07                                           ;; 0d:6504 .
    db  $f0 ;;DELAY                                    ;; 0d:6505 $f0
    db   $0f                                           ;; 0d:6506 .
    db  $f9 ;;SFX                                      ;; 0d:6507 $f9
    db   $07                                           ;; 0d:6508 .
    db  $10 ;;NPC_1_STEP_FORWARD                       ;; 0d:6509 $10
    db  $f0 ;;DELAY                                    ;; 0d:650a $f0
    db   $3c                                           ;; 0d:650b .
    db  $86 ;;SET_PLAYER_DIRECTION_RIGHT               ;; 0d:650c $86
    db  $f0 ;;DELAY                                    ;; 0d:650d $f0
    db   $28                                           ;; 0d:650e .
    db  $04 ;;MSG                                      ;; 0d:650f $04
    db   "<10>__ Hey!\nDon't follow me!<12>"           ;; 0d:6510 .................
    db   "<11>", $00                                   ;; 0d:6521 ...
    db  $87 ;;SET_PLAYER_DIRECTION_LEFT                ;; 0d:6524 $87
    db  $80 ;;PLAYER_STEP_FORWARD                      ;; 0d:6525 $80
    db  $80 ;;PLAYER_STEP_FORWARD                      ;; 0d:6526 $80
    db  $10 ;;NPC_1_STEP_FORWARD                       ;; 0d:6527 $10
    db  $f9 ;;SFX                                      ;; 0d:6528 $f9
    db   $07                                           ;; 0d:6529 .
    db  $f0 ;;DELAY                                    ;; 0d:652a $f0
    db   $0f                                           ;; 0d:652b .
    db  $f9 ;;SFX                                      ;; 0d:652c $f9
    db   $07                                           ;; 0d:652d .
    db  $10 ;;NPC_1_STEP_FORWARD                       ;; 0d:652e $10
    db  $f0 ;;DELAY                                    ;; 0d:652f $f0
    db   $3c                                           ;; 0d:6530 .
    db  $86 ;;SET_PLAYER_DIRECTION_RIGHT               ;; 0d:6531 $86
    db  $04 ;;MSG                                      ;; 0d:6532 $04
    db   "<10>You think I'm\nyour mother?<12>"         ;; 0d:6533 ..................
    db   "<1b>__ ", $00                                ;; 0d:6545 .....
    db  $f0 ;;DELAY                                    ;; 0d:654a $f0
    db   $50                                           ;; 0d:654b .
    db  $04 ;;MSG                                      ;; 0d:654c $04
    db   " Okay.\n__ Come with me!<12>"                ;; 0d:654d ................
    db   "<11>", $00                                   ;; 0d:655d ...
    db  $9c ;;GIVE_FOLLOWER                            ;; 0d:6560 $9c
    db   $09                                           ;; 0d:6561 .
    db  $da ;;SET_FLAG                                 ;; 0d:6562 $da
    db   $19                                           ;; 0d:6563 .
    db  $da ;;SET_FLAG                                 ;; 0d:6564 $da
    db   $58                                           ;; 0d:6565 .
    db  $f9 ;;SFX                                      ;; 0d:6566 $f9
    db   $07                                           ;; 0d:6567 .
    db  $f0 ;;DELAY                                    ;; 0d:6568 $f0
    db   $0a                                           ;; 0d:6569 .
    db  $f9 ;;SFX                                      ;; 0d:656a $f9
    db   $07                                           ;; 0d:656b .
    db  $f0 ;;DELAY                                    ;; 0d:656c $f0
    db   $0a                                           ;; 0d:656d .
    db  $f9 ;;SFX                                      ;; 0d:656e $f9
    db   $07                                           ;; 0d:656f .
    db  $f8 ;;SET_MUSIC                                ;; 0d:6570 $f8
    db   $14                                           ;; 0d:6571 .
    db  $00 ;;END                                      ;; 0d:6572 $00

script_0218:
    db  $04 ;;MSG                                      ;; 0d:6573 $04
    db   "<10>Davias:Better\n behave yourself\n in this town.<12>" ;; 0d:6574 ..............................
    db   "<1b> __ Amanda__?\n Oh, yes!\n That girl__<12>" ;; 0d:6592 ...........................
    db   "<1b> She went to the\n Cave of Medusa.\n<12>" ;; 0d:65ad ......................
    db   "<1b> Nobody ever came\n back from there\n alive though.<12>" ;; 0d:65c3 ..................................
    db   "", $00                                       ;; 0d:65e5 ..
    db  $da ;;SET_FLAG                                 ;; 0d:65e7 $da
    db   $1a                                           ;; 0d:65e8 .
    db  $04 ;;MSG                                      ;; 0d:65e9 $04
    db   "<11>", $00                                   ;; 0d:65ea ..
    db  $00 ;;END                                      ;; 0d:65ec $00

script_0219:
    db  $09 ;;IF ? JR                                  ;; 0d:65ed $09
    db   $2a, $00, $53                                 ;; 0d:65ee ...
    db  $f8 ;;SET_MUSIC                                ;; 0d:65f1 $f8
    db   $00                                           ;; 0d:65f2 .
    db  $04 ;;MSG                                      ;; 0d:65f3 $04
    db   "<10><BOY> used <a9>Amanda,\nthe tears of\nAmanda__", $00 ;; 0d:65f4 ..........................
    db  $f0 ;;DELAY                                    ;; 0d:660e $f0
    db   $78                                           ;; 0d:660f .
    db  $de ;;UNK_DE                                   ;; 0d:6610 $de
    db  $04 ;;MSG                                      ;; 0d:6611 $04
    db   "<11>", $00                                   ;; 0d:6612 ..
    db  $18 ;;DEL_NPC_1                                ;; 0d:6614 $18
    db  $f9 ;;SFX                                      ;; 0d:6615 $f9
    db   $06                                           ;; 0d:6616 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:6617 $fd
    db   $02                                           ;; 0d:6618 .
    db  $9c ;;GIVE_FOLLOWER                            ;; 0d:6619 $9c
    db   $06                                           ;; 0d:661a .
    db  $04 ;;MSG                                      ;; 0d:661b $04
    db   "<10>    Lester was\n  released from\n Davias's curse__<12>" ;; 0d:661c ............................
    db   "<1b>", $00                                   ;; 0d:6638 ...
    db  $02 ;;CALL                                     ;; 0d:663b $02
    db   $6d, $32                                      ;; 0d:663c ..
    db  $da ;;SET_FLAG                                 ;; 0d:663e $da
    db   $56                                           ;; 0d:663f .
    db  $da ;;SET_FLAG                                 ;; 0d:6640 $da
    db   $1d                                           ;; 0d:6641 .
    db  $f8 ;;SET_MUSIC                                ;; 0d:6642 $f8
    db   $0e                                           ;; 0d:6643 .
    db  $00 ;;END                                      ;; 0d:6644 $00

script_021a:
    db  $04 ;;MSG                                      ;; 0d:6645 $04
    db   "<10>Welcome to Jadd.", $00                   ;; 0d:6646 ..............
    db  $08 ;;IF ? JR                                  ;; 0d:6654 $08
    db   $a8, $00, $19                                 ;; 0d:6655 ...
    db  $04 ;;MSG                                      ;; 0d:6658 $04
    db   "\nDavias rules this\ntown. I hate it.", $00  ;; 0d:6659 ........................
    db  $04 ;;MSG                                      ;; 0d:6671 $04
    db   "<12>"                                        ;; 0d:6672 
    db   "<11>", $00                                   ;; 0d:6672 ...
    db  $00 ;;END                                      ;; 0d:6675 $00

script_021b:
    db  $04 ;;MSG                                      ;; 0d:6676 $04
    db   "<10>", $00                                   ;; 0d:6677 ..
    db  $08 ;;IF ? JR                                  ;; 0d:6679 $08
    db   $a8, $00, $20                                 ;; 0d:667a ...
    db  $04 ;;MSG                                      ;; 0d:667d $04
    db   "Northern valley is\nfilled with fatal\npoison gas.", $00 ;; 0d:667e .............................
    db  $01 ;;JR                                       ;; 0d:669b $01
    db   $30                                           ;; 0d:669c .
    db  $04 ;;MSG                                      ;; 0d:669d $04
    db   "The poison gas is\ncleared!<12>"             ;; 0d:669e ................
    db   "<1b>Head north over\nthe valley to the\nMt. Rocks!", $00 ;; 0d:66ae ...............................
    db  $04 ;;MSG                                      ;; 0d:66cd $04
    db   "<12>"                                        ;; 0d:66ce 
    db   "<11>", $00                                   ;; 0d:66ce ...
    db  $00 ;;END                                      ;; 0d:66d1 $00

script_021c:
    db  $04 ;;MSG                                      ;; 0d:66d2 $04
    db   "<10>The poison gas\nappeared when\nthe harp stopped.<12>" ;; 0d:66d3 ...............................
    db   "<11>", $00                                   ;; 0d:66f2 ...
    db  $00 ;;END                                      ;; 0d:66f5 $00

script_021d:
    db  $04 ;;MSG                                      ;; 0d:66f6 $04
    db   "<10>See that huge\nmansion? That's\nDavias's house!<12>" ;; 0d:66f7 ...............................
    db   "<11>", $00                                   ;; 0d:6716 ...
    db  $00 ;;END                                      ;; 0d:6719 $00

script_021e:
    db  $04 ;;MSG                                      ;; 0d:671a $04
    db   "<10>Davias can cast a\nspell to change\npeople to animals.<12>" ;; 0d:671b ...................................
    db   "<1b>Many people went\nto his place and\nnever came back!<12>" ;; 0d:673e ....................................
    db   "<11>", $00                                   ;; 0d:6762 ...
    db  $00 ;;END                                      ;; 0d:6765 $00

script_021f:
    db  $04 ;;MSG                                      ;; 0d:6766 $04
    db   "<10>To uncurse, you\nneed a teardrop\nof Medusa.<12>" ;; 0d:6767 ...........................
    db   "<11>", $00                                   ;; 0d:6782 ...
    db  $00 ;;END                                      ;; 0d:6785 $00

script_0220:
    db  $04 ;;MSG                                      ;; 0d:6786 $04
    db   "<10>Davias's mother\nis a Medusa.\nShe is in a cave.<12>" ;; 0d:6787 ............................
    db   "<1b>It's by the oasis\nat the desert, but\nit's hard to find.<12>" ;; 0d:67a3 ...................................
    db   "<1b>I don't know how,\nbut a boy knows\nhow to get in!<12>" ;; 0d:67c6 ..................................
    db   "<11>", $00                                   ;; 0d:67e8 ...
    db  $00 ;;END                                      ;; 0d:67eb $00

script_0221:
    db  $04 ;;MSG                                      ;; 0d:67ec $04
    db   "<10>Cave of Oasis?\nI'll tell you for\na bag of Fang!<12>" ;; 0d:67ed ...............................
    db   "<13><1b>", $00                               ;; 0d:680c ....
    db  $08 ;;IF ? JR                                  ;; 0d:6810 $08
    db   $ff, $00, $28                                 ;; 0d:6811 ...
    db  $09 ;;IF ? JR                                  ;; 0d:6814 $09
    db   $3b, $00, $06                                 ;; 0d:6815 ...
    db  $de ;;UNK_DE                                   ;; 0d:6818 $de
    db  $02 ;;CALL                                     ;; 0d:6819 $02
    db   $2d, $01                                      ;; 0d:681a ..
    db  $01 ;;JR                                       ;; 0d:681c $01
    db   $1c, $0a, $3b, $00, $07, $d5, $32, $02        ;; 0d:681d .???????
    db   $2d, $01, $01, $11, $04, $bb, $84, $80        ;; 0d:6825 ????????
    db   $24, $81, $d7, $47, $ee, $e7, $1a, $3b        ;; 0d:682d ????????
    db   $4d, $37, $e7, $f3, $00                       ;; 0d:6835 ?????
    db  $01 ;;JR                                       ;; 0d:683a $01
    db   $1c                                           ;; 0d:683b .
    db  $04 ;;MSG                                      ;; 0d:683c $04
    db   "Don't you know?\nIt's very\nvaluable!", $00  ;; 0d:683d ...........................
    db  $04 ;;MSG                                      ;; 0d:6858 $04
    db   "<12>"                                        ;; 0d:6859 
    db   "<11>", $00                                   ;; 0d:6859 ...
    db  $00 ;;END                                      ;; 0d:685c $00

script_0222:
    db  $04 ;;MSG                                      ;; 0d:685d $04
    db   "<10>Lester:Good luck!<12>"                   ;; 0d:685e ............
    db   "<11>", $00                                   ;; 0d:686a ...
    db  $00 ;;END                                      ;; 0d:686d $00

script_0223:
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:686e $fc
    db   $5e                                           ;; 0d:686f .
    db  $fd ;;SPAWN_NPC                                ;; 0d:6870 $fd
    db   $00                                           ;; 0d:6871 .
    db  $00 ;;END                                      ;; 0d:6872 $00

script_0224:
    db  $00 ;;END                                      ;; 0d:6873 $00

script_0225:
    db  $00 ;;END                                      ;; 0d:6874 $00

script_0226:
    db  $fd ;;SPAWN_NPC                                ;; 0d:6875 $fd
    db   $01                                           ;; 0d:6876 .
    db  $04 ;;MSG                                      ;; 0d:6877 $04
    db   "<10><BOY>:__I'm sorry,\n Amanda __\n But I had to __<12>" ;; 0d:6878 ..............................
    db   "<11>", $00                                   ;; 0d:6896 ...
    db  $da ;;SET_FLAG                                 ;; 0d:6899 $da
    db   $1c                                           ;; 0d:689a .
    db  $00 ;;END                                      ;; 0d:689b $00

script_0227:
    db  $95 ;;FOLLOWER_DIRECTION_DOWN                  ;; 0d:689c $95
    db  $04 ;;MSG                                      ;; 0d:689d $04
    db   "<10>", $00                                   ;; 0d:689e ..
    db  $f8 ;;SET_MUSIC                                ;; 0d:68a0 $f8
    db   $00                                           ;; 0d:68a1 .
    db  $04 ;;MSG                                      ;; 0d:68a2 $04
    db   "Amanda:__Ouch!", $00                         ;; 0d:68a3 ............
    db  $87 ;;SET_PLAYER_DIRECTION_LEFT                ;; 0d:68af $87
    db  $80 ;;PLAYER_STEP_FORWARD                      ;; 0d:68b0 $80
    db  $04 ;;MSG                                      ;; 0d:68b1 $04
    db   "\n<BOY>:Are you okay?<12>"                   ;; 0d:68b2 ............
    db   "<1b>Amanda:I guess\n Medusa bit me\n while fighting__<12>" ;; 0d:68be ...............................
    db   "", $00                                       ;; 0d:68dd ..
    db  $f8 ;;SET_MUSIC                                ;; 0d:68df $f8
    db   $02                                           ;; 0d:68e0 .
    db  $04 ;;MSG                                      ;; 0d:68e1 $04
    db   "<1b> __ One who was\n bitten by Medusa\n turns to Medusa.<12>" ;; 0d:68e2 ..................................
    db   "<1b> I'm gonna turn\n into a Medusa in\n a short while__<12>" ;; 0d:6904 ................................
    db   "<1b> Please do away\n with me and take\n my tears, <BOY>.<12>" ;; 0d:6924 ................................
    db   "<1b><BOY>:No, I can't!\nAmanda:I'm gonna\n be a monster__<12>" ;; 0d:6944 ...................................
    db   "<1b> I might lose my\n mind and hurt\n people__<12>" ;; 0d:6967 ............................
    db   "<1b>", $00                                   ;; 0d:6983 ...
    db  $98 ;;FOLLOWER_DELETE                          ;; 0d:6986 $98
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:6987 $fc
    db   $42                                           ;; 0d:6988 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:6989 $fd
    db   $00                                           ;; 0d:698a .
    db  $f0 ;;DELAY                                    ;; 0d:698b $f0
    db   $1e                                           ;; 0d:698c .
    db  $04 ;;MSG                                      ;; 0d:698d $04
    db   " Please__ <BOY>__\n Before I lose\n my feelings__<12>" ;; 0d:698e ..............................
    db   "<1b> Please take my\n tears to Lester.<12>"  ;; 0d:69ac .......................
    db   "<1b> Tell him that\n I loved him__\n", $00   ;; 0d:69c3 ....................
    db  $f0 ;;DELAY                                    ;; 0d:69d7 $f0
    db   $28                                           ;; 0d:69d8 .
    db  $04 ;;MSG                                      ;; 0d:69d9 $04
    db   " _ Please __<12>"                            ;; 0d:69da ........
    db   "<1b> <BOY> __\n", $00                        ;; 0d:69e2 ........
    db  $f0 ;;DELAY                                    ;; 0d:69ea $f0
    db   $1e                                           ;; 0d:69eb .
    db  $04 ;;MSG                                      ;; 0d:69ec $04
    db   " Pl_ please_ _ _<12>"                        ;; 0d:69ed ..............
    db   "<11>", $00                                   ;; 0d:69fb ...
    db  $00 ;;END                                      ;; 0d:69fe $00

script_0228:
    db  $d4 ;;UNK_D4                                   ;; 0d:69ff $d4
    db   $21                                           ;; 0d:6a00 .
    db  $08 ;;IF ? JR                                  ;; 0d:6a01 $08
    db   $85, $00, $42                                 ;; 0d:6a02 ...
    db  $bd ;;FADE_TO_BLACK                            ;; 0d:6a05 $bd
    db  $f3 ;;LOAD_ROOM_INSTANT                        ;; 0d:6a06 $f3
    db   $0f, $55, $14, $00                            ;; 0d:6a07 ....
    db  $bc ;;FADE_TO_NORMAL                           ;; 0d:6a0b $bc
    db  $04 ;;MSG                                      ;; 0d:6a0c $04
    db   "<10> <BOY> took a drop\n   of tear from\n  Amanda's face.<12>" ;; 0d:6a0d ...............................
    db   "<1b>", $00                                   ;; 0d:6a2c ...
    db  $f0 ;;DELAY                                    ;; 0d:6a2f $f0
    db   $1e                                           ;; 0d:6a30 .
    db  $04 ;;MSG                                      ;; 0d:6a31 $04
    db   "<11>", $00                                   ;; 0d:6a32 ..
    db  $f0 ;;DELAY                                    ;; 0d:6a34 $f0
    db   $3c                                           ;; 0d:6a35 .
    db  $f8 ;;SET_MUSIC                                ;; 0d:6a36 $f8
    db   $00                                           ;; 0d:6a37 .
    db  $f0 ;;DELAY                                    ;; 0d:6a38 $f0
    db   $3c                                           ;; 0d:6a39 .
    db  $f4 ;;LOAD_ROOM                                ;; 0d:6a3a $f4
    db   $00, $2c, $0e, $04                            ;; 0d:6a3b ....
    db  $da ;;SET_FLAG                                 ;; 0d:6a3f $da
    db   $35                                           ;; 0d:6a40 .
    db  $f0 ;;DELAY                                    ;; 0d:6a41 $f0
    db   $0a                                           ;; 0d:6a42 .
    db  $f8 ;;SET_MUSIC                                ;; 0d:6a43 $f8
    db   $14                                           ;; 0d:6a44 .
    db  $ab ;;UNK_AB                                   ;; 0d:6a45 $ab
    db  $ec ;;RUN_ROOM_SCRIPT                          ;; 0d:6a46 $ec
    db  $00 ;;END                                      ;; 0d:6a47 $00

script_0229:
    db  $04 ;;MSG                                      ;; 0d:6a48 $04
    db   "<10>", $00                                   ;; 0d:6a49 ..
    db  $08 ;;IF ? JR                                  ;; 0d:6a4b $08
    db   $79, $00, $18                                 ;; 0d:6a4c ...
    db  $04 ;;MSG                                      ;; 0d:6a4f $04
    db   "Old man:Go away!", $00                       ;; 0d:6a50 .............
    db  $08 ;;IF ? JR                                  ;; 0d:6a5d $08
    db   $0b, $51, $00, $05                            ;; 0d:6a5e ....
    db  $02 ;;CALL                                     ;; 0d:6a62 $02
    db   $2a, $bb                                      ;; 0d:6a63 ..
    db  $da ;;SET_FLAG                                 ;; 0d:6a65 $da
    db   $0c                                           ;; 0d:6a66 .
    db  $08 ;;IF ? JR                                  ;; 0d:6a67 $08
    db   $8c, $00, $4f                                 ;; 0d:6a68 ...
    db  $08 ;;IF ? JR                                  ;; 0d:6a6b $08
    db   $78, $f9, $00, $1b                            ;; 0d:6a6c ....
    db  $04 ;;MSG                                      ;; 0d:6a70 $04
    db   "Old man:I don't\n know anything!", $00       ;; 0d:6a71 ........................
    db  $da ;;SET_FLAG                                 ;; 0d:6a89 $da
    db   $79                                           ;; 0d:6a8a .
    db  $08 ;;IF ? JR                                  ;; 0d:6a8b $08
    db   $f8, $00, $27                                 ;; 0d:6a8c ...
    db  $04 ;;MSG                                      ;; 0d:6a8f $04
    db   "<BOY>:Excuse me.\n I'm looking for a\n man name Bogard.", $00 ;; 0d:6a90 ....................................
    db  $da ;;SET_FLAG                                 ;; 0d:6ab4 $da
    db   $78                                           ;; 0d:6ab5 .
    db  $04 ;;MSG                                      ;; 0d:6ab6 $04
    db   "<12>"                                        ;; 0d:6ab7 
    db   "<11>", $00                                   ;; 0d:6ab7 ...
    db  $00 ;;END                                      ;; 0d:6aba $00

script_022a:
    db  $04 ;;MSG                                      ;; 0d:6abb $04
    db   "\n", $00                                     ;; 0d:6abc ..
    db  $f0 ;;DELAY                                    ;; 0d:6abe $f0
    db   $28                                           ;; 0d:6abf .
    db  $04 ;;MSG                                      ;; 0d:6ac0 $04
    db   " _", $00                                     ;; 0d:6ac1 ...
    db  $f0 ;;DELAY                                    ;; 0d:6ac4 $f0
    db   $32                                           ;; 0d:6ac5 .
    db  $04 ;;MSG                                      ;; 0d:6ac6 $04
    db   " _", $00                                     ;; 0d:6ac7 ...
    db  $f0 ;;DELAY                                    ;; 0d:6aca $f0
    db   $1e                                           ;; 0d:6acb .
    db  $04 ;;MSG                                      ;; 0d:6acc $04
    db   " That is_ the_\n Pendant of Mana.<12>"       ;; 0d:6acd ....................
    db   "<1b><GIRL>:_ My mother\n gave me this.<12>"  ;; 0d:6ae1 ....................
    db   "<1b><GIRL>:Are you the\n Gemma Knight?<12>"  ;; 0d:6af5 .....................
    db   "<1b>Bogard:_ Yes. It\n was when Vandole\n was trying to<12>" ;; 0d:6b0a ....................................
    db   "<1b> conquer the world\n with the power\n of Mana.<12>" ;; 0d:6b2e ..............................
    db   "<1b> We fought against\n them to retrieve\n the peace. But_<12>" ;; 0d:6b4c .....................................
    db   "<1b> We were losing_\n The power of Mana\n was too strong.<12>" ;; 0d:6b71 ..................................
    db   "<1b> But there was a\n lady who assured\n our victory.<12>" ;; 0d:6b93 ..................................
    db   "<1b> That lady had\n that Pendant on\n her chest.<12>" ;; 0d:6bb5 ............................
    db   "<1b> Seems like this\n girl is the key\n for this time.<12>" ;; 0d:6bd1 .................................
    db   "<1b> Take the Mattock\n in the next room!<12>" ;; 0d:6bf2 ........................
    db   "<11>", $00                                   ;; 0d:6c0a ...
    db  $02 ;;CALL                                     ;; 0d:6c0d $02
    db   $2c, $14                                      ;; 0d:6c0e ..
    db  $f9 ;;SFX                                      ;; 0d:6c10 $f9
    db   $10                                           ;; 0d:6c11 .
    db  $e0 ;;UNK_E0                                   ;; 0d:6c12 $e0
    db  $00 ;;END                                      ;; 0d:6c13 $00

script_022b:
    db  $04 ;;MSG                                      ;; 0d:6c14 $04
    db   "<10>", $00                                   ;; 0d:6c15 ..
    db  $08 ;;IF ? JR                                  ;; 0d:6c17 $08
    db   $0c, $00, $24                                 ;; 0d:6c18 ...
    db  $04 ;;MSG                                      ;; 0d:6c1b $04
    db   " You can buy the\n mattocks at the\n Item Shops also.<12>" ;; 0d:6c1c ................................
    db   "<1b>", $00                                   ;; 0d:6c3c ...
    db  $04 ;;MSG                                      ;; 0d:6c3f $04
    db   " Go to the cave on\n the east side of\n the mountains.<12>" ;; 0d:6c40 ..............................
    db   "<1b> Use Mattock to\n break the rocks\n in the cave. See<12>" ;; 0d:6c5e .................................
    db   "<1b> Cibba in the town\n called Wendel.\n He knows more.<12>" ;; 0d:6c7f ..................................
    db   "<11>", $00                                   ;; 0d:6ca1 ...
    db  $00 ;;END                                      ;; 0d:6ca4 $00

script_022c:
    db  $04 ;;MSG                                      ;; 0d:6ca5 $04
    db   "<10>", $00                                   ;; 0d:6ca6 ..
    db  $08 ;;IF ? JR                                  ;; 0d:6ca8 $08
    db   $a1, $00, $0b                                 ;; 0d:6ca9 ...
    db  $04 ;;MSG                                      ;; 0d:6cac $04
    db   "Bogard:_____", $00                           ;; 0d:6cad ..........
    db  $08 ;;IF ? JR                                  ;; 0d:6cb7 $08
    db   $21, $a2, $00, $03                            ;; 0d:6cb8 ....
    db  $02 ;;CALL                                     ;; 0d:6cbc $02
    db   $22, $3e                                      ;; 0d:6cbd ..
    db  $08 ;;IF ? JR                                  ;; 0d:6cbf $08
    db   $22, $00, $1e                                 ;; 0d:6cc0 ...
    db  $04 ;;MSG                                      ;; 0d:6cc3 $04
    db   "Bogard:To defeat\n the evil!\n Go on, <BOY>.", $00 ;; 0d:6cc4 .............................
    db  $04 ;;MSG                                      ;; 0d:6ce1 $04
    db   "<12>"                                        ;; 0d:6ce2 
    db   "<11>", $00                                   ;; 0d:6ce2 ...
    db  $00 ;;END                                      ;; 0d:6ce5 $00

script_022d:
    db  $04 ;;MSG                                      ;; 0d:6ce6 $04
    db   "<10>Bogard:I'll take\n care of her.<12>"     ;; 0d:6ce7 ......................
    db   "<11>", $00                                   ;; 0d:6cfd ...
    db  $00 ;;END                                      ;; 0d:6d00 $00

script_022e:
    db  $04 ;;MSG                                      ;; 0d:6d01 $04
    db   "Here's the clue.\nPalm trees_ and 8.\n", $00 ;; 0d:6d02 .........................
    db  $f0 ;;DELAY                                    ;; 0d:6d1b $f0
    db   $14                                           ;; 0d:6d1c .
    db  $04 ;;MSG                                      ;; 0d:6d1d $04
    db   "Got it?", $00                                ;; 0d:6d1e ......
    db  $00 ;;END                                      ;; 0d:6d24 $00

script_022f:
    db  $04 ;;MSG                                      ;; 0d:6d25 $04
    db   "<10>Bowow:", $00                             ;; 0d:6d26 ......
    db  $08 ;;IF ? JR                                  ;; 0d:6d2c $08
    db   $af, $00, $43                                 ;; 0d:6d2d ...
    db  $04 ;;MSG                                      ;; 0d:6d30 $04
    db   "Go east on\n the sea from the\n pier at north.<12>" ;; 0d:6d31 ...........................
    db   "<1b> And go north to\n Wendel.__South is\n to the Ammonites.", $00 ;; 0d:6d4c .....................................
    db  $01 ;;JR                                       ;; 0d:6d71 $01
    db   $a5                                           ;; 0d:6d72 .
    db  $04 ;;MSG                                      ;; 0d:6d73 $04
    db   "Finally!\n", $00                             ;; 0d:6d74 ........
    db  $0a ;;IF ? JR                                  ;; 0d:6d7c $0a
    db   $08, $00, $3c                                 ;; 0d:6d7d ...
    db  $04 ;;MSG                                      ;; 0d:6d80 $04
    db   "There is a piece\nof crystal you can<12>"    ;; 0d:6d81 ......................
    db   "<1b>blow with Nuke in\nCrystal Desert.\n__ Find it!", $00 ;; 0d:6d97 ...................................
    db  $01 ;;JR                                       ;; 0d:6dba $01
    db   $5c, $04, $bb, $84, $59, $21, $ff, $e1        ;; 0d:6dbb .???????
    db   $d8, $39, $22, $2a, $1a, $63, $da, $dc        ;; 0d:6dc3 ????????
    db   $d6, $3e, $53, $c7, $e8, $de, $61, $12        ;; 0d:6dcb ????????
    db   $1b, $85, $20, $90, $e7, $dc, $63, $3f        ;; 0d:6dd3 ????????
    db   $42, $d4, $da, $dc, $d6, $1a, $d5, $5e        ;; 0d:6ddb ????????
    db   $de, $3e, $53, $c7, $e8, $de, $20, $31        ;; 0d:6de3 ????????
    db   $1a, $6b, $56, $39, $6f, $57, $c5, $dc        ;; 0d:6deb ????????
    db   $d6, $db, $f0, $12, $1b, $c0, $36, $95        ;; 0d:6df3 ????????
    db   $e5, $23, $22, $36, $23, $d8, $1a, $c9        ;; 0d:6dfb ????????
    db   $56, $e0, $57, $bd, $54, $27, $28, $29        ;; 0d:6e03 ????????
    db   $d7, $1a, $d7, $d8, $d9, $32, $28, $c5        ;; 0d:6e0b ????????
    db   $dc, $d6, $db, $f3, $00                       ;; 0d:6e13 ?????
    db  $04 ;;MSG                                      ;; 0d:6e18 $04
    db   "<12>"                                        ;; 0d:6e19 
    db   "<11>", $00                                   ;; 0d:6e19 ...
    db  $00 ;;END                                      ;; 0d:6e1c $00

script_0230:
    db  $04 ;;MSG                                      ;; 0d:6e1d $04
    db   "<10>There is no way\nto go on water.\nBut, you know_<12>" ;; 0d:6e1e .............................
    db   "<1b>Dr. Bowow may be\nable to make\nsomething.<12>" ;; 0d:6e3b .............................
    db   "<1b>He lives in a\nhouse over there.<12>"    ;; 0d:6e58 ...................
    db   "<11>", $00                                   ;; 0d:6e6b ...
    db  $00 ;;END                                      ;; 0d:6e6e $00

script_0231:
    db  $04 ;;MSG                                      ;; 0d:6e6f $04
    db   "<10>", $00                                   ;; 0d:6e70 ..
    db  $08 ;;IF ? JR                                  ;; 0d:6e72 $08
    db   $20, $00, $19                                 ;; 0d:6e73 ...
    db  $04 ;;MSG                                      ;; 0d:6e76 $04
    db   "Sarah:Please__\n Save us all_!<12>"          ;; 0d:6e77 ...................
    db   "<11>", $00                                   ;; 0d:6e8a ...
    db  $01 ;;JR                                       ;; 0d:6e8d $01
    db   $0a                                           ;; 0d:6e8e .
    db  $02 ;;CALL                                     ;; 0d:6e8f $02
    db   $2e, $9a                                      ;; 0d:6e90 ..
    db  $11 ;;NPC_1_STEP_BACKWARDS                     ;; 0d:6e92 $11
    db  $11 ;;NPC_1_STEP_BACKWARDS                     ;; 0d:6e93 $11
    db  $15 ;;SET_NPC_1_DIRECTION_DOWN                 ;; 0d:6e94 $15
    db  $11 ;;NPC_1_STEP_BACKWARDS                     ;; 0d:6e95 $11
    db  $11 ;;NPC_1_STEP_BACKWARDS                     ;; 0d:6e96 $11
    db  $da ;;SET_FLAG                                 ;; 0d:6e97 $da
    db   $20                                           ;; 0d:6e98 .
    db  $00 ;;END                                      ;; 0d:6e99 $00

script_0232:
    db  $04 ;;MSG                                      ;; 0d:6e9a $04
    db   "Sarah:He didn't\n wanna let you\n know, but_<12>" ;; 0d:6e9b ...............................
    db   "<1b> He can't move\n for a while for\n his broken back.<12>" ;; 0d:6eba ...............................
    db   "<1b> He was distressed\n to hear of places\n being attacked.<12>" ;; 0d:6ed9 ....................................
    db   "<1b> But he kept\n saying that there\n is a boy_<12>" ;; 0d:6efd ...............................
    db   "<1b> A boy named <BOY>\n will come to\n save us all_<12>" ;; 0d:6f1c .............................
    db   "<1b> I didn't really\n believe him, but\n when I saw you_<12>" ;; 0d:6f39 .....................................
    db   "<1b> _ Even a Chocobo\n knew you're the\n last hope_<12>" ;; 0d:6f5e .....................................
    db   "<1b> Bogard and the\n bird made me\n believe in you_<12>" ;; 0d:6f83 ................................
    db   "<1b> We all believe\n that you'll save\n our world now.<12>" ;; 0d:6fa3 ................................
    db   "<1b> Chocobo is being\n treated at Doctor\n Bowow's house.<12>" ;; 0d:6fc3 .....................................
    db   "<11>", $00                                   ;; 0d:6fe8 ...
    db  $00 ;;END                                      ;; 0d:6feb $00

script_0233:
    db  $04 ;;MSG                                      ;; 0d:6fec $04
    db   "<10>This is Ish.<12>"                        ;; 0d:6fed .........
    db   "<1b>The evil Vandole\nused to prosper\naround this area.<12>" ;; 0d:6ff6 .................................
    db   "<1b>But Gemma Knight\nwith some sword\ndefeated the evil.<12>" ;; 0d:7017 ....................................
    db   "<1b>The ruins of\nVandole lies under\nthe desert.<12>" ;; 0d:703b ..............................
    db   "<11>", $00                                   ;; 0d:7059 ...
    db  $00 ;;END                                      ;; 0d:705c $00

script_0234:
    db  $04 ;;MSG                                      ;; 0d:705d $04
    db   "<10>Julius summoned\nevil monsters_", $00    ;; 0d:705e ......................
    db  $f0 ;;DELAY                                    ;; 0d:7074 $f0
    db   $28                                           ;; 0d:7075 .
    db  $04 ;;MSG                                      ;; 0d:7076 $04
    db   "\nIs it safe here?<12>"                      ;; 0d:7077 ...........
    db   "<11>", $00                                   ;; 0d:7082 ...
    db  $00 ;;END                                      ;; 0d:7085 $00

script_0235:
    db  $04 ;;MSG                                      ;; 0d:7086 $04
    db   "<10>Vandole people\ncould build things\non desert sand.<12>" ;; 0d:7087 ....................................
    db   "<1b>They built the\ngreat Dime Tower.\nBut it sank__<12>" ;; 0d:70ab .................................
    db   "<11>", $00                                   ;; 0d:70cc ...
    db  $00 ;;END                                      ;; 0d:70cf $00

script_0236:
    db  $04 ;;MSG                                      ;; 0d:70d0 $04
    db   "<10>Julius became the\nking of Glaive.\nBut Julius is<12>" ;; 0d:70d1 .................................
    db   "<1b>much crueler than\nthat Dark Lord!\n_ What'll we do?<12>" ;; 0d:70f2 ......................................
    db   "<11>", $00                                   ;; 0d:7118 ...
    db  $00 ;;END                                      ;; 0d:711b $00

script_0237:
    db  $04 ;;MSG                                      ;; 0d:711c $04
    db   "<10>It's hard to walk\naround in Crystal\nDesert.<12>" ;; 0d:711d ............................
    db   "<1b>Even for Chocobos!<12>"                  ;; 0d:7139 .................
    db   "<11>", $00                                   ;; 0d:714a ...
    db  $00 ;;END                                      ;; 0d:714d $00

script_0238:
    db  $00 ;;END                                      ;; 0d:714e $00

script_0239:
    db  $00 ;;END                                      ;; 0d:714f $00

script_023a:
    db  $00 ;;END                                      ;; 0d:7150 $00

script_023b:
    db  $00 ;;END                                      ;; 0d:7151 $00

script_023c:
    db  $00 ;;END                                      ;; 0d:7152 $00

script_023d:
    db  $00 ;;END                                      ;; 0d:7153 $00

script_023e:
    db  $04 ;;MSG                                      ;; 0d:7154 $04
    db   "<10>THE TREE OF MANA\nGROWS WITH THE\nENERGY OF NATURE.<12>" ;; 0d:7155 ...........................................
    db   "<11>", $00                                   ;; 0d:7180 ...
    db  $00 ;;END                                      ;; 0d:7183 $00

script_023f:
    db  $04 ;;MSG                                      ;; 0d:7184 $04
    db   "<10>THE EVIL FORCE\nOF PEOPLE MAKES\nTHE TREE EVIL.<12>" ;; 0d:7185 .........................................
    db   "<11>", $00                                   ;; 0d:71ae ...
    db  $00 ;;END                                      ;; 0d:71b1 $00

script_0240:
    db  $04 ;;MSG                                      ;; 0d:71b2 $04
    db   "<10>WATER FROM THE\nEVIL MANA TREE\nTURNS PEOPLE EVIL.<12>" ;; 0d:71b3 ............................................
    db   "<1b>IT IS A VICIOUS\nCIRCLE BETWEEN\nENERGY AND MANA.<12>" ;; 0d:71df ..............................................
    db   "<11>", $00                                   ;; 0d:720d ...
    db  $00 ;;END                                      ;; 0d:7210 $00

script_0241:
    db  $04 ;;MSG                                      ;; 0d:7211 $04
    db   "<10>ONE WHO TOUCHES\nTHE MANA TREE GETS\nTHE MIGHTY POWER.<12>" ;; 0d:7212 ............................................
    db   "<11>", $00                                   ;; 0d:723e ...
    db  $00 ;;END                                      ;; 0d:7241 $00

script_0242:
    db  $04 ;;MSG                                      ;; 0d:7242 $04
    db   "<10>KING OF VANDOLE\nGOT THE MIGHTY\nPOWER OF MANA.<12>" ;; 0d:7243 ..........................................
    db   "<1b>THE ONLY ONE WHO\nCAN STAND AGAINST\nIS THE __<12>" ;; 0d:726d ........................................
    db   "<1b>GEMMA KNIGHT__\nWITH THE__\nEXCALIBUR__<12>" ;; 0d:7295 ..................................
    db   "<11>", $00                                   ;; 0d:72b7 ...
    db  $00 ;;END                                      ;; 0d:72ba $00

script_0243:
    db  $04 ;;MSG                                      ;; 0d:72bb $04
    db   "<10>GEMMA KNIGHT WITH\nTHE RUSTY SWORD\nWILL BE TESTED.<12>" ;; 0d:72bc ..............................................
    db   "<1b>THE TRUE GEMMA\nKNIGHT SHOULD\nBE GIVEN THE<12>" ;; 0d:72ea ....................................
    db   "<1b>LEGENDARY SWORD,\nEXCALIBUR__!<12>"      ;; 0d:730e .............................
    db   "<11>", $00                                   ;; 0d:732b ...
    db  $00 ;;END                                      ;; 0d:732e $00

script_0244:
    db  $04 ;;MSG                                      ;; 0d:732f $04
    db   "<10>FIGHT WITH THE 3\nDRAGONS IN THE\nSHRINE OF MANA.<12>" ;; 0d:7330 ........................................
    db   "<11>", $00                                   ;; 0d:7358 ...
    db  $00 ;;END                                      ;; 0d:735b $00

script_0245:
    db  $04 ;;MSG                                      ;; 0d:735c $04
    db   "<10>THE VANDOLE SOON\nSHOULD FALL.\n<12>"    ;; 0d:735d .............................
    db   "<1b>WE LEAVE OUR LAST\nHOPE IN THE CAVE\nOF THE WATERFALLS.<12>" ;; 0d:737a ...............................................
    db   "<1b>GLORY TO VANDOLE\nAND TO OUR CHILD\nOF HOPE__!<12>" ;; 0d:73a9 ..........................................
    db   "<11>", $00                                   ;; 0d:73d3 ...
    db  $00 ;;END                                      ;; 0d:73d6 $00

script_0246:
    db  $f9 ;;SFX                                      ;; 0d:73d7 $f9
    db   $14                                           ;; 0d:73d8 .
    db  $bf ;;FLASH_SCREEN                             ;; 0d:73d9 $bf
    db  $bf ;;FLASH_SCREEN                             ;; 0d:73da $bf
    db  $f9 ;;SFX                                      ;; 0d:73db $f9
    db   $11                                           ;; 0d:73dc .
    db  $00 ;;END                                      ;; 0d:73dd $00

script_0247:
    db  $f9 ;;SFX                                      ;; 0d:73de $f9
    db   $14                                           ;; 0d:73df .
    db  $bf ;;FLASH_SCREEN                             ;; 0d:73e0 $bf
    db  $bf ;;FLASH_SCREEN                             ;; 0d:73e1 $bf
    db  $f9 ;;SFX                                      ;; 0d:73e2 $f9
    db   $11                                           ;; 0d:73e3 .
    db  $bf ;;FLASH_SCREEN                             ;; 0d:73e4 $bf
    db  $bf ;;FLASH_SCREEN                             ;; 0d:73e5 $bf
    db  $00 ;;END                                      ;; 0d:73e6 $00

script_0248:
    db  $b0 ;;SET_ROOM_TILE                            ;; 0d:73e7 $b0
    db   $51, $01, $03                                 ;; 0d:73e8 ...
    db  $b0 ;;SET_ROOM_TILE                            ;; 0d:73eb $b0
    db   $43, $01, $04                                 ;; 0d:73ec ...
    db  $b0 ;;SET_ROOM_TILE                            ;; 0d:73ef $b0
    db   $31, $01, $05                                 ;; 0d:73f0 ...
    db  $00 ;;END                                      ;; 0d:73f3 $00

script_0249:
    db  $bf ;;FLASH_SCREEN                             ;; 0d:73f4 $bf
    db  $f9 ;;SFX                                      ;; 0d:73f5 $f9
    db   $25                                           ;; 0d:73f6 .
    db  $bf ;;FLASH_SCREEN                             ;; 0d:73f7 $bf
    db  $fb ;;SHAKE_SCREEN                             ;; 0d:73f8 $fb
    db  $8a ;;SET_PLAYER_POSITION                      ;; 0d:73f9 $8a
    db   $12, $08                                      ;; 0d:73fa ..
    db  $97 ;;FOLLOWER_DIRECTION_LEFT                  ;; 0d:73fc $97
    db  $99 ;;FOLLOWER_SET_POSITION                    ;; 0d:73fd $99
    db   $12, $08                                      ;; 0d:73fe ..
    db  $87 ;;SET_PLAYER_DIRECTION_LEFT                ;; 0d:7400 $87
    db  $bf ;;FLASH_SCREEN                             ;; 0d:7401 $bf
    db  $f9 ;;SFX                                      ;; 0d:7402 $f9
    db   $14                                           ;; 0d:7403 .
    db  $b0 ;;SET_ROOM_TILE                            ;; 0d:7404 $b0
    db   $64, $07, $02                                 ;; 0d:7405 ...
    db  $b0 ;;SET_ROOM_TILE                            ;; 0d:7408 $b0
    db   $64, $07, $03                                 ;; 0d:7409 ...
    db  $b0 ;;SET_ROOM_TILE                            ;; 0d:740c $b0
    db   $64, $07, $04                                 ;; 0d:740d ...
    db  $b0 ;;SET_ROOM_TILE                            ;; 0d:7410 $b0
    db   $32, $07, $05                                 ;; 0d:7411 ...
    db  $b0 ;;SET_ROOM_TILE                            ;; 0d:7414 $b0
    db   $51, $07, $06                                 ;; 0d:7415 ...
    db  $b0 ;;SET_ROOM_TILE                            ;; 0d:7418 $b0
    db   $43, $07, $07                                 ;; 0d:7419 ...
    db  $f0 ;;DELAY                                    ;; 0d:741c $f0
    db   $05                                           ;; 0d:741d .
    db  $bf ;;FLASH_SCREEN                             ;; 0d:741e $bf
    db  $f9 ;;SFX                                      ;; 0d:741f $f9
    db   $14                                           ;; 0d:7420 .
    db  $b0 ;;SET_ROOM_TILE                            ;; 0d:7421 $b0
    db   $64, $07, $05                                 ;; 0d:7422 ...
    db  $b0 ;;SET_ROOM_TILE                            ;; 0d:7425 $b0
    db   $64, $07, $06                                 ;; 0d:7426 ...
    db  $b0 ;;SET_ROOM_TILE                            ;; 0d:7429 $b0
    db   $64, $07, $07                                 ;; 0d:742a ...
    db  $80 ;;PLAYER_STEP_FORWARD                      ;; 0d:742d $80
    db  $80 ;;PLAYER_STEP_FORWARD                      ;; 0d:742e $80
    db  $f0 ;;DELAY                                    ;; 0d:742f $f0
    db   $50                                           ;; 0d:7430 .
    db  $86 ;;SET_PLAYER_DIRECTION_RIGHT               ;; 0d:7431 $86
    db  $04 ;;MSG                                      ;; 0d:7432 $04
    db   "<10><BOY>:Oh__ No__\nMarcie:I THROW YOU\n __ AND I JUMP.", $00 ;; 0d:7433 ..........................................
    db  $f0 ;;DELAY                                    ;; 0d:745d $f0
    db   $32                                           ;; 0d:745e .
    db  $04 ;;MSG                                      ;; 0d:745f $04
    db   "<1b><BOY>:Can you?\n Let's do that!<12>"     ;; 0d:7460 ...................
    db   "<11>", $00                                   ;; 0d:7473 ...
    db  $f0 ;;DELAY                                    ;; 0d:7476 $f0
    db   $3c                                           ;; 0d:7477 .
    db  $87 ;;SET_PLAYER_DIRECTION_LEFT                ;; 0d:7478 $87
    db  $f0 ;;DELAY                                    ;; 0d:7479 $f0
    db   $32                                           ;; 0d:747a .
    db  $90 ;;FOLLOWER_STEP_FORWARD                    ;; 0d:747b $90
    db  $f0 ;;DELAY                                    ;; 0d:747c $f0
    db   $28                                           ;; 0d:747d .
    db  $f9 ;;SFX                                      ;; 0d:747e $f9
    db   $0c                                           ;; 0d:747f .
    db  $8b ;;PLAYER_JUMP                              ;; 0d:7480 $8b
    db   $68                                           ;; 0d:7481 .
    db  $f0 ;;DELAY                                    ;; 0d:7482 $f0
    db   $28                                           ;; 0d:7483 .
    db  $86 ;;SET_PLAYER_DIRECTION_RIGHT               ;; 0d:7484 $86
    db  $f9 ;;SFX                                      ;; 0d:7485 $f9
    db   $25                                           ;; 0d:7486 .
    db  $fb ;;SHAKE_SCREEN                             ;; 0d:7487 $fb
    db  $04 ;;MSG                                      ;; 0d:7488 $04
    db   "<10><BOY>:Now!\n Come on, Marcie!", $00      ;; 0d:7489 ...................
    db  $f8 ;;SET_MUSIC                                ;; 0d:749c $f8
    db   $00                                           ;; 0d:749d .
    db  $f0 ;;DELAY                                    ;; 0d:749e $f0
    db   $50                                           ;; 0d:749f .
    db  $04 ;;MSG                                      ;; 0d:74a0 $04
    db   "\nMarcie:__ __<12>"                          ;; 0d:74a1 ..........
    db   "<1b>YOU HAVE TO SAVE\nTHE WORLD. YOU\nARE THE ONLY HOPE.", $00 ;; 0d:74ab ............................................
    db  $f8 ;;SET_MUSIC                                ;; 0d:74d7 $f8
    db   $02                                           ;; 0d:74d8 .
    db  $04 ;;MSG                                      ;; 0d:74d9 $04
    db   "<12>"                                        ;; 0d:74da 
    db   "<1b><BOY>:What are you\n talking about?\n __ Come on!<12>" ;; 0d:74da ...............................
    db   "<1b>Marcie:_ I AM\n UNABLE TO JUMP__\n<BOY>:_ What_?!<12>" ;; 0d:74f9 .......................................
    db   "<1b>Marcie:I WAS MADE\n TO WORK IN HERE.\n AND I SLEEP HERE_<12>" ;; 0d:7520 ..............................................
    db   "<11>", $00                                   ;; 0d:754e ...
    db  $f0 ;;DELAY                                    ;; 0d:7551 $f0
    db   $28                                           ;; 0d:7552 .
    db  $bf ;;FLASH_SCREEN                             ;; 0d:7553 $bf
    db  $f9 ;;SFX                                      ;; 0d:7554 $f9
    db   $25                                           ;; 0d:7555 .
    db  $bf ;;FLASH_SCREEN                             ;; 0d:7556 $bf
    db  $b0 ;;SET_ROOM_TILE                            ;; 0d:7557 $b0
    db   $64, $08, $03                                 ;; 0d:7558 ...
    db  $b0 ;;SET_ROOM_TILE                            ;; 0d:755b $b0
    db   $64, $08, $04                                 ;; 0d:755c ...
    db  $b0 ;;SET_ROOM_TILE                            ;; 0d:755f $b0
    db   $41, $08, $05                                 ;; 0d:7560 ...
    db  $b0 ;;SET_ROOM_TILE                            ;; 0d:7563 $b0
    db   $43, $08, $06                                 ;; 0d:7564 ...
    db  $b0 ;;SET_ROOM_TILE                            ;; 0d:7567 $b0
    db   $31, $08, $07                                 ;; 0d:7568 ...
    db  $99 ;;FOLLOWER_SET_POSITION                    ;; 0d:756b $99
    db   $11, $0c                                      ;; 0d:756c ..
    db  $b0 ;;SET_ROOM_TILE                            ;; 0d:756e $b0
    db   $64, $09, $02                                 ;; 0d:756f ...
    db  $b0 ;;SET_ROOM_TILE                            ;; 0d:7572 $b0
    db   $64, $09, $03                                 ;; 0d:7573 ...
    db  $b0 ;;SET_ROOM_TILE                            ;; 0d:7576 $b0
    db   $32, $09, $04                                 ;; 0d:7577 ...
    db  $b0 ;;SET_ROOM_TILE                            ;; 0d:757a $b0
    db   $51, $09, $05                                 ;; 0d:757b ...
    db  $b0 ;;SET_ROOM_TILE                            ;; 0d:757e $b0
    db   $43, $09, $06                                 ;; 0d:757f ...
    db  $b0 ;;SET_ROOM_TILE                            ;; 0d:7582 $b0
    db   $30, $09, $07                                 ;; 0d:7583 ...
    db  $f0 ;;DELAY                                    ;; 0d:7586 $f0
    db   $05                                           ;; 0d:7587 .
    db  $bf ;;FLASH_SCREEN                             ;; 0d:7588 $bf
    db  $f9 ;;SFX                                      ;; 0d:7589 $f9
    db   $25                                           ;; 0d:758a .
    db  $bf ;;FLASH_SCREEN                             ;; 0d:758b $bf
    db  $b0 ;;SET_ROOM_TILE                            ;; 0d:758c $b0
    db   $64, $08, $05                                 ;; 0d:758d ...
    db  $b0 ;;SET_ROOM_TILE                            ;; 0d:7590 $b0
    db   $64, $08, $06                                 ;; 0d:7591 ...
    db  $b0 ;;SET_ROOM_TILE                            ;; 0d:7594 $b0
    db   $41, $08, $07                                 ;; 0d:7595 ...
    db  $98 ;;FOLLOWER_DELETE                          ;; 0d:7598 $98
    db  $b0 ;;SET_ROOM_TILE                            ;; 0d:7599 $b0
    db   $64, $09, $04                                 ;; 0d:759a ...
    db  $b0 ;;SET_ROOM_TILE                            ;; 0d:759d $b0
    db   $64, $09, $05                                 ;; 0d:759e ...
    db  $b0 ;;SET_ROOM_TILE                            ;; 0d:75a1 $b0
    db   $32, $09, $06                                 ;; 0d:75a2 ...
    db  $b0 ;;SET_ROOM_TILE                            ;; 0d:75a5 $b0
    db   $51, $09, $07                                 ;; 0d:75a6 ...
    db  $f0 ;;DELAY                                    ;; 0d:75a9 $f0
    db   $05                                           ;; 0d:75aa .
    db  $bf ;;FLASH_SCREEN                             ;; 0d:75ab $bf
    db  $f9 ;;SFX                                      ;; 0d:75ac $f9
    db   $25                                           ;; 0d:75ad .
    db  $bf ;;FLASH_SCREEN                             ;; 0d:75ae $bf
    db  $b0 ;;SET_ROOM_TILE                            ;; 0d:75af $b0
    db   $64, $08, $07                                 ;; 0d:75b0 ...
    db  $b0 ;;SET_ROOM_TILE                            ;; 0d:75b3 $b0
    db   $64, $09, $06                                 ;; 0d:75b4 ...
    db  $b0 ;;SET_ROOM_TILE                            ;; 0d:75b7 $b0
    db   $64, $09, $07                                 ;; 0d:75b8 ...
    db  $f9 ;;SFX                                      ;; 0d:75bb $f9
    db   $25                                           ;; 0d:75bc .
    db  $fb ;;SHAKE_SCREEN                             ;; 0d:75bd $fb
    db  $bf ;;FLASH_SCREEN                             ;; 0d:75be $bf
    db  $bf ;;FLASH_SCREEN                             ;; 0d:75bf $bf
    db  $f9 ;;SFX                                      ;; 0d:75c0 $f9
    db   $11                                           ;; 0d:75c1 .
    db  $f0 ;;DELAY                                    ;; 0d:75c2 $f0
    db   $8c                                           ;; 0d:75c3 .
    db  $04 ;;MSG                                      ;; 0d:75c4 $04
    db   "<10><BOY>:__ Marcie!<12>"                    ;; 0d:75c5 .........
    db   "<11>", $00                                   ;; 0d:75ce ...
    db  $bd ;;FADE_TO_BLACK                            ;; 0d:75d1 $bd
    db  $f3 ;;LOAD_ROOM_INSTANT                        ;; 0d:75d2 $f3
    db   $0f, $55, $14, $00                            ;; 0d:75d3 ....
    db  $bc ;;FADE_TO_NORMAL                           ;; 0d:75d7 $bc
    db  $f0 ;;DELAY                                    ;; 0d:75d8 $f0
    db   $14                                           ;; 0d:75d9 .
    db  $04 ;;MSG                                      ;; 0d:75da $04
    db   "<10>Marcie:SEE YOU\n SOMETIME,", $00         ;; 0d:75db ........................
    db  $f0 ;;DELAY                                    ;; 0d:75f3 $f0
    db   $28                                           ;; 0d:75f4 .
    db  $04 ;;MSG                                      ;; 0d:75f5 $04
    db   " KID__<12>"                                  ;; 0d:75f6 .....
    db   "<11>", $00                                   ;; 0d:75fb ...
    db  $bd ;;FADE_TO_BLACK                            ;; 0d:75fe $bd
    db  $f3 ;;LOAD_ROOM_INSTANT                        ;; 0d:75ff $f3
    db   $01, $56, $0e, $06                            ;; 0d:7600 ....
    db  $ab ;;UNK_AB                                   ;; 0d:7604 $ab
    db  $f0 ;;DELAY                                    ;; 0d:7605 $f0
    db   $3c                                           ;; 0d:7606 .
    db  $bc ;;FADE_TO_NORMAL                           ;; 0d:7607 $bc
    db  $f0 ;;DELAY                                    ;; 0d:7608 $f0
    db   $3c                                           ;; 0d:7609 .
    db  $db ;;CLEAR_FLAG                               ;; 0d:760a $db
    db   $57                                           ;; 0d:760b .
    db  $00 ;;END                                      ;; 0d:760c $00

script_024a:
    db  $00 ;;END                                      ;; 0d:760d $00

script_024b:
    db  $00 ;;END                                      ;; 0d:760e $00

script_024c:
    db  $00 ;;END                                      ;; 0d:760f $00

script_024d:
    db  $00 ;;END                                      ;; 0d:7610 $00

script_024e:
    db  $00 ;;END                                      ;; 0d:7611 $00

script_024f:
    db  $03 ;;LOOP                                     ;; 0d:7612 $03
    db   $08, $04                                      ;; 0d:7613 ..
    db  $f9 ;;SFX                                      ;; 0d:7615 $f9
    db   $14                                           ;; 0d:7616 .
    db  $bf ;;FLASH_SCREEN                             ;; 0d:7617 $bf
    db  $00 ;;END                                      ;; 0d:7618 $00
    db  $00 ;;END                                      ;; 0d:7619 $00

script_0250:
    db  $04 ;;MSG                                      ;; 0d:761a $04
    db   "<10>", $00                                   ;; 0d:761b ..
    db  $08 ;;IF ? JR                                  ;; 0d:761d $08
    db   $ad, $00, $8b                                 ;; 0d:761e ...
    db  $04 ;;MSG                                      ;; 0d:7621 $04
    db   "King:Julius has\n summoned monsters\n in this world.<12>" ;; 0d:7622 ................................
    db   "<1b> One called Kary\n in the Snowfield\n has frozen us.<12>" ;; 0d:7642 ...................................
    db   "<1b> Cibba came, but\n he's stuck in\n the other room.<12>" ;; 0d:7665 ..................................
    db   "<1b> It is dangerous\n to keep them all\n frozen for long__", $00 ;; 0d:7687 ...................................
    db  $01 ;;JR                                       ;; 0d:76aa $01
    db   $24                                           ;; 0d:76ab .
    db  $04 ;;MSG                                      ;; 0d:76ac $04
    db   "Thank you so much.\nCibba is waiting\nin the other room.", $00 ;; 0d:76ad ...................................
    db  $04 ;;MSG                                      ;; 0d:76d0 $04
    db   "<12>"                                        ;; 0d:76d1 
    db   "<11>", $00                                   ;; 0d:76d1 ...
    db  $00 ;;END                                      ;; 0d:76d4 $00

script_0251:
    db  $04 ;;MSG                                      ;; 0d:76d5 $04
    db   "<10>__ Frozen.<12>"                          ;; 0d:76d6 ........
    db   "<11>", $00                                   ;; 0d:76de ...
    db  $00 ;;END                                      ;; 0d:76e1 $00

script_0252:
    db  $04 ;;MSG                                      ;; 0d:76e2 $04
    db   "<10>Wow!\nGood morning!<12>"                 ;; 0d:76e3 ..............
    db   "<11>", $00                                   ;; 0d:76f1 ...
    db  $00 ;;END                                      ;; 0d:76f4 $00

script_0253:
    db  $04 ;;MSG                                      ;; 0d:76f5 $04
    db   "<10>Welcome to Lorim!<12>"                   ;; 0d:76f6 .............
    db   "<11>", $00                                   ;; 0d:7703 ...
    db  $00 ;;END                                      ;; 0d:7706 $00

script_0254:
    db  $00 ;;END                                      ;; 0d:7707 $00

script_0255:
    db  $00 ;;END                                      ;; 0d:7708 $00

script_0256:
    db  $08 ;;IF ? JR                                  ;; 0d:7709 $08
    db   $0b, $91, $00, $03                            ;; 0d:770a ....
    db  $02 ;;CALL                                     ;; 0d:770e $02
    db   $17, $98                                      ;; 0d:770f ..
    db  $08 ;;IF ? JR                                  ;; 0d:7711 $08
    db   $09, $8b, $00, $03                            ;; 0d:7712 ....
    db  $02 ;;CALL                                     ;; 0d:7716 $02
    db   $3a, $70                                      ;; 0d:7717 ..
    db  $08 ;;IF ? JR                                  ;; 0d:7719 $08
    db   $89, $00, $03                                 ;; 0d:771a ...
    db  $02 ;;CALL                                     ;; 0d:771d $02
    db   $38, $f9                                      ;; 0d:771e ..
    db  $00 ;;END                                      ;; 0d:7720 $00

script_0257:
    db  $08 ;;IF ? JR                                  ;; 0d:7721 $08
    db   $1f, $00, $03                                 ;; 0d:7722 ...
    db  $02 ;;CALL                                     ;; 0d:7725 $02
    db   $2c, $a5                                      ;; 0d:7726 ..
    db  $08 ;;IF ? JR                                  ;; 0d:7728 $08
    db   $26, $9f, $00, $03                            ;; 0d:7729 ....
    db  $02 ;;CALL                                     ;; 0d:772d $02
    db   $2c, $e6                                      ;; 0d:772e ..
    db  $08 ;;IF ? JR                                  ;; 0d:7730 $08
    db   $0c, $a6, $00, $03                            ;; 0d:7731 ....
    db  $02 ;;CALL                                     ;; 0d:7735 $02
    db   $2c, $14                                      ;; 0d:7736 ..
    db  $08 ;;IF ? JR                                  ;; 0d:7738 $08
    db   $8c, $00, $03                                 ;; 0d:7739 ...
    db  $02 ;;CALL                                     ;; 0d:773c $02
    db   $2a, $48                                      ;; 0d:773d ..
    db  $00 ;;END                                      ;; 0d:773f $00

script_0258:
    db  $08 ;;IF ? JR                                  ;; 0d:7740 $08
    db   $26, $00, $03                                 ;; 0d:7741 ...
    db  $02 ;;CALL                                     ;; 0d:7744 $02
    db   $21, $9f                                      ;; 0d:7745 ..
    db  $08 ;;IF ? JR                                  ;; 0d:7747 $08
    db   $8b, $00, $03                                 ;; 0d:7748 ...
    db  $02 ;;CALL                                     ;; 0d:774b $02
    db   $3a, $53                                      ;; 0d:774c ..
    db  $00 ;;END                                      ;; 0d:774e $00

script_0259:
    db  $08 ;;IF ? JR                                  ;; 0d:774f $08
    db   $25, $90, $00, $03                            ;; 0d:7750 ....
    db  $02 ;;CALL                                     ;; 0d:7754 $02
    db   $17, $b7                                      ;; 0d:7755 ..
    db  $08 ;;IF ? JR                                  ;; 0d:7757 $08
    db   $a3, $00, $03                                 ;; 0d:7758 ...
    db  $02 ;;CALL                                     ;; 0d:775b $02
    db   $16, $e8                                      ;; 0d:775c ..
    db  $00 ;;END                                      ;; 0d:775e $00

script_025a:
    db  $08 ;;IF ? JR                                  ;; 0d:775f $08
    db   $1f, $00, $03                                 ;; 0d:7760 ...
    db  $02 ;;CALL                                     ;; 0d:7763 $02
    db   $19, $2a                                      ;; 0d:7764 ..
    db  $08 ;;IF ? JR                                  ;; 0d:7766 $08
    db   $9f, $00, $03                                 ;; 0d:7767 ...
    db  $02 ;;CALL                                     ;; 0d:776a $02
    db   $18, $eb                                      ;; 0d:776b ..
    db  $00 ;;END                                      ;; 0d:776d $00

script_025b:
    db  $00 ;;END                                      ;; 0d:776e $00

script_025c:
    db  $00 ;;END                                      ;; 0d:776f $00

script_025d:
    db  $08 ;;IF ? JR                                  ;; 0d:7770 $08
    db   $f4, $00, $04                                 ;; 0d:7771 ...
    db  $f6 ;;OPEN_SHOP                                ;; 0d:7774 $f6
    db   $03                                           ;; 0d:7775 .
    db  $01 ;;JR                                       ;; 0d:7776 $01
    db   $14                                           ;; 0d:7777 .
    db  $08 ;;IF ? JR                                  ;; 0d:7778 $08
    db   $f6, $f7, $00, $02                            ;; 0d:7779 ....
    db  $f6 ;;OPEN_SHOP                                ;; 0d:777d $f6
    db   $0e                                           ;; 0d:777e .
    db  $08 ;;IF ? JR                                  ;; 0d:777f $08
    db   $f6, $77, $00, $02                            ;; 0d:7780 ....
    db  $f6 ;;OPEN_SHOP                                ;; 0d:7784 $f6
    db   $0f                                           ;; 0d:7785 .
    db  $08 ;;IF ? JR                                  ;; 0d:7786 $08
    db   $76, $00, $02                                 ;; 0d:7787 ...
    db  $f6 ;;OPEN_SHOP                                ;; 0d:778a $f6
    db   $10                                           ;; 0d:778b .
    db  $00 ;;END                                      ;; 0d:778c $00

script_025e:
    db  $15 ;;SET_NPC_1_DIRECTION_DOWN                 ;; 0d:778d $15
    db  $08 ;;IF ? JR                                  ;; 0d:778e $08
    db   $f4, $00, $42                                 ;; 0d:778f ...
    db  $08 ;;IF ? JR                                  ;; 0d:7792 $08
    db   $f5, $f6, $f7, $00, $02                       ;; 0d:7793 .....
    db  $f6 ;;OPEN_SHOP                                ;; 0d:7798 $f6
    db   $04                                           ;; 0d:7799 .
    db  $08 ;;IF ? JR                                  ;; 0d:779a $08
    db   $f5, $f6, $77, $00, $02                       ;; 0d:779b .....
    db  $f6 ;;OPEN_SHOP                                ;; 0d:77a0 $f6
    db   $05                                           ;; 0d:77a1 .
    db  $08 ;;IF ? JR                                  ;; 0d:77a2 $08
    db   $f5, $76, $f7, $00, $02                       ;; 0d:77a3 .....
    db  $f6 ;;OPEN_SHOP                                ;; 0d:77a8 $f6
    db   $07                                           ;; 0d:77a9 .
    db  $08 ;;IF ? JR                                  ;; 0d:77aa $08
    db   $f5, $76, $77, $00, $02                       ;; 0d:77ab .....
    db  $f6 ;;OPEN_SHOP                                ;; 0d:77b0 $f6
    db   $08                                           ;; 0d:77b1 .
    db  $08 ;;IF ? JR                                  ;; 0d:77b2 $08
    db   $75, $f6, $f7, $00, $02                       ;; 0d:77b3 .....
    db  $f6 ;;OPEN_SHOP                                ;; 0d:77b8 $f6
    db   $09                                           ;; 0d:77b9 .
    db  $08 ;;IF ? JR                                  ;; 0d:77ba $08
    db   $75, $f6, $77, $00, $02                       ;; 0d:77bb .....
    db  $f6 ;;OPEN_SHOP                                ;; 0d:77c0 $f6
    db   $0a                                           ;; 0d:77c1 .
    db  $08 ;;IF ? JR                                  ;; 0d:77c2 $08
    db   $75, $76, $f7, $00, $02                       ;; 0d:77c3 .....
    db  $f6 ;;OPEN_SHOP                                ;; 0d:77c8 $f6
    db   $0b                                           ;; 0d:77c9 .
    db  $08 ;;IF ? JR                                  ;; 0d:77ca $08
    db   $75, $76, $77, $00, $02                       ;; 0d:77cb .....
    db  $f6 ;;OPEN_SHOP                                ;; 0d:77d0 $f6
    db   $0c                                           ;; 0d:77d1 .
    db  $01 ;;JR                                       ;; 0d:77d2 $01
    db   $08                                           ;; 0d:77d3 .
    db  $08 ;;IF ? JR                                  ;; 0d:77d4 $08
    db   $f5, $f6, $f7, $00, $02                       ;; 0d:77d5 .....
    db  $f6 ;;OPEN_SHOP                                ;; 0d:77da $f6
    db   $0d                                           ;; 0d:77db .
    db  $00 ;;END                                      ;; 0d:77dc $00

script_025f:
    db  $15 ;;SET_NPC_1_DIRECTION_DOWN                 ;; 0d:77dd $15
    db  $04 ;;MSG                                      ;; 0d:77de $04
    db   "<10> Howdy!\n 10GP/night!\n Wanna stay?<12>" ;; 0d:77df ..........................
    db   "<13>", $00                                   ;; 0d:77f9 ...
    db  $08 ;;IF ? JR                                  ;; 0d:77fc $08
    db   $ff, $00, $21                                 ;; 0d:77fd ...
    db  $d1 ;;CHECK_MONEY                              ;; 0d:7800 $d1
    db   $0a, $00                                      ;; 0d:7801 ..
    db  $08 ;;IF ? JR                                  ;; 0d:7803 $08
    db   $06, $00, $17                                 ;; 0d:7804 ...
    db  $04 ;;MSG                                      ;; 0d:7807 $04
    db   "<1b> Sorry.\n Not enough GP!<12>"            ;; 0d:7808 .................
    db   "<11>", $00                                   ;; 0d:7819 ...
    db  $01 ;;JR                                       ;; 0d:781c $01
    db   $03                                           ;; 0d:781d .
    db  $02 ;;CALL                                     ;; 0d:781e $02
    db   $51, $fb                                      ;; 0d:781f ..
    db  $02 ;;CALL                                     ;; 0d:7821 $02
    db   $00, $31                                      ;; 0d:7822 ..
    db  $00 ;;END                                      ;; 0d:7824 $00

script_0260:
    db  $15 ;;SET_NPC_1_DIRECTION_DOWN                 ;; 0d:7825 $15
    db  $08 ;;IF ? JR                                  ;; 0d:7826 $08
    db   $74, $00, $04                                 ;; 0d:7827 ...
    db  $f6 ;;OPEN_SHOP                                ;; 0d:782a $f6
    db   $03                                           ;; 0d:782b .
    db  $01 ;;JR                                       ;; 0d:782c $01
    db   $7b                                           ;; 0d:782d .
    db  $08 ;;IF ? JR                                  ;; 0d:782e $08
    db   $75, $00, $04                                 ;; 0d:782f ...
    db  $f6 ;;OPEN_SHOP                                ;; 0d:7832 $f6
    db   $03                                           ;; 0d:7833 .
    db  $01 ;;JR                                       ;; 0d:7834 $01
    db   $73                                           ;; 0d:7835 .
    db  $08 ;;IF ? JR                                  ;; 0d:7836 $08
    db   $f6, $f7, $00, $0a                            ;; 0d:7837 ....
    db  $08 ;;IF ? JR                                  ;; 0d:783b $08
    db   $8c, $00, $04                                 ;; 0d:783c ...
    db  $f6 ;;OPEN_SHOP                                ;; 0d:783f $f6
    db   $00                                           ;; 0d:7840 .
    db  $01 ;;JR                                       ;; 0d:7841 $01
    db   $02                                           ;; 0d:7842 .
    db  $f6 ;;OPEN_SHOP                                ;; 0d:7843 $f6
    db   $01                                           ;; 0d:7844 .
    db  $08 ;;IF ? JR                                  ;; 0d:7845 $08
    db   $f6, $77, $00, $25                            ;; 0d:7846 ....
    db  $0a ;;IF ? JR                                  ;; 0d:784a $0a
    db   $43, $00, $02                                 ;; 0d:784b ...
    db  $01 ;;JR                                       ;; 0d:784e $01
    db   $03, $02, $7a, $c2                            ;; 0d:784f ....
    db  $f6 ;;OPEN_SHOP                                ;; 0d:7853 $f6
    db   $01                                           ;; 0d:7854 .
    db  $04 ;;MSG                                      ;; 0d:7855 $04
    db   "<10>It's swampy ahead.\nBe careful!<12>"     ;; 0d:7856 ......................
    db   "<11>", $00                                   ;; 0d:786c ...
    db  $08 ;;IF ? JR                                  ;; 0d:786f $08
    db   $76, $f7, $00, $02                            ;; 0d:7870 ....
    db  $f6 ;;OPEN_SHOP                                ;; 0d:7874 $f6
    db   $01                                           ;; 0d:7875 .
    db  $08 ;;IF ? JR                                  ;; 0d:7876 $08
    db   $76, $77, $00, $2e                            ;; 0d:7877 ....
    db  $08 ;;IF ? JR                                  ;; 0d:787b $08
    db   $11, $00, $04                                 ;; 0d:787c ...
    db  $f6 ;;OPEN_SHOP                                ;; 0d:787f $f6
    db   $02                                           ;; 0d:7880 .
    db  $01 ;;JR                                       ;; 0d:7881 $01
    db   $26                                           ;; 0d:7882 .
    db  $04 ;;MSG                                      ;; 0d:7883 $04
    db   "<10>Excuse me_", $00                         ;; 0d:7884 ..........
    db  $f0 ;;DELAY                                    ;; 0d:788e $f0
    db   $1e                                           ;; 0d:788f .
    db  $04 ;;MSG                                      ;; 0d:7890 $04
    db   "\n_ Hello_", $00                             ;; 0d:7891 ........
    db  $f0 ;;DELAY                                    ;; 0d:7899 $f0
    db   $32                                           ;; 0d:789a .
    db  $04 ;;MSG                                      ;; 0d:789b $04
    db   "\n_ No answer.<12>"                          ;; 0d:789c ..........
    db   "<11>", $00                                   ;; 0d:78a6 ...
    db  $00 ;;END                                      ;; 0d:78a9 $00

script_0261:
    db  $04 ;;MSG                                      ;; 0d:78aa $04
    db   "<10>Amanda:I'm sorry\n about Willy.<12>"     ;; 0d:78ab .......................
    db   "<1b> We have to get\n out of here!!<12>"     ;; 0d:78c2 ...................
    db   "<1b> I wanna go home\n and see my\n little brother__<12>" ;; 0d:78d5 ..............................
    db   "<11>", $00                                   ;; 0d:78f3 ...
    db  $00 ;;END                                      ;; 0d:78f6 $00

script_0262:
    db  $00 ;;END                                      ;; 0d:78f7 $00

script_0263:
    db  $00 ;;END                                      ;; 0d:78f8 $00

script_0264:
    db  $04 ;;MSG                                      ;; 0d:78f9 $04
    db   "<10><BOY>:Willy__\n I'll avenge you!<12>"    ;; 0d:78fa ...................
    db   "<11>", $00                                   ;; 0d:790d ...
    db  $00 ;;END                                      ;; 0d:7910 $00

script_0265:
    db  $04 ;;MSG                                      ;; 0d:7911 $04
    db   "<10>The entrance for\nthe monsters leads\nto outside.<12>" ;; 0d:7912 ...............................
    db   "<1b>Take your chance!<12>"                   ;; 0d:7931 .............
    db   "<11>", $00                                   ;; 0d:793e ...
    db  $00 ;;END                                      ;; 0d:7941 $00

script_0266:
    db  $04 ;;MSG                                      ;; 0d:7942 $04
    db   "<10>Hello, young man!\nWelcome to Topple!<12>" ;; 0d:7943 .........................
    db   "<11>", $00                                   ;; 0d:795c ...
    db  $00 ;;END                                      ;; 0d:795f $00

script_0267:
    db  $04 ;;MSG                                      ;; 0d:7960 $04
    db   "<10>Dark Lord is so\ncruel!!  I can't\nstand it anymore!<12>" ;; 0d:7961 ...................................
    db   "<11>", $00                                   ;; 0d:7984 ...
    db  $00 ;;END                                      ;; 0d:7987 $00

script_0268:
    db  $04 ;;MSG                                      ;; 0d:7988 $04
    db   "<10>Dark Lord is\nlooking for a\ngirl, I heard.<12>" ;; 0d:7989 ............................
    db   "<1b>Do you know a girl\nwith the secret of\nthe Tree of Mana?<12>" ;; 0d:79a5 ...................................
    db   "<11>", $00                                   ;; 0d:79c8 ...
    db  $00 ;;END                                      ;; 0d:79cb $00

script_0269:
    db  $04 ;;MSG                                      ;; 0d:79cc $04
    db   "<10>The old man by\nthe Waterfalls is\nsuch a weirdo!<12>" ;; 0d:79cd .................................
    db   "<1b>He use to be a\ngallant knight,\nbut not anymore!<12>" ;; 0d:79ee ................................
    db   "<11>", $00                                   ;; 0d:7a0e ...
    db  $00 ;;END                                      ;; 0d:7a11 $00

script_026a:
    db  $04 ;;MSG                                      ;; 0d:7a12 $04
    db   "<10>Tree of Mana is\nwatching us from\nabove the clouds.<12>" ;; 0d:7a13 .................................
    db   "<1b>It's protecting us\nfrom evil things.<12>" ;; 0d:7a34 ...........................
    db   "<11>", $00                                   ;; 0d:7a4f ...
    db  $00 ;;END                                      ;; 0d:7a52 $00

script_026b:
    db  $04 ;;MSG                                      ;; 0d:7a53 $04
    db   "<10>Girl:Hasim's got\n a serious wound!<12>" ;; 0d:7a54 ........................
    db   "<11>", $00                                   ;; 0d:7a6c ...
    db  $00 ;;END                                      ;; 0d:7a6f $00

script_026c:
    db  $08 ;;IF ? JR                                  ;; 0d:7a70 $08
    db   $0a, $00, $a2                                 ;; 0d:7a71 ...
    db  $04 ;;MSG                                      ;; 0d:7a74 $04
    db   "<10>", $00                                   ;; 0d:7a75 ..
    db  $f0 ;;DELAY                                    ;; 0d:7a77 $f0
    db   $0a                                           ;; 0d:7a78 .
    db  $f8 ;;SET_MUSIC                                ;; 0d:7a79 $f8
    db   $17                                           ;; 0d:7a7a .
    db  $02 ;;CALL                                     ;; 0d:7a7b $02
    db   $3b, $17                                      ;; 0d:7a7c ..
    db  $04 ;;MSG                                      ;; 0d:7a7e $04
    db   "Girl:Oh_ No_\n Don't leave me\n alone, Hasim!<12>" ;; 0d:7a7f .................................
    db   "<1b><BOY>:I'm looking\n for that Bogard,\n too.<12>" ;; 0d:7aa0 ............................
    db   "<1b> Why don't you\n come with me?\nGirl:Oh _ Can I?<12>" ;; 0d:7abc ..................................
    db   "<1b><BOY>:I can't leave\n you here alone.\n _ I am <BOY>.<12>" ;; 0d:7ade .............................
    db   "<1b><GIRL>:Call me <GIRL>.<12>"              ;; 0d:7afb ...........
    db   "<1b>", $00                                   ;; 0d:7b06 ...
    db  $f8 ;;SET_MUSIC                                ;; 0d:7b09 $f8
    db   $00                                           ;; 0d:7b0a .
    db  $9c ;;GIVE_FOLLOWER                            ;; 0d:7b0b $9c
    db   $01                                           ;; 0d:7b0c .
    db  $04 ;;MSG                                      ;; 0d:7b0d $04
    db   "<11>", $00                                   ;; 0d:7b0e ..
    db  $da ;;SET_FLAG                                 ;; 0d:7b10 $da
    db   $0b                                           ;; 0d:7b11 .
    db  $da ;;SET_FLAG                                 ;; 0d:7b12 $da
    db   $51                                           ;; 0d:7b13 .
    db  $f8 ;;SET_MUSIC                                ;; 0d:7b14 $f8
    db   $14                                           ;; 0d:7b15 .
    db  $00 ;;END                                      ;; 0d:7b16 $00

script_026d:
    db  $04 ;;MSG                                      ;; 0d:7b17 $04
    db   "Hasim:Oh_ please_\n take this girl\n to_ Wendel_ and_<12>" ;; 0d:7b18 ....................................
    db   "<1b>", $00                                   ;; 0d:7b3c ...
    db  $17 ;;SET_NPC_1_DIRECTION_LEFT                 ;; 0d:7b3f $17
    db  $04 ;;MSG                                      ;; 0d:7b40 $04
    db   " see Bogard___\n He will take care\n of the rest_ _<12>" ;; 0d:7b41 ...............................
    db   "<1b>Girl:_ _ Hasim!?\n _ _ H A S I M!!<12>"  ;; 0d:7b60 ............................
    db   "<1b>", $00                                   ;; 0d:7b7c ...
    db  $f0 ;;DELAY                                    ;; 0d:7b7f $f0
    db   $1e                                           ;; 0d:7b80 .
    db  $04 ;;MSG                                      ;; 0d:7b81 $04
    db   "\nHasim passed away.<12>"                    ;; 0d:7b82 .............
    db   "<1b>", $00                                   ;; 0d:7b8f ...
    db  $00 ;;END                                      ;; 0d:7b92 $00

script_0270:
    db  $0b ;;IF JR                                    ;; 0d:7b93 $0b
    db   $c9, $00, $21                                 ;; 0d:7b94 ...
    db  $09 ;;IF ? JR                                  ;; 0d:7b97 $09
    db   $20, $00, $12                                 ;; 0d:7b98 ...
    db  $08 ;;IF ? JR                                  ;; 0d:7b9b $08
    db   $58, $00, $05                                 ;; 0d:7b9c ...
    db  $02 ;;CALL                                     ;; 0d:7b9f $02
    db   $5a, $e2                                      ;; 0d:7ba0 ..
    db  $da ;;SET_FLAG                                 ;; 0d:7ba2 $da
    db   $6a                                           ;; 0d:7ba3 .
    db  $f4 ;;LOAD_ROOM                                ;; 0d:7ba4 $f4
    db   $0b, $07, $10, $0c                            ;; 0d:7ba5 ....
    db  $f8 ;;SET_MUSIC                                ;; 0d:7ba9 $f8
    db   $07                                           ;; 0d:7baa .
    db  $01 ;;JR                                       ;; 0d:7bab $01
    db   $0b, $04, $10, $ff, $c5, $e2, $9e, $39        ;; 0d:7bac .???????
    db   $f0, $12, $11, $00                            ;; 0d:7bb4 ????
    db  $00 ;;END                                      ;; 0d:7bb8 $00

script_0271:
    db  $0b ;;IF JR                                    ;; 0d:7bb9 $0b
    db   $c9, $00, $13                                 ;; 0d:7bba ...
    db  $08 ;;IF ? JR                                  ;; 0d:7bbd $08
    db   $58, $00, $05                                 ;; 0d:7bbe ...
    db  $02 ;;CALL                                     ;; 0d:7bc1 $02
    db   $5a, $e2                                      ;; 0d:7bc2 ..
    db  $da ;;SET_FLAG                                 ;; 0d:7bc4 $da
    db   $60                                           ;; 0d:7bc5 .
    db  $f4 ;;LOAD_ROOM                                ;; 0d:7bc6 $f4
    db   $0e, $01, $0e, $0c                            ;; 0d:7bc7 ....
    db  $f0 ;;DELAY                                    ;; 0d:7bcb $f0
    db   $14                                           ;; 0d:7bcc .
    db  $f8 ;;SET_MUSIC                                ;; 0d:7bcd $f8
    db   $04                                           ;; 0d:7bce .
    db  $ec ;;RUN_ROOM_SCRIPT                          ;; 0d:7bcf $ec
    db  $00 ;;END                                      ;; 0d:7bd0 $00

script_0272:
    db  $0b ;;IF JR                                    ;; 0d:7bd1 $0b
    db   $c9, $00, $1b                                 ;; 0d:7bd2 ...
    db  $f4 ;;LOAD_ROOM                                ;; 0d:7bd5 $f4
    db   $06, $32, $09, $0c                            ;; 0d:7bd6 ....
    db  $f8 ;;SET_MUSIC                                ;; 0d:7bda $f8
    db   $04                                           ;; 0d:7bdb .
    db  $c5 ;;UNK_C5                                   ;; 0d:7bdc $c5
    db   $02                                           ;; 0d:7bdd .
    db  $08 ;;IF ? JR                                  ;; 0d:7bde $08
    db   $a6, $00, $06                                 ;; 0d:7bdf ...
    db  $db ;;CLEAR_FLAG                               ;; 0d:7be2 $db
    db   $78                                           ;; 0d:7be3 .
    db  $db ;;CLEAR_FLAG                               ;; 0d:7be4 $db
    db   $79                                           ;; 0d:7be5 .
    db  $db ;;CLEAR_FLAG                               ;; 0d:7be6 $db
    db   $7a                                           ;; 0d:7be7 .
    db  $08 ;;IF ? JR                                  ;; 0d:7be8 $08
    db   $0c, $00, $03                                 ;; 0d:7be9 ...
    db  $f9 ;;SFX                                      ;; 0d:7bec $f9
    db   $10                                           ;; 0d:7bed .
    db  $e0 ;;UNK_E0                                   ;; 0d:7bee $e0
    db  $ec ;;RUN_ROOM_SCRIPT                          ;; 0d:7bef $ec
    db  $00 ;;END                                      ;; 0d:7bf0 $00

script_0273:
    db  $0b ;;IF JR                                    ;; 0d:7bf1 $0b
    db   $c9, $c1, $00, $0d                            ;; 0d:7bf2 ....
    db  $f9 ;;SFX                                      ;; 0d:7bf6 $f9
    db   $0c                                           ;; 0d:7bf7 .
    db  $8a ;;SET_PLAYER_POSITION                      ;; 0d:7bf8 $8a
    db   $14, $00                                      ;; 0d:7bf9 ..
    db  $f0 ;;DELAY                                    ;; 0d:7bfb $f0
    db   $3c                                           ;; 0d:7bfc .
    db  $f4 ;;LOAD_ROOM                                ;; 0d:7bfd $f4
    db   $03, $11, $09, $07                            ;; 0d:7bfe ....
    db  $ec ;;RUN_ROOM_SCRIPT                          ;; 0d:7c02 $ec
    db  $00 ;;END                                      ;; 0d:7c03 $00

script_0274:
    db  $0b ;;IF JR                                    ;; 0d:7c04 $0b
    db   $c9, $c1, $00, $0d                            ;; 0d:7c05 ....
    db  $f9 ;;SFX                                      ;; 0d:7c09 $f9
    db   $0c                                           ;; 0d:7c0a .
    db  $8a ;;SET_PLAYER_POSITION                      ;; 0d:7c0b $8a
    db   $14, $00                                      ;; 0d:7c0c ..
    db  $f0 ;;DELAY                                    ;; 0d:7c0e $f0
    db   $3c                                           ;; 0d:7c0f .
    db  $f4 ;;LOAD_ROOM                                ;; 0d:7c10 $f4
    db   $06, $07, $09, $07                            ;; 0d:7c11 ....
    db  $ec ;;RUN_ROOM_SCRIPT                          ;; 0d:7c15 $ec
    db  $00 ;;END                                      ;; 0d:7c16 $00

script_0275:
    db  $0b ;;IF JR                                    ;; 0d:7c17 $0b
    db   $c9, $00, $29                                 ;; 0d:7c18 ...
    db  $09 ;;IF ? JR                                  ;; 0d:7c1b $09
    db   $21, $00, $1a                                 ;; 0d:7c1c ...
    db  $08 ;;IF ? JR                                  ;; 0d:7c1f $08
    db   $58, $00, $05                                 ;; 0d:7c20 ...
    db  $02 ;;CALL                                     ;; 0d:7c23 $02
    db   $5a, $e2                                      ;; 0d:7c24 ..
    db  $da ;;SET_FLAG                                 ;; 0d:7c26 $da
    db   $62                                           ;; 0d:7c27 .
    db  $f4 ;;LOAD_ROOM                                ;; 0d:7c28 $f4
    db   $09, $31, $10, $02                            ;; 0d:7c29 ....
    db  $08 ;;IF ? JR                                  ;; 0d:7c2d $08
    db   $c8, $00, $04                                 ;; 0d:7c2e ...
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:7c31 $fc
    db   $4d                                           ;; 0d:7c32 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:7c33 $fd
    db   $00                                           ;; 0d:7c34 .
    db  $f8 ;;SET_MUSIC                                ;; 0d:7c35 $f8
    db   $07                                           ;; 0d:7c36 .
    db  $01 ;;JR                                       ;; 0d:7c37 $01
    db   $0b, $04, $10, $ff, $c5, $e2, $9e, $39        ;; 0d:7c38 ........
    db   $f0, $12, $11, $00                            ;; 0d:7c40 ....
    db  $00 ;;END                                      ;; 0d:7c44 $00

script_0276:
    db  $0b ;;IF JR                                    ;; 0d:7c45 $0b
    db   $c9, $00, $13                                 ;; 0d:7c46 ...
    db  $08 ;;IF ? JR                                  ;; 0d:7c49 $08
    db   $58, $00, $05                                 ;; 0d:7c4a ...
    db  $02 ;;CALL                                     ;; 0d:7c4d $02
    db   $5a, $e2                                      ;; 0d:7c4e ..
    db  $da ;;SET_FLAG                                 ;; 0d:7c50 $da
    db   $61                                           ;; 0d:7c51 .
    db  $c5 ;;UNK_C5                                   ;; 0d:7c52 $c5
    db   $00                                           ;; 0d:7c53 .
    db  $f4 ;;LOAD_ROOM                                ;; 0d:7c54 $f4
    db   $03, $41, $09, $0c                            ;; 0d:7c55 ....
    db  $f8 ;;SET_MUSIC                                ;; 0d:7c59 $f8
    db   $07                                           ;; 0d:7c5a .
    db  $ec ;;RUN_ROOM_SCRIPT                          ;; 0d:7c5b $ec
    db  $00 ;;END                                      ;; 0d:7c5c $00

script_0277:
    db  $0b ;;IF JR                                    ;; 0d:7c5d $0b
    db   $c9, $00, $11                                 ;; 0d:7c5e ...
    db  $08 ;;IF ? JR                                  ;; 0d:7c61 $08
    db   $58, $00, $05                                 ;; 0d:7c62 ...
    db  $02 ;;CALL                                     ;; 0d:7c65 $02
    db   $5a, $e2                                      ;; 0d:7c66 ..
    db  $da ;;SET_FLAG                                 ;; 0d:7c68 $da
    db   $63                                           ;; 0d:7c69 .
    db  $f4 ;;LOAD_ROOM                                ;; 0d:7c6a $f4
    db   $0e, $17, $0b, $0c                            ;; 0d:7c6b ....
    db  $f8 ;;SET_MUSIC                                ;; 0d:7c6f $f8
    db   $0b                                           ;; 0d:7c70 .
    db  $ec ;;RUN_ROOM_SCRIPT                          ;; 0d:7c71 $ec
    db  $00 ;;END                                      ;; 0d:7c72 $00

script_0278:
    db  $0b ;;IF JR                                    ;; 0d:7c73 $0b
    db   $c9, $00, $11                                 ;; 0d:7c74 ...
    db  $08 ;;IF ? JR                                  ;; 0d:7c77 $08
    db   $58, $00, $05                                 ;; 0d:7c78 ...
    db  $02 ;;CALL                                     ;; 0d:7c7b $02
    db   $5a, $e2                                      ;; 0d:7c7c ..
    db  $da ;;SET_FLAG                                 ;; 0d:7c7e $da
    db   $65                                           ;; 0d:7c7f .
    db  $f4 ;;LOAD_ROOM                                ;; 0d:7c80 $f4
    db   $0a, $66, $10, $02                            ;; 0d:7c81 ....
    db  $f8 ;;SET_MUSIC                                ;; 0d:7c85 $f8
    db   $18                                           ;; 0d:7c86 .
    db  $ec ;;RUN_ROOM_SCRIPT                          ;; 0d:7c87 $ec
    db  $00 ;;END                                      ;; 0d:7c88 $00

script_0279:
    db  $0b ;;IF JR                                    ;; 0d:7c89 $0b
    db   $c9, $00, $39                                 ;; 0d:7c8a ...
    db  $08 ;;IF ? JR                                  ;; 0d:7c8d $08
    db   $58, $00, $05                                 ;; 0d:7c8e ...
    db  $02 ;;CALL                                     ;; 0d:7c91 $02
    db   $5a, $e2                                      ;; 0d:7c92 ..
    db  $da ;;SET_FLAG                                 ;; 0d:7c94 $da
    db   $64                                           ;; 0d:7c95 .
    db  $08 ;;IF ? JR                                  ;; 0d:7c96 $08
    db   $54, $00, $24                                 ;; 0d:7c97 ...
    db  $04 ;;MSG                                      ;; 0d:7c9a $04
    db   "<10>Bogard:Hey! Hey!\n Where are you\n going??<12>" ;; 0d:7c9b ..............................
    db   "<11>", $00                                   ;; 0d:7cb9 ...
    db  $01 ;;JR                                       ;; 0d:7cbc $01
    db   $08                                           ;; 0d:7cbd .
    db  $f4 ;;LOAD_ROOM                                ;; 0d:7cbe $f4
    db   $0a, $55, $10, $02                            ;; 0d:7cbf ....
    db  $f8 ;;SET_MUSIC                                ;; 0d:7cc3 $f8
    db   $07                                           ;; 0d:7cc4 .
    db  $ec ;;RUN_ROOM_SCRIPT                          ;; 0d:7cc5 $ec
    db  $00 ;;END                                      ;; 0d:7cc6 $00

script_027a:
    db  $0b ;;IF JR                                    ;; 0d:7cc7 $0b
    db   $c9, $00, $7c                                 ;; 0d:7cc8 ...
    db  $09 ;;IF ? JR                                  ;; 0d:7ccb $09
    db   $46, $00, $09                                 ;; 0d:7ccc ...
    db  $f4 ;;LOAD_ROOM                                ;; 0d:7ccf $f4
    db   $0a, $13, $10, $0c                            ;; 0d:7cd0 ....
    db  $f8 ;;SET_MUSIC                                ;; 0d:7cd4 $f8
    db   $07                                           ;; 0d:7cd5 .
    db  $01 ;;JR                                       ;; 0d:7cd6 $01
    db   $6f, $09, $54, $00, $09, $f4, $0a, $13        ;; 0d:7cd7 .???????
    db   $10, $0c, $f8, $07, $01, $62, $09, $5f        ;; 0d:7cdf ????????
    db   $00, $09, $f4, $0a, $13, $10, $0c, $f8        ;; 0d:7ce7 ????????
    db   $07, $01, $55, $09, $6a, $00, $09, $f4        ;; 0d:7cef ????????
    db   $0a, $13, $10, $0c, $f8, $07, $01, $48        ;; 0d:7cf7 ????????
    db   $04, $10, $c0, $8a, $d4, $f5, $d0, $3b        ;; 0d:7cff ????????
    db   $d4, $d4, $d4, $f1, $00, $f0, $28, $04        ;; 0d:7d07 ????????
    db   $1a, $ff, $bd, $5e, $5e, $e1, $ee, $28        ;; 0d:7d0f ????????
    db   $82, $df, $de, $37, $e1, $1a, $42, $57        ;; 0d:7d17 ????????
    db   $e0, $5e, $5e, $84, $db, $f1, $12, $1b        ;; 0d:7d1f ????????
    db   $1a, $ff, $c8, $5e, $5e, $ff, $00, $f0        ;; 0d:7d27 ????????
    db   $28, $04, $69, $d2, $e8, $9e, $f3, $f3        ;; 0d:7d2f ????????
    db   $00, $f0, $3c, $04, $11, $00, $f9, $0c        ;; 0d:7d37 ????????
    db   $8a, $0c, $03, $03, $02, $02, $81, $00        ;; 0d:7d3f ????????
    db  $00 ;;END                                      ;; 0d:7d47 $00

script_027b:
    db  $0b ;;IF JR                                    ;; 0d:7d48 $0b
    db   $c9, $00, $08                                 ;; 0d:7d49 ...
    db  $f4 ;;LOAD_ROOM                                ;; 0d:7d4c $f4
    db   $0a, $05, $10, $0c                            ;; 0d:7d4d ....
    db  $f8 ;;SET_MUSIC                                ;; 0d:7d51 $f8
    db   $07                                           ;; 0d:7d52 .
    db  $ec ;;RUN_ROOM_SCRIPT                          ;; 0d:7d53 $ec
    db  $00 ;;END                                      ;; 0d:7d54 $00

script_027c:
    db  $0b ;;IF JR                                    ;; 0d:7d55 $0b
    db   $c9, $00, $0c                                 ;; 0d:7d56 ...
    db  $08 ;;IF ? JR                                  ;; 0d:7d59 $08
    db   $96, $00, $08                                 ;; 0d:7d5a ...
    db  $f4 ;;LOAD_ROOM                                ;; 0d:7d5d $f4
    db   $0e, $62, $0c, $0c                            ;; 0d:7d5e ....
    db  $f8 ;;SET_MUSIC                                ;; 0d:7d62 $f8
    db   $0e                                           ;; 0d:7d63 .
    db  $ec ;;RUN_ROOM_SCRIPT                          ;; 0d:7d64 $ec
    db  $00 ;;END                                      ;; 0d:7d65 $00

script_027d:
    db  $0b ;;IF JR                                    ;; 0d:7d66 $0b
    db   $c9, $00, $06                                 ;; 0d:7d67 ...
    db  $f9 ;;SFX                                      ;; 0d:7d6a $f9
    db   $18                                           ;; 0d:7d6b .
    db  $b0 ;;SET_ROOM_TILE                            ;; 0d:7d6c $b0
    db   $02, $01, $01                                 ;; 0d:7d6d ...
    db  $00 ;;END                                      ;; 0d:7d70 $00

script_027e:
    db  $0b ;;IF JR                                    ;; 0d:7d71 $0b
    db   $c9, $a9, $00, $06                            ;; 0d:7d72 ....
    db  $f9 ;;SFX                                      ;; 0d:7d76 $f9
    db   $18                                           ;; 0d:7d77 .
    db  $b0 ;;SET_ROOM_TILE                            ;; 0d:7d78 $b0
    db   $02, $08, $01                                 ;; 0d:7d79 ...
    db  $0c ;;IF ! JR                                  ;; 0d:7d7c $0c
    db   $c9, $00, $06                                 ;; 0d:7d7d ...
    db  $f9 ;;SFX                                      ;; 0d:7d80 $f9
    db   $18                                           ;; 0d:7d81 .
    db  $b0 ;;SET_ROOM_TILE                            ;; 0d:7d82 $b0
    db   $00, $08, $01                                 ;; 0d:7d83 ...
    db  $00 ;;END                                      ;; 0d:7d86 $00

script_027f:
    db  $0b ;;IF JR                                    ;; 0d:7d87 $0b
    db   $c9, $00, $11                                 ;; 0d:7d88 ...
    db  $08 ;;IF ? JR                                  ;; 0d:7d8b $08
    db   $58, $00, $05                                 ;; 0d:7d8c ...
    db  $02 ;;CALL                                     ;; 0d:7d8f $02
    db   $5a, $e2                                      ;; 0d:7d90 ..
    db  $da ;;SET_FLAG                                 ;; 0d:7d92 $da
    db   $5f                                           ;; 0d:7d93 .
    db  $f4 ;;LOAD_ROOM                                ;; 0d:7d94 $f4
    db   $0e, $53, $0d, $0c                            ;; 0d:7d95 ....
    db  $f8 ;;SET_MUSIC                                ;; 0d:7d99 $f8
    db   $04                                           ;; 0d:7d9a .
    db  $ec ;;RUN_ROOM_SCRIPT                          ;; 0d:7d9b $ec
    db  $00 ;;END                                      ;; 0d:7d9c $00

script_0280:
    db  $0b ;;IF JR                                    ;; 0d:7d9d $0b
    db   $c9, $00, $1b                                 ;; 0d:7d9e ...
    db  $08 ;;IF ? JR                                  ;; 0d:7da1 $08
    db   $58, $00, $05                                 ;; 0d:7da2 ...
    db  $02 ;;CALL                                     ;; 0d:7da5 $02
    db   $5a, $e2                                      ;; 0d:7da6 ..
    db  $da ;;SET_FLAG                                 ;; 0d:7da8 $da
    db   $5b                                           ;; 0d:7da9 .
    db  $f4 ;;LOAD_ROOM                                ;; 0d:7daa $f4
    db   $0e, $15, $07, $0c                            ;; 0d:7dab ....
    db  $08 ;;IF ? JR                                  ;; 0d:7daf $08
    db   $a8, $00, $02                                 ;; 0d:7db0 ...
    db  $f8 ;;SET_MUSIC                                ;; 0d:7db3 $f8
    db   $00                                           ;; 0d:7db4 .
    db  $08 ;;IF ? JR                                  ;; 0d:7db5 $08
    db   $28, $00, $02                                 ;; 0d:7db6 ...
    db  $f8 ;;SET_MUSIC                                ;; 0d:7db9 $f8
    db   $0d                                           ;; 0d:7dba .
    db  $ec ;;RUN_ROOM_SCRIPT                          ;; 0d:7dbb $ec
    db  $00 ;;END                                      ;; 0d:7dbc $00

script_0281:
    db  $0b ;;IF JR                                    ;; 0d:7dbd $0b
    db   $c9, $00, $53                                 ;; 0d:7dbe ...
    db  $08 ;;IF ? JR                                  ;; 0d:7dc1 $08
    db   $58, $00, $05                                 ;; 0d:7dc2 ...
    db  $02 ;;CALL                                     ;; 0d:7dc5 $02
    db   $5a, $e2                                      ;; 0d:7dc6 ..
    db  $da ;;SET_FLAG                                 ;; 0d:7dc8 $da
    db   $5c                                           ;; 0d:7dc9 .
    db  $f4 ;;LOAD_ROOM                                ;; 0d:7dca $f4
    db   $08, $54, $10, $02                            ;; 0d:7dcb ....
    db  $f8 ;;SET_MUSIC                                ;; 0d:7dcf $f8
    db   $08                                           ;; 0d:7dd0 .
    db  $08 ;;IF ? JR                                  ;; 0d:7dd1 $08
    db   $a7, $00, $3f                                 ;; 0d:7dd2 ...
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:7dd5 $fc
    db   $51                                           ;; 0d:7dd6 .
    db  $fd ;;SPAWN_NPC                                ;; 0d:7dd7 $fd
    db   $00                                           ;; 0d:7dd8 .
    db  $16 ;;SET_NPC_1_DIRECTION_RIGHT                ;; 0d:7dd9 $16
    db  $85 ;;SET_PLAYER_DIRECTION_DOWN                ;; 0d:7dda $85
    db  $8a ;;SET_PLAYER_POSITION                      ;; 0d:7ddb $8a
    db   $10, $03                                      ;; 0d:7ddc ..
    db  $03 ;;LOOP                                     ;; 0d:7dde $03
    db   $04, $02                                      ;; 0d:7ddf ..
    db  $80 ;;PLAYER_STEP_FORWARD                      ;; 0d:7de1 $80
    db  $00 ;;END                                      ;; 0d:7de2 $00
    db  $87 ;;SET_PLAYER_DIRECTION_LEFT                ;; 0d:7de3 $87
    db  $03 ;;LOOP                                     ;; 0d:7de4 $03
    db   $05, $02                                      ;; 0d:7de5 ..
    db  $80 ;;PLAYER_STEP_FORWARD                      ;; 0d:7de7 $80
    db  $00 ;;END                                      ;; 0d:7de8 $00
    db  $04 ;;MSG                                      ;; 0d:7de9 $04
    db   "<10>", $00                                   ;; 0d:7dea ..
    db  $08 ;;IF ? JR                                  ;; 0d:7dec $08
    db   $1b, $00, $19                                 ;; 0d:7ded ...
    db  $04 ;;MSG                                      ;; 0d:7df0 $04
    db   "Amanda:I'm glad\n you're back!", $00         ;; 0d:7df1 ......................
    db  $01 ;;JR                                       ;; 0d:7e07 $01
    db   $03                                           ;; 0d:7e08 .
    db  $02 ;;CALL                                     ;; 0d:7e09 $02
    db   $6d, $f9                                      ;; 0d:7e0a ..
    db  $04 ;;MSG                                      ;; 0d:7e0c $04
    db   "<12>"                                        ;; 0d:7e0d 
    db   "<11>", $00                                   ;; 0d:7e0d ...
    db  $9c ;;GIVE_FOLLOWER                            ;; 0d:7e10 $9c
    db   $05                                           ;; 0d:7e11 .
    db  $da ;;SET_FLAG                                 ;; 0d:7e12 $da
    db   $55                                           ;; 0d:7e13 .
    db  $00 ;;END                                      ;; 0d:7e14 $00

script_0282:
    db  $0b ;;IF JR                                    ;; 0d:7e15 $0b
    db   $c9, $00, $98                                 ;; 0d:7e16 ...
    db  $08 ;;IF ? JR                                  ;; 0d:7e19 $08
    db   $58, $00, $05                                 ;; 0d:7e1a ...
    db  $02 ;;CALL                                     ;; 0d:7e1d $02
    db   $5a, $e2                                      ;; 0d:7e1e ..
    db  $da ;;SET_FLAG                                 ;; 0d:7e20 $da
    db   $5d                                           ;; 0d:7e21 .
    db  $c5 ;;UNK_C5                                   ;; 0d:7e22 $c5
    db   $01                                           ;; 0d:7e23 .
    db  $f4 ;;LOAD_ROOM                                ;; 0d:7e24 $f4
    db   $06, $17, $09, $0c                            ;; 0d:7e25 ....
    db  $f8 ;;SET_MUSIC                                ;; 0d:7e29 $f8
    db   $0c                                           ;; 0d:7e2a .
    db  $fc ;;SET_NPC_TYPES                            ;; 0d:7e2b $fc
    db   $52                                           ;; 0d:7e2c .
    db  $84 ;;SET_PLAYER_DIRECTION_UP                  ;; 0d:7e2d $84
    db  $fd ;;SPAWN_NPC                                ;; 0d:7e2e $fd
    db   $02                                           ;; 0d:7e2f .
    db  $10 ;;NPC_1_STEP_FORWARD                       ;; 0d:7e30 $10
    db  $10 ;;NPC_1_STEP_FORWARD                       ;; 0d:7e31 $10
    db  $10 ;;NPC_1_STEP_FORWARD                       ;; 0d:7e32 $10
    db  $04 ;;MSG                                      ;; 0d:7e33 $04
    db   "<10>I AM MARCIE.\nI SEARCH RELICS.\nDR.BOWOW MADE ME.<12>" ;; 0d:7e34 ...........................................
    db   "<1b>HE LEFT ME HERE.\nI WAITED 50 YEARS.\nHE FORGOT ME.<12>" ;; 0d:7e5f ............................................
    db   "<1b>I CAN HELP YOU.\nTAKE ME WITH YOU.<12>"  ;; 0d:7e8b ...............................
    db   "<11>", $00                                   ;; 0d:7eaa ...
    db  $9c ;;GIVE_FOLLOWER                            ;; 0d:7ead $9c
    db   $07                                           ;; 0d:7eae .
    db  $da ;;SET_FLAG                                 ;; 0d:7eaf $da
    db   $57                                           ;; 0d:7eb0 .
    db  $00 ;;END                                      ;; 0d:7eb1 $00

script_0283:
    db  $00 ;;END                                      ;; 0d:7eb2 $00

script_0284:
    db  $0b ;;IF JR                                    ;; 0d:7eb3 $0b
    db   $c9, $00, $11                                 ;; 0d:7eb4 ...
    db  $08 ;;IF ? JR                                  ;; 0d:7eb7 $08
    db   $58, $00, $05                                 ;; 0d:7eb8 ...
    db  $02 ;;CALL                                     ;; 0d:7ebb $02
    db   $5a, $e2                                      ;; 0d:7ebc ..
    db  $da ;;SET_FLAG                                 ;; 0d:7ebe $da
    db   $6c                                           ;; 0d:7ebf .
    db  $f4 ;;LOAD_ROOM                                ;; 0d:7ec0 $f4
    db   $09, $03, $02, $0c                            ;; 0d:7ec1 ....
    db  $f8 ;;SET_MUSIC                                ;; 0d:7ec5 $f8
    db   $08                                           ;; 0d:7ec6 .
    db  $ec ;;RUN_ROOM_SCRIPT                          ;; 0d:7ec7 $ec
    db  $00 ;;END                                      ;; 0d:7ec8 $00

script_0285:
    db  $0b ;;IF JR                                    ;; 0d:7ec9 $0b
    db   $c9, $00, $11                                 ;; 0d:7eca ...
    db  $08 ;;IF ? JR                                  ;; 0d:7ecd $08
    db   $58, $00, $05                                 ;; 0d:7ece ...
    db  $02 ;;CALL                                     ;; 0d:7ed1 $02
    db   $5a, $e2                                      ;; 0d:7ed2 ..
    db  $da ;;SET_FLAG                                 ;; 0d:7ed4 $da
    db   $6b                                           ;; 0d:7ed5 .
    db  $f4 ;;LOAD_ROOM                                ;; 0d:7ed6 $f4
    db   $0d, $77, $10, $0c                            ;; 0d:7ed7 ....
    db  $f8 ;;SET_MUSIC                                ;; 0d:7edb $f8
    db   $08                                           ;; 0d:7edc .
    db  $ec ;;RUN_ROOM_SCRIPT                          ;; 0d:7edd $ec
    db  $00 ;;END                                      ;; 0d:7ede $00

script_0286:
    db  $0b ;;IF JR                                    ;; 0d:7edf $0b
    db   $c9, $00, $10                                 ;; 0d:7ee0 ...
    db  $08 ;;IF ? JR                                  ;; 0d:7ee3 $08
    db   $58, $00, $05                                 ;; 0d:7ee4 ...
    db  $02 ;;CALL                                     ;; 0d:7ee7 $02
    db   $5a, $e2                                      ;; 0d:7ee8 ..
    db  $da ;;SET_FLAG                                 ;; 0d:7eea $da
    db   $6d                                           ;; 0d:7eeb .
    db  $f4 ;;LOAD_ROOM                                ;; 0d:7eec $f4
    db   $08, $03, $08, $08                            ;; 0d:7eed ....
    db  $f8 ;;SET_MUSIC                                ;; 0d:7ef1 $f8
    db   $07                                           ;; 0d:7ef2 .
    db  $00 ;;END                                      ;; 0d:7ef3 $00

script_0287:
    db  $0b ;;IF JR                                    ;; 0d:7ef4 $0b
    db   $c9, $00, $07                                 ;; 0d:7ef5 ...
    db  $f4 ;;LOAD_ROOM                                ;; 0d:7ef8 $f4
    db   $0f, $10, $10, $02                            ;; 0d:7ef9 ....
    db  $f8 ;;SET_MUSIC                                ;; 0d:7efd $f8
    db   $07                                           ;; 0d:7efe .
    db  $00 ;;END                                      ;; 0d:7eff $00

script_0288:
    db  $0b ;;IF JR                                    ;; 0d:7f00 $0b
    db   $c9, $00, $19                                 ;; 0d:7f01 ...
    db  $08 ;;IF ? JR                                  ;; 0d:7f04 $08
    db   $58, $00, $05                                 ;; 0d:7f05 ...
    db  $02 ;;CALL                                     ;; 0d:7f08 $02
    db   $5a, $e2                                      ;; 0d:7f09 ..
    db  $da ;;SET_FLAG                                 ;; 0d:7f0b $da
    db   $66                                           ;; 0d:7f0c .
    db  $f4 ;;LOAD_ROOM                                ;; 0d:7f0d $f4
    db   $0f, $37, $09, $0c                            ;; 0d:7f0e ....
    db  $08 ;;IF ? JR                                  ;; 0d:7f12 $08
    db   $21, $00, $04                                 ;; 0d:7f13 ...
    db  $f8 ;;SET_MUSIC                                ;; 0d:7f16 $f8
    db   $04                                           ;; 0d:7f17 .
    db  $01 ;;JR                                       ;; 0d:7f18 $01
    db   $02                                           ;; 0d:7f19 .
    db  $f8 ;;SET_MUSIC                                ;; 0d:7f1a $f8
    db   $1b                                           ;; 0d:7f1b .
    db  $ec ;;RUN_ROOM_SCRIPT                          ;; 0d:7f1c $ec
    db  $00 ;;END                                      ;; 0d:7f1d $00

script_0289:
    db  $0b ;;IF JR                                    ;; 0d:7f1e $0b
    db   $c9, $00, $08                                 ;; 0d:7f1f ...
    db  $f4 ;;LOAD_ROOM                                ;; 0d:7f22 $f4
    db   $0d, $17, $10, $0c                            ;; 0d:7f23 ....
    db  $f8 ;;SET_MUSIC                                ;; 0d:7f27 $f8
    db   $0c                                           ;; 0d:7f28 .
    db  $ec ;;RUN_ROOM_SCRIPT                          ;; 0d:7f29 $ec
    db  $00 ;;END                                      ;; 0d:7f2a $00

script_028a:
    db  $0b ;;IF JR                                    ;; 0d:7f2b $0b
    db   $c9, $00, $1b                                 ;; 0d:7f2c ...
    db  $08 ;;IF ? JR                                  ;; 0d:7f2f $08
    db   $58, $00, $05                                 ;; 0d:7f30 ...
    db  $02 ;;CALL                                     ;; 0d:7f33 $02
    db   $5a, $e2                                      ;; 0d:7f34 ..
    db  $da ;;SET_FLAG                                 ;; 0d:7f36 $da
    db   $68                                           ;; 0d:7f37 .
    db  $c5 ;;UNK_C5                                   ;; 0d:7f38 $c5
    db   $04                                           ;; 0d:7f39 .
    db  $f4 ;;LOAD_ROOM                                ;; 0d:7f3a $f4
    db   $03, $47, $09, $0c                            ;; 0d:7f3b ....
    db  $08 ;;IF ? JR                                  ;; 0d:7f3f $08
    db   $2d, $00, $04                                 ;; 0d:7f40 ...
    db  $f8 ;;SET_MUSIC                                ;; 0d:7f43 $f8
    db   $0b                                           ;; 0d:7f44 .
    db  $01 ;;JR                                       ;; 0d:7f45 $01
    db   $02                                           ;; 0d:7f46 .
    db  $f8 ;;SET_MUSIC                                ;; 0d:7f47 $f8
    db   $0a                                           ;; 0d:7f48 .
    db  $ec ;;RUN_ROOM_SCRIPT                          ;; 0d:7f49 $ec
    db  $00 ;;END                                      ;; 0d:7f4a $00

script_028b:
    db  $0b ;;IF JR                                    ;; 0d:7f4b $0b
    db   $c9, $00, $13                                 ;; 0d:7f4c ...
    db  $08 ;;IF ? JR                                  ;; 0d:7f4f $08
    db   $58, $00, $05                                 ;; 0d:7f50 ...
    db  $02 ;;CALL                                     ;; 0d:7f53 $02
    db   $5a, $e2                                      ;; 0d:7f54 ..
    db  $da ;;SET_FLAG                                 ;; 0d:7f56 $da
    db   $67                                           ;; 0d:7f57 .
    db  $f4 ;;LOAD_ROOM                                ;; 0d:7f58 $f4
    db   $0e, $77, $0e, $02                            ;; 0d:7f59 ....
    db  $f8 ;;SET_MUSIC                                ;; 0d:7f5d $f8
    db   $08                                           ;; 0d:7f5e .
    db  $da ;;SET_FLAG                                 ;; 0d:7f5f $da
    db   $47                                           ;; 0d:7f60 .
    db  $ec ;;RUN_ROOM_SCRIPT                          ;; 0d:7f61 $ec
    db  $00 ;;END                                      ;; 0d:7f62 $00

script_028c:
    db  $0b ;;IF JR                                    ;; 0d:7f63 $0b
    db   $c9, $00, $0a                                 ;; 0d:7f64 ...
    db  $f4 ;;LOAD_ROOM                                ;; 0d:7f67 $f4
    db   $01, $17, $10, $05                            ;; 0d:7f68 ....
    db  $f8 ;;SET_MUSIC                                ;; 0d:7f6c $f8
    db   $07                                           ;; 0d:7f6d .
    db  $02 ;;CALL                                     ;; 0d:7f6e $02
    db   $14, $cf                                      ;; 0d:7f6f ..
    db  $00 ;;END                                      ;; 0d:7f71 $00

script_028d:
    db  $0b ;;IF JR                                    ;; 0d:7f72 $0b
    db   $c9, $00, $08                                 ;; 0d:7f73 ...
    db  $f4 ;;LOAD_ROOM                                ;; 0d:7f76 $f4
    db   $0b, $76, $10, $02                            ;; 0d:7f77 ....
    db  $f8 ;;SET_MUSIC                                ;; 0d:7f7b $f8
    db   $07                                           ;; 0d:7f7c .
    db  $ec ;;RUN_ROOM_SCRIPT                          ;; 0d:7f7d $ec
    db  $00 ;;END                                      ;; 0d:7f7e $00

script_028e:
    db  $00 ;;END                                      ;; 0d:7f7f $00

script_028f:
    db  $00 ;;END                                      ;; 0d:7f80 $00

script_0290:
    db  $0b ;;IF JR                                    ;; 0d:7f81 $0b
    db   $c9, $00, $09                                 ;; 0d:7f82 ...
    db  $f4 ;;LOAD_ROOM                                ;; 0d:7f85 $f4
    db   $00, $f0, $08, $08                            ;; 0d:7f86 ....
    db  $f8 ;;SET_MUSIC                                ;; 0d:7f8a $f8
    db   $19                                           ;; 0d:7f8b .
    db  $ab ;;UNK_AB                                   ;; 0d:7f8c $ab
    db  $ec ;;RUN_ROOM_SCRIPT                          ;; 0d:7f8d $ec
    db  $00 ;;END                                      ;; 0d:7f8e $00

script_0291:
    db  $0b ;;IF JR                                    ;; 0d:7f8f $0b
    db   $c9, $c1, $00, $0a                            ;; 0d:7f90 ....
    db  $f4 ;;LOAD_ROOM                                ;; 0d:7f94 $f4
    db   $00, $87, $08, $02                            ;; 0d:7f95 ....
    db  $f0 ;;DELAY                                    ;; 0d:7f99 $f0
    db   $14                                           ;; 0d:7f9a .
    db  $f8 ;;SET_MUSIC                                ;; 0d:7f9b $f8
    db   $14                                           ;; 0d:7f9c .
    db  $ec ;;RUN_ROOM_SCRIPT                          ;; 0d:7f9d $ec
    db  $00 ;;END                                      ;; 0d:7f9e $00

script_0292:
    db  $0b ;;IF JR                                    ;; 0d:7f9f $0b
    db   $c9, $c1, $00, $0d                            ;; 0d:7fa0 ....
    db  $f9 ;;SFX                                      ;; 0d:7fa4 $f9
    db   $0c                                           ;; 0d:7fa5 .
    db  $8a ;;SET_PLAYER_POSITION                      ;; 0d:7fa6 $8a
    db   $14, $00                                      ;; 0d:7fa7 ..
    db  $f0 ;;DELAY                                    ;; 0d:7fa9 $f0
    db   $3c                                           ;; 0d:7faa .
    db  $f4 ;;LOAD_ROOM                                ;; 0d:7fab $f4
    db   $06, $26, $09, $07                            ;; 0d:7fac ....
    db  $ec ;;RUN_ROOM_SCRIPT                          ;; 0d:7fb0 $ec
    db  $00 ;;END                                      ;; 0d:7fb1 $00

script_0293:
    db  $00 ;;END                                      ;; 0d:7fb2 $00
    db   $0b, $c9, $00, $33, $08, $52, $c8, $00        ;; 0d:7fb3 ????????
    db   $25, $04, $10, $62, $e1, $f5, $bd, $dc        ;; 0d:7fbb ????????
    db   $d7, $e1, $ee, $28, $24, $e8, $1a, $87        ;; 0d:7fc3 ????????
    db   $64, $20, $2a, $38, $22, $36, $da, $98        ;; 0d:7fcb ????????
    db   $1a, $22, $2a, $51, $8b, $5f, $e5, $f4        ;; 0d:7fd3 ????????
    db   $12, $11, $00, $98, $db, $52, $f4, $00        ;; 0d:7fdb ????????
    db   $e8, $0a, $03, $f8, $14, $ab, $ec, $00        ;; 0d:7fe3 ????????
