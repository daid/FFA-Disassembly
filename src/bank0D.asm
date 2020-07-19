;; Disassembled with BadBoy Disassembler: https://github.com/daid/BadBoy

script_0000:
    db  $00 ;;RET

script_0001:
    db  $08 ;;IF ? JR
    db   $01, $00, $05                                 ;; 0d:4002 ...
    db  $f9 ;;UNK_SFX_F9
    db   $10                                           ;; 0d:4006 ?
    db  $e4 ;;UNK_e4
    db   $01, $19                                      ;; 0d:4008 ??
    db  $08 ;;IF ? JR
    db   $02, $00, $05                                 ;; 0d:400b ...
    db  $f9 ;;UNK_SFX_F9
    db   $10                                           ;; 0d:400f ?
    db  $e6 ;;UNK_e6
    db   $01, $10                                      ;; 0d:4011 ??
    db  $08 ;;IF ? JR
    db   $03, $00, $05                                 ;; 0d:4014 ..?
    db  $f9 ;;UNK_SFX_F9
    db   $10                                           ;; 0d:4018 .
    db  $e0 ;;UNK_e0
    db   $01, $07                                      ;; 0d:401a ..
    db  $08 ;;IF ? JR
    db   $04, $00, $03                                 ;; 0d:401d ???
    db  $f9 ;;UNK_SFX_F9
    db   $10                                           ;; 0d:4021 ?
    db  $e2 ;;UNK_e2
    db  $00 ;;RET

script_0002:
    db  $00 ;;RET

script_0003:
    db  $f8 ;;UNK_MUSIC_F8
    db   $01                                           ;; 0d:4026 .
    db  $c6 ;;UNK_c6
    db   $f4, $01, $47, $12, $0a, $02, $06, $cc        ;; 0d:4028 ........
    db   $00                                           ;; 0d:4030 .

script_0004:
    db  $08 ;;IF ? JR
    db   $f4, $00, $5a                                 ;; 0d:4032 ...
    db  $08 ;;IF ? JR
    db   $f5, $f6, $f7, $00, $05                       ;; 0d:4036 ....?
    db  $f4 ;;UNK_f4
    db   $0e, $10, $0c, $09                            ;; 0d:403c ....
    db  $08 ;;IF ? JR
    db   $f5, $f6, $77, $00, $05                       ;; 0d:4041 .....
    db  $f4 ;;UNK_f4
    db   $0e, $06, $0e, $08                            ;; 0d:4047 ????
    db  $08 ;;IF ? JR
    db   $f5, $76, $f7, $00, $05                       ;; 0d:404c .....
    db  $f4 ;;UNK_f4
    db   $00, $5b, $08, $04                            ;; 0d:4052 ????
    db  $08 ;;IF ? JR
    db   $f5, $76, $77, $00, $05                       ;; 0d:4057 .....
    db  $f4 ;;UNK_f4
    db   $0e, $53, $06, $06                            ;; 0d:405d ????
    db  $08 ;;IF ? JR
    db   $75, $f6, $f7, $00, $05                       ;; 0d:4062 .....
    db  $f4 ;;UNK_f4
    db   $0e, $14, $02, $0c                            ;; 0d:4068 ????
    db  $08 ;;IF ? JR
    db   $75, $f6, $77, $00, $05                       ;; 0d:406d .....
    db  $f4 ;;UNK_f4
    db   $00, $33, $0c, $05                            ;; 0d:4073 ????
    db  $08 ;;IF ? JR
    db   $75, $76, $f7, $00, $05                       ;; 0d:4078 .....
    db  $f4 ;;UNK_f4
    db   $0f, $46, $0a, $06                            ;; 0d:407e ????
    db  $08 ;;IF ? JR
    db   $75, $76, $77, $00, $05                       ;; 0d:4083 .....
    db  $f4 ;;UNK_f4
    db   $00, $d1, $04, $06                            ;; 0d:4089 ????
    db  $01 ;;JR
    db   $7f                                           ;; 0d:408e .
    db  $08 ;;IF ? JR
    db   $f5, $f6, $f7, $00, $05                       ;; 0d:4090 .....
    db  $f4 ;;UNK_f4
    db   $00, $df, $0a, $04                            ;; 0d:4096 ????
    db  $08 ;;IF ? JR
    db   $f5, $f6, $77, $00, $0f                       ;; 0d:409b .....
    db  $f4 ;;UNK_f4
    db   $0e, $14, $0a, $06, $08, $a8, $00, $04        ;; 0d:40a1 ????????
    db   $f8, $00, $01, $02, $f8, $0d                  ;; 0d:40a9 ??????
    db  $08 ;;IF ? JR
    db   $f5, $76, $f7, $00, $07                       ;; 0d:40b0 .....
    db  $f4 ;;UNK_f4
    db   $00, $4d, $0a, $04, $f8, $14                  ;; 0d:40b6 ??????
    db  $08 ;;IF ? JR
    db   $f5, $76, $77, $00, $0f                       ;; 0d:40bd .....
    db  $f4 ;;UNK_f4
    db   $0f, $36, $02, $0b, $08, $a1, $00, $04        ;; 0d:40c3 ????????
    db   $f8, $1b, $01, $02, $f8, $04                  ;; 0d:40cb ??????
    db  $08 ;;IF ? JR
    db   $75, $f6, $f7, $00, $07                       ;; 0d:40d2 ....?
    db  $f4 ;;UNK_f4
    db   $0e, $01, $0e, $05, $f8, $04                  ;; 0d:40d8 ......
    db  $08 ;;IF ? JR
    db   $75, $f6, $77, $00, $10                       ;; 0d:40df .....
    db  $f4 ;;UNK_f4
    db   $0e, $17, $10, $08, $08, $10, $91, $00        ;; 0d:40e5 ????????
    db   $04, $f8, $09, $01, $02, $f8, $0b             ;; 0d:40ed ???????
    db  $08 ;;IF ? JR
    db   $75, $76, $f7, $00, $07                       ;; 0d:40f5 .....
    db  $f4 ;;UNK_f4
    db   $00, $aa, $0e, $08, $f8, $14                  ;; 0d:40fb ??????
    db  $08 ;;IF ? JR
    db   $75, $76, $77, $00, $07                       ;; 0d:4102 .....
    db  $f4 ;;UNK_f4
    db   $00, $7c, $08, $04, $f8, $14                  ;; 0d:4108 ??????
    db  $ab ;;UNK_ab
    db   $ec, $00                                      ;; 0d:410f .?

script_0005:
    db  $09 ;;UNK_09
    db   $1f, $00, $25, $08, $01, $00, $05, $f9        ;; 0d:4112 ????????
    db   $10, $e4, $01, $19, $08, $02, $00, $05        ;; 0d:411a ????????
    db   $f9, $10, $e6, $01, $10, $08, $03, $00        ;; 0d:4122 ????????
    db   $05, $f9, $10, $e0, $01, $07, $08, $04        ;; 0d:412a ????????
    db   $00, $03, $f9, $10, $e2, $de, $01, $0b        ;; 0d:4132 ????????
    db   $04, $10, $ff, $c5, $e2, $9e, $39, $f0        ;; 0d:413a ????????
    db   $12, $11, $00, $00                            ;; 0d:4142 ????

script_0006:
    db  $00 ;;RET

script_0007:
    db  $f8 ;;UNK_MUSIC_F8
    db   $00                                           ;; 0d:4148 .
    db  $03 ;;UNK_03
    db   $04, $0d, $86, $f0, $05, $85, $f0, $05        ;; 0d:414a .?......
    db   $87, $f0, $05, $84, $f0, $05, $00, $a6        ;; 0d:4152 ........
    db   $86, $f0, $2c, $f8, $17, $04, $10, $1a        ;; 0d:415a ........
    db   $69, $69, $14, $52, $66, $df, $f1, $12        ;; 0d:4162 ........
    db   $11, $00, $c8, $00                            ;; 0d:416a ...?

script_0008:
    db  $08 ;;IF ? JR
    db   $f4, $00, $5a                                 ;; 0d:416f ...
    db  $08 ;;IF ? JR
    db   $f5, $f6, $f7, $00, $05                       ;; 0d:4173 .....
    db  $f4 ;;UNK_f4
    db   $0e, $10, $06, $07                            ;; 0d:4179 ....
    db  $08 ;;IF ? JR
    db   $f5, $f6, $77, $00, $05                       ;; 0d:417e .....
    db  $f4 ;;UNK_f4
    db   $00, $c7, $08, $07                            ;; 0d:4184 ....
    db  $08 ;;IF ? JR
    db   $f5, $76, $f7, $00, $05                       ;; 0d:4189 .....
    db  $f4 ;;UNK_f4
    db   $0e, $07, $0c, $04                            ;; 0d:418f ????
    db  $08 ;;IF ? JR
    db   $f5, $76, $77, $00, $05                       ;; 0d:4194 .....
    db  $f4 ;;UNK_f4
    db   $00, $af, $04, $04                            ;; 0d:419a ????
    db  $08 ;;IF ? JR
    db   $75, $f6, $f7, $00, $05                       ;; 0d:419f .....
    db  $f4 ;;UNK_f4
    db   $0e, $63, $0e, $0a                            ;; 0d:41a5 ????
    db  $08 ;;IF ? JR
    db   $75, $f6, $77, $00, $05                       ;; 0d:41aa .....
    db  $f4 ;;UNK_f4
    db   $0e, $24, $0a, $04                            ;; 0d:41b0 ????
    db  $08 ;;IF ? JR
    db   $75, $76, $f7, $00, $05                       ;; 0d:41b5 .....
    db  $f4 ;;UNK_f4
    db   $00, $23, $0a, $06                            ;; 0d:41bb ????
    db  $08 ;;IF ? JR
    db   $75, $76, $77, $00, $05                       ;; 0d:41c0 .....
    db  $f4 ;;UNK_f4
    db   $00, $90, $0c, $06                            ;; 0d:41c6 ????
    db  $01 ;;JR
    db   $58                                           ;; 0d:41cb .
    db  $08 ;;IF ? JR
    db   $f5, $f6, $f7, $00, $05                       ;; 0d:41cd .....
    db  $f4 ;;UNK_f4
    db   $00, $db, $08, $04                            ;; 0d:41d3 ????
    db  $08 ;;IF ? JR
    db   $f5, $f6, $77, $00, $05                       ;; 0d:41d8 .....
    db  $f4 ;;UNK_f4
    db   $0f, $26, $04, $0c                            ;; 0d:41de ????
    db  $08 ;;IF ? JR
    db   $f5, $76, $f7, $00, $05                       ;; 0d:41e3 ....?
    db  $f4 ;;UNK_f4
    db   $0e, $00, $04, $08                            ;; 0d:41e9 ....
    db  $08 ;;IF ? JR
    db   $f5, $76, $77, $00, $05                       ;; 0d:41ee .....
    db  $f4 ;;UNK_f4
    db   $0e, $06, $06, $08                            ;; 0d:41f4 ????
    db  $08 ;;IF ? JR
    db   $75, $f6, $f7, $00, $05                       ;; 0d:41f9 .....
    db  $f4 ;;UNK_f4
    db   $0e, $13, $10, $08                            ;; 0d:41ff ????
    db  $08 ;;IF ? JR
    db   $75, $f6, $77, $00, $05                       ;; 0d:4204 .....
    db  $f4 ;;UNK_f4
    db   $0e, $63, $0a, $04                            ;; 0d:420a ????
    db  $08 ;;IF ? JR
    db   $75, $76, $f7, $00, $05                       ;; 0d:420f .....
    db  $f4 ;;UNK_f4
    db   $0f, $46, $04, $0a                            ;; 0d:4215 ????
    db  $08 ;;IF ? JR
    db   $75, $76, $77, $00, $05                       ;; 0d:421a .....
    db  $f4 ;;UNK_f4
    db   $0f, $46, $0e, $06                            ;; 0d:4220 ????
    db  $ab ;;UNK_ab
    db   $ec, $00                                      ;; 0d:4225 .?

script_0009:
    db  $04 ;;MSG
    db   $10, $ff, $bd, $e2, $54, $e1, $ee, $28        ;; 0d:4228 ........
    db   $e2, $e3, $4e, $f0, $12, $11, $00             ;; 0d:4230 .......
    db  $00 ;;RET

script_000a:
    db  $00 ;;RET

script_000b:
    db  $00 ;;RET

script_000c:
    db  $08 ;;IF ? JR
    db   $f4, $f5, $f6, $00, $6c                       ;; 0d:423b .....
    db  $08 ;;IF ? JR
    db   $f7, $00, $14                                 ;; 0d:4241 ???
    db  $08 ;;IF ? JR
    db   $40, $a5, $00, $02                            ;; 0d:4245 ????
    db  $01 ;;JR
    db   $0b                                           ;; 0d:424a ?
    db  $f4 ;;UNK_f4
    db   $00, $a9, $0a, $05, $f8, $14, $02, $5b        ;; 0d:424c ????????
    db   $55, $ab                                      ;; 0d:4254 ??
    db  $01 ;;JR
    db   $52                                           ;; 0d:4257 ?
    db  $04 ;;MSG
    db   $10, $00                                      ;; 0d:4259 ??
    db  $08 ;;IF ? JR
    db   $b1, $00, $2f                                 ;; 0d:425c ???
    db  $04 ;;MSG
    db   $49, $ee, $c5, $c5, $9a, $cd, $ba, $d2        ;; 0d:4260 ????????
    db   $97, $be, $cb, $be, $1a, $ff, $ba, $c7        ;; 0d:4268 ????????
    db   $bd, $ff, $cb, $be, $cc, $be, $ba, $cb        ;; 0d:4270 ????????
    db   $bc, $c1, $f0, $12, $11, $00                  ;; 0d:4278 ??????
    db  $98 ;;UNK_98
    db   $db, $57, $f4, $00, $73, $0a, $06, $f8        ;; 0d:427f ????????
    db   $14, $02, $4f, $ae, $ab, $01, $1c             ;; 0d:4287 ???????
    db  $04 ;;MSG
    db   $cd, $46, $27, $37, $26, $e6, $2f, $de        ;; 0d:428f ????????
    db   $2f, $da, $f0, $1a, $ce, $e1, $d4, $d5        ;; 0d:4297 ????????
    db   $5d, $22, $36, $da, $98, $3e, $84, $f3        ;; 0d:429f ????????
    db   $12, $11, $00                                 ;; 0d:42a7 ???
    db  $01 ;;JR
    db   $d7                                           ;; 0d:42ab ?
    db  $08 ;;IF ? JR
    db   $f4, $00, $84                                 ;; 0d:42ad ...
    db  $08 ;;IF ? JR
    db   $f5, $76, $f7, $00, $07                       ;; 0d:42b1 ....?
    db  $f4 ;;UNK_f4
    db   $00, $64, $0e, $07, $f8, $14                  ;; 0d:42b7 ......
    db  $08 ;;IF ? JR
    db   $f5, $76, $77, $00, $41                       ;; 0d:42be .....
    db  $08 ;;IF ? JR
    db   $56, $a8, $00, $2b                            ;; 0d:42c4 ????
    db  $04 ;;MSG
    db   $10, $8d, $45, $27, $f5, $d0, $47, $ee        ;; 0d:42c9 ????????
    db   $28, $24, $e8, $1a, $2d, $4d, $4f, $20        ;; 0d:42d1 ????????
    db   $e0, $57, $e6, $31, $3f, $e5, $f4, $1a        ;; 0d:42d9 ????????
    db   $6a, $66, $df, $80, $c2, $ee, $8c, $da        ;; 0d:42e1 ????????
    db   $e2, $2f, $da, $f3, $12, $11, $00             ;; 0d:42e9 ???????
    db  $98 ;;UNK_98
    db   $db, $56                                      ;; 0d:42f1 ??
    db  $08 ;;IF ? JR
    db   $28, $00, $02                                 ;; 0d:42f4 ???
    db  $f8 ;;UNK_MUSIC_F8
    db   $0d                                           ;; 0d:42f8 ?
    db  $08 ;;IF ? JR
    db   $a8, $00, $02                                 ;; 0d:42fa ???
    db  $f8 ;;UNK_MUSIC_F8
    db   $00                                           ;; 0d:42fe ?
    db  $f4 ;;UNK_f4
    db   $0e, $03, $0c, $08                            ;; 0d:4300 ????
    db  $08 ;;IF ? JR
    db   $75, $f6, $f7, $00, $07                       ;; 0d:4305 .....
    db  $f4 ;;UNK_f4
    db   $00, $c5, $09, $08, $f8, $19                  ;; 0d:430b ??????
    db  $08 ;;IF ? JR
    db   $75, $f6, $77, $00, $05                       ;; 0d:4312 .....
    db  $f4 ;;UNK_f4
    db   $01, $15, $09, $04                            ;; 0d:4318 ????
    db  $08 ;;IF ? JR
    db   $75, $76, $f7, $00, $05                       ;; 0d:431d .....
    db  $f4 ;;UNK_f4
    db   $0f, $22, $02, $0b                            ;; 0d:4323 ????
    db  $08 ;;IF ? JR
    db   $75, $76, $77, $00, $05                       ;; 0d:4328 .....
    db  $f4 ;;UNK_f4
    db   $0e, $53, $0e, $08                            ;; 0d:432e ????
    db  $01 ;;JR
    db   $4d                                           ;; 0d:4333 .
    db  $08 ;;IF ? JR
    db   $f5, $f6, $f7, $00, $05                       ;; 0d:4335 .....
    db  $f4 ;;UNK_f4
    db   $00, $0a, $0e, $04                            ;; 0d:433b ????
    db  $08 ;;IF ? JR
    db   $f5, $f6, $77, $00, $05                       ;; 0d:4340 .....
    db  $f4 ;;UNK_f4
    db   $00, $55, $08, $04                            ;; 0d:4346 ????
    db  $08 ;;IF ? JR
    db   $f5, $76, $f7, $00, $05                       ;; 0d:434b .....
    db  $f4 ;;UNK_f4
    db   $00, $62, $0c, $06                            ;; 0d:4351 ????
    db  $08 ;;IF ? JR
    db   $f5, $76, $77, $00, $05                       ;; 0d:4356 .....
    db  $f4 ;;UNK_f4
    db   $00, $00, $06, $06                            ;; 0d:435c ????
    db  $08 ;;IF ? JR
    db   $75, $f6, $f7, $00, $05                       ;; 0d:4361 ....?
    db  $f4 ;;UNK_f4
    db   $0e, $01, $06, $09                            ;; 0d:4367 ....
    db  $08 ;;IF ? JR
    db   $75, $f6, $77, $00, $05                       ;; 0d:436c .....
    db  $f4 ;;UNK_f4
    db   $0e, $26, $08, $08                            ;; 0d:4372 ????
    db  $08 ;;IF ? JR
    db   $75, $76, $f7, $00, $05                       ;; 0d:4377 .....
    db  $f4 ;;UNK_f4
    db   $0e, $15, $0c, $0a                            ;; 0d:437d ????
    db  $ab ;;UNK_ab
    db   $ec                                           ;; 0d:4382 .
    db  $00 ;;RET

script_000d:
    db  $08 ;;IF ? JR
    db   $2d, $03, $00, $05                            ;; 0d:4385 ????
    db  $f9 ;;UNK_SFX_F9
    db   $10                                           ;; 0d:438a ?
    db  $e0 ;;UNK_e0
    db   $01, $1c                                      ;; 0d:438c ??
    db  $04 ;;MSG
    db   $10, $f1, $ff, $f1, $00                       ;; 0d:438f ?????
    db  $f0 ;;UNK_F0
    db   $1e                                           ;; 0d:4395 ?
    db  $04 ;;MSG
    db   $f1, $00                                      ;; 0d:4397 ??
    db  $f0 ;;UNK_F0
    db   $14                                           ;; 0d:439a ?
    db  $04 ;;MSG
    db   $35, $1a, $f1, $49, $e7, $6c, $52, $5f        ;; 0d:439c ????????
    db   $ed, $4e, $f0, $12, $11, $00                  ;; 0d:43a4 ??????
    db  $00 ;;RET

script_000e:
    db  $00 ;;RET

script_000f:
    db  $00 ;;RET

script_0010:
    db  $00 ;;RET

script_0011:
    db  $00 ;;RET

script_0012:
    db  $00 ;;RET

script_0013:
    db  $00 ;;RET

script_0014:
    db  $00 ;;RET

script_0015:
    db  $00 ;;RET

script_0016:
    db  $00 ;;RET

script_0017:
    db  $00 ;;RET

script_0018:
    db  $00 ;;RET

script_0019:
    db  $00 ;;RET

script_001a:
    db  $00 ;;RET

script_001b:
    db  $00 ;;RET

script_001c:
    db  $00 ;;RET

script_001d:
    db  $00 ;;RET

script_001e:
    db  $00 ;;RET

script_001f:
    db  $a9 ;;UNK_a9
    db   $08, $7f, $00, $03, $ac, $ad, $ae, $00        ;; 0d:43bd ...?....

script_0020:
    db  $00 ;;RET

script_0021:
    db  $00 ;;RET

script_0022:
    db  $00 ;;RET

script_0023:
    db  $00 ;;RET

script_0024:
    db  $00 ;;RET

script_0025:
    db  $00 ;;RET

script_0026:
    db  $00 ;;RET

script_0027:
    db  $00 ;;RET

script_0028:
    db  $00 ;;RET

script_0029:
    db  $00 ;;RET

script_002a:
    db  $00 ;;RET

script_002b:
    db  $00 ;;RET

script_002c:
    db  $00 ;;RET

script_002d:
    db  $00 ;;RET

script_002e:
    db  $00 ;;RET

script_002f:
    db  $00 ;;RET

script_0030:
    db  $fc ;;UNK_fc
    db   $00, $fd, $00, $fd, $01, $00                  ;; 0d:43d6 ??????

script_003d:
    db  $00 ;;RET

script_003e:
    db  $00 ;;RET

script_003f:
    db  $00 ;;RET

script_0040:
    db  $08 ;;IF ? JR
    db   $87, $00, $06                                 ;; 0d:43e0 ..?
    db  $fc ;;UNK_fc
    db   $00, $fd, $00, $fd, $01                       ;; 0d:43e4 .....
    db  $00 ;;RET

script_0041:
    db  $00 ;;RET

script_0042:
    db  $00 ;;RET

script_0043:
    db  $08 ;;IF ? JR
    db   $87, $00, $06                                 ;; 0d:43ed ...
    db  $fc ;;UNK_fc
    db   $01, $fd, $00, $fd, $01                       ;; 0d:43f1 .....
    db  $00 ;;RET

script_0044:
    db  $00 ;;RET

script_0045:
    db  $00 ;;RET

script_0046:
    db  $08 ;;IF ? JR
    db   $87, $00, $04                                 ;; 0d:43fa ???
    db  $fc ;;UNK_fc
    db   $00, $fd, $02                                 ;; 0d:43fe ???
    db  $00 ;;RET

script_0047:
    db  $00 ;;RET

script_0048:
    db  $00 ;;RET

script_0049:
    db  $08 ;;IF ? JR
    db   $87, $00, $06                                 ;; 0d:4405 ..?
    db  $fc ;;UNK_fc
    db   $02, $fd, $01, $fd, $00                       ;; 0d:4409 .....
    db  $00 ;;RET

script_004a:
    db  $00 ;;RET

script_004b:
    db  $00 ;;RET

script_004c:
    db  $08 ;;IF ? JR
    db   $87, $00, $06                                 ;; 0d:4412 ..?
    db  $fc ;;UNK_fc
    db   $03, $fd, $00, $fd, $01                       ;; 0d:4416 .....
    db  $00 ;;RET

script_004d:
    db  $00 ;;RET

script_004e:
    db  $00 ;;RET

script_004f:
    db  $08 ;;IF ? JR
    db   $87, $00, $04                                 ;; 0d:441f ???
    db  $fc ;;UNK_fc
    db   $08, $fd, $00                                 ;; 0d:4423 ???
    db  $00 ;;RET

script_0050:
    db  $00 ;;RET

script_0051:
    db  $00 ;;RET

script_0052:
    db  $08 ;;IF ? JR
    db   $87, $00, $04                                 ;; 0d:442a ???
    db  $fc ;;UNK_fc
    db   $09, $fd, $00                                 ;; 0d:442e ???
    db  $00 ;;RET

script_0053:
    db  $00 ;;RET

script_0054:
    db  $00 ;;RET

script_0055:
    db  $08 ;;IF ? JR
    db   $87, $00, $04                                 ;; 0d:4435 ???
    db  $fc ;;UNK_fc
    db   $09, $fd, $01                                 ;; 0d:4439 ???
    db  $00 ;;RET

script_0056:
    db  $00 ;;RET

script_0057:
    db  $00 ;;RET

script_0058:
    db  $08 ;;IF ? JR
    db   $87, $00, $06                                 ;; 0d:4440 ???
    db  $fc ;;UNK_fc
    db   $0b, $fd, $01, $fd, $02                       ;; 0d:4444 ?????
    db  $00 ;;RET

script_0059:
    db  $00 ;;RET

script_005a:
    db  $00 ;;RET

script_005b:
    db  $08 ;;IF ? JR
    db   $87, $00, $06                                 ;; 0d:444d ???
    db  $fc ;;UNK_fc
    db   $0d, $fd, $00, $fd, $01                       ;; 0d:4451 ?????
    db  $00 ;;RET

script_005c:
    db  $00 ;;RET

script_005d:
    db  $00 ;;RET

script_005e:
    db  $08 ;;IF ? JR
    db   $87, $00, $04                                 ;; 0d:445a ???
    db  $fc ;;UNK_fc
    db   $0d, $fd, $02                                 ;; 0d:445e ???
    db  $00 ;;RET

script_005f:
    db  $00 ;;RET

script_0060:
    db  $00 ;;RET

script_0061:
    db  $08 ;;IF ? JR
    db   $87, $00, $06                                 ;; 0d:4465 ???
    db  $fc ;;UNK_fc
    db   $12, $fd, $00, $fd, $01                       ;; 0d:4469 ?????
    db  $00 ;;RET

script_0062:
    db  $00 ;;RET

script_0063:
    db  $00 ;;RET

script_0064:
    db  $08 ;;IF ? JR
    db   $87, $00, $06                                 ;; 0d:4472 ???
    db  $fc ;;UNK_fc
    db   $13, $fd, $00, $fd, $01                       ;; 0d:4476 ?????
    db  $db ;;UNK_DB
    db   $78                                           ;; 0d:447c ?
    db  $db ;;UNK_DB
    db   $79                                           ;; 0d:447e ?
    db  $00 ;;RET

script_0065:
    db  $00 ;;RET

script_0066:
    db  $00 ;;RET

script_0067:
    db  $08 ;;IF ? JR
    db   $87, $00, $06                                 ;; 0d:4483 ???
    db  $fc ;;UNK_fc
    db   $12, $fd, $01, $fd, $02                       ;; 0d:4487 ?????
    db  $00 ;;RET

script_0068:
    db  $00 ;;RET

script_0069:
    db  $00 ;;RET

script_006a:
    db  $08 ;;IF ? JR
    db   $87, $00, $06                                 ;; 0d:4490 ???
    db  $fc ;;UNK_fc
    db   $18, $fd, $00, $fd, $01                       ;; 0d:4494 ?????
    db  $00 ;;RET

script_006b:
    db  $00 ;;RET

script_006c:
    db  $00 ;;RET

script_006d:
    db  $08 ;;IF ? JR
    db   $87, $00, $04                                 ;; 0d:449d ???
    db  $fc ;;UNK_fc
    db   $18, $fd, $02                                 ;; 0d:44a1 ???
    db  $00 ;;RET

script_006e:
    db  $00 ;;RET

script_006f:
    db  $00 ;;RET

script_0070:
    db  $08 ;;IF ? JR
    db   $87, $00, $04                                 ;; 0d:44a8 ???
    db  $fc ;;UNK_fc
    db   $19, $fd, $00                                 ;; 0d:44ac ???
    db  $00 ;;RET

script_0071:
    db  $00 ;;RET

script_0072:
    db  $00 ;;RET

script_0073:
    db  $08 ;;IF ? JR
    db   $87, $00, $06                                 ;; 0d:44b3 ???
    db  $fc ;;UNK_fc
    db   $19, $fd, $01, $fd, $02                       ;; 0d:44b7 ?????
    db  $00 ;;RET

script_0074:
    db  $00 ;;RET

script_0075:
    db  $00 ;;RET

script_0076:
    db  $08 ;;IF ? JR
    db   $87, $00, $06                                 ;; 0d:44c0 ???
    db  $fc ;;UNK_fc
    db   $1c, $fd, $00, $fd, $01                       ;; 0d:44c4 ?????
    db  $00 ;;RET

script_0077:
    db  $00 ;;RET

script_0078:
    db  $00 ;;RET

script_0079:
    db  $08 ;;IF ? JR
    db   $87, $00, $04                                 ;; 0d:44cd ???
    db  $fc ;;UNK_fc
    db   $1d, $fd, $00                                 ;; 0d:44d1 ???
    db  $00 ;;RET

script_007a:
    db  $00 ;;RET

script_007b:
    db  $00 ;;RET

script_007c:
    db  $08 ;;IF ? JR
    db   $87, $00, $04                                 ;; 0d:44d8 ???
    db  $fc ;;UNK_fc
    db   $1c, $fd, $02                                 ;; 0d:44dc ???
    db  $00 ;;RET

script_007d:
    db  $00 ;;RET

script_007e:
    db  $00 ;;RET

script_007f:
    db  $fc ;;UNK_fc
    db   $04, $fd, $00, $fd, $01, $db, $78, $db        ;; 0d:44e3 ????????
    db   $79, $00                                      ;; 0d:44eb ??

script_0080:
    db  $00 ;;RET

script_0081:
    db  $00 ;;RET

script_0082:
    db  $08 ;;IF ? JR
    db   $87, $00, $06                                 ;; 0d:44f0 ???
    db  $fc ;;UNK_fc
    db   $05, $fd, $00, $fd, $01                       ;; 0d:44f4 ?????
    db  $00 ;;RET

script_0083:
    db  $00 ;;RET

script_0084:
    db  $00 ;;RET

script_0085:
    db  $08 ;;IF ? JR
    db   $87, $00, $06                                 ;; 0d:44fd ???
    db  $fc ;;UNK_fc
    db   $06, $fd, $00, $fd, $01                       ;; 0d:4501 ?????
    db  $00 ;;RET

script_0086:
    db  $00 ;;RET

script_0087:
    db  $00 ;;RET

script_0088:
    db  $08 ;;IF ? JR
    db   $87, $00, $06                                 ;; 0d:450a ???
    db  $fc ;;UNK_fc
    db   $07, $fd, $00, $fd, $01                       ;; 0d:450e ?????
    db  $00 ;;RET

script_0089:
    db  $00 ;;RET

script_008a:
    db  $00 ;;RET

script_008b:
    db  $08 ;;IF ? JR
    db   $87, $00, $04                                 ;; 0d:4517 ???
    db  $fc ;;UNK_fc
    db   $0a, $fd, $00                                 ;; 0d:451b ???
    db  $00 ;;RET

script_008c:
    db  $00 ;;RET

script_008d:
    db  $00 ;;RET

script_008e:
    db  $08 ;;IF ? JR
    db   $87, $00, $06                                 ;; 0d:4522 ???
    db  $fc ;;UNK_fc
    db   $0a, $fd, $01, $fd, $02                       ;; 0d:4526 ?????
    db  $db ;;UNK_DB
    db   $78                                           ;; 0d:452c ?
    db  $00 ;;RET

script_008f:
    db  $00 ;;RET

script_0090:
    db  $00 ;;RET

script_0091:
    db  $08 ;;IF ? JR
    db   $87, $00, $04                                 ;; 0d:4531 ???
    db  $fc ;;UNK_fc
    db   $0c, $fd, $00                                 ;; 0d:4535 ???
    db  $00 ;;RET

script_0092:
    db  $00 ;;RET

script_0093:
    db  $00 ;;RET

script_0094:
    db  $08 ;;IF ? JR
    db   $87, $00, $04                                 ;; 0d:453c ???
    db  $fc ;;UNK_fc
    db   $0c, $fd, $02                                 ;; 0d:4540 ???
    db  $00 ;;RET

script_0095:
    db  $00 ;;RET

script_0096:
    db  $00 ;;RET

script_0097:
    db  $08 ;;IF ? JR
    db   $87, $00, $06                                 ;; 0d:4547 ???
    db  $fc ;;UNK_fc
    db   $0e, $fd, $01, $fd, $02                       ;; 0d:454b ?????
    db  $db ;;UNK_DB
    db   $78                                           ;; 0d:4551 ?
    db  $db ;;UNK_DB
    db   $79                                           ;; 0d:4553 ?
    db  $00 ;;RET

script_0098:
    db  $00 ;;RET

script_0099:
    db  $00 ;;RET

script_009a:
    db  $08 ;;IF ? JR
    db   $87, $00, $06                                 ;; 0d:4558 ???
    db  $fc ;;UNK_fc
    db   $0f, $fd, $01, $fd, $02                       ;; 0d:455c ?????
    db  $00 ;;RET

script_009b:
    db  $00 ;;RET

script_009c:
    db  $00 ;;RET

script_009d:
    db  $08 ;;IF ? JR
    db   $87, $00, $06                                 ;; 0d:4565 ???
    db  $fc ;;UNK_fc
    db   $10, $fd, $01, $fd, $02                       ;; 0d:4569 ?????
    db  $db ;;UNK_DB
    db   $78                                           ;; 0d:456f ?
    db  $db ;;UNK_DB
    db   $79                                           ;; 0d:4571 ?
    db  $db ;;UNK_DB
    db   $7a                                           ;; 0d:4573 ?
    db  $db ;;UNK_DB
    db   $7b                                           ;; 0d:4575 ?
    db  $00 ;;RET

script_009e:
    db  $00 ;;RET

script_009f:
    db  $00 ;;RET

script_00a0:
    db  $08 ;;IF ? JR
    db   $87, $00, $04                                 ;; 0d:457a ???
    db  $fc ;;UNK_fc
    db   $11, $fd, $02                                 ;; 0d:457e ???
    db  $00 ;;RET

script_00a1:
    db  $00 ;;RET

script_00a2:
    db  $00 ;;RET

script_00a3:
    db  $08 ;;IF ? JR
    db   $87, $00, $06                                 ;; 0d:4585 ???
    db  $fc ;;UNK_fc
    db   $14, $fd, $00, $fd, $01                       ;; 0d:4589 ?????
    db  $00 ;;RET

script_00a4:
    db  $00 ;;RET

script_00a5:
    db  $00 ;;RET

script_00a6:
    db  $08 ;;IF ? JR
    db   $87, $00, $04                                 ;; 0d:4592 ???
    db  $fc ;;UNK_fc
    db   $08, $fd, $01                                 ;; 0d:4596 ???
    db  $00 ;;RET

script_00a7:
    db  $00 ;;RET

script_00a8:
    db  $00 ;;RET

script_00a9:
    db  $08 ;;IF ? JR
    db   $87, $00, $06                                 ;; 0d:459d ???
    db  $fc ;;UNK_fc
    db   $16, $fd, $01, $fd, $02                       ;; 0d:45a1 ?????
    db  $db ;;UNK_DB
    db   $78                                           ;; 0d:45a7 ?
    db  $db ;;UNK_DB
    db   $79                                           ;; 0d:45a9 ?
    db  $00 ;;RET

script_00aa:
    db  $00 ;;RET

script_00ab:
    db  $00 ;;RET

script_00ac:
    db  $08 ;;IF ? JR
    db   $87, $00, $04                                 ;; 0d:45ae ???
    db  $fc ;;UNK_fc
    db   $17, $fd, $00                                 ;; 0d:45b2 ???
    db  $00 ;;RET

script_00ad:
    db  $00 ;;RET

script_00ae:
    db  $00 ;;RET

script_00af:
    db  $e7 ;;UNK_e7
    db   $fc, $05, $fd, $00, $fd, $00, $fd, $00        ;; 0d:45b9 ????????
    db   $00                                           ;; 0d:45c1 ?

script_00b0:
    db  $00 ;;RET

script_00b1:
    db  $08 ;;IF ? JR
    db   $cf, $00, $07                                 ;; 0d:45c4 ???
    db  $fc ;;UNK_fc
    db   $59, $fd, $02, $ca, $04, $5e                  ;; 0d:45c8 ??????
    db  $e6 ;;UNK_e6
    db   $00                                           ;; 0d:45cf ?

script_00b2:
    db  $08 ;;IF ? JR
    db   $87, $00, $04                                 ;; 0d:45d1 ???
    db  $fc ;;UNK_fc
    db   $1a, $fd, $01                                 ;; 0d:45d5 ???
    db  $00 ;;RET

script_00b3:
    db  $00 ;;RET

script_00b4:
    db  $00 ;;RET

script_00b5:
    db  $08 ;;IF ? JR
    db   $87, $00, $06                                 ;; 0d:45dc ???
    db  $fc ;;UNK_fc
    db   $1b, $fd, $00, $fd, $01                       ;; 0d:45e0 ?????
    db  $00 ;;RET

script_00b6:
    db  $00 ;;RET

script_00b7:
    db  $00 ;;RET

script_00b8:
    db  $08 ;;IF ? JR
    db   $87, $00, $06                                 ;; 0d:45e9 ???
    db  $fc ;;UNK_fc
    db   $1e, $fd, $00, $fd, $01                       ;; 0d:45ed ?????
    db  $00 ;;RET

script_00b9:
    db  $00 ;;RET

script_00ba:
    db  $00 ;;RET

script_00bb:
    db  $08 ;;IF ? JR
    db   $87, $00, $04                                 ;; 0d:45f6 ???
    db  $fc ;;UNK_fc
    db   $1a, $fd, $00                                 ;; 0d:45fa ???
    db  $00 ;;RET

script_00bc:
    db  $00 ;;RET

script_00bd:
    db  $00 ;;RET

script_00be:
    db  $08 ;;IF ? JR
    db   $87, $00, $06                                 ;; 0d:4601 ???
    db  $fc ;;UNK_fc
    db   $1f, $fd, $00, $fd, $01                       ;; 0d:4605 ?????
    db  $00 ;;RET

script_00bf:
    db  $00 ;;RET

script_00c0:
    db  $00 ;;RET

script_00c1:
    db  $08 ;;IF ? JR
    db   $87, $00, $04                                 ;; 0d:460e ???
    db  $fc ;;UNK_fc
    db   $1f, $fd, $02                                 ;; 0d:4612 ???
    db  $00 ;;RET

script_00c2:
    db  $00 ;;RET

script_00c3:
    db  $00 ;;RET

script_00c4:
    db  $08 ;;IF ? JR
    db   $87, $00, $06                                 ;; 0d:4619 ???
    db  $fc ;;UNK_fc
    db   $20, $fd, $01, $fd, $02                       ;; 0d:461d ?????
    db  $db ;;UNK_DB
    db   $78                                           ;; 0d:4623 ?
    db  $db ;;UNK_DB
    db   $79                                           ;; 0d:4625 ?
    db  $db ;;UNK_DB
    db   $7a                                           ;; 0d:4627 ?
    db  $db ;;UNK_DB
    db   $7b                                           ;; 0d:4629 ?
    db  $00 ;;RET

script_00c5:
    db  $00 ;;RET

script_00c6:
    db  $00 ;;RET

script_00c7:
    db  $08 ;;IF ? JR
    db   $87, $00, $06                                 ;; 0d:462e ???
    db  $fc ;;UNK_fc
    db   $21, $fd, $00, $fd, $01                       ;; 0d:4632 ?????
    db  $00 ;;RET

script_00c8:
    db  $00 ;;RET

script_00c9:
    db  $00 ;;RET

script_00ca:
    db  $08 ;;IF ? JR
    db   $87, $00, $04                                 ;; 0d:463b ???
    db  $fc ;;UNK_fc
    db   $22, $fd, $00                                 ;; 0d:463f ???
    db  $00 ;;RET

script_00cb:
    db  $00 ;;RET

script_00cc:
    db  $00 ;;RET

script_00cd:
    db  $08 ;;IF ? JR
    db   $87, $00, $04                                 ;; 0d:4646 ???
    db  $fc ;;UNK_fc
    db   $22, $fd, $01                                 ;; 0d:464a ???
    db  $00 ;;RET

script_00ce:
    db  $00 ;;RET

script_00cf:
    db  $00 ;;RET

script_00d0:
    db  $08 ;;IF ? JR
    db   $87, $00, $04                                 ;; 0d:4651 ???
    db  $fc ;;UNK_fc
    db   $23, $fd, $01                                 ;; 0d:4655 ???
    db  $00 ;;RET

script_00d1:
    db  $00 ;;RET

script_00d2:
    db  $00 ;;RET

script_00d3:
    db  $08 ;;IF ? JR
    db   $87, $00, $04                                 ;; 0d:465c ???
    db  $fc ;;UNK_fc
    db   $23, $fd, $02                                 ;; 0d:4660 ???
    db  $00 ;;RET

script_00d4:
    db  $00 ;;RET

script_00d5:
    db  $00 ;;RET

script_00d6:
    db  $db ;;UNK_DB
    db   $78                                           ;; 0d:4667 ?
    db  $08 ;;IF ? JR
    db   $87, $00, $10                                 ;; 0d:4669 ???
    db  $fc ;;UNK_fc
    db   $03, $08, $8d, $00, $06, $fd, $00, $fd        ;; 0d:466d ????????
    db   $01, $01, $04, $fd, $02, $fd, $02             ;; 0d:4675 ???????
    db  $00 ;;RET

script_00d7:
    db  $00 ;;RET

script_00d8:
    db  $08 ;;IF ? JR
    db   $0d, $00, $0b                                 ;; 0d:467f ???
    db  $08 ;;IF ? JR
    db   $f8, $00, $07                                 ;; 0d:4683 ???
    db  $fc ;;UNK_fc
    db   $59, $fd, $00, $c9, $04, $41                  ;; 0d:4687 ??????
    db  $da ;;UNK_DA
    db   $78                                           ;; 0d:468e ?
    db  $00 ;;RET

script_00d9:
    db  $e1 ;;UNK_e1
    db   $fc, $0e, $fd, $02, $fd, $02, $00             ;; 0d:4691 ???????

script_00da:
    db  $00 ;;RET

script_00db:
    db  $08 ;;IF ? JR
    db   $b9, $00, $07                                 ;; 0d:469a ???
    db  $fc ;;UNK_fc
    db   $59, $fd, $00, $c9, $04, $5f                  ;; 0d:469e ??????
    db  $e0 ;;UNK_e0
    db   $00                                           ;; 0d:46a5 ?

script_00dc:
    db  $e7 ;;UNK_e7
    db   $fc, $0a, $fd, $01, $fd, $01, $00             ;; 0d:46a7 ???????

script_00dd:
    db  $00 ;;RET

script_00de:
    db  $08 ;;IF ? JR
    db   $bf, $00, $07                                 ;; 0d:46b0 ???
    db  $fc ;;UNK_fc
    db   $59, $fd, $00, $c9, $04, $60                  ;; 0d:46b4 ??????
    db  $e6 ;;UNK_e6
    db   $00                                           ;; 0d:46bb ?

script_00e0:
    db  $fc ;;UNK_fc
    db   $24, $fd, $02, $00                            ;; 0d:46bd ????

script_00e1:
    db  $00 ;;RET

script_00e2:
    db  $00 ;;RET

script_00e3:
    db  $fc ;;UNK_fc
    db   $25, $fd, $00, $fd, $02, $00                  ;; 0d:46c4 ......

script_00e4:
    db  $00 ;;RET

script_00e5:
    db  $00 ;;RET

script_00e6:
    db  $f8 ;;UNK_MUSIC_F8
    db   $00                                           ;; 0d:46cd .
    db  $8a ;;UNK_8a
    db   $13, $0a, $87, $03, $0a, $02, $80, $00        ;; 0d:46cf .....?..
    db   $f9, $10, $b0, $6c, $09, $05, $f0, $1e        ;; 0d:46d7 ........
    db   $84, $f0, $14, $04, $10, $c7, $46, $52        ;; 0d:46df ........
    db   $8f, $91, $f3, $00, $f0, $46, $04, $11        ;; 0d:46e7 ........
    db   $00, $f8, $1a, $f0, $3c, $b0, $6a, $04        ;; 0d:46ef ........
    db   $01, $b0, $6a, $05, $01, $b0, $6a, $04        ;; 0d:46f7 ........
    db   $00, $b0, $6a, $05, $00, $f9, $10, $fe        ;; 0d:46ff ........
    db   $10, $f0, $3c, $b0, $0f, $04, $00, $b0        ;; 0d:4707 ........
    db   $0f, $05, $00, $b0, $1f, $04, $01, $b0        ;; 0d:470f ........
    db   $1f, $05, $01, $f9, $10, $00                  ;; 0d:4717 ......

script_00e7:
    db  $00 ;;RET

script_00e8:
    db  $08 ;;IF ? JR
    db   $08, $00, $16                                 ;; 0d:471f ...
    db  $f9 ;;UNK_SFX_F9
    db   $10                                           ;; 0d:4723 .
    db  $b0 ;;UNK_b0
    db   $1f, $04, $00, $b0, $1f, $05, $00, $b0        ;; 0d:4725 ........
    db   $6a, $04, $01, $b0, $6a, $05, $01, $f8        ;; 0d:472d ........
    db   $0e, $01, $05                                 ;; 0d:4735 ...
    db  $f0 ;;UNK_F0
    db   $3c                                           ;; 0d:4739 .
    db  $02 ;;CALL
    db   $61, $29                                      ;; 0d:473b ..
    db  $00 ;;RET

script_00e9:
    db  $08 ;;IF ? JR
    db   $28, $00, $08                                 ;; 0d:473f ???
    db  $fc ;;UNK_fc
    db   $3e, $fd, $01, $fd, $02, $01, $04             ;; 0d:4743 ???????
    db  $fc ;;UNK_fc
    db   $3b, $fd, $01, $00                            ;; 0d:474b ????

script_00ea:
    db  $00 ;;RET

script_00eb:
    db  $00 ;;RET

script_00ec:
    db  $fc ;;UNK_fc
    db   $3c, $fd, $01, $00                            ;; 0d:4752 ????

script_00ed:
    db  $00 ;;RET

script_00ee:
    db  $00 ;;RET

script_00ef:
    db  $08 ;;IF ? JR
    db   $2d, $00, $06                                 ;; 0d:4759 ...
    db  $02 ;;CALL
    db   $77, $4e                                      ;; 0d:475d ??
    db  $02 ;;CALL
    db   $77, $14                                      ;; 0d:4760 ??
    db  $08 ;;IF ? JR
    db   $2c, $9f, $00, $09                            ;; 0d:4763 ....
    db  $02 ;;CALL
    db   $64, $da                                      ;; 0d:4768 ??
    db  $02 ;;CALL
    db   $66, $80                                      ;; 0d:476b ??
    db  $02 ;;CALL
    db   $67, $54                                      ;; 0d:476e ??
    db  $08 ;;IF ? JR
    db   $89, $00, $09                                 ;; 0d:4771 ..?
    db  $02 ;;CALL
    db   $62, $b2                                      ;; 0d:4775 ..
    db  $02 ;;CALL
    db   $63, $de                                      ;; 0d:4778 ..
    db  $02 ;;CALL
    db   $64, $3a                                      ;; 0d:477b ..
    db  $00 ;;RET

script_00f0:
    db  $00 ;;RET

script_00f1:
    db  $00 ;;RET

script_00f2:
    db  $e7 ;;UNK_e7
    db   $fc, $16, $fd, $02, $fd, $02, $00             ;; 0d:4781 ???????

script_00f3:
    db  $00 ;;RET

script_00f4:
    db  $08 ;;IF ? JR
    db   $bc, $00, $07                                 ;; 0d:478a ???
    db  $fc ;;UNK_fc
    db   $59, $fd, $00, $c9, $04, $63                  ;; 0d:478e ??????
    db  $e6 ;;UNK_e6
    db   $00                                           ;; 0d:4795 ?

script_00f5:
    db  $08 ;;IF ? JR
    db   $8b, $00, $06                                 ;; 0d:4797 ..?
    db  $fc ;;UNK_fc
    db   $2a, $fd, $00, $fd, $02                       ;; 0d:479b .....
    db  $08 ;;IF ? JR
    db   $8a, $00, $19                                 ;; 0d:47a1 ..?
    db  $f8 ;;UNK_MUSIC_F8
    db   $00                                           ;; 0d:47a5 .
    db  $fd ;;UNK_fd
    db   $01, $04, $10, $97, $be, $c5, $c9, $f3        ;; 0d:47a7 ........
    db   $1a, $97, $ff, $6d, $c5, $ff, $c9, $f3        ;; 0d:47af ........
    db   $f3, $12, $11, $00, $f8, $1a                  ;; 0d:47b7 ......
    db  $08 ;;IF ? JR
    db   $0b, $00, $03                                 ;; 0d:47be ...
    db  $02 ;;CALL
    db   $03, $ec                                      ;; 0d:47c2 ??
    db  $00 ;;RET

script_00f6:
    db  $08 ;;IF ? JR
    db   $8b, $00, $02                                 ;; 0d:47c6 ...
    db  $f8 ;;UNK_MUSIC_F8
    db   $14                                           ;; 0d:47ca ?
    db  $00 ;;RET

script_00f7:
    db  $08 ;;IF ? JR
    db   $8a, $00, $04                                 ;; 0d:47cd ..?
    db  $f8 ;;UNK_MUSIC_F8
    db   $00                                           ;; 0d:47d1 .
    db  $da ;;UNK_DA
    db   $0a                                           ;; 0d:47d3 .
    db  $00 ;;RET

script_00f8:
    db  $fc ;;UNK_fc
    db   $2b, $fd, $00, $00                            ;; 0d:47d6 ....

script_00f9:
    db  $00 ;;RET

script_00fa:
    db  $00 ;;RET

script_00fb:
    db  $fc ;;UNK_fc
    db   $2b, $fd, $01, $00                            ;; 0d:47dd ....

script_00fc:
    db  $00 ;;RET

script_00fd:
    db  $00 ;;RET

script_00fe:
    db  $fc ;;UNK_fc
    db   $31, $fd, $01, $fd, $02, $00                  ;; 0d:47e4 ??????

script_00ff:
    db  $00 ;;RET

script_0100:
    db  $00 ;;RET

script_0101:
    db  $fc ;;UNK_fc
    db   $1a, $fd, $00, $fd, $00, $00                  ;; 0d:47ed ??????

script_0102:
    db  $00 ;;RET

script_0103:
    db  $08 ;;IF ? JR
    db   $be, $00, $07                                 ;; 0d:47f5 ???
    db  $fc ;;UNK_fc
    db   $59, $fd, $00, $c9, $04, $61                  ;; 0d:47f9 ??????
    db  $00 ;;RET

script_0104:
    db  $00 ;;RET

script_0105:
    db  $00 ;;RET

script_0106:
    db  $08 ;;IF ? JR
    db   $90, $00, $06                                 ;; 0d:4803 ???
    db  $fc ;;UNK_fc
    db   $33, $fd, $00, $fd, $01                       ;; 0d:4807 ?????
    db  $08 ;;IF ? JR
    db   $10, $91, $00, $0a                            ;; 0d:480d ????
    db  $fc ;;UNK_fc
    db   $00, $fd, $00, $fd, $01, $bf, $f9, $14        ;; 0d:4812 ????????
    db   $bf                                           ;; 0d:481a ?
    db  $08 ;;IF ? JR
    db   $11, $00, $06                                 ;; 0d:481c ???
    db  $fc ;;UNK_fc
    db   $33, $fd, $00, $fd, $01                       ;; 0d:4820 ?????
    db  $00 ;;RET

script_0107:
    db  $00 ;;RET

script_0108:
    db  $00 ;;RET

script_0109:
    db  $08 ;;IF ? JR
    db   $90, $00, $04                                 ;; 0d:4829 ???
    db  $fc ;;UNK_fc
    db   $34, $fd, $00                                 ;; 0d:482d ???
    db  $08 ;;IF ? JR
    db   $10, $91, $00, $0a                            ;; 0d:4831 ????
    db  $fc ;;UNK_fc
    db   $00, $fd, $00, $fd, $01, $f9, $14, $bf        ;; 0d:4836 ????????
    db   $bf                                           ;; 0d:483e ?
    db  $08 ;;IF ? JR
    db   $11, $00, $04                                 ;; 0d:4840 ???
    db  $fc ;;UNK_fc
    db   $34, $fd, $00                                 ;; 0d:4844 ???
    db  $00 ;;RET

script_010a:
    db  $00 ;;RET

script_010b:
    db  $00 ;;RET

script_010c:
    db  $08 ;;IF ? JR
    db   $10, $91, $00, $04                            ;; 0d:484b ????
    db  $fc ;;UNK_fc
    db   $24, $fd, $02                                 ;; 0d:4850 ???
    db  $00 ;;RET

script_010d:
    db  $00 ;;RET

script_010e:
    db  $00 ;;RET

script_010f:
    db  $fc ;;UNK_fc
    db   $37, $08, $10, $9f, $00, $02, $fd, $02        ;; 0d:4857 ????????
    db   $08, $90, $00, $be, $94, $99, $09, $0e        ;; 0d:485f ????????
    db   $fd, $02, $84, $8a, $09, $0e, $80, $80        ;; 0d:4867 ????????
    db   $87, $03, $03, $02, $80, $00, $86, $17        ;; 0d:486f ????????
    db   $10, $15, $03, $06, $02, $10, $00, $04        ;; 0d:4877 ????????
    db   $10, $bc, $dc, $d5, $92, $f5, $5b, $d4        ;; 0d:487f ????????
    db   $8c, $bc, $dc, $d5, $92, $f0, $1a, $ff        ;; 0d:4887 ????????
    db   $bb, $e2, $da, $2e, $25, $33, $df, $25        ;; 0d:488f ????????
    db   $e0, $d8, $1a, $2d, $d5, $21, $28, $24        ;; 0d:4897 ????????
    db   $2c, $12, $1b, $ff, $35, $ff, $c8, $db        ;; 0d:489f ????????
    db   $80, $ec, $54, $f3, $1a, $49, $28, $e6        ;; 0d:48a7 ????????
    db   $67, $20, $31, $22, $2a, $1a, $3d, $ec        ;; 0d:48af ????????
    db   $e0, $d5, $e2, $65, $50, $51, $29, $d4        ;; 0d:48b7 ????????
    db   $f0, $12, $1b, $9a, $3f, $e3, $52, $3c        ;; 0d:48bf ????????
    db   $82, $8e, $f0, $1a, $ff, $d2, $21, $ee        ;; 0d:48c7 ????????
    db   $3a, $3d, $d8, $20, $ea, $3b, $e7, $1a        ;; 0d:48cf ????????
    db   $59, $21, $42, $41, $28, $6b, $61, $12        ;; 0d:48d7 ????????
    db   $11, $00, $17, $03, $03, $02, $11, $00        ;; 0d:48df ????????
    db   $03, $04, $02, $90, $00, $f0, $14, $90        ;; 0d:48e7 ????????
    db   $f0, $0a, $90, $f0, $0a, $90, $87, $16        ;; 0d:48ef ????????
    db   $80, $10, $80, $10, $84, $14, $03, $06        ;; 0d:48f7 ????????
    db   $03, $80, $10, $00, $f8, $00, $f0, $3c        ;; 0d:48ff ????????
    db   $bf, $f9, $14, $bf, $f0, $14, $f9, $25        ;; 0d:4907 ????????
    db   $03, $05, $02, $bf, $00, $bd, $f0, $28        ;; 0d:490f ????????
    db   $f8, $03, $f0, $c8, $fd, $01, $bc, $02        ;; 0d:4917 ????????
    db   $68, $e9, $00                                 ;; 0d:491f ???

script_0110:
    db  $00 ;;RET

script_0111:
    db  $00 ;;RET

script_0112:
    db  $fc ;;UNK_fc
    db   $2d, $fd, $00, $fd, $01, $00                  ;; 0d:4925 ??????

script_0113:
    db  $00 ;;RET

script_0114:
    db  $00 ;;RET

script_0115:
    db  $fc ;;UNK_fc
    db   $2e, $fd, $00, $00                            ;; 0d:492e ????

script_0116:
    db  $00 ;;RET

script_0117:
    db  $00 ;;RET

script_0118:
    db  $fc ;;UNK_fc
    db   $2f, $fd, $00, $fd, $01, $00                  ;; 0d:4935 ??????

script_0119:
    db  $00 ;;RET

script_011a:
    db  $00 ;;RET

script_011b:
    db  $08 ;;IF ? JR
    db   $26, $00, $04                                 ;; 0d:493e ???
    db  $fc ;;UNK_fc
    db   $30, $fd, $00                                 ;; 0d:4942 ???
    db  $00 ;;RET

script_011c:
    db  $00 ;;RET

script_011d:
    db  $00 ;;RET

script_011e:
    db  $08 ;;IF ? JR
    db   $98, $00, $0f                                 ;; 0d:4949 ???
    db  $f8 ;;UNK_MUSIC_F8
    db   $0f                                           ;; 0d:494d ?
    db  $fc ;;UNK_fc
    db   $6c, $03, $05, $04, $f9, $14, $bf, $00        ;; 0d:494f ????????
    db   $fd, $00, $01, $32                            ;; 0d:4957 ????
    db  $03 ;;UNK_03
    db   $03, $04, $f9, $14, $bf, $00, $04, $10        ;; 0d:495c ????????
    db   $c3, $90, $dc, $41, $f5, $cc, $d8, $20        ;; 0d:4964 ????????
    db   $23, $d8, $1a, $22, $e5, $e8, $20, $e3        ;; 0d:496c ????????
    db   $46, $27, $3e, $d9, $1a, $51, $29, $58        ;; 0d:4974 ????????
    db   $95, $ea, $f3, $12, $11, $00, $03, $05        ;; 0d:497c ????????
    db   $04, $f9, $14, $bf, $00, $fe, $0e, $f8        ;; 0d:4984 ????????
    db   $13, $00                                      ;; 0d:498c ??

script_011f:
    db  $00 ;;RET

script_0120:
    db  $08 ;;IF ? JR
    db   $98, $00, $20                                 ;; 0d:4990 ???
    db  $f8 ;;UNK_MUSIC_F8
    db   $00                                           ;; 0d:4994 ?
    db  $f9 ;;UNK_SFX_F9
    db   $22                                           ;; 0d:4996 ?
    db  $da ;;UNK_DA
    db   $18                                           ;; 0d:4998 ?
    db  $f0 ;;UNK_F0
    db   $3c                                           ;; 0d:499a ?
    db  $04 ;;MSG
    db   $10, $ff, $bd, $d8, $d9, $32, $3f, $25        ;; 0d:499c ????????
    db   $c3, $90, $dc, $41, $f0, $12, $11, $00        ;; 0d:49a4 ????????
    db  $f0 ;;UNK_F0
    db   $1e                                           ;; 0d:49ad ?
    db  $02 ;;CALL
    db   $09, $48                                      ;; 0d:49af ??
    db  $01 ;;JR
    db   $b2                                           ;; 0d:49b2 ?
    db  $f8 ;;UNK_MUSIC_F8
    db   $00                                           ;; 0d:49b4 ?
    db  $f9 ;;UNK_SFX_F9
    db   $22                                           ;; 0d:49b6 ?
    db  $f0 ;;UNK_F0
    db   $14                                           ;; 0d:49b8 ?
    db  $04 ;;MSG
    db   $10, $c3, $90, $dc, $41, $f5, $c0, $cb        ;; 0d:49ba ????????
    db   $cb, $cb, $cb, $00                            ;; 0d:49c2 ????
    db  $f0 ;;UNK_F0
    db   $1e                                           ;; 0d:49c7 ?
    db  $04 ;;MSG
    db   $ff, $35, $12, $11, $00                       ;; 0d:49c9 ?????
    db  $f0 ;;UNK_F0
    db   $3c                                           ;; 0d:49cf ?
    db  $bd ;;UNK_bd
    db   $f3, $0f, $50, $08, $0a, $fc, $32, $fd        ;; 0d:49d1 ????????
    db   $01, $8a, $08, $0a, $86, $bc, $f0, $64        ;; 0d:49d9 ????????
    db   $04, $10, $15, $f5, $35, $ff, $14, $f0        ;; 0d:49e1 ????????
    db   $1a, $14, $f5, $ba, $38, $59, $21, $1a        ;; 0d:49e9 ????????
    db   $3e, $de, $d4, $ec, $80, $15, $f4, $12        ;; 0d:49f1 ????????
    db   $1b, $14, $f5, $5b, $d7, $d8, $d9, $32        ;; 0d:49f9 ????????
    db   $3f, $d7, $1a, $ff, $c3, $90, $dc, $41        ;; 0d:4a01 ????????
    db   $f0, $1a, $49, $e7, $6c, $2d, $3a, $3e        ;; 0d:4a09 ????????
    db   $4d, $e5, $f0, $12, $11, $00, $f0, $3c        ;; 0d:4a11 ????????
    db   $04, $10, $c3, $90, $dc, $41, $f5, $35        ;; 0d:4a19 ????????
    db   $ff, $c7, $e2, $f3, $f3, $1a, $ff, $35        ;; 0d:4a21 ????????
    db   $49, $28, $31, $ff, $95, $e7, $f3, $12        ;; 0d:4a29 ????????
    db   $11, $00, $84, $14, $03, $05, $04, $f9        ;; 0d:4a31 ????????
    db   $14, $bf, $00, $f0, $28, $04, $10, $c3        ;; 0d:4a39 ????????
    db   $90, $dc, $41, $f5, $14, $f3, $1a, $ff        ;; 0d:4a41 ????????
    db   $d2, $21, $43, $83, $65, $e1, $d8, $4d        ;; 0d:4a49 ????????
    db   $e5, $1a, $93, $32, $4d, $40, $27, $20        ;; 0d:4a51 ????????
    db   $56, $dc, $4d, $f3, $12, $11, $00, $9c        ;; 0d:4a59 ????????
    db   $01, $da, $51, $ec                            ;; 0d:4a61 ????
    db  $00 ;;RET

script_0121:
    db  $08 ;;IF ? JR
    db   $90, $00, $04                                 ;; 0d:4a67 ???
    db  $fc ;;UNK_fc
    db   $37, $fd, $00                                 ;; 0d:4a6b ???
    db  $08 ;;IF ? JR
    db   $10, $91, $00, $0a                            ;; 0d:4a6f ????
    db  $fc ;;UNK_fc
    db   $00, $fd, $00, $fd, $01, $f9, $14, $bf        ;; 0d:4a74 ????????
    db   $bf                                           ;; 0d:4a7c ?
    db  $08 ;;IF ? JR
    db   $2f, $00, $04                                 ;; 0d:4a7e ???
    db  $fc ;;UNK_fc
    db   $34, $fd, $01                                 ;; 0d:4a82 ???
    db  $00 ;;RET

script_0122:
    db  $00 ;;RET

script_0123:
    db  $00 ;;RET

script_0124:
    db  $08 ;;IF ? JR
    db   $a6, $00, $04                                 ;; 0d:4a89 ..?
    db  $fc ;;UNK_fc
    db   $2c, $fd, $02                                 ;; 0d:4a8d ...
    db  $00 ;;RET

script_0125:
    db  $00 ;;RET

script_0126:
    db  $00 ;;RET

script_0127:
    db  $fc ;;UNK_fc
    db   $59, $08, $cd, $00, $05, $fd, $01, $c9        ;; 0d:4a94 ....?...
    db   $04, $43, $00                                 ;; 0d:4a9c ...

script_0128:
    db  $00 ;;RET

script_0129:
    db  $00 ;;RET

script_012a:
    db  $fc ;;UNK_fc
    db   $04, $fd, $02, $fd, $00, $00                  ;; 0d:4aa2 ??????

script_012b:
    db  $00 ;;RET

script_012c:
    db  $00 ;;RET

script_012d:
    db  $fc ;;UNK_fc
    db   $3f, $fd, $01, $00                            ;; 0d:4aab ????

script_012e:
    db  $00 ;;RET

script_012f:
    db  $00 ;;RET

script_0130:
    db  $08 ;;IF ? JR
    db   $16, $00, $04                                 ;; 0d:4ab2 ???
    db  $fc ;;UNK_fc
    db   $60, $fd, $00                                 ;; 0d:4ab6 ???
    db  $00 ;;RET

script_0131:
    db  $00 ;;RET

script_0132:
    db  $00 ;;RET

script_0133:
    db  $fc ;;UNK_fc
    db   $40, $fd, $00, $00                            ;; 0d:4abd ????

script_0134:
    db  $00 ;;RET

script_0135:
    db  $00 ;;RET

script_0136:
    db  $fc ;;UNK_fc
    db   $40, $fd, $01, $00                            ;; 0d:4ac4 ????

script_0137:
    db  $00 ;;RET

script_0138:
    db  $00 ;;RET

script_0139:
    db  $fc ;;UNK_fc
    db   $05, $fd, $02, $fd, $00, $00                  ;; 0d:4acb ??????

script_013a:
    db  $00 ;;RET

script_013b:
    db  $00 ;;RET

script_013c:
    db  $fc ;;UNK_fc
    db   $40, $fd, $02, $00                            ;; 0d:4ad4 ????

script_013d:
    db  $00 ;;RET

script_013e:
    db  $00 ;;RET

script_013f:
    db  $fc ;;UNK_fc
    db   $58, $fd, $00, $fd, $01, $08, $16, $d4        ;; 0d:4adb ????????
    db   $00, $02, $fd, $02, $00                       ;; 0d:4ae3 ?????

script_0140:
    db  $08 ;;IF ? JR
    db   $16, $54, $00, $27                            ;; 0d:4ae9 ????
    db  $04 ;;MSG
    db   $10, $bb, $e2, $da, $2e, $d7, $f5, $c2        ;; 0d:4aee ????????
    db   $ee, $3a, $3d, $96, $ec, $1a, $2d, $2b        ;; 0d:4af6 ????????
    db   $60, $e8, $2e, $25, $15, $f0, $1a, $14        ;; 0d:4afe ????????
    db   $f5, $35, $ff, $c8, $de, $d4, $ec, $f0        ;; 0d:4b06 ????????
    db   $12, $11, $00                                 ;; 0d:4b0e ???
    db  $98 ;;UNK_98
    db   $db, $54                                      ;; 0d:4b12 ??
    db  $00 ;;RET

script_0141:
    db  $00 ;;RET

script_0142:
    db  $fc ;;UNK_fc
    db   $38, $fd, $00, $fd, $01, $00                  ;; 0d:4b17 ??????

script_0143:
    db  $00 ;;RET

script_0144:
    db  $00 ;;RET

script_0145:
    db  $fc ;;UNK_fc
    db   $39, $fd, $00, $fd, $01, $00                  ;; 0d:4b20 ??????

script_0146:
    db  $00 ;;RET

script_0147:
    db  $00 ;;RET

script_0148:
    db  $fc ;;UNK_fc
    db   $3b, $fd, $00, $00                            ;; 0d:4b29 ????

script_0149:
    db  $00 ;;RET

script_014a:
    db  $00 ;;RET

script_014b:
    db  $fc ;;UNK_fc
    db   $3c, $fd, $00, $00                            ;; 0d:4b30 ????

script_014c:
    db  $00 ;;RET

script_014d:
    db  $00 ;;RET

script_014e:
    db  $fc ;;UNK_fc
    db   $3b, $fd, $02, $00                            ;; 0d:4b37 ????

script_014f:
    db  $00 ;;RET

script_0150:
    db  $00 ;;RET

script_0151:
    db  $fc ;;UNK_fc
    db   $30, $fd, $01, $00                            ;; 0d:4b3e ????

script_0152:
    db  $00 ;;RET

script_0153:
    db  $00 ;;RET

script_0154:
    db  $fc ;;UNK_fc
    db   $41, $08, $a7, $00, $04, $fd, $00, $fd        ;; 0d:4b45 ????????
    db   $01, $08, $27, $9d, $00, $02, $fd, $01        ;; 0d:4b4d ????????
    db   $08, $1d, $00, $04, $b0, $02, $08, $06        ;; 0d:4b55 ????????
    db   $08, $1d, $d6, $a8, $00, $2c, $fd, $02        ;; 0d:4b5d ????????
    db   $9c, $06, $80, $80, $80, $17, $04, $10        ;; 0d:4b65 ????????
    db   $8d, $45, $27, $f5, $c9, $2a, $ea, $35        ;; 0d:4b6d ????????
    db   $1a, $49, $43, $4b, $40, $66, $e3, $5d        ;; 0d:4b75 ????????
    db   $e6, $e6, $1a, $2d, $3a, $6f, $57, $e0        ;; 0d:4b7d ????????
    db   $ec, $6b, $df, $d9, $f0, $12, $11, $00        ;; 0d:4b85 ????????
    db   $da, $56, $00                                 ;; 0d:4b8d ???

script_0155:
    db  $00 ;;RET

script_0156:
    db  $00 ;;RET

script_0157:
    db  $08 ;;IF ? JR
    db   $1f, $a0, $00, $04                            ;; 0d:4b93 ????
    db  $fc ;;UNK_fc
    db   $4c, $fd, $01                                 ;; 0d:4b98 ???
    db  $00 ;;RET

script_0158:
    db  $00 ;;RET

script_0159:
    db  $00 ;;RET

script_015a:
    db  $fc ;;UNK_fc
    db   $48, $fd, $00, $fd, $01, $00                  ;; 0d:4b9f ??????

script_015b:
    db  $00 ;;RET

script_015c:
    db  $00 ;;RET

script_015d:
    db  $fc ;;UNK_fc
    db   $49, $fd, $00, $fd, $01, $00                  ;; 0d:4ba8 ??????

script_015e:
    db  $00 ;;RET

script_015f:
    db  $00 ;;RET

script_0160:
    db  $fc ;;UNK_fc
    db   $43, $fd, $00, $00                            ;; 0d:4bb1 ????

script_0161:
    db  $00 ;;RET

script_0162:
    db  $00 ;;RET

script_0163:
    db  $fc ;;UNK_fc
    db   $43, $fd, $01, $00                            ;; 0d:4bb8 ????

script_0164:
    db  $00 ;;RET

script_0165:
    db  $00 ;;RET

script_0166:
    db  $fc ;;UNK_fc
    db   $43, $fd, $02, $00                            ;; 0d:4bbf ????

script_0167:
    db  $00 ;;RET

script_0168:
    db  $00 ;;RET

script_0169:
    db  $fc ;;UNK_fc
    db   $44, $fd, $00, $00                            ;; 0d:4bc6 ????

script_016a:
    db  $00 ;;RET

script_016b:
    db  $00 ;;RET

script_016c:
    db  $fc ;;UNK_fc
    db   $44, $fd, $02, $00                            ;; 0d:4bcd ????

script_016d:
    db  $00 ;;RET

script_016e:
    db  $00 ;;RET

script_016f:
    db  $fc ;;UNK_fc
    db   $44, $fd, $01, $00                            ;; 0d:4bd4 ????

script_0170:
    db  $00 ;;RET

script_0171:
    db  $00 ;;RET

script_0172:
    db  $fc ;;UNK_fc
    db   $45, $fd, $00, $00                            ;; 0d:4bdb ????

script_0173:
    db  $00 ;;RET

script_0174:
    db  $00 ;;RET

script_0175:
    db  $fc ;;UNK_fc
    db   $45, $fd, $01, $00                            ;; 0d:4be2 ????

script_0176:
    db  $00 ;;RET

script_0177:
    db  $00 ;;RET

script_0178:
    db  $08 ;;IF ? JR
    db   $9e, $00, $04                                 ;; 0d:4be9 ???
    db  $fc ;;UNK_fc
    db   $28, $fd, $02                                 ;; 0d:4bed ???
    db  $00 ;;RET

script_0179:
    db  $00 ;;RET

script_017a:
    db  $00 ;;RET

script_017b:
    db  $fc ;;UNK_fc
    db   $46, $08, $ad, $00, $04, $fd, $01, $01        ;; 0d:4bf4 ????????
    db   $02, $fd, $00, $00                            ;; 0d:4bfc ????

script_017c:
    db  $00 ;;RET

script_017d:
    db  $00 ;;RET

script_017e:
    db  $fc ;;UNK_fc
    db   $46, $fd, $02, $00                            ;; 0d:4c03 ????

script_017f:
    db  $00 ;;RET

script_0180:
    db  $00 ;;RET

script_0181:
    db  $fc ;;UNK_fc
    db   $47, $08, $ad, $00, $04, $fd, $01, $01        ;; 0d:4c0a ????????
    db   $02, $fd, $00, $00                            ;; 0d:4c12 ????

script_0182:
    db  $00 ;;RET

script_0183:
    db  $00 ;;RET

script_0184:
    db  $fc ;;UNK_fc
    db   $37, $fd, $02, $00                            ;; 0d:4c19 ????

script_0185:
    db  $00 ;;RET

script_0186:
    db  $00 ;;RET

script_0187:
    db  $fc ;;UNK_fc
    db   $06, $fd, $02, $fd, $01, $00                  ;; 0d:4c20 ??????

script_0188:
    db  $00 ;;RET

script_0189:
    db  $00 ;;RET

script_018a:
    db  $08 ;;IF ? JR
    db   $90, $00, $04                                 ;; 0d:4c29 ???
    db  $fc ;;UNK_fc
    db   $35, $fd, $00                                 ;; 0d:4c2d ???
    db  $00 ;;RET

script_018b:
    db  $00 ;;RET

script_018c:
    db  $00 ;;RET

script_018d:
    db  $08 ;;IF ? JR
    db   $8e, $00, $04                                 ;; 0d:4c34 ???
    db  $fc ;;UNK_fc
    db   $32, $fd, $00                                 ;; 0d:4c38 ???
    db  $00 ;;RET

script_018e:
    db  $00 ;;RET

script_018f:
    db  $00 ;;RET

script_0190:
    db  $08 ;;IF ? JR
    db   $c8, $d2, $00, $04                            ;; 0d:4c3f ????
    db  $fc ;;UNK_fc
    db   $4d, $fd, $00                                 ;; 0d:4c44 ???
    db  $00 ;;RET

script_0191:
    db  $00 ;;RET

script_0192:
    db  $00 ;;RET

script_0193:
    db  $08 ;;IF ? JR
    db   $1f, $00, $02                                 ;; 0d:4c4b ???
    db  $01 ;;JR
    db   $08                                           ;; 0d:4c4f ?
    db  $08 ;;IF ? JR
    db   $99, $00, $04                                 ;; 0d:4c51 ???
    db  $fc ;;UNK_fc
    db   $50, $fd, $00                                 ;; 0d:4c55 ???
    db  $00 ;;RET

script_0194:
    db  $08 ;;IF ? JR
    db   $d8, $00, $02                                 ;; 0d:4c5a ???
    db  $f8 ;;UNK_MUSIC_F8
    db   $14                                           ;; 0d:4c5e ?
    db  $00 ;;RET

script_0195:
    db  $00 ;;RET

script_0196:
    db  $08 ;;IF ? JR
    db   $14, $a6, $00, $04                            ;; 0d:4c62 ????
    db  $fc ;;UNK_fc
    db   $30, $fd, $00                                 ;; 0d:4c67 ???
    db  $00 ;;RET

script_0197:
    db  $00 ;;RET

script_0198:
    db  $00 ;;RET

script_0199:
    db  $fc ;;UNK_fc
    db   $07, $fd, $02, $fd, $00, $00                  ;; 0d:4c6e ??????

script_019a:
    db  $00 ;;RET

script_019b:
    db  $00 ;;RET

script_019c:
    db  $00 ;;RET

script_019d:
    db  $08 ;;IF ? JR
    db   $98, $00, $ae                                 ;; 0d:4c78 ???
    db  $f8 ;;UNK_MUSIC_F8
    db   $00                                           ;; 0d:4c7c ?
    db  $fc ;;UNK_fc
    db   $26, $fd, $00, $fd, $01, $f0, $3c, $f8        ;; 0d:4c7e ????????
    db   $0a, $04, $10, $14, $f5, $15, $f3, $1a        ;; 0d:4c86 ????????
    db   $15, $f5, $35, $00, $f0, $1e, $04, $35        ;; 0d:4c8e ????????
    db   $f1, $00, $f0, $32, $04, $1b, $c3, $90        ;; 0d:4c96 ????????
    db   $dc, $41, $f5, $d2, $21, $ee, $38, $1a        ;; 0d:4c9e ????????
    db   $93, $30, $d8, $80, $14, $f1, $12, $1b        ;; 0d:4ca6 ????????
    db   $49, $2d, $df, $38, $d4, $d7, $57, $da        ;; 0d:4cae ????????
    db   $e2, $e7, $1a, $22, $2a, $60, $38, $30        ;; 0d:4cb6 ????????
    db   $54, $e7, $1a, $ff, $e3, $46, $27, $3e        ;; 0d:4cbe ????????
    db   $53, $62, $e1, $d4, $f3, $12, $1b, $68        ;; 0d:4cc6 ????????
    db   $2a, $22, $dc, $e0, $20, $3b, $26, $d6        ;; 0d:4cce ????????
    db   $64, $d8, $1a, $52, $3c, $22, $2a, $ff        ;; 0d:4cd6 ????????
    db   $be, $e0, $e3, $8b, $d8, $1a, $ff, $c7        ;; 0d:4cde ????????
    db   $d8, $e2, $f2, $cf, $29, $d7, $e2, $5d        ;; 0d:4ce6 ????????
    db   $f3, $12, $1b, $ff, $c7, $46, $22, $3b        ;; 0d:4cee ????????
    db   $28, $5b, $3b, $4d, $1a, $22, $2a, $42        ;; 0d:4cf6 ????????
    db   $8f, $91, $57, $e3, $46, $27, $f1, $12        ;; 0d:4cfe ????????
    db   $1b, $49, $ff, $d7, $36, $95, $28, $e1        ;; 0d:4d06 ????????
    db   $d8, $39, $59, $21, $1a, $2d, $e1, $ec        ;; 0d:4d0e ????????
    db   $e0, $3c, $d8, $80, $14, $f3, $12, $11        ;; 0d:4d16 ????????
    db   $00, $f4, $01, $67, $09, $0a, $02, $09        ;; 0d:4d1e ????????
    db   $48, $01, $13                                 ;; 0d:4d26 ???
    db  $b0 ;;UNK_b0
    db   $11, $04, $07, $f9, $10, $f0, $0a, $03        ;; 0d:4d2a ????????
    db   $0a, $04, $f9, $14, $bf, $00, $fe, $11        ;; 0d:4d32 ????????
    db   $f8, $10, $00                                 ;; 0d:4d3a ???

script_019e:
    db  $00 ;;RET

script_019f:
    db  $02 ;;CALL
    db   $6f, $ba                                      ;; 0d:4d3f ??
    db  $02 ;;CALL
    db   $71, $ec                                      ;; 0d:4d42 ??
    db  $02 ;;CALL
    db   $74, $0c                                      ;; 0d:4d45 ??
    db  $cc ;;UNK_cc
    db   $00                                           ;; 0d:4d48 ?

script_01a0:
    db  $08 ;;IF ? JR
    db   $a3, $00, $08                                 ;; 0d:4d4a ???
    db  $f9 ;;UNK_SFX_F9
    db   $14                                           ;; 0d:4d4e ?
    db  $f8 ;;UNK_MUSIC_F8
    db   $0f                                           ;; 0d:4d50 ?
    db  $fe ;;UNK_fe
    db   $01, $01, $01                                 ;; 0d:4d52 ???
    db  $ee ;;UNK_ee
    db   $00                                           ;; 0d:4d56 ?

script_01a1:
    db  $f8 ;;UNK_MUSIC_F8
    db   $07                                           ;; 0d:4d58 ?
    db  $00 ;;RET

script_01a2:
    db  $f8 ;;UNK_MUSIC_F8
    db   $00                                           ;; 0d:4d5b ?
    db  $fc ;;UNK_fc
    db   $59, $b0, $25, $03, $04, $b0, $25, $04        ;; 0d:4d5d ????????
    db   $04, $b0, $25, $05, $04, $b0, $25, $06        ;; 0d:4d65 ????????
    db   $04, $da, $23, $08, $c9, $00, $05, $fd        ;; 0d:4d6d ????????
    db   $01, $c9, $04, $50, $08, $c8, $00, $05        ;; 0d:4d75 ????????
    db   $fd, $02, $ca, $04, $51, $00                  ;; 0d:4d7d ??????

script_01a3:
    db  $08 ;;IF ? JR
    db   $72, $73, $f4, $75, $f6, $77, $00, $13        ;; 0d:4d84 ????????
    db  $08 ;;IF ? JR
    db   $b4, $00, $0b                                 ;; 0d:4d8d ???
    db  $f9 ;;UNK_SFX_F9
    db   $14                                           ;; 0d:4d91 ?
    db  $bf ;;UNK_bf
    db   $f0, $1e, $fe, $0f, $f8, $0f, $01, $04        ;; 0d:4d93 ????????
    db  $b0 ;;UNK_b0
    db   $59, $08, $01                                 ;; 0d:4d9c ???
    db  $08 ;;IF ? JR
    db   $72, $73, $f4, $75, $76, $f7, $00, $13        ;; 0d:4da0 ????????
    db  $08 ;;IF ? JR
    db   $97, $00, $0b                                 ;; 0d:4da9 ???
    db  $f9 ;;UNK_SFX_F9
    db   $14                                           ;; 0d:4dad ?
    db  $bf ;;UNK_bf
    db   $f0, $1e, $fe, $14, $f8, $0f, $01, $04        ;; 0d:4daf ????????
    db  $b0 ;;UNK_b0
    db   $59, $08, $01                                 ;; 0d:4db8 ???
    db  $08 ;;IF ? JR
    db   $72, $73, $f4, $75, $76, $77, $00, $13        ;; 0d:4dbc ????????
    db  $08 ;;IF ? JR
    db   $b2, $00, $0b                                 ;; 0d:4dc5 ???
    db  $f9 ;;UNK_SFX_F9
    db   $14                                           ;; 0d:4dc9 ?
    db  $bf ;;UNK_bf
    db   $f0, $1e, $fe, $0d, $f8, $0f, $01, $04        ;; 0d:4dcb ????????
    db  $b0 ;;UNK_b0
    db   $59, $08, $01                                 ;; 0d:4dd4 ???
    db  $00 ;;RET

script_01a4:
    db  $f8 ;;UNK_MUSIC_F8
    db   $16                                           ;; 0d:4dd9 ?
    db  $00 ;;RET

script_01a5:
    db  $08 ;;IF ? JR
    db   $72, $73, $f4, $75, $f6, $77, $00, $23        ;; 0d:4ddc ????????
    db  $f8 ;;UNK_MUSIC_F8
    db   $00                                           ;; 0d:4de5 ?
    db  $f9 ;;UNK_SFX_F9
    db   $22                                           ;; 0d:4de7 ?
    db  $04 ;;MSG
    db   $10, $bd, $d8, $d9, $32, $3f, $d7, $1a        ;; 0d:4de9 ????????
    db   $69, $ff, $bd, $e5, $d4, $da, $47, $ff        ;; 0d:4df1 ????????
    db   $d3, $64, $d5, $dc, $9b, $12, $11, $00        ;; 0d:4df9 ????????
    db  $da ;;UNK_DA
    db   $34                                           ;; 0d:4e02 ?
    db  $b0 ;;UNK_b0
    db   $59, $08, $01                                 ;; 0d:4e04 ???
    db  $08 ;;IF ? JR
    db   $72, $73, $f4, $75, $76, $f7, $00, $21        ;; 0d:4e08 ????????
    db  $f8 ;;UNK_MUSIC_F8
    db   $00                                           ;; 0d:4e11 ?
    db  $f9 ;;UNK_SFX_F9
    db   $22                                           ;; 0d:4e13 ?
    db  $04 ;;MSG
    db   $10, $bd, $d8, $d9, $32, $3f, $d7, $1a        ;; 0d:4e15 ????????
    db   $69, $69, $cb, $39, $ff, $bd, $e5, $d4        ;; 0d:4e1d ????????
    db   $da, $47, $f3, $12, $11, $00                  ;; 0d:4e25 ??????
    db  $da ;;UNK_DA
    db   $17                                           ;; 0d:4e2c ?
    db  $b0 ;;UNK_b0
    db   $59, $08, $01                                 ;; 0d:4e2e ???
    db  $08 ;;IF ? JR
    db   $72, $73, $f4, $75, $76, $77, $00, $1b        ;; 0d:4e32 ????????
    db  $f8 ;;UNK_MUSIC_F8
    db   $00                                           ;; 0d:4e3b ?
    db  $f9 ;;UNK_SFX_F9
    db   $22                                           ;; 0d:4e3d ?
    db  $04 ;;MSG
    db   $10, $bd, $d8, $d9, $32, $3f, $25, $bd        ;; 0d:4e3f ????????
    db   $e5, $d4, $da, $47, $f3, $12, $11, $00        ;; 0d:4e47 ????????
    db  $da ;;UNK_DA
    db   $32                                           ;; 0d:4e50 ?
    db  $b0 ;;UNK_b0
    db   $59, $08, $01                                 ;; 0d:4e52 ???
    db  $f0 ;;UNK_F0
    db   $1e                                           ;; 0d:4e56 ?
    db  $f8 ;;UNK_MUSIC_F8
    db   $16                                           ;; 0d:4e58 ?
    db  $00 ;;RET

script_01a6:
    db  $08 ;;IF ? JR
    db   $a4, $00, $04                                 ;; 0d:4e5b ???
    db  $fc ;;UNK_fc
    db   $5a, $fd, $01                                 ;; 0d:4e5f ???
    db  $08 ;;IF ? JR
    db   $24, $00, $01                                 ;; 0d:4e63 ???
    db  $e4 ;;UNK_e4
    db  $08 ;;IF ? JR
    db   $40, $a5, $00, $31                            ;; 0d:4e68 ????
    db  $b0 ;;UNK_b0
    db   $42, $04, $07, $b0, $43, $05, $07, $08        ;; 0d:4e6d ????????
    db   $0e, $00, $25, $f8, $00, $f0, $32, $04        ;; 0d:4e75 ????????
    db   $10, $8d, $d8, $f5, $85, $30, $6c, $42        ;; 0d:4e7d ????????
    db   $ec, $1a, $ff, $e9, $dc, $d6, $e7, $dc        ;; 0d:4e85 ????????
    db   $e0, $f3, $12, $11, $00, $f9, $14, $bf        ;; 0d:4e8d ????????
    db   $bf, $bf, $f0, $0a, $f8, $0f, $fe, $00        ;; 0d:4e95 ????????
    db  $00 ;;RET

script_01a7:
    db  $f8 ;;UNK_MUSIC_F8
    db   $07                                           ;; 0d:4e9f ?
    db  $00 ;;RET

script_01a8:
    db  $08 ;;IF ? JR
    db   $8e, $00, $12                                 ;; 0d:4ea2 ???
    db  $d5 ;;UNK_d5
    db   $1e, $09, $27, $00, $01, $de, $f9, $10        ;; 0d:4ea6 ????????
    db   $e4, $da, $24, $f0, $3c, $f8, $07, $01        ;; 0d:4eae ????????
    db   $89                                           ;; 0d:4eb6 ?
    db  $f0 ;;UNK_F0
    db   $1e                                           ;; 0d:4eb8 ?
    db  $f8 ;;UNK_MUSIC_F8
    db   $00                                           ;; 0d:4eba ?
    db  $04 ;;MSG
    db   $10, $bd, $d8, $d9, $32, $3f, $25, $cf        ;; 0d:4ebc ????????
    db   $d4, $e0, $e3, $8b, $9b, $12, $1b, $00        ;; 0d:4ec4 ????????
    db  $f9 ;;UNK_SFX_F9
    db   $0f                                           ;; 0d:4ecd ?
    db  $04 ;;MSG
    db   $1b, $cb, $d8, $d6, $d8, $dc, $4d, $25        ;; 0d:4ecf ????????
    db   $23, $20, $62, $da, $dc, $d6, $1a, $bb        ;; 0d:4ed7 ????????
    db   $5e, $de, $3e, $53, $cc, $5d, $d8, $e3        ;; 0d:4edf ????????
    db   $f0, $1a, $8d, $2e, $e1, $39, $9a, $5d        ;; 0d:4ee7 ????????
    db   $e3, $f0, $00                                 ;; 0d:4eef ???
    db  $d6 ;;UNK_d6
    db   $03, $04, $12, $1b, $14, $f5, $ba, $38        ;; 0d:4ef3 ????????
    db   $59, $21, $1a, $2d, $df, $e5, $8f, $91        ;; 0d:4efb ????????
    db   $80, $15, $f4, $1a, $15, $f5, $f1, $ff        ;; 0d:4f03 ????????
    db   $d2, $32, $db, $f0, $12, $11, $00, $f0        ;; 0d:4f0b ????????
    db   $14, $f4, $00, $a9, $0a, $06, $f0, $3c        ;; 0d:4f13 ????????
    db   $04, $10, $15, $f5, $d0, $4e, $d7, $66        ;; 0d:4f1b ????????
    db   $37, $e6, $1a, $22, $36, $23, $20, $e6        ;; 0d:4f23 ????????
    db   $21, $23, $f0, $1a, $ff, $8d, $e7, $6c        ;; 0d:4f2b ????????
    db   $40, $67, $e5, $ec, $f3, $12, $11, $00        ;; 0d:4f33 ????????
    db   $f8, $14, $da, $25, $ab, $00                  ;; 0d:4f3b ??????

script_01a9:
    db  $f8 ;;UNK_MUSIC_F8
    db   $00                                           ;; 0d:4f42 ?
    db  $08 ;;IF ? JR
    db   $a6, $00, $0b                                 ;; 0d:4f44 ???
    db  $f9 ;;UNK_SFX_F9
    db   $14                                           ;; 0d:4f48 ?
    db  $bf ;;UNK_bf
    db   $f0, $1e, $f8, $0f, $fe, $03, $01, $11        ;; 0d:4f4a ????????
    db  $08 ;;IF ? JR
    db   $94, $00, $09                                 ;; 0d:4f53 ???
    db  $fc ;;UNK_fc
    db   $59, $fd, $00, $c9, $04, $35, $01, $04        ;; 0d:4f57 ????????
    db  $b0 ;;UNK_b0
    db   $59, $02, $01, $00                            ;; 0d:4f60 ????

script_01aa:
    db  $f8 ;;UNK_MUSIC_F8
    db   $07                                           ;; 0d:4f65 ?
    db  $00 ;;RET

script_01ab:
    db  $f0 ;;UNK_F0
    db   $14                                           ;; 0d:4f68 ?
    db  $04 ;;MSG
    db   $10, $bd, $d8, $d9, $32, $3f, $25, $c6        ;; 0d:4f6a ????????
    db   $d8, $da, $d4, $e3, $39, $9b, $12, $11        ;; 0d:4f72 ????????
    db   $00                                           ;; 0d:4f7a ?
    db  $da ;;UNK_DA
    db   $26                                           ;; 0d:4f7c ?
    db  $ec ;;UNK_ec
    db   $00                                           ;; 0d:4f7e ?

script_01ac:
    db  $08 ;;IF ? JR
    db   $a7, $00, $33                                 ;; 0d:4f80 ???
    db  $f0 ;;UNK_F0
    db   $3c                                           ;; 0d:4f84 ?
    db  $04 ;;MSG
    db   $10, $c6, $39, $41, $d4, $f5, $85, $31        ;; 0d:4f86 ????????
    db   $43, $83, $df, $1a, $6f, $20, $24, $67        ;; 0d:4f8e ????????
    db   $ff, $e3, $df, $d4, $d6, $d8, $1a, $22        ;; 0d:4f96 ????????
    db   $36, $38, $45, $52, $3c, $d8, $4d, $e5        ;; 0d:4f9e ????????
    db   $f3, $12, $11, $00                            ;; 0d:4fa6 ????
    db  $f0 ;;UNK_F0
    db   $1e                                           ;; 0d:4fab ?
    db  $f9 ;;UNK_SFX_F9
    db   $14                                           ;; 0d:4fad ?
    db  $bf ;;UNK_bf
    db   $bf, $f0, $1e, $f8, $0f, $fe, $02             ;; 0d:4faf ???????
    db  $08 ;;IF ? JR
    db   $27, $00, $12                                 ;; 0d:4fb7 ???
    db  $fc ;;UNK_fc
    db   $42, $f8, $02, $08, $d5, $9c, $00, $02        ;; 0d:4fbb ????????
    db   $fd, $00, $08, $1c, $b5, $00, $02, $fd        ;; 0d:4fc3 ????????
    db   $01                                           ;; 0d:4fcb ?
    db  $00 ;;RET

script_01ad:
    db  $f8 ;;UNK_MUSIC_F8
    db   $08                                           ;; 0d:4fce ?
    db  $00 ;;RET

script_01ae:
    db  $08 ;;IF ? JR
    db   $a7, $00, $8e                                 ;; 0d:4fd1 ???
    db  $f8 ;;UNK_MUSIC_F8
    db   $00                                           ;; 0d:4fd5 ?
    db  $f9 ;;UNK_SFX_F9
    db   $22                                           ;; 0d:4fd7 ?
    db  $f0 ;;UNK_F0
    db   $b4                                           ;; 0d:4fd9 ?
    db  $bd ;;UNK_bd
    db   $f3, $0f, $55, $14, $00, $f8, $0a, $bc        ;; 0d:4fdb ????????
    db   $04, $10, $62, $d7, $41, $d4, $f5, $bc        ;; 0d:4fe3 ????????
    db   $d4, $e0, $20, $2a, $38, $1a, $22, $36        ;; 0d:4feb ????????
    db   $da, $98, $42, $57, $3f, $2e, $e6, $f4        ;; 0d:4ff3 ????????
    db   $1a, $97, $e8, $db, $f3, $6a, $3b, $28        ;; 0d:4ffb ????????
    db   $58, $dd, $e2, $de, $9b, $12, $11, $00        ;; 0d:5003 ????????
    db   $bd, $f0, $1e, $f3, $01, $30, $0c, $08        ;; 0d:500b ????????
    db   $84, $99, $0a, $08, $bc, $f0, $3c, $97        ;; 0d:5013 ????????
    db   $f0, $3c, $96, $f0, $3c, $87, $99, $0a        ;; 0d:501b ????????
    db   $08, $f0, $3c, $04, $10, $ba, $63, $2b        ;; 0d:5023 ????????
    db   $d4, $f5, $bc, $29, $ee, $28, $d9, $2f        ;; 0d:502b ????????
    db   $d7, $1a, $2d, $ff, $d7, $5f, $e3, $3e        ;; 0d:5033 ????????
    db   $53, $3f, $2e, $35, $12, $1b, $14, $f5        ;; 0d:503b ????????
    db   $8d, $e7, $6c, $60, $36, $92, $9e, $1a        ;; 0d:5043 ????????
    db   $22, $36, $c3, $d4, $d7, $25, $d9, $8b        ;; 0d:504b ????????
    db   $45, $f0, $12, $11, $00, $86, $80, $80        ;; 0d:5053 ????????
    db   $02, $28, $9c, $db, $55, $da, $27             ;; 0d:505b ???????
    db  $00 ;;RET

script_01af:
    db  $08 ;;IF ? JR
    db   $1d, $a8, $00, $3a                            ;; 0d:5064 ????
    db  $fc ;;UNK_fc
    db   $41, $fd, $00, $f0, $14, $04, $10, $bd        ;; 0d:5069 ????????
    db   $5a, $dc, $4b, $f5, $c1, $ba, $f3, $1a        ;; 0d:5071 ????????
    db   $ff, $d2, $21, $87, $29, $ff, $e1, $d8        ;; 0d:5079 ????????
    db   $4d, $e5, $1a, $ff, $d7, $d8, $d9, $32        ;; 0d:5081 ????????
    db   $28, $e0, $9b, $12, $11, $00, $bf, $f9        ;; 0d:5089 ????????
    db   $14, $bf, $f9, $14, $18, $f9, $14, $bf        ;; 0d:5091 ????????
    db   $f9, $14, $bf, $f0, $1e, $fe, $04, $f8        ;; 0d:5099 ????????
    db   $13                                           ;; 0d:50a1 ?
    db  $da ;;UNK_DA
    db   $79                                           ;; 0d:50a3 ?
    db  $00 ;;RET

script_01b0:
    db  $db ;;UNK_DB
    db   $79                                           ;; 0d:50a6 ?
    db  $f8 ;;UNK_MUSIC_F8
    db   $07                                           ;; 0d:50a8 ?
    db  $00 ;;RET

script_01b1:
    db  $f8 ;;UNK_MUSIC_F8
    db   $00                                           ;; 0d:50ab ?
    db  $f0 ;;UNK_F0
    db   $50                                           ;; 0d:50ad ?
    db  $04 ;;MSG
    db   $10, $8d, $45, $27, $f5, $d0, $20, $d7        ;; 0d:50af ????????
    db   $dc, $25, $48, $f3, $12, $1b, $bd, $5a        ;; 0d:50b7 ????????
    db   $dc, $4b, $f5, $85, $20, $c9, $4e, $86        ;; 0d:50bf ????????
    db   $9f, $1a, $37, $26, $95, $93, $47, $da        ;; 0d:50c7 ????????
    db   $27, $1a, $40, $27, $d8, $80, $e0, $57        ;; 0d:50cf ????????
    db   $d7, $32, $e5, $35, $f3, $00                  ;; 0d:50d7 ??????
    db  $f8 ;;UNK_MUSIC_F8
    db   $0a                                           ;; 0d:50de ?
    db  $04 ;;MSG
    db   $12, $1b, $94, $2e, $e8, $86, $37, $26        ;; 0d:50e0 ????????
    db   $d9, $df, $ec, $2f, $da, $1a, $3e, $4d        ;; 0d:50e8 ????????
    db   $4c, $c6, $e7, $34, $cb, $e2, $9e, $e6        ;; 0d:50f0 ????????
    db   $1a, $22, $36, $c0, $df, $8a, $4d, $35        ;; 0d:50f8 ????????
    db   $12, $1b, $1a, $69, $ff, $bd, $5a, $dc        ;; 0d:5100 ????????
    db   $4b, $52, $66, $df, $35, $12, $11, $00        ;; 0d:5108 ????????
    db  $f8 ;;UNK_MUSIC_F8
    db   $00                                           ;; 0d:5111 ?
    db  $f0 ;;UNK_F0
    db   $3c                                           ;; 0d:5113 ?
    db  $98 ;;UNK_98
    db   $f0, $1e, $84, $f4, $0e, $04, $0c, $0a        ;; 0d:5115 ????????
    db   $f0, $1e, $fc, $3e, $fd, $01, $04, $10        ;; 0d:511d ????????
    db   $8d, $45, $27, $f5, $35, $c0, $e2, $2f        ;; 0d:5125 ????????
    db   $da, $f4, $1a, $14, $f5, $d2, $32, $db        ;; 0d:512d ????????
    db   $35, $69, $bb, $84, $1a, $22, $2a, $ff        ;; 0d:5135 ????????
    db   $e3, $e2, $31, $47, $60, $4b, $35, $12        ;; 0d:513d ????????
    db   $1b, $8d, $45, $27, $f5, $c6, $57, $3b        ;; 0d:5145 ????????
    db   $e5, $e3, $1a, $22, $44, $54, $43, $83        ;; 0d:514d ????????
    db   $65, $d6, $5d, $2e, $1a, $22, $2a, $60        ;; 0d:5155 ????????
    db   $4b, $80, $14, $f3, $12, $11, $00, $fd        ;; 0d:515d ????????
    db   $02, $f8, $0d, $f0, $b4, $04, $10, $ff        ;; 0d:5165 ????????
    db   $35, $49, $ee, $3a, $3d, $96, $57, $2a        ;; 0d:516d ????????
    db   $38, $1a, $2d, $2b, $ff, $e3, $df, $d4        ;; 0d:5175 ????????
    db   $57, $38, $e4, $e8, $dc, $d8, $e0, $1a        ;; 0d:517d ????????
    db   $52, $3c, $42, $57, $e6, $31, $3f, $e5        ;; 0d:5185 ????????
    db   $f0, $12, $1b, $14, $f5, $c8, $de, $d4        ;; 0d:518d ????????
    db   $ec, $80, $8d, $45, $27, $f0, $1a, $49        ;; 0d:5195 ????????
    db   $ee, $8c, $da, $e2, $2f, $da, $f0, $1a        ;; 0d:519d ????????
    db   $ff, $35, $68, $d4, $de, $20, $89, $38        ;; 0d:51a5 ????????
    db   $f0, $12, $1b, $8d, $45, $27, $f5, $cd        ;; 0d:51ad ????????
    db   $d4, $de, $20, $23, $31, $1a, $6f, $5e        ;; 0d:51b5 ????????
    db   $de, $43, $48, $db, $59, $21, $f0, $1a        ;; 0d:51bd ????????
    db   $49, $28, $e0, $8f, $91, $40, $66, $e3        ;; 0d:51c5 ????????
    db   $f0, $12, $1b, $00, $f9, $0f, $04, $cb        ;; 0d:51cd ????????
    db   $d8, $d6, $d8, $dc, $4d, $25, $23, $20        ;; 0d:51d5 ????????
    db   $62, $da, $dc, $d6, $1a, $bb, $5e, $de        ;; 0d:51dd ????????
    db   $3e, $53, $c6, $84, $61, $1a, $8d, $2e        ;; 0d:51e5 ????????
    db   $e1, $39, $51, $84, $61, $12, $11, $00        ;; 0d:51ed ????????
    db   $d6, $02, $f0, $3c, $db, $56, $da, $28        ;; 0d:51f5 ????????
    db   $ab, $00                                      ;; 0d:51fd ??

script_01b2:
    db  $08 ;;IF ? JR
    db   $a9, $00, $0e                                 ;; 0d:5200 ???
    db  $f0 ;;UNK_F0
    db   $1e                                           ;; 0d:5204 ?
    db  $f9 ;;UNK_SFX_F9
    db   $14                                           ;; 0d:5206 ?
    db  $bf ;;UNK_bf
    db   $f9, $14, $bf, $f8, $0f, $fe, $06, $01        ;; 0d:5208 ????????
    db   $0b                                           ;; 0d:5210 ?
    db  $08 ;;IF ? JR
    db   $ce, $00, $07                                 ;; 0d:5212 ???
    db  $fc ;;UNK_fc
    db   $59, $fd, $01, $c9, $04, $5d                  ;; 0d:5216 ??????
    db  $00 ;;RET

script_01b3:
    db  $f8 ;;UNK_MUSIC_F8
    db   $07                                           ;; 0d:521e ?
    db  $00 ;;RET

script_01b4:
    db  $f8 ;;UNK_MUSIC_F8
    db   $00                                           ;; 0d:5221 ?
    db  $f0 ;;UNK_F0
    db   $14                                           ;; 0d:5223 ?
    db  $04 ;;MSG
    db   $10, $bd, $d8, $d9, $32, $3f, $25, $bc        ;; 0d:5225 ????????
    db   $ec, $d6, $df, $e2, $e3, $e6, $f3, $12        ;; 0d:522d ????????
    db   $11, $00                                      ;; 0d:5235 ??
    db  $da ;;UNK_DA
    db   $29                                           ;; 0d:5238 ?
    db  $ec ;;UNK_ec
    db   $00                                           ;; 0d:523a ?

script_01b5:
    db  $08 ;;IF ? JR
    db   $b1, $00, $0e                                 ;; 0d:523c ???
    db  $f0 ;;UNK_F0
    db   $1e                                           ;; 0d:5240 ?
    db  $f9 ;;UNK_SFX_F9
    db   $14                                           ;; 0d:5242 ?
    db  $bf ;;UNK_bf
    db   $f9, $14, $bf, $fe, $0c, $f8, $0f, $01        ;; 0d:5244 ????????
    db   $03                                           ;; 0d:524c ?
    db  $02 ;;CALL
    db   $33, $e7                                      ;; 0d:524e ??
    db  $00 ;;RET

script_01b6:
    db  $08 ;;IF ? JR
    db   $b1, $00, $02                                 ;; 0d:5252 ???
    db  $f8 ;;UNK_MUSIC_F8
    db   $0c                                           ;; 0d:5256 ?
    db  $00 ;;RET

script_01b7:
    db  $f8 ;;UNK_MUSIC_F8
    db   $09                                           ;; 0d:5259 ?
    db  $f9 ;;UNK_SFX_F9
    db   $25                                           ;; 0d:525b ?
    db  $fb ;;UNK_fb
    db   $02, $33, $e7, $04, $10, $bd, $d8, $d9        ;; 0d:525d ????????
    db   $32, $3f, $25, $c0, $2e, $e8, $86, $f3        ;; 0d:5265 ????????
    db   $12, $11, $00, $f0, $3c, $04, $10, $62        ;; 0d:526d ????????
    db   $e5, $d6, $dc, $d8, $f5, $cd, $c8, $d0        ;; 0d:5275 ????????
    db   $be, $cb, $ff, $c5, $c8, $cc, $cd, $1a        ;; 0d:527d ????????
    db   $49, $cd, $cc, $ff, $bb, $ba, $c5, $ba        ;; 0d:5285 ????????
    db   $c7, $bc, $be, $f0, $1a, $51, $ce, $cc        ;; 0d:528d ????????
    db   $cd, $97, $ce, $cb, $cb, $d2, $ff, $c8        ;; 0d:5295 ????????
    db   $ce, $cd, $f0, $12, $11, $00, $da, $31        ;; 0d:529d ????????
    db   $00                                           ;; 0d:52a5 ?

script_01b8:
    db  $08 ;;IF ? JR
    db   $ab, $00, $0e                                 ;; 0d:52a7 ???
    db  $f0 ;;UNK_F0
    db   $1e                                           ;; 0d:52ab ?
    db  $f9 ;;UNK_SFX_F9
    db   $14                                           ;; 0d:52ad ?
    db  $bf ;;UNK_bf
    db   $f9, $14, $bf, $fe, $05, $f8, $0f, $01        ;; 0d:52af ????????
    db   $01                                           ;; 0d:52b7 ?
    db  $e0 ;;UNK_e0
    db   $00                                           ;; 0d:52b9 ?

script_01b9:
    db  $f8 ;;UNK_MUSIC_F8
    db   $07                                           ;; 0d:52bb ?
    db  $00 ;;RET

script_01ba:
    db  $f8 ;;UNK_MUSIC_F8
    db   $00                                           ;; 0d:52be ?
    db  $f9 ;;UNK_SFX_F9
    db   $22                                           ;; 0d:52c0 ?
    db  $04 ;;MSG
    db   $10, $bd, $d8, $d9, $32, $3f, $25, $c0        ;; 0d:52c2 ????????
    db   $e2, $5d, $e0, $f3, $12, $00                  ;; 0d:52ca ??????
    db  $d6 ;;UNK_d6
    db   $06, $f9, $0f, $04, $1b, $cb, $d8, $d6        ;; 0d:52d1 ????????
    db   $d8, $dc, $4d, $25, $23, $20, $62, $da        ;; 0d:52d9 ????????
    db   $dc, $d6, $1a, $bb, $5e, $de, $3e, $53        ;; 0d:52e1 ????????
    db   $c5, $8f, $91, $e1, $2f, $da, $f0, $1a        ;; 0d:52e9 ????????
    db   $8d, $2e, $e1, $39, $ff, $c5, $48, $f0        ;; 0d:52f1 ????????
    db   $12, $11, $00, $da, $2b, $e0, $f0, $1e        ;; 0d:52f9 ????????
    db   $f8, $07, $00                                 ;; 0d:5301 ???

script_01bb:
    db  $08 ;;IF ? JR
    db   $ac, $00, $bb                                 ;; 0d:5305 ???
    db  $fc ;;UNK_fc
    db   $17, $fd, $00, $87, $94, $8a, $10, $0c        ;; 0d:5309 ????????
    db   $99, $10, $0c, $03, $06, $02, $80, $00        ;; 0d:5311 ????????
    db   $84, $04, $10, $bd, $2e, $de, $ff, $c5        ;; 0d:5319 ????????
    db   $3c, $d7, $f5, $c5, $5e, $de, $e6, $1a        ;; 0d:5321 ????????
    db   $93, $dc, $de, $20, $24, $e8, $ee, $4d        ;; 0d:5329 ????????
    db   $6f, $d8, $4e, $1a, $2d, $6f, $48, $3d        ;; 0d:5331 ????????
    db   $e7, $5f, $4f, $27, $f0, $12, $1b, $ff        ;; 0d:5339 ????????
    db   $bb, $84, $80, $95, $28, $4e, $21, $88        ;; 0d:5341 ????????
    db   $1a, $22, $36, $d9, $8f, $91, $42, $d8        ;; 0d:5349 ????????
    db   $80, $d5, $e2, $ec, $f3, $12, $1b, $00        ;; 0d:5351 ????????
    db   $86, $97, $04, $14, $f5, $cc, $96, $57        ;; 0d:5359 ????????
    db   $21, $e7, $e6, $dc, $d7, $61, $1a, $49        ;; 0d:5361 ????????
    db   $28, $9c, $3a, $6f, $20, $33, $e2, $1a        ;; 0d:5369 ????????
    db   $ff, $86, $4f, $27, $21, $26, $2a, $38        ;; 0d:5371 ????????
    db   $f0, $12, $1b, $15, $f5, $35, $ff, $c8        ;; 0d:5379 ????????
    db   $de, $d4, $ec, $35, $1a, $ff, $bb, $20        ;; 0d:5381 ????????
    db   $89, $38, $d9, $90, $f0, $12, $11, $00        ;; 0d:5389 ????????
    db   $95, $90, $90, $98, $f9, $10, $b0, $2f        ;; 0d:5391 ????????
    db   $08, $07, $f8, $00, $f0, $14, $84, $04        ;; 0d:5399 ????????
    db   $10, $bd, $2e, $de, $ff, $c5, $3c, $d7        ;; 0d:53a1 ????????
    db   $f5, $c0, $5e, $d7, $1a, $6f, $e2, $ec        ;; 0d:53a9 ????????
    db   $80, $14, $f3, $1a, $ff, $35, $ff, $c7        ;; 0d:53b1 ????????
    db   $46, $80, $d6, $64, $9b, $12, $11, $00        ;; 0d:53b9 ????????
    db   $f8, $13                                      ;; 0d:53c1 ??
    db  $00 ;;RET

script_01bc:
    db  $00 ;;RET

script_01bd:
    db  $f8 ;;UNK_MUSIC_F8
    db   $00                                           ;; 0d:53c6 ?
    db  $f9 ;;UNK_SFX_F9
    db   $10                                           ;; 0d:53c8 ?
    db  $b0 ;;UNK_b0
    db   $6b, $08, $07, $04, $10, $bd, $d8, $d9        ;; 0d:53ca ????????
    db   $32, $3f, $25, $bd, $2e, $de, $ff, $c5        ;; 0d:53d2 ????????
    db   $3c, $d7, $12, $1b, $cb, $d8, $d6, $d8        ;; 0d:53da ????????
    db   $dc, $4d, $25, $c9, $4e, $86, $9f, $35        ;; 0d:53e2 ????????
    db   $00, $f0, $64, $04, $1b, $14, $f5, $f1        ;; 0d:53ea ????????
    db   $00, $f0, $64, $04, $f1, $00, $f0, $3c        ;; 0d:53f2 ????????
    db   $04, $49, $e7, $6c, $52, $d4, $de, $9b        ;; 0d:53fa ????????
    db   $1a, $ff, $f1, $68, $2a, $e1, $80, $ea        ;; 0d:5402 ????????
    db   $2a, $38, $37, $e6, $1a, $22, $2a, $ff        ;; 0d:540a ????????
    db   $38, $56, $ff, $c9, $4e, $86, $9f, $f4        ;; 0d:5412 ????????
    db   $00, $f0, $50, $04, $11, $00, $db, $51        ;; 0d:541a ????????
    db   $da, $2c, $f8, $0e, $00                       ;; 0d:5422 ?????

script_01be:
    db  $08 ;;IF ? JR
    db   $ad, $00, $0e                                 ;; 0d:5428 ???
    db  $f0 ;;UNK_F0
    db   $14                                           ;; 0d:542c ?
    db  $f9 ;;UNK_SFX_F9
    db   $14                                           ;; 0d:542e ?
    db  $bf ;;UNK_bf
    db   $f9, $14, $bf, $fe, $08, $f8, $0f, $01        ;; 0d:5430 ????????
    db   $0b                                           ;; 0d:5438 ?
    db  $08 ;;IF ? JR
    db   $ba, $00, $07                                 ;; 0d:543a ???
    db  $fc ;;UNK_fc
    db   $59, $fd, $00, $c9, $04, $64                  ;; 0d:543e ??????
    db  $00 ;;RET

script_01bf:
    db  $f8 ;;UNK_MUSIC_F8
    db   $0c                                           ;; 0d:5446 ?
    db  $00 ;;RET

script_01c0:
    db  $f8 ;;UNK_MUSIC_F8
    db   $00                                           ;; 0d:5449 ?
    db  $04 ;;MSG
    db   $10, $bd, $d8, $d9, $32, $3f, $25, $c4        ;; 0d:544b ????????
    db   $2e, $ec, $f3, $12, $11, $00                  ;; 0d:5453 ??????
    db  $da ;;UNK_DA
    db   $2d                                           ;; 0d:545a ?
    db  $ec ;;UNK_ec
    db   $00                                           ;; 0d:545c ?

script_01c1:
    db  $08 ;;IF ? JR
    db   $af, $00, $0e                                 ;; 0d:545e ???
    db  $f0 ;;UNK_F0
    db   $14                                           ;; 0d:5462 ?
    db  $f9 ;;UNK_SFX_F9
    db   $14                                           ;; 0d:5464 ?
    db  $bf ;;UNK_bf
    db   $f9, $14, $bf, $fe, $0a, $f8, $0f, $01        ;; 0d:5466 ????????
    db   $0b                                           ;; 0d:546e ?
    db  $08 ;;IF ? JR
    db   $bb, $00, $07                                 ;; 0d:5470 ???
    db  $fc ;;UNK_fc
    db   $59, $fd, $00, $c9, $04, $37                  ;; 0d:5474 ??????
    db  $00 ;;RET

script_01c2:
    db  $f8 ;;UNK_MUSIC_F8
    db   $07                                           ;; 0d:547c ?
    db  $00 ;;RET

script_01c3:
    db  $f8 ;;UNK_MUSIC_F8
    db   $00                                           ;; 0d:547f ?
    db  $04 ;;MSG
    db   $10, $bd, $d8, $d9, $32, $3f, $25, $c2        ;; 0d:5481 ????????
    db   $d9, $df, $ec, $3f, $f3, $12, $11, $00        ;; 0d:5489 ????????
    db  $da ;;UNK_DA
    db   $2f                                           ;; 0d:5492 ?
    db  $ec ;;UNK_ec
    db   $00                                           ;; 0d:5494 ?

script_01c4:
    db  $08 ;;IF ? JR
    db   $aa, $00, $12                                 ;; 0d:5496 ???
    db  $f9 ;;UNK_SFX_F9
    db   $10                                           ;; 0d:549a ?
    db  $b0 ;;UNK_b0
    db   $30, $01, $06, $f0, $14, $f9, $14, $bf        ;; 0d:549c ????????
    db   $f9, $14, $bf, $fe, $07, $f8, $0f             ;; 0d:54a4 ???????
    db  $00 ;;RET

script_01c5:
    db  $f8 ;;UNK_MUSIC_F8
    db   $0e                                           ;; 0d:54ad ?
    db  $00 ;;RET

script_01c6:
    db  $f8 ;;UNK_MUSIC_F8
    db   $00                                           ;; 0d:54b0 ?
    db  $f9 ;;UNK_SFX_F9
    db   $10                                           ;; 0d:54b2 ?
    db  $b0 ;;UNK_b0
    db   $13, $01, $06, $04, $10, $bd, $d8, $d9        ;; 0d:54b4 ????????
    db   $32, $3f, $25, $bc, $5c, $e0, $27, $d4        ;; 0d:54bc ????????
    db   $f3, $12, $11, $00, $da, $2a, $f0, $1e        ;; 0d:54c4 ????????
    db   $f8, $0e, $00                                 ;; 0d:54cc ???

script_01c7:
    db  $08 ;;IF ? JR
    db   $ae, $00, $0e                                 ;; 0d:54d0 ???
    db  $f0 ;;UNK_F0
    db   $14                                           ;; 0d:54d4 ?
    db  $f9 ;;UNK_SFX_F9
    db   $14                                           ;; 0d:54d6 ?
    db  $bf ;;UNK_bf
    db   $f9, $14, $bf, $fe, $09, $f8, $0f, $01        ;; 0d:54d8 ????????
    db   $04                                           ;; 0d:54e0 ?
    db  $b0 ;;UNK_b0
    db   $4c, $08, $02, $00                            ;; 0d:54e2 ????

script_01c8:
    db  $f8 ;;UNK_MUSIC_F8
    db   $07                                           ;; 0d:54e7 ?
    db  $00 ;;RET

script_01c9:
    db  $f8 ;;UNK_MUSIC_F8
    db   $00                                           ;; 0d:54ea ?
    db  $04 ;;MSG
    db   $10, $bd, $d8, $d9, $32, $3f, $25, $c4        ;; 0d:54ec ????????
    db   $e5, $d4, $de, $4e, $f3, $12, $11, $00        ;; 0d:54f4 ????????
    db  $da ;;UNK_DA
    db   $2e                                           ;; 0d:54fd ?
    db  $ba ;;UNK_ba
    db   $10, $10, $04, $b0, $4c, $08, $02, $f0        ;; 0d:54ff ????????
    db   $1e, $f8, $07, $00                            ;; 0d:5507 ????

script_01ca:
    db  $08 ;;IF ? JR
    db   $b0, $00, $0c                                 ;; 0d:550c ???
    db  $f0 ;;UNK_F0
    db   $14                                           ;; 0d:5510 ?
    db  $f9 ;;UNK_SFX_F9
    db   $14                                           ;; 0d:5512 ?
    db  $bf ;;UNK_bf
    db   $f9, $14, $bf, $fe, $0b, $f8, $0f             ;; 0d:5514 ???????
    db  $00 ;;RET

script_01cb:
    db  $f8 ;;UNK_MUSIC_F8
    db   $07                                           ;; 0d:551d ?
    db  $00 ;;RET

script_01cc:
    db  $f8 ;;UNK_MUSIC_F8
    db   $00                                           ;; 0d:5520 ?
    db  $04 ;;MSG
    db   $10, $bd, $d8, $d9, $32, $3f, $25, $c5        ;; 0d:5522 ????????
    db   $dc, $d6, $db, $f3, $12, $1b, $00             ;; 0d:552a ???????
    db  $f9 ;;UNK_SFX_F9
    db   $0f                                           ;; 0d:5532 ?
    db  $d6 ;;UNK_d6
    db   $07, $04, $cb, $d8, $d6, $d8, $dc, $4d        ;; 0d:5534 ????????
    db   $25, $23, $20, $62, $da, $dc, $d6, $1a        ;; 0d:553c ????????
    db   $bb, $5e, $de, $3e, $53, $c7, $e8, $de        ;; 0d:5544 ????????
    db   $61, $1a, $8d, $2e, $e1, $39, $ff, $c7        ;; 0d:554c ????????
    db   $e8, $de, $9b, $12, $11, $00, $da, $30        ;; 0d:5554 ????????
    db   $f0, $1e, $f4, $00, $3e, $0c, $07, $f8        ;; 0d:555c ????????
    db   $19, $ab, $ec, $00                            ;; 0d:5564 ????

script_01cd:
    db  $fc ;;UNK_fc
    db   $3d, $fd, $01, $00                            ;; 0d:5569 ????

script_01ce:
    db  $00 ;;RET

script_01cf:
    db  $00 ;;RET

script_01e0:
    db  $04 ;;MSG
    db   $10, $d0, $66, $d6, $64, $20, $33, $ff        ;; 0d:5570 ????????
    db   $c4, $98, $e7, $6c, $f0, $1a, $cb, $5e        ;; 0d:5578 ????????
    db   $e0, $26, $d4, $2a, $d4, $25, $2e, $d8        ;; 0d:5580 ????????
    db   $1a, $e2, $d6, $d6, $e8, $e3, $dc, $39        ;; 0d:5588 ????????
    db   $f0, $12, $1b, $c9, $5d, $4b, $20, $d9        ;; 0d:5590 ????????
    db   $d8, $66, $52, $38, $d8, $1a, $33, $ff        ;; 0d:5598 ????????
    db   $41, $20, $23, $d8, $1a, $99, $45, $27        ;; 0d:55a0 ????????
    db   $4a, $5f, $64, $f0, $12, $1b, $d2, $21        ;; 0d:55a8 ????????
    db   $87, $29, $ee, $28, $da, $98, $ff, $e3        ;; 0d:55b0 ????????
    db   $4b, $e7, $1a, $23, $31, $ff, $d7, $5e        ;; 0d:55b8 ????????
    db   $e5, $f0, $1a, $c2, $e7, $6c, $52, $3c        ;; 0d:55c0 ????????
    db   $51, $e5, $34, $8d, $61, $00                  ;; 0d:55c8 ??????
    db  $08 ;;IF ? JR
    db   $0d, $00, $63                                 ;; 0d:55cf ???
    db  $04 ;;MSG
    db   $12, $1b, $00                                 ;; 0d:55d3 ???
    db  $09 ;;UNK_09
    db   $27, $00, $3c, $f8, $00, $04, $cd, $f1        ;; 0d:55d7 ????????
    db   $23, $30, $51, $8b, $5f, $e5, $f1, $f3        ;; 0d:55df ????????
    db   $00, $f0, $1e, $04, $1a, $ce, $c0, $c0        ;; 0d:55e7 ????????
    db   $c0, $f1, $94, $cb, $cb, $c1, $f1, $00        ;; 0d:55ef ????????
    db   $f0, $1e, $04, $1a, $ce, $c0, $f1, $97        ;; 0d:55f7 ????????
    db   $da, $f1, $94, $cb, $cb, $cb, $f1, $ff        ;; 0d:55ff ????????
    db   $f1, $12, $11, $00, $f9, $14, $bf, $bf        ;; 0d:5607 ????????
    db   $18, $fd, $02, $f8, $1a, $01, $1d, $04        ;; 0d:560f ????????
    db   $d2, $21, $4c, $d9, $e5, $dc, $4e, $d7        ;; 0d:5617 ????????
    db   $f4, $1a, $c7, $e2, $35, $1a, $5b, $d7        ;; 0d:561f ????????
    db   $36, $95, $28, $de, $95, $ea, $40, $27        ;; 0d:5627 ????????
    db   $f0, $12, $11, $00, $01, $04                  ;; 0d:562f ??????
    db  $04 ;;MSG
    db   $12, $11, $00                                 ;; 0d:5636 ???
    db  $00 ;;RET

script_01e1:
    db  $04 ;;MSG
    db   $10, $85, $20, $e0, $ec, $45, $dc, $d6        ;; 0d:563b ????????
    db   $51, $8b, $5f, $e5, $1a, $38, $4d, $56        ;; 0d:5643 ????????
    db   $26, $e3, $d8, $e2, $e3, $5d, $6c, $1a        ;; 0d:564b ????????
    db   $e7, $e5, $e8, $20, $d6, $e2, $df, $3c        ;; 0d:5653 ????????
    db   $e6, $f0, $12, $1b, $5b, $2a, $2e, $25        ;; 0d:565b ????????
    db   $23, $30, $22, $2a, $1a, $63, $4a, $2a        ;; 0d:5663 ????????
    db   $38, $22, $db, $38, $ea, $37, $e7, $1a        ;; 0d:566b ????????
    db   $d4, $82, $57, $2f, $2d, $87, $5a, $61        ;; 0d:5673 ????????
    db   $12, $11, $00                                 ;; 0d:567b ???
    db  $00 ;;RET

script_01e2:
    db  $04 ;;MSG
    db   $10, $c5, $dc, $ed, $2e, $d7, $e0, $4e        ;; 0d:5680 ????????
    db   $6c, $ff, $e1, $54, $e7, $1a, $31, $22        ;; 0d:5688 ????????
    db   $36, $23, $20, $e6, $21, $23, $f0, $12        ;; 0d:5690 ????????
    db   $1b, $85, $d8, $57, $3b, $4d, $22, $2a        ;; 0d:5698 ????????
    db   $ff, $de, $d8, $ec, $1a, $33, $3e, $e3        ;; 0d:56a0 ????????
    db   $4e, $22, $2a, $ff, $bc, $5a, $d8, $1a        ;; 0d:56a8 ????????
    db   $50, $51, $2e, $e6, $db, $f0, $12, $11        ;; 0d:56b0 ????????
    db   $12, $11, $00                                 ;; 0d:56b8 ???
    db  $00 ;;RET

script_01e3:
    db  $18 ;;UNK_18
    db   $fd, $01, $04, $10, $14, $f5, $15, $f3        ;; 0d:56bd ????????
    db   $1a, $15, $f5, $c8, $db, $80, $14, $f3        ;; 0d:56c5 ????????
    db   $12, $1b, $14, $f5, $8d, $e7, $6c, $60        ;; 0d:56cd ????????
    db   $98, $1a, $3e, $84, $3e, $53, $2a, $38        ;; 0d:56d5 ????????
    db   $f3, $12, $11, $00, $9c, $01, $da, $51        ;; 0d:56dd ????????
    db   $da, $0e, $00                                 ;; 0d:56e5 ???

script_01e4:
    db  $04 ;;MSG
    db   $10, $62, $e1, $f5, $d2, $21, $4c, $d9        ;; 0d:56e9 ????????
    db   $e5, $dc, $4e, $d7, $1a, $37, $26, $e0        ;; 0d:56f1 ????????
    db   $31, $e6, $2f, $da, $f4, $12, $1b, $51        ;; 0d:56f9 ????????
    db   $29, $57, $da, $8b, $df, $26, $3b, $4d        ;; 0d:5701 ????????
    db   $1a, $ff, $d7, $31, $d4, $e3, $e3, $32        ;; 0d:5709 ????????
    db   $38, $25, $2f, $1a, $22, $3b, $28, $e3        ;; 0d:5711 ????????
    db   $df, $d4, $d6, $61, $12, $1b, $68, $2a        ;; 0d:5719 ????????
    db   $57, $e0, $41, $28, $d5, $20, $de, $d8        ;; 0d:5721 ????????
    db   $e3, $e7, $1a, $37, $4a, $23, $20, $89        ;; 0d:5729 ????????
    db   $e6, $de, $98, $e6, $1a, $2d, $28, $23        ;; 0d:5731 ????????
    db   $20, $92, $6b, $e0, $4e, $e7, $f0, $12        ;; 0d:5739 ????????
    db   $1b, $ff, $c5, $5e, $de, $2f, $da, $52        ;; 0d:5741 ????????
    db   $3c, $22, $2a, $ff, $1a, $51, $8b, $5f        ;; 0d:5749 ????????
    db   $e5, $f4, $69, $bd, $36, $24, $e8, $1a        ;; 0d:5751 ????????
    db   $43, $29, $28, $e0, $20, $33, $40, $66        ;; 0d:5759 ????????
    db   $e3, $f4, $12, $13, $11, $00                  ;; 0d:5761 ??????
    db  $08 ;;IF ? JR
    db   $ff, $00, $04                                 ;; 0d:5768 ???
    db  $9c ;;UNK_9c
    db   $02, $da, $52                                 ;; 0d:576c ???
    db  $00 ;;RET

script_01e5:
    db  $ba ;;UNK_ba
    db   $10, $0e, $0a, $b0, $4b, $07, $05, $da        ;; 0d:5771 ????????
    db   $36, $00                                      ;; 0d:5779 ??

script_01e6:
    db  $04 ;;MSG
    db   $10, $d0, $66, $d6, $64, $20, $33, $6a        ;; 0d:577c ????????
    db   $4e, $d7, $66, $ef, $1a, $23, $20, $e6        ;; 0d:5784 ????????
    db   $d4, $d6, $38, $25, $33, $ea, $e1, $f0        ;; 0d:578c ????????
    db   $12, $11, $00                                 ;; 0d:5794 ???
    db  $00 ;;RET

script_01e7:
    db  $08 ;;IF ? JR
    db   $10, $91, $00, $19                            ;; 0d:5799 ....
    db  $04 ;;MSG
    db   $10, $c1, $f1, $40, $20, $30, $96, $9e        ;; 0d:579e ????????
    db   $39, $1a, $e0, $20, $d9, $5f, $8c, $d5        ;; 0d:57a6 ????????
    db   $d8, $5c, $2b, $f1, $f3, $12, $11, $00        ;; 0d:57ae ????????
    db  $00 ;;RET

script_01e8:
    db  $04 ;;MSG
    db   $10, $62, $e1, $f5, $c1, $66, $df, $36        ;; 0d:57b8 ????????
    db   $d4, $da, $8a, $e1, $f3, $1a, $97, $46        ;; 0d:57c0 ????????
    db   $ee, $4d, $59, $21, $6f, $d8, $4e, $f4        ;; 0d:57c8 ????????
    db   $12, $11, $00                                 ;; 0d:57d0 ???
    db  $00 ;;RET

script_01e9:
    db  $04 ;;MSG
    db   $10, $85, $20, $d0, $30, $27, $d9, $56        ;; 0d:57d5 ????????
    db   $df, $e6, $1a, $63, $de, $20, $56, $65        ;; 0d:57dd ????????
    db   $50, $3e, $67, $1a, $e5, $dc, $4d, $e5        ;; 0d:57e5 ????????
    db   $26, $d9, $df, $46, $f0, $12, $1b, $85        ;; 0d:57ed ????????
    db   $20, $82, $3f, $4c, $e6, $e3, $e5, $2f        ;; 0d:57f5 ????????
    db   $da, $e6, $1a, $d9, $5f, $8c, $23, $20        ;; 0d:57fd ????????
    db   $5f, $e2, $28, $50, $1a, $23, $20, $cd        ;; 0d:5805 ????????
    db   $38, $20, $50, $51, $29, $d4, $f0, $12        ;; 0d:580d ????????
    db   $1b, $62, $e1, $58, $31, $3d, $e8, $e3        ;; 0d:5815 ????????
    db   $e3, $3c, $e7, $2f, $da, $1a, $21, $4c        ;; 0d:581d ????????
    db   $e1, $30, $67, $61, $12, $11, $00             ;; 0d:5825 ???????
    db  $00 ;;RET

script_01ea:
    db  $04 ;;MSG
    db   $10, $bd, $82, $e5, $53, $bc, $5a, $20        ;; 0d:582e ????????
    db   $31, $1a, $33, $22, $2a, $43, $54, $e7        ;; 0d:5836 ????????
    db   $f3, $12, $11, $00                            ;; 0d:583e ????
    db  $00 ;;RET

script_01eb:
    db  $04 ;;MSG
    db   $10, $bc, $dc, $d5, $92, $37, $26, $58        ;; 0d:5844 ????????
    db   $e6, $d4, $da, $61, $1a, $c1, $20, $41        ;; 0d:584c ????????
    db   $39, $22, $36, $d5, $20, $d4, $1a, $da        ;; 0d:5854 ????????
    db   $38, $30, $43, $2e, $e5, $dc, $3c, $f0        ;; 0d:585c ????????
    db   $12, $11, $00                                 ;; 0d:5864 ???
    db  $00 ;;RET

script_01ec:
    db  $04 ;;MSG
    db   $10, $00                                      ;; 0d:5869 ??
    db  $08 ;;IF ? JR
    db   $9f, $00, $0e                                 ;; 0d:586c ???
    db  $04 ;;MSG
    db   $bc, $dc, $d5, $92, $6c, $37, $4a, $2a        ;; 0d:5870 ????????
    db   $38, $f3, $00                                 ;; 0d:5878 ???
    db  $01 ;;JR
    db   $47                                           ;; 0d:587c ?
    db  $04 ;;MSG
    db   $c5, $3c, $dc, $8c, $82, $26, $30, $96        ;; 0d:587e ????????
    db   $9e, $39, $1a, $d5, $57, $63, $e1, $57        ;; 0d:5886 ????????
    db   $e0, $47, $45, $27, $e6, $f0, $1a, $bc        ;; 0d:588e ????????
    db   $dc, $d5, $92, $43, $4e, $28, $23, $27        ;; 0d:5896 ????????
    db   $61, $12, $1b, $c5, $3c, $dc, $8c, $31        ;; 0d:589e ????????
    db   $3d, $21, $23, $3e, $d9, $1a, $23, $20        ;; 0d:58a6 ????????
    db   $cc, $95, $ea, $d9, $dc, $66, $25, $e2        ;; 0d:58ae ????????
    db   $4d, $e5, $1a, $23, $20, $e6, $21, $23        ;; 0d:58b6 ????????
    db   $27, $4a, $6b, $d4, $f0, $00                  ;; 0d:58be ??????
    db  $04 ;;MSG
    db   $12, $11, $00                                 ;; 0d:58c5 ???
    db  $00 ;;RET

script_01ed:
    db  $04 ;;MSG
    db   $10, $5b, $2a, $2e, $22, $3b, $28, $23        ;; 0d:58ca ????????
    db   $d8, $1a, $cd, $38, $20, $50, $51, $29        ;; 0d:58d2 ????????
    db   $58, $31, $1a, $4d, $e5, $57, $d5, $32        ;; 0d:58da ????????
    db   $84, $dc, $d9, $90, $35, $12, $11, $00        ;; 0d:58e2 ????????
    db  $00 ;;RET

script_01ee:
    db  $04 ;;MSG
    db   $10, $00                                      ;; 0d:58ec ??
    db  $08 ;;IF ? JR
    db   $11, $00, $21                                 ;; 0d:58ef ???
    db  $04 ;;MSG
    db   $bc, $dc, $d5, $92, $f5, $c3, $90, $dc        ;; 0d:58f3 ????????
    db   $41, $43, $4e, $e7, $1a, $43, $54, $e7        ;; 0d:58fb ????????
    db   $82, $8e, $37, $4a, $5c, $e6, $1a, $2d        ;; 0d:5903 ????????
    db   $8b, $e6, $5c, $e3, $f0, $00                  ;; 0d:590b ??????
    db  $01 ;;JR
    db   $12                                           ;; 0d:5912 ?
    db  $04 ;;MSG
    db   $bc, $dc, $d5, $92, $f5, $d0, $db, $36        ;; 0d:5914 ????????
    db   $31, $1a, $22, $3b, $28, $63, $e1, $f4        ;; 0d:591c ????????
    db   $00                                           ;; 0d:5924 ?
    db  $04 ;;MSG
    db   $12, $11, $00                                 ;; 0d:5926 ???
    db  $00 ;;RET

script_01ef:
    db  $0a ;;UNK_0a
    db   $4f, $00, $05, $02, $19, $f5, $01, $c1        ;; 0d:592b ????????
    db   $d4, $17, $08, $85, $00, $bb, $04, $10        ;; 0d:5933 ????????
    db   $00, $f9, $0f, $04, $cb, $d8, $d6, $d8        ;; 0d:593b ????????
    db   $dc, $4d, $25, $aa, $bb, $47, $61, $12        ;; 0d:5943 ????????
    db   $1b, $bc, $dc, $d5, $92, $f5, $c0, $36        ;; 0d:594b ????????
    db   $e8, $e3, $22, $2a, $1a, $43, $dc, $d7        ;; 0d:5953 ????????
    db   $20, $e5, $dc, $4d, $4c, $d5, $57, $23        ;; 0d:595b ????????
    db   $d8, $1a, $ff, $ba, $e0, $e0, $47, $48        ;; 0d:5963 ????????
    db   $20, $bc, $e2, $4b, $e7, $f0, $12, $1b        ;; 0d:596b ????????
    db   $94, $36, $d5, $d8, $24, $2b, $22, $2a        ;; 0d:5973 ????????
    db   $1a, $ff, $ba, $e0, $e0, $47, $48, $20        ;; 0d:597b ????????
    db   $bc, $e2, $4b, $e7, $1a, $22, $36, $bf        ;; 0d:5983 ????????
    db   $df, $e2, $30, $5f, $9e, $e6, $f0, $12        ;; 0d:598b ????????
    db   $1b, $ff, $ce, $6b, $22, $5c, $26, $de        ;; 0d:5993 ????????
    db   $d8, $57, $30, $1a, $22, $2a, $87, $5a        ;; 0d:599b ????????
    db   $20, $2f, $22, $2a, $1a, $ff, $bf, $df        ;; 0d:59a3 ????????
    db   $e2, $30, $5f, $9e, $e6, $f3, $12, $1b        ;; 0d:59ab ????????
    db   $68, $2a, $60, $e8, $2e, $d7, $dc, $29        ;; 0d:59b3 ????????
    db   $1a, $42, $47, $45, $27, $40, $4b, $22        ;; 0d:59bb ????????
    db   $2a, $1a, $ff, $8d, $da, $4e, $86, $e5        ;; 0d:59c3 ????????
    db   $57, $cc, $ea, $3c, $d7, $f0, $12, $1b        ;; 0d:59cb ????????
    db   $49, $ee, $3a, $22, $66, $65, $24, $81        ;; 0d:59d3 ????????
    db   $23, $d8, $1a, $ff, $38, $45, $43, $2a        ;; 0d:59db ????????
    db   $4a, $24, $e8, $1a, $ff, $38, $e7, $67        ;; 0d:59e3 ????????
    db   $4a, $9c, $23, $37, $e7, $f3, $12, $11        ;; 0d:59eb ????????
    db   $00, $00                                      ;; 0d:59f3 ??

script_01f0:
    db  $04 ;;MSG
    db   $10, $bc, $dc, $d5, $92, $f5, $85, $20        ;; 0d:59f6 ????????
    db   $47, $df, $57, $82, $ec, $1a, $93, $d8        ;; 0d:59fe ????????
    db   $d9, $28, $31, $22, $36, $38, $4d, $56        ;; 0d:5a06 ????????
    db   $1a, $22, $2a, $ff, $bd, $dc, $e0, $20        ;; 0d:5a0e ????????
    db   $cd, $46, $27, $f0, $12, $1b, $14, $f5        ;; 0d:5a16 ????????
    db   $bd, $dc, $e0, $20, $cd, $46, $27, $f4        ;; 0d:5a1e ????????
    db   $1a, $49, $4a, $23, $20, $bd, $54, $27        ;; 0d:5a26 ????????
    db   $28, $50, $1a, $ff, $bc, $e5, $ec, $45        ;; 0d:5a2e ????????
    db   $56, $f4, $69, $f1, $97, $46, $f4, $12        ;; 0d:5a36 ????????
    db   $1b, $bc, $dc, $d5, $92, $f5, $85, $30        ;; 0d:5a3e ????????
    db   $3d, $ea, $3c, $d7, $1a, $43, $83, $65        ;; 0d:5a46 ????????
    db   $2a, $df, $e3, $59, $21, $f0, $12, $1b        ;; 0d:5a4e ????????
    db   $ff, $ce, $6b, $37, $28, $2f, $22, $2a        ;; 0d:5a56 ????????
    db   $1a, $ff, $bc, $5a, $20, $50, $ff, $cb        ;; 0d:5a5e ????????
    db   $e8, $2f, $e6, $f0, $1a, $ff, $d2, $21        ;; 0d:5a66 ????????
    db   $ee, $3a, $3d, $d8, $20, $48, $f0, $12        ;; 0d:5a6e ????????
    db   $1b, $14, $f5, $85, $31, $ff, $e5, $41        ;; 0d:5a76 ????????
    db   $e7, $ec, $1a, $3d, $ea, $3c, $25, $3b        ;; 0d:5a7e ????????
    db   $26, $e6, $e8, $d6, $db, $1a, $2d, $60        ;; 0d:5a86 ????????
    db   $38, $30, $ff, $e3, $46, $27, $f1, $f4        ;; 0d:5a8e ????????
    db   $12, $1b, $bc, $dc, $d5, $92, $f5, $85        ;; 0d:5a96 ????????
    db   $20, $cc, $ea, $3c, $25, $50, $1a, $ff        ;; 0d:5a9e ????????
    db   $8d, $da, $4e, $25, $e6, $db, $46, $26        ;; 0d:5aa6 ????????
    db   $48, $e6, $1a, $ff, $38, $56, $ff, $e3        ;; 0d:5aae ????????
    db   $46, $27, $3e, $e1, $df, $ec, $12, $1b        ;; 0d:5ab6 ????????
    db   $43, $2a, $4a, $48, $2d, $e3, $e3, $5f        ;; 0d:5abe ????????
    db   $4d, $e6, $1a, $3e, $53, $24, $67, $ff        ;; 0d:5ac6 ????????
    db   $41, $2f, $da, $37, $e7, $f0, $12, $1b        ;; 0d:5ace ????????
    db   $49, $53, $24, $e8, $ee, $38, $2d, $ff        ;; 0d:5ad6 ????????
    db   $38, $56, $1a, $ff, $c4, $e1, $8f, $91        ;; 0d:5ade ????????
    db   $3e, $53, $c0, $d8, $e0, $63, $ef, $1a        ;; 0d:5ae6 ????????
    db   $37, $28, $9c, $3a, $40, $66, $e3, $59        ;; 0d:5aee ????????
    db   $21, $f0, $12, $1b, $14, $f5, $bb, $84        ;; 0d:5af6 ????????
    db   $f1, $49, $ff, $d7, $47, $ee, $e7, $1a        ;; 0d:5afe ????????
    db   $ff, $de, $95, $ea, $37, $53, $48, $ff        ;; 0d:5b06 ????????
    db   $f1, $ff, $f1, $12, $1b, $bc, $dc, $d5        ;; 0d:5b0e ????????
    db   $92, $f5, $bd, $47, $ee, $28, $ea, $3c        ;; 0d:5b16 ????????
    db   $e5, $ec, $f0, $1a, $ff, $35, $00             ;; 0d:5b1e ???????
    db  $f0 ;;UNK_F0
    db   $28                                           ;; 0d:5b26 ?
    db  $04 ;;MSG
    db   $c7, $46, $80, $da, $e2, $f3, $12, $1b        ;; 0d:5b28 ????????
    db   $68, $2a, $ff, $bc, $5a, $20, $50, $ff        ;; 0d:5b30 ????????
    db   $cb, $e8, $2f, $e6, $1a, $37, $26, $2f        ;; 0d:5b38 ????????
    db   $22, $2a, $ff, $d7, $54, $27, $e7, $1a        ;; 0d:5b40 ????????
    db   $ff, $e1, $32, $4c, $c2, $e6, $db, $f0        ;; 0d:5b48 ????????
    db   $12, $1b, $ff, $ba, $e6, $de, $ff, $bd        ;; 0d:5b50 ????????
    db   $e5, $34, $bb, $46, $46, $f0, $1a, $97        ;; 0d:5b58 ????????
    db   $20, $de, $95, $ea, $26, $48, $43, $66        ;; 0d:5b60 ????????
    db   $df, $f0, $12, $11, $00                       ;; 0d:5b68 ?????
    db  $00 ;;RET

script_01f1:
    db  $ba ;;UNK_ba
    db   $08, $09, $0b, $c0, $c1, $00                  ;; 0d:5b6f ??????

script_01f2:
    db  $04 ;;MSG
    db   $10, $c1, $66, $df, $e2, $f3, $1a, $d0        ;; 0d:5b76 ????????
    db   $66, $d6, $64, $20, $33, $22, $2a, $1a        ;; 0d:5b7e ????????
    db   $bd, $82, $e5, $53, $bc, $5a, $9b, $12        ;; 0d:5b86 ????????
    db   $11, $00                                      ;; 0d:5b8e ??
    db  $00 ;;RET

script_01f3:
    db  $04 ;;MSG
    db   $10, $00                                      ;; 0d:5b92 ??
    db  $08 ;;IF ? JR
    db   $11, $96, $00, $16                            ;; 0d:5b95 ????
    db  $04 ;;MSG
    db   $85, $20, $8a, $e5, $e6, $5c, $e3, $43        ;; 0d:5b9a ????????
    db   $4e, $e7, $1a, $33, $22, $2a, $43, $54        ;; 0d:5ba2 ????????
    db   $e7, $f3, $12, $1b, $00                       ;; 0d:5baa ?????
    db  $04 ;;MSG
    db   $85, $20, $c0, $8a, $58, $c9, $4b, $e6        ;; 0d:5bb0 ????????
    db   $1a, $5d, $d4, $d7, $26, $33, $22, $2a        ;; 0d:5bb8 ????????
    db   $1a, $99, $45, $27, $4a, $df, $29, $d7        ;; 0d:5bc0 ????????
    db   $f0, $12, $11, $00                            ;; 0d:5bc8 ????
    db  $00 ;;RET

script_01f4:
    db  $04 ;;MSG
    db   $10, $00                                      ;; 0d:5bce ??
    db  $08 ;;IF ? JR
    db   $a6, $00, $5d                                 ;; 0d:5bd1 ???
    db  $04 ;;MSG
    db   $5b, $41, $39, $22, $36, $e3, $df, $d4        ;; 0d:5bd5 ????????
    db   $ec, $1a, $30, $22, $2a, $ff, $c8, $df        ;; 0d:5bdd ????????
    db   $25, $c6, $2f, $d8, $1a, $9c, $23, $6a        ;; 0d:5be5 ????????
    db   $30, $e7, $e6, $f3, $00                       ;; 0d:5bed ?????
    db  $08 ;;IF ? JR
    db   $11, $00, $39                                 ;; 0d:5bf3 ???
    db  $04 ;;MSG
    db   $12, $1b, $d0, $29, $e1, $58, $41, $20        ;; 0d:5bf7 ????????
    db   $23, $d8, $1a, $e7, $5f, $3a, $d8, $ec        ;; 0d:5bff ????????
    db   $f4, $69, $d2, $21, $1a, $3b, $4d, $22        ;; 0d:5c07 ????????
    db   $36, $e2, $83, $37, $e7, $f3, $12, $1b        ;; 0d:5c0f ????????
    db   $d2, $21, $87, $29, $60, $98, $37, $e7        ;; 0d:5c17 ????????
    db   $1a, $30, $22, $2a, $3d, $33, $38, $1a        ;; 0d:5c1f ????????
    db   $33, $22, $2a, $3d, $21, $23, $f3, $00        ;; 0d:5c27 ????????
    db  $01 ;;JR
    db   $15                                           ;; 0d:5c30 ?
    db  $04 ;;MSG
    db   $d0, $30, $e7, $26, $31, $3d, $66, $6e        ;; 0d:5c32 ????????
    db   $4f, $1a, $cc, $83, $4d, $4c, $45, $e8        ;; 0d:5c3a ????????
    db   $d9, $d9, $f3, $00                            ;; 0d:5c42 ????
    db  $04 ;;MSG
    db   $12, $11, $00                                 ;; 0d:5c47 ???
    db  $00 ;;RET

script_01f5:
    db  $04 ;;MSG
    db   $10, $c0, $8a, $58, $3b, $26, $48, $26        ;; 0d:5c4c ????????
    db   $46, $e1, $1a, $9c, $3a, $2d, $2b, $52        ;; 0d:5c54 ????????
    db   $d8, $66, $2f, $da, $e6, $f0, $12, $1b        ;; 0d:5c5c ????????
    db   $c2, $28, $6e, $de, $54, $9a, $83, $4d        ;; 0d:5c64 ????????
    db   $e5, $f0, $1a, $cc, $e7, $e5, $29, $da        ;; 0d:5c6c ????????
    db   $d8, $80, $31, $e1, $ee, $28, $48, $f4        ;; 0d:5c74 ????????
    db   $12, $11, $00                                 ;; 0d:5c7c ???
    db  $00 ;;RET

script_01f6:
    db  $04 ;;MSG
    db   $10, $00                                      ;; 0d:5c81 ??
    db  $08 ;;IF ? JR
    db   $a6, $00, $37                                 ;; 0d:5c84 ???
    db  $04 ;;MSG
    db   $d0, $30, $e7, $26, $6e, $de, $54, $22        ;; 0d:5c88 ????????
    db   $2a, $1a, $e0, $2f, $9b, $69, $c1, $20        ;; 0d:5c90 ????????
    db   $99, $9f, $1a, $23, $d8, $8b, $22, $e2        ;; 0d:5c98 ????????
    db   $86, $ec, $80, $33, $e2, $f3, $12, $1b        ;; 0d:5ca0 ????????
    db   $c1, $d8, $6c, $93, $5e, $de, $2f, $da        ;; 0d:5ca8 ????????
    db   $52, $3c, $1a, $e6, $64, $20, $cc, $83        ;; 0d:5cb0 ????????
    db   $4d, $e5, $f0, $00                            ;; 0d:5cb8 ????
    db  $01 ;;JR
    db   $19                                           ;; 0d:5cbd ?
    db  $04 ;;MSG
    db   $c1, $dc, $f3, $1a, $d0, $30, $e7, $26        ;; 0d:5cbf ????????
    db   $63, $d7, $20, $23, $d8, $1a, $cc, $83        ;; 0d:5cc7 ????????
    db   $4d, $4c, $45, $e8, $d9, $d9, $f3, $00        ;; 0d:5ccf ????????
    db  $04 ;;MSG
    db   $12, $11, $00                                 ;; 0d:5cd8 ???
    db  $00 ;;RET

script_01f7:
    db  $00 ;;RET

script_01f8:
    db  $04 ;;MSG
    db   $10, $d0, $30, $e7, $e6, $f5, $5b, $63        ;; 0d:5cde ????????
    db   $d7, $20, $e6, $64, $d8, $1a, $22, $5c        ;; 0d:5ce6 ????????
    db   $4f, $26, $21, $28, $50, $1a, $22, $3b        ;; 0d:5cee ????????
    db   $28, $cc, $83, $4d, $e5, $f3, $12, $1b        ;; 0d:5cf6 ????????
    db   $68, $d4, $de, $20, $23, $54, $20, $29        ;; 0d:5cfe ????????
    db   $d7, $1a, $59, $21, $87, $29, $ff, $e3        ;; 0d:5d06 ????????
    db   $4b, $e6, $1a, $22, $db, $5f, $e8, $88        ;; 0d:5d0e ????????
    db   $94, $8a, $d4, $f3, $12, $11, $00             ;; 0d:5d16 ???????
    db  $f6 ;;UNK_f6
    db   $06, $00                                      ;; 0d:5d1e ??

script_01f9:
    db  $09 ;;UNK_09
    db   $2d, $00, $07, $80, $80, $18, $de, $a3        ;; 0d:5d21 ????????
    db   $01, $11, $04, $10, $1a, $c7, $d8, $39        ;; 0d:5d29 ????????
    db   $26, $33, $6f, $20, $e2, $83, $39, $f0        ;; 0d:5d31 ????????
    db   $12, $11, $00, $00                            ;; 0d:5d39 ????

script_01fa:
    db  $0b ;;IF JR
    db   $81, $00, $03                                 ;; 0d:5d3e ???
    db  $18 ;;UNK_18
    db   $01, $05                                      ;; 0d:5d42 ??
    db  $ba ;;UNK_ba
    db   $10, $09, $01, $e0, $00                       ;; 0d:5d45 ?????

script_01fb:
    db  $0b ;;IF JR
    db   $81, $00, $03                                 ;; 0d:5d4b ???
    db  $18 ;;UNK_18
    db   $01, $05                                      ;; 0d:5d4f ??
    db  $ba ;;UNK_ba
    db   $10, $09, $0d, $e2, $00                       ;; 0d:5d52 ?????

script_01fc:
    db  $0b ;;IF JR
    db   $81, $00, $03                                 ;; 0d:5d58 ???
    db  $18 ;;UNK_18
    db   $01, $05                                      ;; 0d:5d5c ??
    db  $ba ;;UNK_ba
    db   $10, $11, $07, $e4, $00                       ;; 0d:5d5f ?????

script_01fd:
    db  $0b ;;IF JR
    db   $81, $00, $03                                 ;; 0d:5d65 ???
    db  $18 ;;UNK_18
    db   $01, $05                                      ;; 0d:5d69 ??
    db  $ba ;;UNK_ba
    db   $10, $01, $07, $e6, $00                       ;; 0d:5d6c ?????

script_01fe:
    db  $04 ;;MSG
    db   $10, $00                                      ;; 0d:5d72 ??
    db  $09 ;;UNK_09
    db   $4f, $00, $21, $04, $cb, $66, $32, $6b        ;; 0d:5d75 ????????
    db   $22, $3b, $e7, $1a, $e6, $ea, $3c, $25        ;; 0d:5d7d ????????
    db   $d9, $5f, $8c, $24, $67, $1a, $d8, $e4        ;; 0d:5d85 ????????
    db   $e8, $dc, $e3, $e0, $4e, $e7, $80, $14        ;; 0d:5d8d ????????
    db   $f0, $00, $01, $67, $04, $d2, $21, $40        ;; 0d:5d95 ????????
    db   $5a, $20, $d5, $d8, $4e, $2d, $1a, $da        ;; 0d:5d9d ????????
    db   $38, $30, $ff, $c4, $e1, $8f, $91, $3e        ;; 0d:5da5 ????????
    db   $d9, $1a, $c0, $d8, $e0, $63, $80, $5b        ;; 0d:5dad ????????
    db   $6b, $61, $12, $1b, $5b, $e6, $3b, $3a        ;; 0d:5db5 ????????
    db   $60, $dc, $4d, $59, $21, $1a, $23, $20        ;; 0d:5dbd ????????
    db   $be, $eb, $89, $6e, $d5, $67, $f0, $1a        ;; 0d:5dc5 ????????
    db   $c7, $46, $ff, $d7, $d8, $d9, $32, $28        ;; 0d:5dcd ????????
    db   $c3, $90, $dc, $41, $f3, $12, $11, $00        ;; 0d:5dd5 ????????
    db   $03, $08, $04, $bf, $f9, $14, $00, $18        ;; 0d:5ddd ????????
    db   $d9, $0d, $d8, $0f, $04, $10, $cb, $d8        ;; 0d:5de5 ????????
    db   $d6, $d8, $dc, $4d, $d7, $1a, $69, $69        ;; 0d:5ded ????????
    db   $ff, $be, $eb, $89, $6e, $d5, $67, $f3        ;; 0d:5df5 ????????
    db   $00, $da, $38, $04, $12, $11, $00, $00        ;; 0d:5dfd ????????

script_01ff:
    db  $08 ;;IF ? JR
    db   $f9, $00, $2c                                 ;; 0d:5e06 ???
    db  $04 ;;MSG
    db   $10, $ff, $bc, $3b, $4f, $20, $e0, $41        ;; 0d:5e0a ????????
    db   $dc, $d6, $f4, $12, $11, $00                  ;; 0d:5e12 ??????
    db  $c7 ;;UNK_c7
    db   $08, $7f, $fe, $00, $02, $f8, $14, $08        ;; 0d:5e19 ????????
    db   $7f, $7e, $00, $02, $f8, $09, $08, $ff        ;; 0d:5e21 ????????
    db   $7e, $00, $02, $f8, $07, $08, $ff, $fe        ;; 0d:5e29 ????????
    db   $00, $02, $f8, $0e                            ;; 0d:5e31 ????
    db  $00 ;;RET

script_0200:
    db  $04 ;;MSG
    db   $10, $5b, $cb, $be, $bc, $c8, $cf, $be        ;; 0d:5e37 ????????
    db   $cb, $ff, $d2, $c8, $ce, $cb, $51, $c9        ;; 0d:5e3f ????????
    db   $f0, $12, $11, $00                            ;; 0d:5e47 ????
    db  $f9 ;;UNK_SFX_F9
    db   $05                                           ;; 0d:5e4c ?
    db  $c1 ;;UNK_c1
    db   $00                                           ;; 0d:5e4e ?

script_0201:
    db  $00 ;;RET

script_0202:
    db  $04 ;;MSG
    db   $10, $ff, $8d, $28, $e0, $20, $e7, $38        ;; 0d:5e51 ........
    db   $30, $1a, $59, $21, $4c, $ea, $21, $2b        ;; 0d:5e59 ........
    db   $80, $14, $f0, $12, $11, $00                  ;; 0d:5e61 ......
    db  $f9 ;;UNK_SFX_F9
    db   $05                                           ;; 0d:5e68 .
    db  $c4 ;;UNK_c4
    db   $10, $00                                      ;; 0d:5e6a ..

script_0203:
    db  $04 ;;MSG
    db   $10, $cc, $64, $20, $82, $3a, $26, $63        ;; 0d:5e6d ????????
    db   $57, $d5, $d8, $1a, $d5, $5f, $de, $4e        ;; 0d:5e75 ????????
    db   $43, $48, $db, $ff, $a7, $cc, $96, $e5        ;; 0d:5e7d ????????
    db   $1a, $3c, $ff, $ac, $62, $e7, $33, $9e        ;; 0d:5e85 ????????
    db   $f0, $12, $1b, $85, $e2, $6b, $43, $56        ;; 0d:5e8d ????????
    db   $df, $26, $e6, $21, $2b, $1a, $d7, $dc        ;; 0d:5e95 ????????
    db   $d9, $d9, $27, $4e, $28, $ea, $2a, $4a        ;; 0d:5e9d ????????
    db   $24, $e8, $1a, $5c, $28, $23, $d8, $e0        ;; 0d:5ea5 ????????
    db   $f0, $12, $11, $00                            ;; 0d:5ead ????
    db  $00 ;;RET

script_0204:
    db  $04 ;;MSG
    db   $10, $49, $40, $5a, $20, $4d, $e5, $ec        ;; 0d:5eb3 ????????
    db   $1a, $ff, $41, $d8, $d9, $90, $22, $5c        ;; 0d:5ebb ????????
    db   $4f, $e6, $f3, $12, $11, $00                  ;; 0d:5ec3 ??????
    db  $f6 ;;UNK_f6
    db   $03, $00                                      ;; 0d:5eca ??

script_0205:
    db  $04 ;;MSG
    db   $10, $c0, $d8, $e0, $63, $ff, $c4, $e1        ;; 0d:5ecd ????????
    db   $8f, $91, $26, $89, $e1, $1a, $41, $20        ;; 0d:5ed5 ????????
    db   $23, $20, $e6, $e3, $d8, $d6, $dc, $56        ;; 0d:5edd ????????
    db   $1a, $e3, $46, $27, $26, $50, $43, $32        ;; 0d:5ee5 ????????
    db   $e3, $47, $e6, $f0, $12, $1b, $cd, $e5        ;; 0d:5eed ????????
    db   $57, $29, $25, $6b, $20, $48, $1a, $ea        ;; 0d:5ef5 ????????
    db   $2a, $4a, $24, $67, $6a, $83, $df, $1a        ;; 0d:5efd ????????
    db   $c9, $46, $27, $37, $26, $d9, $90, $df        ;; 0d:5f05 ????????
    db   $f0, $12, $11, $00                            ;; 0d:5f0d ????
    db  $00 ;;RET

script_0206:
    db  $04 ;;MSG
    db   $10, $49, $ee, $3a, $40, $32, $65, $24        ;; 0d:5f13 ????????
    db   $e8, $1a, $52, $5f, $8c, $cc, $33, $e1        ;; 0d:5f1b ????????
    db   $61, $12, $11, $00                            ;; 0d:5f23 ????
    db  $f9 ;;UNK_SFX_F9
    db   $05                                           ;; 0d:5f28 ?
    db  $c2 ;;UNK_C2
    db   $04                                           ;; 0d:5f2a ?
    db  $00 ;;RET

script_0207:
    db  $04 ;;MSG
    db   $10, $14, $f5, $8d, $e7, $6c, $60, $e2        ;; 0d:5f2d ????????
    db   $f3, $1a, $15, $f5, $c4, $d8, $d8, $e3        ;; 0d:5f35 ????????
    db   $22, $5c, $e6, $1a, $ff, $c9, $4e, $86        ;; 0d:5f3d ????????
    db   $9f, $80, $14, $f3, $12, $1b, $c3, $90        ;; 0d:5f45 ????????
    db   $dc, $41, $f5, $c0, $dc, $4d, $42, $d8        ;; 0d:5f4d ????????
    db   $1a, $22, $2a, $ff, $c9, $4e, $86, $9f        ;; 0d:5f55 ????????
    db   $f3, $12, $11, $00                            ;; 0d:5f5d ????
    db  $f8 ;;UNK_MUSIC_F8
    db   $09                                           ;; 0d:5f62 ?
    db  $fd ;;UNK_fd
    db   $02, $26, $f0, $14, $87, $f0, $3c, $f9        ;; 0d:5f64 ????????
    db   $14, $bf, $bf, $ba, $2c, $02, $08, $ba        ;; 0d:5f6c ????????
    db   $2c, $04, $08, $ba, $2c, $06, $08, $ba        ;; 0d:5f74 ????????
    db   $2c, $08, $08, $ba, $10, $0a, $08, $bf        ;; 0d:5f7c ????????
    db   $8a, $0a, $09, $84, $04, $10, $15, $f5        ;; 0d:5f84 ????????
    db   $c1, $e2, $df, $25, $47, $f3, $1a, $14        ;; 0d:5f8c ????????
    db   $f5, $c2, $f1, $87, $29, $ee, $e7, $f1        ;; 0d:5f94 ????????
    db   $12, $11, $00, $f0, $28, $f8, $00, $85        ;; 0d:5f9c ????????
    db   $a5, $88, $f9, $0c, $03, $06, $02, $80        ;; 0d:5fa4 ????????
    db   $00, $e8, $8a, $0a, $00, $f9, $0c, $03        ;; 0d:5fac ????????
    db   $0e, $02, $80, $00, $f4, $0e, $53, $14        ;; 0d:5fb4 ????????
    db   $00, $f0, $3c, $8a, $0e, $00, $85, $f9        ;; 0d:5fbc ????????
    db   $0c, $03, $05, $02, $80, $00, $8a, $14        ;; 0d:5fc4 ????????
    db   $00, $ba, $10, $0e, $05, $f9, $19, $bf        ;; 0d:5fcc ????????
    db   $fb, $f0, $3c, $89, $a4, $86, $02, $1f        ;; 0d:5fd4 ????????
    db   $df, $ab, $00                                 ;; 0d:5fdc ???

script_0208:
    db  $04 ;;MSG
    db   $10, $f1, $6a, $46, $f3, $69, $cc, $64        ;; 0d:5fe0 ????????
    db   $d8, $d5, $e2, $d7, $ec, $1a, $f1, $87        ;; 0d:5fe8 ????????
    db   $d4, $e0, $20, $d7, $46, $4a, $d9, $5f        ;; 0d:5ff0 ????????
    db   $e0, $1a, $f1, $22, $2a, $3d, $de, $ec        ;; 0d:5ff8 ????????
    db   $f3, $12, $1b, $f1, $ff, $35, $ff, $14        ;; 0d:6000 ????????
    db   $f4, $f3, $1a, $f1, $ff, $bd, $36, $24        ;; 0d:6008 ????????
    db   $81, $de, $95, $ea, $40, $dc, $e0, $f4        ;; 0d:6010 ????????
    db   $1a, $35, $f1, $ff, $f1, $ff, $14, $35        ;; 0d:6018 ????????
    db   $f3, $12, $11, $00                            ;; 0d:6020 ????
    db  $bd ;;UNK_bd
    db   $c5, $07, $f3, $04, $00, $0e, $03, $fc        ;; 0d:6025 ????????
    db   $25, $fd, $02, $19, $0a, $04, $16, $f0        ;; 0d:602d ????????
    db   $5a, $bc, $f8, $0a, $f0, $46, $10, $10        ;; 0d:6035 ????????
    db   $04, $10, $ba, $63, $2b, $d4, $f5, $c2        ;; 0d:603d ????????
    db   $ee, $8c, $da, $df, $d4, $d7, $1a, $22        ;; 0d:6045 ????????
    db   $36, $6b, $20, $24, $81, $d4, $da, $8a        ;; 0d:604d ????????
    db   $e1, $ef, $1a, $42, $57, $d9, $e5, $dc        ;; 0d:6055 ????????
    db   $4e, $d7, $35, $12, $1b, $49, $87, $d4        ;; 0d:605d ????????
    db   $e0, $20, $92, $9e, $52, $5f, $e0, $1a        ;; 0d:6065 ????????
    db   $94, $df, $8a, $4d, $2d, $d9, $3f, $4c        ;; 0d:606d ????????
    db   $24, $e8, $1a, $93, $d8, $d9, $28, $23        ;; 0d:6075 ????????
    db   $27, $d8, $35, $12, $1b, $ff, $c8, $db        ;; 0d:607d ????????
    db   $80, $14, $35, $1a, $00, $f0, $32, $04        ;; 0d:6085 ????????
    db   $49, $ee, $8c, $e6, $3c, $e5, $ec, $35        ;; 0d:608d ????????
    db   $00, $f0, $28, $04, $1a, $ff, $bb, $84        ;; 0d:6095 ????????
    db   $49, $40, $5a, $20, $33, $35, $12, $11        ;; 0d:609d ????????
    db   $00, $bd, $f0, $3c, $18, $f8, $00, $f0        ;; 0d:60a5 ????????
    db   $3c, $bc, $85, $80, $80, $f0, $32, $04        ;; 0d:60ad ????????
    db   $10, $14, $f5, $f1, $d0, $2a, $38, $2d        ;; 0d:60b5 ????????
    db   $8c, $c2, $f4, $1a, $00, $f0, $1e, $04        ;; 0d:60bd ????????
    db   $ff, $35, $ff, $c9, $4e, $86, $9f, $f3        ;; 0d:60c5 ????????
    db   $f3, $1a, $ff, $35, $6a, $2a, $38, $37        ;; 0d:60cd ????????
    db   $26, $48, $f4, $f3, $12, $1b, $ff, $35        ;; 0d:60d5 ????????
    db   $49, $22, $db, $21, $88, $28, $23, $30        ;; 0d:60dd ????????
    db   $1a, $37, $28, $82, $26, $ba, $63, $2b        ;; 0d:60e5 ????????
    db   $d4, $1a, $22, $56, $de, $2f, $da, $22        ;; 0d:60ed ????????
    db   $36, $e0, $d8, $35, $12, $11, $00, $f8        ;; 0d:60f5 ????????
    db   $04, $00                                      ;; 0d:60fd ??

script_0209:
    db  $04 ;;MSG
    db   $10, $ba, $60, $8b, $65, $31, $6f, $d8        ;; 0d:6100 ????????
    db   $2f, $da, $1a, $2a, $df, $25, $2f, $2d        ;; 0d:6108 ????????
    db   $ff, $5f, $64, $1a, $2f, $22, $5c, $26        ;; 0d:6110 ????????
    db   $8a, $e5, $e6, $5c, $e3, $f3, $12, $11        ;; 0d:6118 ????????
    db   $00                                           ;; 0d:6120 ?
    db  $00 ;;RET

script_020a:
    db  $00 ;;RET

script_020b:
    db  $04 ;;MSG
    db   $10, $c0, $98, $6f, $d4, $9e, $22, $36        ;; 0d:6124 ????????
    db   $ea, $3c, $de, $f3, $12, $11, $00             ;; 0d:612c ???????
    db  $00 ;;RET

script_020c:
    db  $00 ;;RET

script_020d:
    db  $04 ;;MSG
    db   $10, $62, $e1, $57, $ec, $32, $e5, $26        ;; 0d:6136 ????????
    db   $d4, $da, $e2, $ef, $1a, $bd, $2e, $de        ;; 0d:613e ????????
    db   $ff, $c5, $3c, $25, $d9, $21, $2b, $1a        ;; 0d:6146 ????????
    db   $58, $92, $d5, $57, $2f, $2d, $87, $5a        ;; 0d:614e ????????
    db   $d8, $12, $1b, $30, $22, $2a, $6a, $30        ;; 0d:6156 ????????
    db   $27, $d9, $56, $df, $e6, $1a, $e1, $32        ;; 0d:615e ????????
    db   $4c, $c0, $df, $8a, $4d, $f0, $1a, $35        ;; 0d:6166 ????????
    db   $68, $3b, $e7, $6c, $ff, $c3, $90, $dc        ;; 0d:616e ????????
    db   $41, $f0, $12, $11, $00                       ;; 0d:6176 ?????
    db  $00 ;;RET

script_020e:
    db  $04 ;;MSG
    db   $10, $c3, $90, $dc, $41, $37, $26, $96        ;; 0d:617d ????????
    db   $de, $2f, $da, $1a, $23, $20, $d6, $3b        ;; 0d:6185 ????????
    db   $e5, $da, $20, $50, $22, $5c, $e6, $1a        ;; 0d:618d ????????
    db   $8a, $e5, $e6, $5c, $e3, $f0, $12, $11        ;; 0d:6195 ????????
    db   $00                                           ;; 0d:619d ?
    db  $00 ;;RET

script_020f:
    db  $14 ;;UNK_14
    db   $1a, $03, $04, $02, $10, $00, $04, $10        ;; 0d:61a0 ????????
    db   $00, $08, $96, $00, $7d, $04, $14, $f5        ;; 0d:61a8 ????????
    db   $15, $f3, $1a, $00, $f9, $17, $04, $bb        ;; 0d:61b0 ????????
    db   $e2, $da, $2e, $d7, $f5, $c1, $67, $e5        ;; 0d:61b8 ????????
    db   $ec, $f3, $1a, $49, $e7, $6c, $42, $e2        ;; 0d:61c0 ????????
    db   $e9, $2f, $da, $f3, $12, $1b, $15, $f5        ;; 0d:61c8 ????????
    db   $85, $31, $ff, $d7, $5e, $e5, $1a, $37        ;; 0d:61d0 ????????
    db   $26, $df, $e2, $9e, $39, $f3, $12, $1b        ;; 0d:61d8 ????????
    db   $bb, $e2, $da, $2e, $d7, $f5, $c1, $46        ;; 0d:61e0 ????????
    db   $2d, $d5, $21, $e7, $1a, $22, $2a, $43        ;; 0d:61e8 ????????
    db   $2f, $d7, $46, $e6, $f4, $12, $11, $00        ;; 0d:61f0 ????????
    db   $15, $03, $04, $02, $10, $00, $f0, $14        ;; 0d:61f8 ????????
    db   $14, $03, $04, $02, $10, $00, $04, $10        ;; 0d:6200 ????????
    db   $15, $f5, $c2, $28, $63, $57, $e2, $e3        ;; 0d:6208 ????????
    db   $4e, $f0, $1a, $14, $f5, $c2, $ee, $3a        ;; 0d:6210 ????????
    db   $60, $98, $59, $21, $1a, $52, $5f, $8c        ;; 0d:6218 ????????
    db   $21, $e7, $e6, $dc, $d7, $9b, $1b, $00        ;; 0d:6220 ????????
    db   $da, $16, $04, $15, $f5, $bb, $20, $89        ;; 0d:6228 ????????
    db   $38, $d9, $90, $f3, $12, $11, $00, $03        ;; 0d:6230 ????????
    db   $04, $02, $11, $00, $1b, $00                  ;; 0d:6238 ??????

script_0210:
    db  $04 ;;MSG
    db   $bb, $e2, $da, $2e, $d7, $f5, $5b, $de        ;; 0d:623f ????????
    db   $e1, $d8, $ea, $59, $21, $1a, $43, $21        ;; 0d:6247 ????????
    db   $df, $25, $d7, $36, $48, $f0, $12, $1b        ;; 0d:624f ????????
    db   $ff, $c7, $46, $80, $6e, $45, $4e, $f0        ;; 0d:6257 ????????
    db   $1a, $49, $e7, $ee, $3a, $6f, $20, $e3        ;; 0d:625f ????????
    db   $27, $83, $21, $e6, $1a, $52, $5f, $8c        ;; 0d:6267 ????????
    db   $95, $ea, $3e, $e1, $f0, $12, $1b, $ff        ;; 0d:626f ????????
    db   $c3, $90, $dc, $41, $40, $4b, $60, $e2        ;; 0d:6277 ????????
    db   $e7, $1a, $22, $2a, $ff, $e3, $46, $27        ;; 0d:627f ????????
    db   $3e, $53, $62, $e1, $d4, $1a, $2d, $df        ;; 0d:6287 ????????
    db   $38, $d4, $d7, $ec, $f0, $12, $1b, $ff        ;; 0d:628f ????????
    db   $c8, $e1, $df, $57, $63, $e7, $d6, $db        ;; 0d:6297 ????????
    db   $37, $26, $23, $d8, $1a, $ff, $c4, $e1        ;; 0d:629f ????????
    db   $8f, $91, $43, $48, $db, $22, $2a, $1a        ;; 0d:62a7 ????????
    db   $ff, $8d, $da, $4e, $86, $e5, $57, $cc        ;; 0d:62af ????????
    db   $ea, $3c, $d7, $f0, $12, $1b, $14, $f5        ;; 0d:62b7 ????????
    db   $8d, $da, $4e, $d7, $f1, $ff, $35, $f3        ;; 0d:62bf ????????
    db   $f3, $1a, $68, $2a, $ff, $be, $eb, $89        ;; 0d:62c7 ????????
    db   $df, $d5, $67, $f4, $f3, $1a, $bb, $e2        ;; 0d:62cf ????????
    db   $da, $2e, $d7, $f5, $d2, $54, $f0, $12        ;; 0d:62d7 ????????
    db   $1b, $ff, $ba, $2b, $37, $28, $31, $40        ;; 0d:62df ????????
    db   $46, $43, $d8, $1a, $ff, $d7, $d8, $d9        ;; 0d:62e7 ????????
    db   $32, $3f, $25, $23, $20, $d8, $e9, $83        ;; 0d:62ef ????????
    db   $1a, $ff, $e3, $46, $27, $3e, $53, $cf        ;; 0d:62f7 ????????
    db   $29, $d7, $e2, $5d, $f0, $12, $1b, $14        ;; 0d:62ff ????????
    db   $f5, $f1, $ff, $d2, $21, $f1, $ff, $f1        ;; 0d:6307 ????????
    db   $1a, $f1, $6a, $2a, $38, $37, $26, $23        ;; 0d:630f ????????
    db   $30, $1a, $3d, $ea, $3c, $25, $95, $ea        ;; 0d:6317 ????????
    db   $f4, $12, $1b, $bb, $e2, $da, $2e, $d7        ;; 0d:631f ????????
    db   $f5, $cc, $64, $d8, $ea, $2a, $38, $1a        ;; 0d:6327 ????????
    db   $37, $4a, $23, $31, $43, $3c, $df, $d7        ;; 0d:632f ????????
    db   $35, $12, $1b, $94, $36, $33, $6a, $4e        ;; 0d:6337 ????????
    db   $d7, $66, $2d, $2b, $1a, $2d, $e6, $de        ;; 0d:633f ????????
    db   $ff, $bc, $dc, $d5, $92, $f0, $1a, $97        ;; 0d:6347 ????????
    db   $20, $de, $95, $ea, $26, $d5, $98, $3f        ;; 0d:634f ????????
    db   $e5, $f0, $12, $1b, $ff, $ba, $e6, $de        ;; 0d:6357 ????????
    db   $ff, $bd, $e5, $34, $bb, $46, $46, $1a        ;; 0d:635f ????????
    db   $40, $46, $22, $36, $da, $98, $22, $2a        ;; 0d:6367 ????????
    db   $38, $f0, $1a, $97, $d8, $ee, $3a, $40        ;; 0d:636f ????????
    db   $66, $e3, $59, $21, $f0, $00                  ;; 0d:6377 ??????
    db  $00 ;;RET

script_0211:
    db  $04 ;;MSG
    db   $10, $ba, $38, $59, $21, $3e, $de, $d4        ;; 0d:637f ????????
    db   $ec, $80, $d5, $e2, $ec, $f4, $1a, $f1        ;; 0d:6387 ????????
    db   $d2, $21, $2d, $38, $37, $4a, $c6, $4e        ;; 0d:638f ????????
    db   $e2, $e6, $f0, $12, $1b, $ba, $63, $2b        ;; 0d:6397 ????????
    db   $58, $5d, $d9, $28, $23, $d8, $1a, $e9        ;; 0d:639f ????????
    db   $83, $df, $d4, $da, $20, $32, $e5, $6e        ;; 0d:63a7 ????????
    db   $27, $1a, $23, $31, $42, $3c, $e1, $2f        ;; 0d:63af ????????
    db   $da, $f0, $12, $11, $00                       ;; 0d:63b7 ?????
    db  $00 ;;RET

script_0212:
    db  $04 ;;MSG
    db   $10, $d0, $20, $41, $39, $22, $36, $6b        ;; 0d:63be ????????
    db   $d8, $1a, $63, $e1, $57, $bc, $db, $e2        ;; 0d:63c6 ????????
    db   $d6, $e2, $d5, $e2, $e6, $1a, $2e, $21        ;; 0d:63ce ????????
    db   $2b, $40, $27, $61, $12, $1b, $5b, $e6        ;; 0d:63d6 ????????
    db   $d4, $ea, $2d, $4a, $d8, $da, $da, $37        ;; 0d:63de ????????
    db   $4a, $d4, $1a, $d9, $3c, $54, $28, $e8        ;; 0d:63e6 ????????
    db   $e3, $ff, $95, $e5, $23, $f3, $12, $11        ;; 0d:63ee ????????
    db   $00                                           ;; 0d:63f6 ?
    db  $00 ;;RET

script_0213:
    db  $04 ;;MSG
    db   $10, $ba, $63, $2b, $d4, $6c, $93, $48        ;; 0d:63f9 ????????
    db   $e7, $5d, $1a, $d5, $5f, $23, $27, $80        ;; 0d:6401 ????????
    db   $8d, $45, $27, $ef, $1a, $31, $2d, $42        ;; 0d:6409 ????????
    db   $41, $dc, $d6, $dc, $29, $f0, $12, $1b        ;; 0d:6411 ????????
    db   $c1, $d8, $6c, $ff, $e3, $df, $d4, $ec        ;; 0d:6419 ????????
    db   $2f, $da, $40, $2e, $e3, $1a, $2f, $2d        ;; 0d:6421 ????????
    db   $22, $46, $4a, $89, $3a, $39, $1a, $c3        ;; 0d:6429 ????????
    db   $d4, $d7, $d7, $f0, $12, $11, $00             ;; 0d:6431 ???????
    db  $00 ;;RET

script_0214:
    db  $04 ;;MSG
    db   $10, $5b, $41, $39, $22, $36, $2a, $2e        ;; 0d:643a ????????
    db   $2d, $1a, $d5, $32, $84, $dc, $d9, $90        ;; 0d:6442 ????????
    db   $3d, $21, $2b, $3e, $d9, $1a, $3b, $e5        ;; 0d:644a ????????
    db   $e3, $3e, $4d, $4c, $2f, $ff, $c3, $d4        ;; 0d:6452 ????????
    db   $d7, $d7, $f0, $12, $1b, $c3, $d4, $d7        ;; 0d:645a ????????
    db   $25, $31, $2d, $28, $23, $d8, $1a, $95        ;; 0d:6462 ????????
    db   $e5, $23, $ff, $4e, $25, $50, $1a, $23        ;; 0d:646a ????????
    db   $20, $d7, $54, $27, $e7, $f0, $12, $11        ;; 0d:6472 ????????
    db   $00                                           ;; 0d:647a ?
    db  $00 ;;RET

script_0215:
    db  $04 ;;MSG
    db   $10, $85, $20, $bb, $5e, $de, $3e, $53        ;; 0d:647d ????????
    db   $c2, $d6, $20, $31, $1a, $5c, $d7, $d7        ;; 0d:6485 ????????
    db   $4e, $3d, $64, $d8, $ea, $2a, $38, $1a        ;; 0d:648d ????????
    db   $2f, $22, $2a, $ff, $d7, $54, $27, $e7        ;; 0d:6495 ????????
    db   $f3, $12, $11, $00                            ;; 0d:649d ????
    db  $00 ;;RET

script_0216:
    db  $04 ;;MSG
    db   $10, $d0, $3b, $e7, $6c, $43, $5f, $4f        ;; 0d:64a3 ????????
    db   $43, $48, $db, $1a, $ba, $63, $2b, $58        ;; 0d:64ab ????????
    db   $df, $30, $66, $ec, $f4, $1a, $cc, $2a        ;; 0d:64b3 ????????
    db   $6c, $ff, $d7, $d8, $e3, $38, $e6, $6b        ;; 0d:64bb ????????
    db   $d7, $f0, $12, $11, $00                       ;; 0d:64c3 ?????
    db  $00 ;;RET

script_0217:
    db  $04 ;;MSG
    db   $10, $ff, $35, $f4, $f4, $00                  ;; 0d:64ca ??????
    db  $f0 ;;UNK_F0
    db   $50                                           ;; 0d:64d1 ?
    db  $04 ;;MSG
    db   $69, $d0, $46, $f3, $1a, $49, $e7, $6c        ;; 0d:64d3 ????????
    db   $42, $e2, $e9, $2f, $da, $f3, $12, $11        ;; 0d:64db ????????
    db   $00                                           ;; 0d:64e3 ?
    db  $f0 ;;UNK_F0
    db   $3c                                           ;; 0d:64e5 ?
    db  $18 ;;UNK_18
    db   $f9, $0f, $fd, $01, $17, $f8, $05, $f0        ;; 0d:64e7 ????????
    db   $78, $04, $10, $35, $6a, $3b, $28, $2e        ;; 0d:64ef ????????
    db   $20, $24, $e8, $f4, $f4, $12, $11, $00        ;; 0d:64f7 ????????
    db   $87, $80, $80, $10, $f9, $07, $f0, $0f        ;; 0d:64ff ????????
    db   $f9, $07, $10, $f0, $3c, $86, $f0, $28        ;; 0d:6507 ????????
    db   $04, $10, $35, $97, $d8, $ec, $f3, $1a        ;; 0d:650f ????????
    db   $bd, $47, $ee, $28, $d9, $e2, $3a, $46        ;; 0d:6517 ????????
    db   $42, $9b, $12, $11, $00, $87, $80, $80        ;; 0d:651f ????????
    db   $10, $f9, $07, $f0, $0f, $f9, $07, $10        ;; 0d:6527 ????????
    db   $f0, $3c, $86, $04, $10, $d2, $21, $22        ;; 0d:652f ????????
    db   $5c, $e1, $de, $49, $ee, $e0, $1a, $24        ;; 0d:6537 ????????
    db   $67, $42, $e2, $23, $27, $f4, $12, $1b        ;; 0d:653f ????????
    db   $35, $ff, $00, $f0, $50, $04, $ff, $c8        ;; 0d:6547 ????????
    db   $de, $d4, $ec, $f0, $1a, $35, $ff, $bc        ;; 0d:654f ????????
    db   $64, $20, $9c, $23, $42, $9b, $12, $11        ;; 0d:6557 ????????
    db   $00, $9c, $09, $da, $19, $da, $58, $f9        ;; 0d:655f ????????
    db   $07, $f0, $0a, $f9, $07, $f0, $0a, $f9        ;; 0d:6567 ????????
    db   $07, $f8, $14, $00                            ;; 0d:656f ????

script_0218:
    db  $04 ;;MSG
    db   $10, $bd, $5a, $dc, $4b, $f5, $bb, $98        ;; 0d:6574 ????????
    db   $3f, $e5, $1a, $6f, $d8, $3b, $4d, $59        ;; 0d:657c ????????
    db   $21, $e5, $6b, $df, $d9, $1a, $37, $4a        ;; 0d:6584 ????????
    db   $23, $31, $22, $46, $e1, $f0, $12, $1b        ;; 0d:658c ????????
    db   $ff, $35, $ff, $ba, $63, $2b, $d4, $35        ;; 0d:6594 ????????
    db   $f4, $1a, $ff, $c8, $db, $80, $ec, $54        ;; 0d:659c ????????
    db   $f3, $1a, $68, $3b, $28, $da, $8b, $df        ;; 0d:65a4 ????????
    db   $35, $12, $1b, $9a, $2a, $43, $4e, $28        ;; 0d:65ac ????????
    db   $33, $22, $2a, $1a, $ff, $bc, $5a, $20        ;; 0d:65b4 ????????
    db   $50, $51, $39, $41, $d4, $f0, $1a, $12        ;; 0d:65bc ????????
    db   $1b, $ff, $c7, $e2, $d5, $e2, $d7, $57        ;; 0d:65c4 ????????
    db   $d8, $4d, $4c, $89, $e0, $d8, $1a, $6f        ;; 0d:65cc ????????
    db   $d4, $9e, $52, $5f, $8c, $23, $27, $d8        ;; 0d:65d4 ????????
    db   $1a, $2d, $6e, $4d, $22, $db, $21, $88        ;; 0d:65dc ????????
    db   $f0, $12, $00                                 ;; 0d:65e4 ???
    db  $da ;;UNK_DA
    db   $1a                                           ;; 0d:65e8 ?
    db  $04 ;;MSG
    db   $11, $00                                      ;; 0d:65ea ??
    db  $00 ;;RET

script_0219:
    db  $09 ;;UNK_09
    db   $2a, $00, $53, $f8, $00, $04, $10, $14        ;; 0d:65ee ????????
    db   $ff, $41, $39, $ff, $a9, $ba, $63, $2b        ;; 0d:65f6 ????????
    db   $d4, $ef, $1a, $23, $20, $3f, $2e, $26        ;; 0d:65fe ????????
    db   $50, $1a, $ba, $63, $2b, $d4, $35, $00        ;; 0d:6606 ????????
    db   $f0, $78, $de, $04, $11, $00, $18, $f9        ;; 0d:660e ????????
    db   $06, $fd, $02, $9c, $06, $04, $10, $69        ;; 0d:6616 ????????
    db   $69, $8d, $45, $27, $43, $4b, $1a, $69        ;; 0d:661e ????????
    db   $38, $5d, $4b, $39, $52, $5f, $e0, $1a        ;; 0d:6626 ????????
    db   $ff, $bd, $5a, $dc, $4b, $6c, $87, $67        ;; 0d:662e ????????
    db   $6b, $35, $12, $1b, $00, $02, $6d, $32        ;; 0d:6636 ????????
    db   $da, $56, $da, $1d, $f8, $0e, $00             ;; 0d:663e ???????

script_021a:
    db  $04 ;;MSG
    db   $10, $d0, $66, $d6, $64, $20, $33, $ff        ;; 0d:6646 ????????
    db   $c3, $d4, $d7, $d7, $f0, $00                  ;; 0d:664e ??????
    db  $08 ;;IF ? JR
    db   $a8, $00, $19                                 ;; 0d:6655 ???
    db  $04 ;;MSG
    db   $1a, $bd, $5a, $dc, $4b, $ff, $e5, $90        ;; 0d:6659 ????????
    db   $54, $22, $5c, $e6, $1a, $33, $ea, $e1        ;; 0d:6661 ????????
    db   $34, $5b, $3b, $3f, $37, $e7, $f0, $00        ;; 0d:6669 ????????
    db  $04 ;;MSG
    db   $12, $11, $00                                 ;; 0d:6672 ???
    db  $00 ;;RET

script_021b:
    db  $04 ;;MSG
    db   $10, $00                                      ;; 0d:6677 ??
    db  $08 ;;IF ? JR
    db   $a8, $00, $20                                 ;; 0d:667a ???
    db  $04 ;;MSG
    db   $c7, $3c, $23, $27, $4a, $e9, $56, $5d        ;; 0d:667e ????????
    db   $57, $31, $1a, $d9, $83, $5d, $25, $9c        ;; 0d:6686 ????????
    db   $23, $52, $30, $56, $1a, $e3, $e2, $31        ;; 0d:668e ????????
    db   $47, $60, $4b, $f0, $00                       ;; 0d:6696 ?????
    db  $01 ;;JR
    db   $30                                           ;; 0d:669c ?
    db  $04 ;;MSG
    db   $85, $20, $e3, $e2, $31, $47, $60, $4b        ;; 0d:669e ????????
    db   $37, $e6, $1a, $d6, $5d, $2e, $39, $f3        ;; 0d:66a6 ????????
    db   $12, $1b, $c1, $32, $25, $95, $e5, $23        ;; 0d:66ae ????????
    db   $3e, $4d, $e5, $1a, $23, $20, $e9, $56        ;; 0d:66b6 ????????
    db   $5d, $57, $33, $22, $2a, $1a, $c6, $e7        ;; 0d:66be ????????
    db   $34, $cb, $e2, $9e, $e6, $f3, $00             ;; 0d:66c6 ???????
    db  $04 ;;MSG
    db   $12, $11, $00                                 ;; 0d:66ce ???
    db  $00 ;;RET

script_021c:
    db  $04 ;;MSG
    db   $10, $85, $20, $e3, $e2, $31, $47, $60        ;; 0d:66d3 ????????
    db   $4b, $1a, $d4, $e3, $e3, $32, $38, $25        ;; 0d:66db ????????
    db   $ea, $2a, $e1, $1a, $23, $20, $3b, $e5        ;; 0d:66e3 ????????
    db   $e3, $3d, $33, $e3, $e3, $39, $f0, $12        ;; 0d:66eb ????????
    db   $11, $00                                      ;; 0d:66f3 ??
    db  $00 ;;RET

script_021d:
    db  $04 ;;MSG
    db   $10, $cc, $d8, $20, $23, $30, $40, $e8        ;; 0d:66f7 ????????
    db   $da, $d8, $1a, $63, $e1, $e6, $dc, $47        ;; 0d:66ff ????????
    db   $f4, $68, $3b, $e7, $6c, $1a, $bd, $5a        ;; 0d:6707 ????????
    db   $dc, $4b, $6c, $40, $21, $6b, $f3, $12        ;; 0d:670f ????????
    db   $11, $00                                      ;; 0d:6717 ??
    db  $00 ;;RET

script_021e:
    db  $04 ;;MSG
    db   $10, $bd, $5a, $dc, $4b, $87, $29, $87        ;; 0d:671b ????????
    db   $4b, $28, $d4, $1a, $e6, $e3, $66, $65        ;; 0d:6723 ????????
    db   $33, $87, $3b, $4f, $d8, $1a, $e3, $d8        ;; 0d:672b ????????
    db   $e2, $e3, $5d, $22, $36, $29, $dc, $63        ;; 0d:6733 ????????
    db   $df, $e6, $f0, $12, $1b, $62, $e1, $57        ;; 0d:673b ????????
    db   $e3, $d8, $e2, $e3, $5d, $43, $4e, $e7        ;; 0d:6743 ????????
    db   $1a, $33, $40, $31, $ff, $e3, $df, $d4        ;; 0d:674b ????????
    db   $d6, $20, $29, $d7, $1a, $e1, $d8, $4d        ;; 0d:6753 ????????
    db   $4c, $89, $e0, $20, $92, $9e, $f3, $12        ;; 0d:675b ????????
    db   $11, $00                                      ;; 0d:6763 ??
    db  $00 ;;RET

script_021f:
    db  $04 ;;MSG
    db   $10, $cd, $36, $44, $d6, $67, $6b, $80        ;; 0d:6767 ????????
    db   $24, $e8, $1a, $e1, $d8, $39, $2d, $22        ;; 0d:676f ????????
    db   $32, $8e, $5f, $e3, $1a, $50, $51, $39        ;; 0d:6777 ????????
    db   $41, $d4, $f0, $12, $11, $00                  ;; 0d:677f ??????
    db  $00 ;;RET

script_0220:
    db  $04 ;;MSG
    db   $10, $bd, $5a, $dc, $4b, $6c, $42, $e2        ;; 0d:6787 ????????
    db   $23, $27, $1a, $31, $2d, $51, $39, $41        ;; 0d:678f ????????
    db   $d4, $f0, $1a, $cc, $2a, $37, $26, $2f        ;; 0d:6797 ????????
    db   $2d, $87, $5a, $61, $12, $1b, $c2, $e7        ;; 0d:679f ????????
    db   $6c, $6f, $57, $23, $20, $e2, $4b, $31        ;; 0d:67a7 ????????
    db   $1a, $30, $22, $2a, $ff, $d7, $54, $27        ;; 0d:67af ????????
    db   $e7, $80, $d5, $84, $1a, $48, $6c, $40        ;; 0d:67b7 ????????
    db   $2e, $25, $33, $52, $2f, $d7, $f0, $12        ;; 0d:67bf ????????
    db   $1b, $5b, $d7, $47, $ee, $28, $de, $95        ;; 0d:67c7 ????????
    db   $ea, $40, $46, $ef, $1a, $d5, $84, $2d        ;; 0d:67cf ????????
    db   $6f, $e2, $57, $de, $95, $ea, $e6, $1a        ;; 0d:67d7 ????????
    db   $db, $46, $22, $36, $da, $98, $37, $e1        ;; 0d:67df ????????
    db   $f3, $12, $11, $00                            ;; 0d:67e7 ????
    db  $00 ;;RET

script_0221:
    db  $04 ;;MSG
    db   $10, $bc, $5a, $20, $50, $ff, $c8, $4b        ;; 0d:67ed ????????
    db   $31, $f4, $1a, $c2, $ee, $3a, $22, $66        ;; 0d:67f5 ????????
    db   $65, $24, $81, $d9, $3c, $1a, $58, $92        ;; 0d:67fd ????????
    db   $da, $3e, $53, $bf, $29, $da, $f3, $12        ;; 0d:6805 ????????
    db   $13, $1b, $00                                 ;; 0d:680d ???
    db  $08 ;;IF ? JR
    db   $ff, $00, $28                                 ;; 0d:6811 ???
    db  $09 ;;UNK_09
    db   $3b, $00, $06, $de, $02, $2d, $01, $01        ;; 0d:6815 ????????
    db   $1c, $0a, $3b, $00, $07, $d5, $32, $02        ;; 0d:681d ????????
    db   $2d, $01, $01, $11, $04, $bb, $84, $80        ;; 0d:6825 ????????
    db   $24, $81, $d7, $47, $ee, $e7, $1a, $3b        ;; 0d:682d ????????
    db   $4d, $37, $e7, $f3, $00, $01, $1c             ;; 0d:6835 ???????
    db  $04 ;;MSG
    db   $bd, $47, $ee, $28, $24, $81, $de, $95        ;; 0d:683d ????????
    db   $ea, $f4, $1a, $c2, $e7, $6c, $ff, $4d        ;; 0d:6845 ????????
    db   $e5, $ec, $1a, $e9, $56, $e8, $d4, $d5        ;; 0d:684d ????????
    db   $5d, $f3, $00                                 ;; 0d:6855 ???
    db  $04 ;;MSG
    db   $12, $11, $00                                 ;; 0d:6859 ???
    db  $00 ;;RET

script_0222:
    db  $04 ;;MSG
    db   $10, $8d, $45, $27, $f5, $c0, $5e, $25        ;; 0d:685e ????????
    db   $df, $e8, $9e, $f3, $12, $11, $00             ;; 0d:6866 ???????
    db  $00 ;;RET

script_0223:
    db  $fc ;;UNK_fc
    db   $5e, $fd, $00, $00                            ;; 0d:686f ????

script_0224:
    db  $00 ;;RET

script_0225:
    db  $00 ;;RET

script_0226:
    db  $fd ;;UNK_fd
    db   $01, $04, $10, $14, $f5, $35, $c2, $ee        ;; 0d:6876 ????????
    db   $8c, $e6, $3c, $e5, $ec, $ef, $1a, $ff        ;; 0d:687e ????????
    db   $ba, $63, $2b, $58, $35, $1a, $ff, $bb        ;; 0d:6886 ????????
    db   $84, $49, $40, $d4, $25, $33, $ff, $35        ;; 0d:688e ????????
    db   $12, $11, $00, $da, $1c, $00                  ;; 0d:6896 ??????

script_0227:
    db  $95 ;;UNK_95
    db   $04, $10, $00, $f8, $00, $04, $ba, $63        ;; 0d:689d ????????
    db   $2b, $d4, $f5, $35, $c8, $e8, $d6, $db        ;; 0d:68a5 ????????
    db   $f3, $00, $87, $80, $04, $1a, $14, $f5        ;; 0d:68ad ????????
    db   $ba, $38, $59, $21, $3e, $de, $d4, $ec        ;; 0d:68b5 ????????
    db   $f4, $12, $1b, $ba, $63, $2b, $d4, $f5        ;; 0d:68bd ????????
    db   $5b, $da, $e8, $54, $e6, $1a, $51, $39        ;; 0d:68c5 ????????
    db   $41, $58, $d5, $48, $42, $d8, $1a, $43        ;; 0d:68cd ????????
    db   $5c, $5d, $52, $8f, $91, $2f, $da, $35        ;; 0d:68d5 ????????
    db   $12, $00, $f8, $02, $04, $1b, $ff, $35        ;; 0d:68dd ????????
    db   $ff, $c8, $e1, $20, $ea, $db, $36, $82        ;; 0d:68e5 ????????
    db   $e6, $1a, $6f, $48, $3f, $4a, $d5, $57        ;; 0d:68ed ????????
    db   $c6, $39, $41, $d4, $1a, $22, $67, $e1        ;; 0d:68f5 ????????
    db   $26, $33, $51, $39, $41, $d4, $f0, $12        ;; 0d:68fd ????????
    db   $1b, $49, $ee, $8c, $da, $47, $e1, $58        ;; 0d:6905 ????????
    db   $e7, $67, $e1, $1a, $37, $9f, $36, $58        ;; 0d:690d ????????
    db   $c6, $39, $41, $58, $2f, $1a, $2d, $3d        ;; 0d:6915 ????????
    db   $db, $3c, $28, $ea, $5c, $5d, $35, $12        ;; 0d:691d ????????
    db   $1b, $ff, $c9, $5d, $4b, $20, $d7, $36        ;; 0d:6925 ????????
    db   $d4, $82, $ec, $1a, $43, $48, $db, $42        ;; 0d:692d ????????
    db   $20, $29, $25, $96, $de, $d8, $1a, $42        ;; 0d:6935 ????????
    db   $57, $3f, $2e, $e6, $80, $14, $f0, $12        ;; 0d:693d ????????
    db   $1b, $14, $f5, $c7, $e2, $80, $5b, $89        ;; 0d:6945 ????????
    db   $e1, $ee, $e7, $f3, $1a, $ba, $63, $2b        ;; 0d:694d ????????
    db   $d4, $f5, $c2, $ee, $8c, $da, $47, $e1        ;; 0d:6955 ????????
    db   $d4, $1a, $6f, $20, $58, $e0, $47, $45        ;; 0d:695d ????????
    db   $27, $35, $12, $1b, $49, $42, $8f, $91        ;; 0d:6965 ????????
    db   $93, $e2, $6b, $42, $ec, $1a, $42, $2f        ;; 0d:696d ????????
    db   $25, $29, $25, $db, $67, $e7, $1a, $ff        ;; 0d:6975 ????????
    db   $e3, $d8, $e2, $e3, $5d, $35, $12, $1b        ;; 0d:697d ????????
    db   $00, $98, $fc, $42, $fd, $00, $f0, $1e        ;; 0d:6985 ????????
    db   $04, $ff, $c9, $5d, $4b, $d8, $35, $ff        ;; 0d:698d ????????
    db   $14, $35, $1a, $ff, $bb, $d8, $d9, $3c        ;; 0d:6995 ????????
    db   $20, $5b, $df, $e2, $6b, $1a, $42, $57        ;; 0d:699d ????????
    db   $d9, $d8, $66, $2f, $da, $e6, $35, $12        ;; 0d:69a5 ????????
    db   $1b, $ff, $c9, $5d, $4b, $20, $96, $de        ;; 0d:69ad ????????
    db   $20, $e0, $ec, $1a, $22, $32, $e5, $26        ;; 0d:69b5 ????????
    db   $33, $ff, $8d, $45, $27, $f0, $12, $1b        ;; 0d:69bd ????????
    db   $68, $66, $65, $5c, $8c, $23, $30, $1a        ;; 0d:69c5 ????????
    db   $49, $93, $e2, $4d, $25, $5c, $e0, $35        ;; 0d:69cd ????????
    db   $1a, $00, $f0, $28, $04, $ff, $f1, $ff        ;; 0d:69d5 ????????
    db   $c9, $5d, $4b, $20, $35, $12, $1b, $ff        ;; 0d:69dd ????????
    db   $14, $ff, $35, $1a, $00, $f0, $1e, $04        ;; 0d:69e5 ????????
    db   $ff, $c9, $df, $f1, $ff, $e3, $5d, $4b        ;; 0d:69ed ????????
    db   $d8, $f1, $ff, $f1, $ff, $f1, $12, $11        ;; 0d:69f5 ????????
    db   $00, $00                                      ;; 0d:69fd ??

script_0228:
    db  $d4 ;;UNK_d4
    db   $21, $08, $85, $00, $42, $bd, $f3, $0f        ;; 0d:6a00 ????????
    db   $55, $14, $00, $bc, $04, $10, $ff, $14        ;; 0d:6a08 ????????
    db   $22, $5e, $de, $2d, $ff, $d7, $5f, $e3        ;; 0d:6a10 ????????
    db   $1a, $69, $3e, $53, $3f, $2e, $52, $5f        ;; 0d:6a18 ????????
    db   $e0, $1a, $69, $ba, $63, $2b, $d4, $6c        ;; 0d:6a20 ????????
    db   $52, $d4, $d6, $61, $12, $1b, $00, $f0        ;; 0d:6a28 ????????
    db   $1e, $04, $11, $00, $f0, $3c, $f8, $00        ;; 0d:6a30 ????????
    db   $f0, $3c, $f4, $00, $2c, $0e, $04, $da        ;; 0d:6a38 ????????
    db   $35, $f0, $0a, $f8, $14, $ab, $ec, $00        ;; 0d:6a40 ????????

script_0229:
    db  $04 ;;MSG
    db   $10, $00                                      ;; 0d:6a49 ..
    db  $08 ;;IF ? JR
    db   $79, $00, $18                                 ;; 0d:6a4c ...
    db  $04 ;;MSG
    db   $c8, $df, $25, $63, $e1, $f5, $c0, $36        ;; 0d:6a50 ........
    db   $d4, $82, $ec, $f3, $00                       ;; 0d:6a58 .....
    db  $08 ;;IF ? JR
    db   $0b, $51, $00, $05                            ;; 0d:6a5e ...?
    db  $02 ;;CALL
    db   $2a, $bb                                      ;; 0d:6a63 ..
    db  $da ;;UNK_DA
    db   $0c                                           ;; 0d:6a66 .
    db  $08 ;;IF ? JR
    db   $8c, $00, $4f                                 ;; 0d:6a68 ...
    db  $08 ;;IF ? JR
    db   $78, $f9, $00, $1b                            ;; 0d:6a6c ....
    db  $04 ;;MSG
    db   $c8, $df, $25, $63, $e1, $f5, $5b, $d7        ;; 0d:6a71 ........
    db   $47, $ee, $e7, $1a, $ff, $de, $95, $ea        ;; 0d:6a79 ........
    db   $2d, $e1, $ec, $23, $2f, $da, $f3, $00        ;; 0d:6a81 ........
    db  $da ;;UNK_DA
    db   $79                                           ;; 0d:6a8a .
    db  $08 ;;IF ? JR
    db   $f8, $00, $27                                 ;; 0d:6a8c ...
    db  $04 ;;MSG
    db   $14, $f5, $be, $eb, $d6, $41, $20, $e0        ;; 0d:6a90 ........
    db   $61, $1a, $49, $ee, $8c, $df, $5e, $de        ;; 0d:6a98 ........
    db   $2f, $da, $52, $3c, $2d, $1a, $42, $29        ;; 0d:6aa0 ........
    db   $ff, $e1, $d4, $e0, $20, $bb, $e2, $da        ;; 0d:6aa8 ........
    db   $2e, $d7, $f0, $00                            ;; 0d:6ab0 ....
    db  $da ;;UNK_DA
    db   $78                                           ;; 0d:6ab5 .
    db  $04 ;;MSG
    db   $12, $11, $00                                 ;; 0d:6ab7 ...
    db  $00 ;;RET

script_022a:
    db  $04 ;;MSG
    db   $1a, $00                                      ;; 0d:6abc ..
    db  $f0 ;;UNK_F0
    db   $28                                           ;; 0d:6abf .
    db  $04 ;;MSG
    db   $ff, $f1, $00                                 ;; 0d:6ac1 ...
    db  $f0 ;;UNK_F0
    db   $32                                           ;; 0d:6ac5 .
    db  $04 ;;MSG
    db   $ff, $f1, $00                                 ;; 0d:6ac7 ...
    db  $f0 ;;UNK_F0
    db   $1e                                           ;; 0d:6acb .
    db  $04 ;;MSG
    db   $68, $3b, $28, $31, $f1, $22, $2a, $f1        ;; 0d:6acd ........
    db   $1a, $ff, $c9, $4e, $86, $9f, $3e, $53        ;; 0d:6ad5 ........
    db   $62, $e1, $d4, $f0, $12, $1b, $15, $f5        ;; 0d:6add ........
    db   $f1, $51, $57, $e0, $e2, $23, $27, $1a        ;; 0d:6ae5 ........
    db   $60, $5a, $20, $e0, $20, $23, $31, $f0        ;; 0d:6aed ........
    db   $12, $1b, $15, $f5, $ba, $38, $59, $21        ;; 0d:6af5 ........
    db   $22, $2a, $1a, $94, $d8, $e0, $63, $ff        ;; 0d:6afd ........
    db   $c4, $e1, $8f, $91, $f4, $12, $1b, $bb        ;; 0d:6b05 ........
    db   $e2, $da, $2e, $d7, $f5, $f1, $ff, $d2        ;; 0d:6b0d ........
    db   $54, $34, $c2, $e7, $1a, $43, $4b, $43        ;; 0d:6b15 ........
    db   $2a, $4a, $cf, $29, $d7, $e2, $5d, $1a        ;; 0d:6b1d ........
    db   $43, $4b, $22, $e5, $ec, $2f, $da, $22        ;; 0d:6b25 ........
    db   $e2, $12, $1b, $87, $47, $e4, $e8, $27        ;; 0d:6b2d ........
    db   $22, $2a, $43, $3c, $df, $d7, $1a, $43        ;; 0d:6b35 ........
    db   $48, $db, $22, $2a, $ff, $e3, $46, $27        ;; 0d:6b3d ........
    db   $1a, $3e, $53, $62, $e1, $d4, $f0, $12        ;; 0d:6b45 ........
    db   $1b, $6a, $20, $d9, $21, $88, $28, $d4        ;; 0d:6b4d ........
    db   $da, $8a, $e1, $45, $1a, $22, $2a, $8c        ;; 0d:6b55 ........
    db   $33, $ff, $38, $e7, $e5, $dc, $d8, $4d        ;; 0d:6b5d ........
    db   $1a, $22, $2a, $ff, $e3, $32, $d6, $61        ;; 0d:6b65 ........
    db   $ff, $bb, $84, $f1, $12, $1b, $6a, $20        ;; 0d:6b6d ........
    db   $99, $38, $93, $e2, $e6, $2f, $da, $f1        ;; 0d:6b75 ........
    db   $1a, $68, $2a, $ff, $e3, $46, $27, $3e        ;; 0d:6b7d ........
    db   $53, $62, $e1, $d4, $1a, $43, $4b, $22        ;; 0d:6b85 ........
    db   $5e, $3d, $e7, $5f, $4f, $f0, $12, $1b        ;; 0d:6b8d ........
    db   $ff, $bb, $84, $22, $2a, $38, $43, $4b        ;; 0d:6b95 ........
    db   $2d, $1a, $93, $d4, $d7, $57, $ea, $db        ;; 0d:6b9d ........
    db   $36, $4b, $e6, $67, $39, $1a, $3e, $67        ;; 0d:6ba5 ........
    db   $ff, $e9, $dc, $d6, $33, $e5, $ec, $f0        ;; 0d:6bad ........
    db   $12, $1b, $68, $3b, $28, $df, $d4, $d7        ;; 0d:6bb5 ........
    db   $57, $3b, $d7, $1a, $22, $3b, $28, $c9        ;; 0d:6bbd ........
    db   $4e, $86, $9f, $3e, $e1, $1a, $40, $27        ;; 0d:6bc5 ........
    db   $87, $2a, $45, $f0, $12, $1b, $9a, $d8        ;; 0d:6bcd ........
    db   $d8, $e0, $26, $6e, $de, $20, $23, $31        ;; 0d:6bd5 ........
    db   $1a, $60, $8b, $65, $31, $22, $2a, $ff        ;; 0d:6bdd ........
    db   $de, $d8, $ec, $1a, $52, $3c, $22, $5c        ;; 0d:6be5 ........
    db   $26, $e7, $dc, $e0, $61, $12, $1b, $68        ;; 0d:6bed ........
    db   $d4, $de, $20, $23, $20, $62, $e7, $33        ;; 0d:6bf5 ........
    db   $9e, $1a, $37, $4a, $23, $20, $e1, $d8        ;; 0d:6bfd ........
    db   $eb, $28, $5f, $64, $f3, $12, $11, $00        ;; 0d:6c05 ........
    db  $02 ;;CALL
    db   $2c, $14                                      ;; 0d:6c0e ..
    db  $f9 ;;UNK_SFX_F9
    db   $10                                           ;; 0d:6c11 .
    db  $e0 ;;UNK_e0
    db   $00                                           ;; 0d:6c13 .

script_022b:
    db  $04 ;;MSG
    db   $10, $00                                      ;; 0d:6c15 ..
    db  $08 ;;IF ? JR
    db   $0c, $00, $24                                 ;; 0d:6c18 ...
    db  $04 ;;MSG
    db   $ff, $d2, $21, $87, $29, $6f, $e8, $57        ;; 0d:6c1c ????????
    db   $23, $d8, $1a, $42, $30, $33, $9e, $26        ;; 0d:6c24 ????????
    db   $30, $22, $2a, $1a, $49, $3f, $8c, $cc        ;; 0d:6c2c ????????
    db   $db, $e2, $e3, $26, $56, $e6, $e2, $f0        ;; 0d:6c34 ????????
    db   $12, $1b, $00                                 ;; 0d:6c3c ???
    db  $04 ;;MSG
    db   $94, $36, $33, $22, $2a, $87, $5a, $20        ;; 0d:6c40 ........
    db   $47, $1a, $22, $2a, $ff, $32, $45, $3d        ;; 0d:6c48 ........
    db   $dc, $d7, $20, $50, $1a, $22, $2a, $42        ;; 0d:6c50 ........
    db   $21, $9f, $8a, $e1, $e6, $f0, $12, $1b        ;; 0d:6c58 ........
    db   $ff, $ce, $6b, $51, $30, $33, $9e, $22        ;; 0d:6c60 ........
    db   $e2, $1a, $6f, $38, $d4, $de, $22, $2a        ;; 0d:6c68 ........
    db   $ff, $5f, $9e, $e6, $1a, $37, $4a, $23        ;; 0d:6c70 ........
    db   $20, $89, $4d, $34, $cc, $d8, $d8, $12        ;; 0d:6c78 ........
    db   $1b, $ff, $bc, $dc, $d5, $92, $37, $4a        ;; 0d:6c80 ........
    db   $23, $20, $33, $ea, $e1, $1a, $87, $56        ;; 0d:6c88 ........
    db   $5d, $25, $d0, $4e, $d7, $66, $f0, $1a        ;; 0d:6c90 ........
    db   $97, $20, $de, $95, $ea, $26, $e0, $3c        ;; 0d:6c98 ........
    db   $61, $12, $11, $00                            ;; 0d:6ca0 ....
    db  $00 ;;RET

script_022c:
    db  $04 ;;MSG
    db   $10, $00                                      ;; 0d:6ca6 ??
    db  $08 ;;IF ? JR
    db   $a1, $00, $0b                                 ;; 0d:6ca9 ???
    db  $04 ;;MSG
    db   $bb, $e2, $da, $2e, $d7, $f5, $35, $35        ;; 0d:6cad ????????
    db   $f1, $00                                      ;; 0d:6cb5 ??
    db  $08 ;;IF ? JR
    db   $21, $a2, $00, $03                            ;; 0d:6cb8 ????
    db  $02 ;;CALL
    db   $22, $3e                                      ;; 0d:6cbd ??
    db  $08 ;;IF ? JR
    db   $22, $00, $1e                                 ;; 0d:6cc0 ???
    db  $04 ;;MSG
    db   $bb, $e2, $da, $2e, $d7, $f5, $cd, $36        ;; 0d:6cc4 ????????
    db   $d7, $d8, $d9, $32, $e7, $1a, $22, $2a        ;; 0d:6ccc ????????
    db   $ff, $d8, $e9, $83, $f3, $1a, $94, $36        ;; 0d:6cd4 ????????
    db   $47, $80, $14, $f0, $00                       ;; 0d:6cdc ?????
    db  $04 ;;MSG
    db   $12, $11, $00                                 ;; 0d:6ce2 ???
    db  $00 ;;RET

script_022d:
    db  $04 ;;MSG
    db   $10, $bb, $e2, $da, $2e, $d7, $f5, $c2        ;; 0d:6ce7 ????????
    db   $ee, $3a, $22, $d4, $de, $d8, $1a, $87        ;; 0d:6cef ????????
    db   $2e, $20, $50, $40, $27, $f0, $12, $11        ;; 0d:6cf7 ????????
    db   $00                                           ;; 0d:6cff ?
    db  $00 ;;RET

script_022e:
    db  $04 ;;MSG
    db   $c1, $27, $d8, $6c, $22, $2a, $87, $df        ;; 0d:6d02 ????????
    db   $e8, $61, $1a, $c9, $56, $8c, $e7, $38        ;; 0d:6d0a ????????
    db   $54, $f1, $2d, $2b, $ff, $b8, $f0, $1a        ;; 0d:6d12 ????????
    db   $00                                           ;; 0d:6d1a ?
    db  $f0 ;;UNK_F0
    db   $14                                           ;; 0d:6d1c ?
    db  $04 ;;MSG
    db   $c0, $e2, $28, $48, $f4, $00                  ;; 0d:6d1e ??????
    db  $00 ;;RET

script_022f:
    db  $04 ;;MSG
    db   $10, $bb, $46, $46, $f5, $00                  ;; 0d:6d26 ??????
    db  $08 ;;IF ? JR
    db   $af, $00, $43                                 ;; 0d:6d2d ???
    db  $04 ;;MSG
    db   $c0, $36, $32, $45, $3e, $e1, $1a, $22        ;; 0d:6d31 ????????
    db   $2a, $3d, $32, $52, $5f, $8c, $23, $d8        ;; 0d:6d39 ????????
    db   $1a, $ff, $e3, $dc, $27, $2d, $28, $95        ;; 0d:6d41 ????????
    db   $e5, $23, $f0, $12, $1b, $ff, $ba, $2b        ;; 0d:6d49 ????????
    db   $60, $36, $95, $e5, $23, $22, $e2, $1a        ;; 0d:6d51 ????????
    db   $6a, $4e, $d7, $66, $f0, $35, $cc, $21        ;; 0d:6d59 ????????
    db   $23, $37, $e6, $1a, $22, $36, $23, $20        ;; 0d:6d61 ????????
    db   $ba, $e0, $e0, $47, $48, $54, $f0, $00        ;; 0d:6d69 ????????
    db  $01 ;;JR
    db   $a5                                           ;; 0d:6d72 ?
    db  $04 ;;MSG
    db   $bf, $2f, $56, $df, $ec, $f3, $1a, $00        ;; 0d:6d74 ????????
    db  $0a ;;UNK_0a
    db   $08, $00, $3c, $04, $85, $27, $20, $31        ;; 0d:6d7d ????????
    db   $2d, $ff, $e3, $dc, $d8, $d6, $d8, $1a        ;; 0d:6d85 ????????
    db   $50, $87, $e5, $ec, $45, $56, $59, $21        ;; 0d:6d8d ????????
    db   $87, $29, $12, $1b, $d5, $df, $46, $43        ;; 0d:6d95 ????????
    db   $48, $db, $ff, $c7, $e8, $de, $20, $2f        ;; 0d:6d9d ????????
    db   $1a, $bc, $e5, $ec, $45, $56, $ff, $bd        ;; 0d:6da5 ????????
    db   $54, $27, $e7, $f0, $1a, $35, $ff, $bf        ;; 0d:6dad ????????
    db   $2f, $25, $48, $f3, $00, $01, $5c, $04        ;; 0d:6db5 ????????
    db   $bb, $84, $59, $21, $ff, $e1, $d8, $39        ;; 0d:6dbd ????????
    db   $22, $2a, $1a, $63, $da, $dc, $d6, $3e        ;; 0d:6dc5 ????????
    db   $53, $c7, $e8, $de, $61, $12, $1b, $85        ;; 0d:6dcd ????????
    db   $20, $90, $e7, $dc, $63, $3f, $42, $d4        ;; 0d:6dd5 ????????
    db   $da, $dc, $d6, $1a, $d5, $5e, $de, $3e        ;; 0d:6ddd ????????
    db   $53, $c7, $e8, $de, $20, $31, $1a, $6b        ;; 0d:6de5 ????????
    db   $56, $39, $6f, $57, $c5, $dc, $d6, $db        ;; 0d:6ded ????????
    db   $f0, $12, $1b, $c0, $36, $95, $e5, $23        ;; 0d:6df5 ????????
    db   $22, $36, $23, $d8, $1a, $c9, $56, $e0        ;; 0d:6dfd ????????
    db   $57, $bd, $54, $27, $28, $29, $d7, $1a        ;; 0d:6e05 ????????
    db   $d7, $d8, $d9, $32, $28, $c5, $dc, $d6        ;; 0d:6e0d ????????
    db   $db, $f3, $00                                 ;; 0d:6e15 ???
    db  $04 ;;MSG
    db   $12, $11, $00                                 ;; 0d:6e19 ???
    db  $00 ;;RET

script_0230:
    db  $04 ;;MSG
    db   $10, $85, $27, $20, $31, $ff, $95, $43        ;; 0d:6e1e ????????
    db   $d4, $ec, $1a, $33, $60, $36, $47, $43        ;; 0d:6e26 ????????
    db   $30, $27, $f0, $1a, $bb, $84, $80, $24        ;; 0d:6e2e ????????
    db   $81, $de, $95, $ea, $f1, $12, $1b, $bd        ;; 0d:6e36 ????????
    db   $e5, $34, $bb, $46, $46, $42, $d4, $57        ;; 0d:6e3e ????????
    db   $d5, $d8, $1a, $d4, $d5, $5d, $22, $36        ;; 0d:6e46 ????????
    db   $63, $de, $d8, $1a, $e6, $64, $98, $5c        ;; 0d:6e4e ????????
    db   $4f, $f0, $12, $1b, $c1, $20, $6e, $4d        ;; 0d:6e56 ????????
    db   $26, $2f, $2d, $1a, $db, $21, $6b, $3e        ;; 0d:6e5e ????????
    db   $4d, $4c, $23, $27, $61, $12, $11, $00        ;; 0d:6e66 ????????
    db  $00 ;;RET

script_0231:
    db  $04 ;;MSG
    db   $10, $00                                      ;; 0d:6e70 ??
    db  $08 ;;IF ? JR
    db   $20, $00, $19                                 ;; 0d:6e73 ???
    db  $04 ;;MSG
    db   $cc, $2e, $d4, $db, $f5, $c9, $5d, $4b        ;; 0d:6e77 ????????
    db   $d8, $35, $1a, $9a, $5a, $20, $41, $2d        ;; 0d:6e7f ????????
    db   $3a, $f1, $f3, $12, $11, $00                  ;; 0d:6e87 ??????
    db  $01 ;;JR
    db   $0a                                           ;; 0d:6e8e ?
    db  $02 ;;CALL
    db   $2e, $9a                                      ;; 0d:6e90 ??
    db  $11 ;;UNK_11
    db   $11, $15, $11, $11, $da, $20                  ;; 0d:6e93 ??????
    db  $00 ;;RET

script_0232:
    db  $04 ;;MSG
    db   $cc, $2e, $d4, $db, $f5, $c1, $20, $d7        ;; 0d:6e9b ????????
    db   $dc, $d7, $e1, $ee, $e7, $1a, $43, $29        ;; 0d:6ea3 ????????
    db   $e1, $58, $5d, $28, $24, $e8, $1a, $ff        ;; 0d:6eab ????????
    db   $de, $95, $ea, $80, $d5, $84, $f1, $12        ;; 0d:6eb3 ????????
    db   $1b, $97, $20, $89, $e1, $ee, $28, $e0        ;; 0d:6ebb ????????
    db   $e2, $4d, $1a, $52, $3c, $2d, $43, $5c        ;; 0d:6ec3 ????????
    db   $5d, $52, $3c, $1a, $40, $31, $6f, $5f        ;; 0d:6ecb ????????
    db   $de, $4e, $6f, $d4, $9e, $f0, $12, $1b        ;; 0d:6ed3 ????????
    db   $97, $20, $82, $26, $d7, $31, $e7, $38        ;; 0d:6edb ????????
    db   $e6, $6b, $d7, $1a, $22, $36, $2a, $2e        ;; 0d:6ee3 ????????
    db   $3e, $53, $e3, $df, $d4, $d6, $54, $1a        ;; 0d:6eeb ????????
    db   $6f, $d8, $2f, $da, $2d, $e7, $96, $9e        ;; 0d:6ef3 ????????
    db   $39, $f0, $12, $1b, $ff, $bb, $84, $40        ;; 0d:6efb ????????
    db   $20, $de, $d8, $e3, $e7, $1a, $3d, $d4        ;; 0d:6f03 ????????
    db   $ec, $2f, $da, $22, $3b, $28, $23, $27        ;; 0d:6f0b ????????
    db   $d8, $1a, $37, $26, $58, $d5, $e2, $ec        ;; 0d:6f13 ????????
    db   $f1, $12, $1b, $ff, $ba, $6f, $e2, $57        ;; 0d:6f1b ????????
    db   $e1, $d4, $e0, $39, $ff, $14, $1a, $43        ;; 0d:6f23 ????????
    db   $83, $65, $d6, $64, $20, $33, $1a, $3d        ;; 0d:6f2b ????????
    db   $5a, $20, $41, $2d, $3a, $f1, $12, $1b        ;; 0d:6f33 ????????
    db   $49, $ff, $d7, $dc, $d7, $e1, $ee, $28        ;; 0d:6f3b ????????
    db   $38, $56, $df, $ec, $1a, $6f, $66, $dc        ;; 0d:6f43 ????????
    db   $d8, $4d, $40, $dc, $e0, $80, $d5, $84        ;; 0d:6f4b ????????
    db   $1a, $43, $2a, $4a, $5b, $e6, $d4, $ea        ;; 0d:6f53 ????????
    db   $59, $21, $f1, $12, $1b, $ff, $f1, $ff        ;; 0d:6f5b ????????
    db   $be, $4d, $4a, $58, $bc, $db, $e2, $d6        ;; 0d:6f63 ????????
    db   $e2, $d5, $e2, $1a, $ff, $de, $e1, $d8        ;; 0d:6f6b ????????
    db   $ea, $59, $21, $ee, $38, $22, $2a, $1a        ;; 0d:6f73 ????????
    db   $93, $4b, $28, $db, $e2, $e3, $d8, $f1        ;; 0d:6f7b ????????
    db   $12, $1b, $ff, $bb, $e2, $da, $2e, $25        ;; 0d:6f83 ????????
    db   $29, $25, $23, $d8, $1a, $6f, $8b, $25        ;; 0d:6f8b ????????
    db   $63, $d7, $20, $e0, $d8, $1a, $6f, $66        ;; 0d:6f93 ????????
    db   $dc, $d8, $4d, $37, $4a, $24, $e8, $f1        ;; 0d:6f9b ????????
    db   $12, $1b, $6a, $20, $56, $65, $d5, $66        ;; 0d:6fa3 ????????
    db   $dc, $d8, $4d, $1a, $22, $3b, $28, $24        ;; 0d:6fab ????????
    db   $e8, $ee, $3a, $3d, $5a, $d8, $1a, $3e        ;; 0d:6fb3 ????????
    db   $67, $43, $3c, $df, $25, $95, $ea, $f0        ;; 0d:6fbb ????????
    db   $12, $1b, $ff, $bc, $db, $e2, $d6, $e2        ;; 0d:6fc3 ????????
    db   $d5, $36, $31, $6f, $d8, $2f, $da, $1a        ;; 0d:6fcb ????????
    db   $22, $38, $30, $39, $2d, $28, $bd, $e2        ;; 0d:6fd3 ????????
    db   $d6, $33, $e5, $1a, $ff, $bb, $46, $46        ;; 0d:6fdb ????????
    db   $6c, $40, $21, $6b, $f0, $12, $11, $00        ;; 0d:6fe3 ????????
    db  $00 ;;RET

script_0233:
    db  $04 ;;MSG
    db   $10, $85, $31, $37, $26, $c2, $e6, $db        ;; 0d:6fed ????????
    db   $f0, $12, $1b, $85, $20, $d8, $e9, $83        ;; 0d:6ff5 ????????
    db   $ff, $cf, $29, $d7, $e2, $5d, $1a, $41        ;; 0d:6ffd ????????
    db   $39, $22, $36, $e3, $5f, $e6, $e3, $27        ;; 0d:7005 ????????
    db   $1a, $2e, $21, $2b, $22, $5c, $26, $2e        ;; 0d:700d ????????
    db   $32, $f0, $12, $1b, $bb, $84, $94, $d8        ;; 0d:7015 ????????
    db   $e0, $63, $ff, $c4, $e1, $8f, $91, $1a        ;; 0d:701d ????????
    db   $9c, $23, $3d, $64, $20, $e6, $ea, $3c        ;; 0d:7025 ????????
    db   $d7, $1a, $d7, $d8, $d9, $32, $3f, $25        ;; 0d:702d ????????
    db   $23, $20, $d8, $e9, $83, $f0, $12, $1b        ;; 0d:7035 ????????
    db   $85, $20, $e5, $e8, $2f, $26, $50, $1a        ;; 0d:703d ????????
    db   $cf, $29, $d7, $e2, $5d, $93, $dc, $54        ;; 0d:7045 ????????
    db   $ff, $44, $d7, $27, $1a, $23, $20, $d7        ;; 0d:704d ????????
    db   $54, $27, $e7, $f0, $12, $11, $00             ;; 0d:7055 ???????
    db  $00 ;;RET

script_0234:
    db  $04 ;;MSG
    db   $10, $c3, $90, $dc, $41, $3d, $e8, $e0        ;; 0d:705e ????????
    db   $e0, $47, $39, $1a, $d8, $e9, $83, $42        ;; 0d:7066 ????????
    db   $47, $45, $27, $e6, $f1, $00                  ;; 0d:706e ??????
    db  $f0 ;;UNK_F0
    db   $28                                           ;; 0d:7075 ?
    db  $04 ;;MSG
    db   $1a, $c2, $26, $48, $3d, $d4, $d9, $20        ;; 0d:7077 ????????
    db   $2a, $38, $f4, $12, $11, $00                  ;; 0d:707f ??????
    db  $00 ;;RET

script_0235:
    db  $04 ;;MSG
    db   $10, $cf, $29, $d7, $e2, $5d, $ff, $e3        ;; 0d:7087 ????????
    db   $d8, $e2, $e3, $5d, $1a, $d6, $21, $df        ;; 0d:708f ????????
    db   $25, $d5, $e8, $83, $25, $23, $2f, $da        ;; 0d:7097 ????????
    db   $e6, $1a, $47, $ff, $d7, $54, $27, $28        ;; 0d:709f ????????
    db   $e6, $29, $d7, $f0, $12, $1b, $85, $d8        ;; 0d:70a7 ????????
    db   $57, $d5, $e8, $83, $28, $23, $d8, $1a        ;; 0d:70af ????????
    db   $da, $38, $30, $ff, $bd, $dc, $e0, $20        ;; 0d:70b7 ????????
    db   $cd, $46, $27, $f0, $1a, $bb, $84, $37        ;; 0d:70bf ????????
    db   $28, $e6, $29, $de, $35, $12, $11, $00        ;; 0d:70c7 ????????
    db  $00 ;;RET

script_0236:
    db  $04 ;;MSG
    db   $10, $c3, $90, $dc, $41, $6f, $d8, $89        ;; 0d:70d1 ????????
    db   $e0, $20, $23, $d8, $1a, $de, $2f, $da        ;; 0d:70d9 ????????
    db   $3e, $53, $c0, $df, $8a, $4d, $f0, $1a        ;; 0d:70e1 ????????
    db   $bb, $84, $ff, $c3, $90, $dc, $41, $37        ;; 0d:70e9 ????????
    db   $e6, $12, $1b, $e0, $e8, $d6, $db, $87        ;; 0d:70f1 ????????
    db   $e5, $e8, $66, $27, $22, $3b, $e1, $1a        ;; 0d:70f9 ????????
    db   $23, $30, $ff, $bd, $2e, $de, $ff, $c5        ;; 0d:7101 ????????
    db   $3c, $d7, $f3, $1a, $f1, $6a, $3b, $e7        ;; 0d:7109 ????????
    db   $ee, $3a, $43, $20, $d7, $e2, $f4, $12        ;; 0d:7111 ????????
    db   $11, $00                                      ;; 0d:7119 ??
    db  $00 ;;RET

script_0237:
    db  $04 ;;MSG
    db   $10, $c2, $e7, $6c, $40, $2e, $25, $33        ;; 0d:711d ????????
    db   $43, $56, $de, $1a, $2e, $21, $2b, $37        ;; 0d:7125 ????????
    db   $4a, $bc, $e5, $ec, $45, $56, $1a, $bd        ;; 0d:712d ????????
    db   $54, $27, $e7, $f0, $12, $1b, $be, $4d        ;; 0d:7135 ????????
    db   $4a, $d9, $3c, $ff, $bc, $db, $e2, $d6        ;; 0d:713d ????????
    db   $e2, $d5, $e2, $e6, $f3, $12, $11, $00        ;; 0d:7145 ????????
    db  $00 ;;RET

script_0238:
    db  $00 ;;RET

script_0239:
    db  $00 ;;RET

script_023a:
    db  $00 ;;RET

script_023b:
    db  $00 ;;RET

script_023c:
    db  $00 ;;RET

script_023d:
    db  $00 ;;RET

script_023e:
    db  $04 ;;MSG
    db   $10, $cd, $9d, $68, $cb, $be, $6d, $c8        ;; 0d:7155 ????????
    db   $bf, $51, $ba, $c7, $ba, $1a, $c0, $cb        ;; 0d:715d ????????
    db   $c8, $d0, $cc, $6a, $c2, $cd, $c1, $68        ;; 0d:7165 ????????
    db   $9d, $1a, $be, $c7, $be, $cb, $c0, $d2        ;; 0d:716d ????????
    db   $ff, $c8, $bf, $ff, $c7, $ba, $cd, $ce        ;; 0d:7175 ????????
    db   $cb, $be, $f0, $12, $11, $00                  ;; 0d:717d ??????
    db  $00 ;;RET

script_023f:
    db  $04 ;;MSG
    db   $10, $cd, $9d, $ff, $be, $cf, $c2, $c5        ;; 0d:7185 ????????
    db   $ff, $bf, $c8, $cb, $bc, $be, $1a, $c8        ;; 0d:718d ????????
    db   $bf, $ff, $c9, $be, $c8, $c9, $c5, $6d        ;; 0d:7195 ????????
    db   $c6, $ba, $c4, $be, $cc, $1a, $cd, $9d        ;; 0d:719d ????????
    db   $68, $cb, $be, $6d, $be, $cf, $c2, $c5        ;; 0d:71a5 ????????
    db   $f0, $12, $11, $00                            ;; 0d:71ad ????
    db  $00 ;;RET

script_0240:
    db  $04 ;;MSG
    db   $10, $d0, $ba, $cd, $be, $cb, $ff, $bf        ;; 0d:71b3 ????????
    db   $cb, $c8, $c6, $68, $9d, $1a, $be, $cf        ;; 0d:71bb ????????
    db   $c2, $c5, $51, $ba, $c7, $ba, $68, $cb        ;; 0d:71c3 ????????
    db   $be, $be, $1a, $cd, $ce, $cb, $c7, $cc        ;; 0d:71cb ????????
    db   $ff, $c9, $be, $c8, $c9, $c5, $6d, $be        ;; 0d:71d3 ????????
    db   $cf, $c2, $c5, $f0, $12, $1b, $c2, $cd        ;; 0d:71db ????????
    db   $49, $cc, $ff, $ba, $ff, $cf, $c2, $bc        ;; 0d:71e3 ????????
    db   $c2, $c8, $ce, $cc, $1a, $bc, $c2, $cb        ;; 0d:71eb ????????
    db   $bc, $c5, $6d, $bb, $be, $cd, $d0, $be        ;; 0d:71f3 ????????
    db   $be, $c7, $1a, $be, $c7, $be, $cb, $c0        ;; 0d:71fb ????????
    db   $d2, $ff, $ba, $c7, $bd, $51, $ba, $c7        ;; 0d:7203 ????????
    db   $ba, $f0, $12, $11, $00                       ;; 0d:720b ?????
    db  $00 ;;RET

script_0241:
    db  $04 ;;MSG
    db   $10, $c8, $c7, $6d, $d0, $c1, $c8, $68        ;; 0d:7212 ????????
    db   $c8, $ce, $bc, $9d, $cc, $1a, $cd, $9d        ;; 0d:721a ????????
    db   $51, $ba, $c7, $ba, $68, $cb, $be, $6d        ;; 0d:7222 ????????
    db   $c0, $be, $cd, $cc, $1a, $cd, $9d, $51        ;; 0d:722a ????????
    db   $c2, $c0, $c1, $cd, $d2, $ff, $c9, $c8        ;; 0d:7232 ????????
    db   $d0, $be, $cb, $f0, $12, $11, $00             ;; 0d:723a ???????
    db  $00 ;;RET

script_0242:
    db  $04 ;;MSG
    db   $10, $c4, $c2, $c7, $c0, $ff, $c8, $bf        ;; 0d:7243 ????????
    db   $ff, $cf, $ba, $c7, $bd, $c8, $c5, $be        ;; 0d:724b ????????
    db   $1a, $c0, $c8, $cd, $68, $9d, $51, $c2        ;; 0d:7253 ????????
    db   $c0, $c1, $cd, $d2, $1a, $c9, $c8, $d0        ;; 0d:725b ????????
    db   $be, $cb, $ff, $c8, $bf, $51, $ba, $c7        ;; 0d:7263 ????????
    db   $ba, $f0, $12, $1b, $cd, $9d, $ff, $c8        ;; 0d:726b ????????
    db   $c7, $c5, $d2, $ff, $c8, $c7, $6d, $d0        ;; 0d:7273 ????????
    db   $c1, $c8, $1a, $bc, $ba, $c7, $9a, $cd        ;; 0d:727b ????????
    db   $ba, $c7, $bd, $ff, $ba, $c0, $ba, $c2        ;; 0d:7283 ????????
    db   $c7, $cc, $cd, $1a, $c2, $cc, $68, $9d        ;; 0d:728b ????????
    db   $ff, $35, $12, $1b, $c0, $be, $c6, $c6        ;; 0d:7293 ????????
    db   $ba, $ff, $c4, $c7, $c2, $c0, $c1, $cd        ;; 0d:729b ????????
    db   $35, $1a, $d0, $c2, $cd, $c1, $68, $9d        ;; 0d:72a3 ????????
    db   $35, $1a, $be, $d1, $bc, $ba, $c5, $c2        ;; 0d:72ab ????????
    db   $bb, $ce, $cb, $35, $12, $11, $00             ;; 0d:72b3 ???????
    db  $00 ;;RET

script_0243:
    db  $04 ;;MSG
    db   $10, $c0, $be, $c6, $c6, $ba, $ff, $c4        ;; 0d:72bc ????????
    db   $c7, $c2, $c0, $c1, $cd, $6a, $c2, $cd        ;; 0d:72c4 ????????
    db   $c1, $1a, $cd, $9d, $ff, $cb, $ce, $cc        ;; 0d:72cc ????????
    db   $cd, $d2, $9a, $d0, $c8, $cb, $bd, $1a        ;; 0d:72d4 ????????
    db   $d0, $c2, $c5, $c5, $ff, $bb, $6d, $cd        ;; 0d:72dc ????????
    db   $be, $cc, $cd, $be, $bd, $f0, $12, $1b        ;; 0d:72e4 ????????
    db   $cd, $9d, $68, $cb, $ce, $6d, $c0, $be        ;; 0d:72ec ????????
    db   $c6, $c6, $ba, $1a, $c4, $c7, $c2, $c0        ;; 0d:72f4 ????????
    db   $c1, $cd, $9a, $c1, $c8, $ce, $c5, $bd        ;; 0d:72fc ????????
    db   $1a, $bb, $6d, $c0, $c2, $cf, $be, $c7        ;; 0d:7304 ????????
    db   $68, $9d, $12, $1b, $c5, $be, $c0, $be        ;; 0d:730c ????????
    db   $c7, $bd, $ba, $cb, $d2, $9a, $d0, $c8        ;; 0d:7314 ????????
    db   $cb, $bd, $ef, $1a, $be, $d1, $bc, $ba        ;; 0d:731c ????????
    db   $c5, $c2, $bb, $ce, $cb, $35, $f3, $12        ;; 0d:7324 ????????
    db   $11, $00                                      ;; 0d:732c ??
    db  $00 ;;RET

script_0244:
    db  $04 ;;MSG
    db   $10, $bf, $c2, $c0, $c1, $cd, $6a, $c2        ;; 0d:7330 ????????
    db   $cd, $c1, $68, $9d, $ff, $b3, $1a, $bd        ;; 0d:7338 ????????
    db   $cb, $ba, $c0, $c8, $c7, $cc, $49, $c7        ;; 0d:7340 ????????
    db   $68, $9d, $1a, $cc, $c1, $cb, $c2, $c7        ;; 0d:7348 ????????
    db   $6d, $c8, $bf, $51, $ba, $c7, $ba, $f0        ;; 0d:7350 ????????
    db   $12, $11, $00                                 ;; 0d:7358 ???
    db  $00 ;;RET

script_0245:
    db  $04 ;;MSG
    db   $10, $cd, $9d, $ff, $cf, $ba, $c7, $bd        ;; 0d:735d ????????
    db   $c8, $c5, $6d, $cc, $c8, $c8, $c7, $1a        ;; 0d:7365 ????????
    db   $cc, $c1, $c8, $ce, $c5, $bd, $ff, $bf        ;; 0d:736d ????????
    db   $ba, $c5, $c5, $f0, $1a, $12, $1b, $d0        ;; 0d:7375 ????????
    db   $6d, $c5, $be, $ba, $cf, $6d, $c8, $ce        ;; 0d:737d ????????
    db   $cb, $ff, $c5, $ba, $cc, $cd, $1a, $c1        ;; 0d:7385 ????????
    db   $c8, $c9, $6d, $c2, $c7, $68, $9d, $ff        ;; 0d:738d ????????
    db   $bc, $ba, $cf, $be, $1a, $c8, $bf, $68        ;; 0d:7395 ????????
    db   $9d, $6a, $ba, $cd, $be, $cb, $bf, $ba        ;; 0d:739d ????????
    db   $c5, $c5, $cc, $f0, $12, $1b, $c0, $c5        ;; 0d:73a5 ????????
    db   $c8, $cb, $d2, $68, $c8, $ff, $cf, $ba        ;; 0d:73ad ????????
    db   $c7, $bd, $c8, $c5, $be, $1a, $ba, $c7        ;; 0d:73b5 ????????
    db   $bd, $68, $c8, $ff, $c8, $ce, $cb, $ff        ;; 0d:73bd ????????
    db   $bc, $c1, $c2, $c5, $bd, $1a, $c8, $bf        ;; 0d:73c5 ????????
    db   $97, $c8, $c9, $be, $35, $f3, $12, $11        ;; 0d:73cd ????????
    db   $00                                           ;; 0d:73d5 ?
    db  $00 ;;RET

script_0246:
    db  $f9 ;;UNK_SFX_F9
    db   $14                                           ;; 0d:73d8 .
    db  $bf ;;UNK_bf
    db   $bf, $f9, $11, $00                            ;; 0d:73da ....

script_0247:
    db  $f9 ;;UNK_SFX_F9
    db   $14                                           ;; 0d:73df ?
    db  $bf ;;UNK_bf
    db   $bf, $f9, $11, $bf, $bf, $00                  ;; 0d:73e1 ??????

script_0248:
    db  $b0 ;;UNK_b0
    db   $51, $01, $03, $b0, $43, $01, $04, $b0        ;; 0d:73e8 ????????
    db   $31, $01, $05, $00                            ;; 0d:73f0 ????

script_0249:
    db  $bf ;;UNK_bf
    db   $f9, $25, $bf, $fb, $8a, $12, $08, $97        ;; 0d:73f5 ????????
    db   $99, $12, $08, $87, $bf, $f9, $14, $b0        ;; 0d:73fd ????????
    db   $64, $07, $02, $b0, $64, $07, $03, $b0        ;; 0d:7405 ????????
    db   $64, $07, $04, $b0, $32, $07, $05, $b0        ;; 0d:740d ????????
    db   $51, $07, $06, $b0, $43, $07, $07, $f0        ;; 0d:7415 ????????
    db   $05, $bf, $f9, $14, $b0, $64, $07, $05        ;; 0d:741d ????????
    db   $b0, $64, $07, $06, $b0, $64, $07, $07        ;; 0d:7425 ????????
    db   $80, $80, $f0, $50, $86, $04, $10, $14        ;; 0d:742d ????????
    db   $f5, $c8, $db, $35, $ff, $c7, $e2, $35        ;; 0d:7435 ????????
    db   $1a, $62, $e5, $d6, $dc, $d8, $f5, $5b        ;; 0d:743d ????????
    db   $cd, $c1, $cb, $c8, $d0, $ff, $d2, $c8        ;; 0d:7445 ????????
    db   $ce, $1a, $ff, $35, $ff, $ba, $c7, $bd        ;; 0d:744d ????????
    db   $49, $ff, $c3, $ce, $c6, $c9, $f0, $00        ;; 0d:7455 ????????
    db   $f0, $32, $04, $1b, $14, $f5, $bc, $29        ;; 0d:745d ????????
    db   $59, $21, $f4, $1a, $ff, $8d, $e7, $6c        ;; 0d:7465 ????????
    db   $ff, $d7, $36, $23, $30, $f3, $12, $11        ;; 0d:746d ????????
    db   $00, $f0, $3c, $87, $f0, $32, $90, $f0        ;; 0d:7475 ????????
    db   $28, $f9, $0c, $8b, $68, $f0, $28, $86        ;; 0d:747d ????????
    db   $f9, $25, $fb, $04, $10, $14, $f5, $c7        ;; 0d:7485 ????????
    db   $46, $f3, $1a, $ff, $bc, $64, $20, $47        ;; 0d:748d ????????
    db   $80, $62, $e5, $d6, $dc, $9b, $00, $f8        ;; 0d:7495 ????????
    db   $00, $f0, $50, $04, $1a, $62, $e5, $d6        ;; 0d:749d ????????
    db   $dc, $d8, $f5, $35, $ff, $35, $12, $1b        ;; 0d:74a5 ????????
    db   $d2, $c8, $ce, $97, $ba, $cf, $6d, $cd        ;; 0d:74ad ????????
    db   $c8, $9a, $ba, $cf, $be, $1a, $cd, $9d        ;; 0d:74b5 ????????
    db   $6a, $c8, $cb, $c5, $bd, $34, $d2, $c8        ;; 0d:74bd ????????
    db   $ce, $1a, $ba, $cb, $6d, $cd, $9d, $ff        ;; 0d:74c5 ????????
    db   $c8, $c7, $c5, $d2, $97, $c8, $c9, $be        ;; 0d:74cd ????????
    db   $f0, $00, $f8, $02, $04, $12, $1b, $14        ;; 0d:74d5 ????????
    db   $f5, $d0, $3b, $28, $2e, $20, $24, $e8        ;; 0d:74dd ????????
    db   $1a, $22, $56, $de, $2f, $da, $2d, $d5        ;; 0d:74e5 ????????
    db   $21, $e7, $f4, $1a, $ff, $35, $ff, $bc        ;; 0d:74ed ????????
    db   $64, $20, $47, $f3, $12, $1b, $62, $e5        ;; 0d:74f5 ????????
    db   $d6, $dc, $d8, $f5, $f1, $49, $ff, $ba        ;; 0d:74fd ????????
    db   $c6, $1a, $ff, $ce, $c7, $ba, $bb, $c5        ;; 0d:7505 ????????
    db   $6d, $cd, $c8, $ff, $c3, $ce, $c6, $c9        ;; 0d:750d ????????
    db   $35, $1a, $14, $f5, $f1, $6a, $3b, $e7        ;; 0d:7515 ????????
    db   $f1, $f4, $f3, $12, $1b, $62, $e5, $d6        ;; 0d:751d ????????
    db   $dc, $d8, $f5, $5b, $d0, $ba, $cc, $51        ;; 0d:7525 ????????
    db   $ba, $bd, $be, $1a, $68, $c8, $6a, $c8        ;; 0d:752d ????????
    db   $cb, $c4, $49, $c7, $97, $be, $cb, $be        ;; 0d:7535 ????????
    db   $f0, $1a, $ff, $ba, $c7, $bd, $49, $9a        ;; 0d:753d ????????
    db   $c5, $be, $be, $c9, $97, $be, $cb, $be        ;; 0d:7545 ????????
    db   $f1, $12, $11, $00, $f0, $28, $bf, $f9        ;; 0d:754d ????????
    db   $25, $bf, $b0, $64, $08, $03, $b0, $64        ;; 0d:7555 ????????
    db   $08, $04, $b0, $41, $08, $05, $b0, $43        ;; 0d:755d ????????
    db   $08, $06, $b0, $31, $08, $07, $99, $11        ;; 0d:7565 ????????
    db   $0c, $b0, $64, $09, $02, $b0, $64, $09        ;; 0d:756d ????????
    db   $03, $b0, $32, $09, $04, $b0, $51, $09        ;; 0d:7575 ????????
    db   $05, $b0, $43, $09, $06, $b0, $30, $09        ;; 0d:757d ????????
    db   $07, $f0, $05, $bf, $f9, $25, $bf, $b0        ;; 0d:7585 ????????
    db   $64, $08, $05, $b0, $64, $08, $06, $b0        ;; 0d:758d ????????
    db   $41, $08, $07, $98, $b0, $64, $09, $04        ;; 0d:7595 ????????
    db   $b0, $64, $09, $05, $b0, $32, $09, $06        ;; 0d:759d ????????
    db   $b0, $51, $09, $07, $f0, $05, $bf, $f9        ;; 0d:75a5 ????????
    db   $25, $bf, $b0, $64, $08, $07, $b0, $64        ;; 0d:75ad ????????
    db   $09, $06, $b0, $64, $09, $07, $f9, $25        ;; 0d:75b5 ????????
    db   $fb, $bf, $bf, $f9, $11, $f0, $8c, $04        ;; 0d:75bd ????????
    db   $10, $14, $f5, $35, $51, $2e, $d6, $dc        ;; 0d:75c5 ????????
    db   $9b, $12, $11, $00, $bd, $f3, $0f, $55        ;; 0d:75cd ????????
    db   $14, $00, $bc, $f0, $14, $04, $10, $62        ;; 0d:75d5 ????????
    db   $e5, $d6, $dc, $d8, $f5, $cc, $be, $6d        ;; 0d:75dd ????????
    db   $d2, $c8, $ce, $1a, $9a, $c8, $c6, $be        ;; 0d:75e5 ????????
    db   $cd, $c2, $c6, $be, $ef, $00, $f0, $28        ;; 0d:75ed ????????
    db   $04, $ff, $c4, $c2, $bd, $35, $12, $11        ;; 0d:75f5 ????????
    db   $00, $bd, $f3, $01, $56, $0e, $06, $ab        ;; 0d:75fd ????????
    db   $f0, $3c, $bc, $f0, $3c, $db, $57, $00        ;; 0d:7605 ????????

script_024a:
    db  $00 ;;RET

script_024b:
    db  $00 ;;RET

script_024c:
    db  $00 ;;RET

script_024d:
    db  $00 ;;RET

script_024e:
    db  $00 ;;RET

script_024f:
    db  $03 ;;UNK_03
    db   $08, $04, $f9, $14, $bf, $00, $00             ;; 0d:7613 ???????

script_0250:
    db  $04 ;;MSG
    db   $10, $00                                      ;; 0d:761b ??
    db  $08 ;;IF ? JR
    db   $ad, $00, $8b                                 ;; 0d:761e ???
    db  $04 ;;MSG
    db   $c4, $2f, $da, $f5, $c3, $90, $dc, $41        ;; 0d:7622 ????????
    db   $40, $4b, $1a, $3d, $e8, $e0, $e0, $47        ;; 0d:762a ????????
    db   $39, $42, $47, $45, $27, $e6, $1a, $37        ;; 0d:7632 ????????
    db   $4a, $23, $31, $43, $3c, $df, $d7, $f0        ;; 0d:763a ????????
    db   $12, $1b, $ff, $c8, $e1, $20, $89, $3a        ;; 0d:7642 ????????
    db   $39, $ff, $c4, $2e, $ec, $1a, $37, $4a        ;; 0d:764a ????????
    db   $23, $20, $cc, $95, $ea, $d9, $dc, $66        ;; 0d:7652 ????????
    db   $d7, $1a, $40, $4b, $52, $5f, $ed, $4e        ;; 0d:765a ????????
    db   $ff, $41, $f0, $12, $1b, $ff, $bc, $dc        ;; 0d:7662 ????????
    db   $d5, $92, $87, $d4, $e0, $d8, $80, $d5        ;; 0d:766a ????????
    db   $84, $1a, $40, $d8, $6c, $3d, $e7, $e8        ;; 0d:7672 ????????
    db   $9e, $37, $e1, $1a, $22, $2a, $3e, $23        ;; 0d:767a ????????
    db   $27, $ff, $5f, $64, $f0, $12, $1b, $49        ;; 0d:7682 ????????
    db   $28, $31, $ff, $86, $4f, $27, $21, $e6        ;; 0d:768a ????????
    db   $1a, $22, $36, $de, $d8, $d8, $e3, $22        ;; 0d:7692 ????????
    db   $2a, $8c, $56, $df, $1a, $52, $5f, $ed        ;; 0d:769a ????????
    db   $4e, $52, $3c, $93, $47, $da, $35, $00        ;; 0d:76a2 ????????
    db  $01 ;;JR
    db   $24                                           ;; 0d:76ab ?
    db  $04 ;;MSG
    db   $85, $29, $de, $59, $21, $3d, $36, $e0        ;; 0d:76ad ????????
    db   $e8, $d6, $db, $f0, $1a, $bc, $dc, $d5        ;; 0d:76b5 ????????
    db   $92, $37, $26, $82, $48, $2f, $da, $1a        ;; 0d:76bd ????????
    db   $2f, $22, $2a, $3e, $23, $27, $ff, $5f        ;; 0d:76c5 ????????
    db   $64, $f0, $00                                 ;; 0d:76cd ???
    db  $04 ;;MSG
    db   $12, $11, $00                                 ;; 0d:76d1 ???
    db  $00 ;;RET

script_0251:
    db  $04 ;;MSG
    db   $10, $35, $ff, $bf, $5f, $ed, $4e, $f0        ;; 0d:76d6 ????????
    db   $12, $11, $00                                 ;; 0d:76de ???
    db  $00 ;;RET

script_0252:
    db  $04 ;;MSG
    db   $10, $d0, $46, $f3, $1a, $c0, $5e, $25        ;; 0d:76e3 ????????
    db   $e0, $3c, $e1, $2f, $da, $f3, $12, $11        ;; 0d:76eb ????????
    db   $00                                           ;; 0d:76f3 ?
    db  $00 ;;RET

script_0253:
    db  $04 ;;MSG
    db   $10, $d0, $66, $d6, $64, $20, $33, $ff        ;; 0d:76f6 ????????
    db   $c5, $3c, $dc, $e0, $f3, $12, $11, $00        ;; 0d:76fe ????????
    db  $00 ;;RET

script_0254:
    db  $00 ;;RET

script_0255:
    db  $00 ;;RET

script_0256:
    db  $08 ;;IF ? JR
    db   $0b, $91, $00, $03                            ;; 0d:770a ....
    db  $02 ;;CALL
    db   $17, $98                                      ;; 0d:770f ..
    db  $08 ;;IF ? JR
    db   $09, $8b, $00, $03                            ;; 0d:7712 ....
    db  $02 ;;CALL
    db   $3a, $70                                      ;; 0d:7717 ..
    db  $08 ;;IF ? JR
    db   $89, $00, $03                                 ;; 0d:771a ...
    db  $02 ;;CALL
    db   $38, $f9                                      ;; 0d:771e ..
    db  $00 ;;RET

script_0257:
    db  $08 ;;IF ? JR
    db   $1f, $00, $03                                 ;; 0d:7722 ...
    db  $02 ;;CALL
    db   $2c, $a5                                      ;; 0d:7726 ??
    db  $08 ;;IF ? JR
    db   $26, $9f, $00, $03                            ;; 0d:7729 ....
    db  $02 ;;CALL
    db   $2c, $e6                                      ;; 0d:772e ??
    db  $08 ;;IF ? JR
    db   $0c, $a6, $00, $03                            ;; 0d:7731 ....
    db  $02 ;;CALL
    db   $2c, $14                                      ;; 0d:7736 ??
    db  $08 ;;IF ? JR
    db   $8c, $00, $03                                 ;; 0d:7739 ..?
    db  $02 ;;CALL
    db   $2a, $48                                      ;; 0d:773d ..
    db  $00 ;;RET

script_0258:
    db  $08 ;;IF ? JR
    db   $26, $00, $03                                 ;; 0d:7741 ???
    db  $02 ;;CALL
    db   $21, $9f                                      ;; 0d:7745 ??
    db  $08 ;;IF ? JR
    db   $8b, $00, $03                                 ;; 0d:7748 ???
    db  $02 ;;CALL
    db   $3a, $53                                      ;; 0d:774c ??
    db  $00 ;;RET

script_0259:
    db  $08 ;;IF ? JR
    db   $25, $90, $00, $03                            ;; 0d:7750 ????
    db  $02 ;;CALL
    db   $17, $b7                                      ;; 0d:7755 ??
    db  $08 ;;IF ? JR
    db   $a3, $00, $03                                 ;; 0d:7758 ???
    db  $02 ;;CALL
    db   $16, $e8                                      ;; 0d:775c ??
    db  $00 ;;RET

script_025a:
    db  $08 ;;IF ? JR
    db   $1f, $00, $03                                 ;; 0d:7760 ???
    db  $02 ;;CALL
    db   $19, $2a                                      ;; 0d:7764 ??
    db  $08 ;;IF ? JR
    db   $9f, $00, $03                                 ;; 0d:7767 ???
    db  $02 ;;CALL
    db   $18, $eb                                      ;; 0d:776b ??
    db  $00 ;;RET

script_025b:
    db  $00 ;;RET

script_025c:
    db  $00 ;;RET

script_025d:
    db  $08 ;;IF ? JR
    db   $f4, $00, $04                                 ;; 0d:7771 ???
    db  $f6 ;;UNK_f6
    db   $03, $01, $14                                 ;; 0d:7775 ???
    db  $08 ;;IF ? JR
    db   $f6, $f7, $00, $02                            ;; 0d:7779 ????
    db  $f6 ;;UNK_f6
    db   $0e                                           ;; 0d:777e ?
    db  $08 ;;IF ? JR
    db   $f6, $77, $00, $02                            ;; 0d:7780 ????
    db  $f6 ;;UNK_f6
    db   $0f                                           ;; 0d:7785 ?
    db  $08 ;;IF ? JR
    db   $76, $00, $02                                 ;; 0d:7787 ???
    db  $f6 ;;UNK_f6
    db   $10                                           ;; 0d:778b ?
    db  $00 ;;RET

script_025e:
    db  $15 ;;UNK_15
    db   $08, $f4, $00, $42, $08, $f5, $f6, $f7        ;; 0d:778e ...?....
    db   $00, $02, $f6, $04, $08, $f5, $f6, $77        ;; 0d:7796 .?......
    db   $00, $02, $f6, $05, $08, $f5, $76, $f7        ;; 0d:779e ..??....
    db   $00, $02, $f6, $07, $08, $f5, $76, $77        ;; 0d:77a6 ..??....
    db   $00, $02, $f6, $08, $08, $75, $f6, $f7        ;; 0d:77ae ..??....
    db   $00, $02, $f6, $09, $08, $75, $f6, $77        ;; 0d:77b6 ..??....
    db   $00, $02, $f6, $0a, $08, $75, $76, $f7        ;; 0d:77be ..??....
    db   $00, $02, $f6, $0b, $08, $75, $76, $77        ;; 0d:77c6 ..??....
    db   $00, $02, $f6, $0c, $01, $08, $08, $f5        ;; 0d:77ce ..??..??
    db   $f6, $f7, $00, $02, $f6, $0d, $00             ;; 0d:77d6 ??????.

script_025f:
    db  $15 ;;UNK_15
    db   $04, $10, $97, $46, $d7, $ec, $f3, $1a        ;; 0d:77de ........
    db   $ff, $b1, $b0, $c0, $c9, $f6, $e1, $8f        ;; 0d:77e6 ........
    db   $91, $f3, $1a, $6a, $29, $e1, $58, $45        ;; 0d:77ee ........
    db   $d4, $ec, $f4, $12, $13, $00, $08, $ff        ;; 0d:77f6 ........
    db   $00, $21, $d1, $0a, $00, $08, $06, $00        ;; 0d:77fe .?......
    db   $17, $04, $1b, $9a, $3c, $e5, $ec, $f0        ;; 0d:7806 .???????
    db   $1a, $ff, $c7, $e2, $28, $4e, $21, $88        ;; 0d:780e ????????
    db   $94, $c9, $f3, $12, $11, $00, $01, $03        ;; 0d:7816 ????????
    db   $02, $51, $fb, $02, $00, $31, $00             ;; 0d:781e .......

script_0260:
    db  $15 ;;UNK_15
    db   $08, $74, $00, $04, $f6, $03, $01, $7b        ;; 0d:7826 ....????
    db   $08, $75, $00, $04, $f6, $03, $01, $73        ;; 0d:782e ....????
    db   $08, $f6, $f7, $00, $0a, $08, $8c, $00        ;; 0d:7836 ........
    db   $04, $f6, $00, $01, $02, $f6, $01, $08        ;; 0d:783e ?....??.
    db   $f6, $77, $00, $25, $0a, $43, $00, $02        ;; 0d:7846 ........
    db   $01, $03, $02, $7a, $c2, $f6, $01, $04        ;; 0d:784e ??......
    db   $10, $c2, $e7, $6c, $3d, $82, $e0, $e3        ;; 0d:7856 ........
    db   $57, $d4, $2a, $d4, $d7, $f0, $1a, $bb        ;; 0d:785e ........
    db   $20, $89, $38, $d9, $90, $f3, $12, $11        ;; 0d:7866 ........
    db   $00, $08, $76, $f7, $00, $02, $f6, $01        ;; 0d:786e ......??
    db   $08, $76, $77, $00, $2e, $08, $11, $00        ;; 0d:7876 .....???
    db   $04, $f6, $02, $01, $26, $04, $10, $be        ;; 0d:787e ????????
    db   $eb, $d6, $41, $20, $e0, $d8, $f1, $00        ;; 0d:7886 ????????
    db   $f0, $1e, $04, $1a, $f1, $97, $66, $df        ;; 0d:788e ????????
    db   $e2, $f1, $00, $f0, $32, $04, $1a, $f1        ;; 0d:7896 ????????
    db   $ff, $c7, $36, $29, $e6, $99, $e5, $f0        ;; 0d:789e ????????
    db   $12, $11, $00, $00                            ;; 0d:78a6 ???.

script_0261:
    db  $04 ;;MSG
    db   $10, $ba, $63, $2b, $d4, $f5, $c2, $ee        ;; 0d:78ab ........
    db   $8c, $e6, $3c, $e5, $ec, $1a, $2d, $d5        ;; 0d:78b3 ........
    db   $21, $28, $d0, $83, $df, $ec, $f0, $12        ;; 0d:78bb ........
    db   $1b, $6a, $20, $3b, $4d, $22, $36, $da        ;; 0d:78c3 ........
    db   $98, $1a, $3e, $84, $3e, $53, $2a, $38        ;; 0d:78cb ........
    db   $f3, $f3, $12, $1b, $49, $43, $29, $e1        ;; 0d:78d3 ........
    db   $58, $da, $36, $db, $64, $d8, $1a, $2d        ;; 0d:78db ........
    db   $2b, $3d, $d8, $20, $e0, $ec, $1a, $93        ;; 0d:78e3 ........
    db   $48, $e7, $5d, $6f, $5f, $23, $27, $35        ;; 0d:78eb ........
    db   $12, $11, $00                                 ;; 0d:78f3 ...
    db  $00 ;;RET

script_0262:
    db  $00 ;;RET

script_0263:
    db  $00 ;;RET

script_0264:
    db  $04 ;;MSG
    db   $10, $14, $f5, $d0, $83, $df, $ec, $35        ;; 0d:78fa ........
    db   $1a, $49, $ee, $3a, $2d, $4d, $4f, $20        ;; 0d:7902 ........
    db   $24, $e8, $f3, $12, $11, $00                  ;; 0d:790a ......
    db  $00 ;;RET

script_0265:
    db  $04 ;;MSG
    db   $10, $85, $20, $4e, $e7, $e5, $29, $d6        ;; 0d:7912 ........
    db   $20, $d9, $3c, $1a, $23, $20, $e0, $47        ;; 0d:791a ........
    db   $45, $27, $26, $5d, $d4, $d7, $e6, $1a        ;; 0d:7922 ........
    db   $33, $3e, $84, $e6, $dc, $d7, $61, $12        ;; 0d:792a ........
    db   $1b, $cd, $d4, $de, $20, $24, $67, $87        ;; 0d:7932 ........
    db   $3b, $e1, $d6, $9b, $12, $11, $00             ;; 0d:793a .......
    db  $00 ;;RET

script_0266:
    db  $04 ;;MSG
    db   $10, $c1, $66, $df, $e2, $80, $24, $44        ;; 0d:7943 ........
    db   $da, $42, $29, $f3, $1a, $d0, $66, $d6        ;; 0d:794b ........
    db   $64, $20, $33, $68, $e2, $e3, $e3, $5d        ;; 0d:7953 ........
    db   $f3, $12, $11, $00                            ;; 0d:795b ....
    db  $00 ;;RET

script_0267:
    db  $04 ;;MSG
    db   $10, $bd, $2e, $de, $ff, $c5, $3c, $25        ;; 0d:7961 ........
    db   $31, $3d, $e2, $1a, $d6, $e5, $e8, $66        ;; 0d:7969 ........
    db   $f3, $f3, $69, $5b, $89, $e1, $ee, $e7        ;; 0d:7971 ........
    db   $1a, $45, $29, $25, $48, $2d, $e1, $ec        ;; 0d:7979 ........
    db   $e0, $3c, $9b, $12, $11, $00                  ;; 0d:7981 ......
    db  $00 ;;RET

script_0268:
    db  $04 ;;MSG
    db   $10, $bd, $2e, $de, $ff, $c5, $3c, $25        ;; 0d:7989 ........
    db   $31, $1a, $df, $5e, $de, $2f, $da, $52        ;; 0d:7991 ........
    db   $3c, $2d, $1a, $da, $8b, $df, $80, $5b        ;; 0d:7999 ........
    db   $2a, $2e, $d7, $f0, $12, $1b, $bd, $36        ;; 0d:79a1 ........
    db   $24, $81, $de, $95, $ea, $2d, $60, $8b        ;; 0d:79a9 ........
    db   $df, $1a, $9c, $23, $22, $2a, $3d, $d8        ;; 0d:79b1 ........
    db   $d6, $38, $28, $50, $1a, $23, $20, $cd        ;; 0d:79b9 ........
    db   $38, $20, $50, $51, $29, $d4, $f4, $12        ;; 0d:79c1 ........
    db   $11, $00                                      ;; 0d:79c9 ..
    db  $00 ;;RET

script_0269:
    db  $04 ;;MSG
    db   $10, $85, $20, $e2, $df, $25, $63, $4a        ;; 0d:79cd ........
    db   $d5, $ec, $1a, $23, $20, $d0, $30, $27        ;; 0d:79d5 ........
    db   $d9, $56, $df, $26, $31, $1a, $e6, $e8        ;; 0d:79dd ........
    db   $d6, $db, $2d, $43, $d8, $8b, $d7, $e2        ;; 0d:79e5 ........
    db   $f3, $12, $1b, $c1, $20, $41, $20, $33        ;; 0d:79ed ........
    db   $6f, $20, $d4, $1a, $da, $56, $df, $29        ;; 0d:79f5 ........
    db   $28, $de, $e1, $8f, $91, $ef, $1a, $d5        ;; 0d:79fd ........
    db   $84, $ff, $95, $28, $29, $ec, $e0, $3c        ;; 0d:7a05 ........
    db   $9b, $12, $11, $00                            ;; 0d:7a0d ....
    db  $00 ;;RET

script_026a:
    db  $04 ;;MSG
    db   $10, $cd, $38, $20, $50, $51, $29, $58        ;; 0d:7a13 ........
    db   $31, $1a, $82, $e7, $d6, $5c, $4f, $ff        ;; 0d:7a1b ........
    db   $41, $52, $5f, $e0, $1a, $d4, $d5, $e2        ;; 0d:7a23 ........
    db   $4d, $22, $2a, $87, $df, $21, $d7, $e6        ;; 0d:7a2b ........
    db   $f0, $12, $1b, $c2, $e7, $6c, $ff, $e3        ;; 0d:7a33 ........
    db   $5f, $3f, $d6, $e7, $2f, $da, $ff, $41        ;; 0d:7a3b ........
    db   $1a, $d9, $5f, $8c, $d8, $e9, $83, $22        ;; 0d:7a43 ........
    db   $5c, $4f, $e6, $f0, $12, $11, $00             ;; 0d:7a4b .......
    db  $00 ;;RET

script_026b:
    db  $04 ;;MSG
    db   $10, $c0, $8b, $df, $f5, $c1, $4b, $dc        ;; 0d:7a54 ????????
    db   $e0, $6c, $60, $e2, $e7, $1a, $2d, $3d        ;; 0d:7a5c ????????
    db   $27, $dc, $21, $26, $ea, $21, $2b, $f3        ;; 0d:7a64 ????????
    db   $12, $11, $00                                 ;; 0d:7a6c ???
    db  $00 ;;RET

script_026c:
    db  $08 ;;IF ? JR
    db   $0a, $00, $a2                                 ;; 0d:7a71 ..?
    db  $04 ;;MSG
    db   $10, $00                                      ;; 0d:7a75 ..
    db  $f0 ;;UNK_F0
    db   $0a                                           ;; 0d:7a78 .
    db  $f8 ;;UNK_MUSIC_F8
    db   $17                                           ;; 0d:7a7a .
    db  $02 ;;CALL
    db   $3b, $17                                      ;; 0d:7a7c ..
    db  $04 ;;MSG
    db   $c0, $8b, $df, $f5, $c8, $db, $f1, $ff        ;; 0d:7a7f ........
    db   $c7, $e2, $f1, $1a, $ff, $bd, $47, $ee        ;; 0d:7a87 ........
    db   $28, $5d, $5a, $20, $e0, $d8, $1a, $2d        ;; 0d:7a8f ........
    db   $df, $47, $d8, $80, $c1, $4b, $dc, $e0        ;; 0d:7a97 ........
    db   $f3, $12, $1b, $14, $f5, $c2, $ee, $8c        ;; 0d:7a9f ........
    db   $df, $5e, $de, $2f, $da, $1a, $52, $3c        ;; 0d:7aa7 ........
    db   $22, $3b, $28, $bb, $e2, $da, $2e, $d7        ;; 0d:7aaf ........
    db   $ef, $1a, $22, $5e, $f0, $12, $1b, $6a        ;; 0d:7ab7 ........
    db   $db, $57, $d7, $47, $ee, $28, $24, $e8        ;; 0d:7abf ........
    db   $1a, $87, $64, $20, $9c, $23, $42, $d8        ;; 0d:7ac7 ........
    db   $f4, $1a, $c0, $8b, $df, $f5, $c8, $db        ;; 0d:7acf ........
    db   $ff, $f1, $ff, $bc, $29, $49, $f4, $12        ;; 0d:7ad7 ........
    db   $1b, $14, $f5, $5b, $89, $e1, $ee, $28        ;; 0d:7adf ........
    db   $5d, $5a, $d8, $1a, $59, $21, $40, $27        ;; 0d:7ae7 ........
    db   $20, $56, $47, $61, $1a, $ff, $f1, $49        ;; 0d:7aef ........
    db   $2d, $8c, $14, $f0, $12, $1b, $15, $f5        ;; 0d:7af7 ........
    db   $bc, $56, $65, $e0, $20, $15, $f0, $12        ;; 0d:7aff ........
    db   $1b, $00                                      ;; 0d:7b07 ..
    db  $f8 ;;UNK_MUSIC_F8
    db   $00                                           ;; 0d:7b0a .
    db  $9c ;;UNK_9c
    db   $01, $04, $11, $00, $da, $0b, $da, $51        ;; 0d:7b0c ........
    db   $f8, $14                                      ;; 0d:7b14 ..
    db  $00 ;;RET

script_026d:
    db  $04 ;;MSG
    db   $c1, $4b, $dc, $e0, $f5, $c8, $db, $f1        ;; 0d:7b18 ........
    db   $ff, $e3, $5d, $4b, $d8, $f1, $1a, $22        ;; 0d:7b20 ........
    db   $d4, $de, $20, $23, $31, $60, $8b, $df        ;; 0d:7b28 ........
    db   $1a, $22, $e2, $f1, $6a, $4e, $d7, $66        ;; 0d:7b30 ........
    db   $f1, $2d, $2b, $f1, $12, $1b, $00             ;; 0d:7b38 .......
    db  $17 ;;UNK_17
    db   $04, $3d, $d8, $20, $bb, $e2, $da, $2e        ;; 0d:7b40 ........
    db   $d7, $35, $f1, $1a, $97, $20, $9c, $3a        ;; 0d:7b48 ........
    db   $22, $d4, $de, $20, $89, $38, $1a, $3e        ;; 0d:7b50 ........
    db   $53, $23, $20, $38, $45, $f1, $ff, $f1        ;; 0d:7b58 ........
    db   $12, $1b, $c0, $8b, $df, $f5, $f1, $ff        ;; 0d:7b60 ........
    db   $f1, $97, $4b, $dc, $e0, $f3, $f4, $1a        ;; 0d:7b68 ........
    db   $ff, $f1, $ff, $f1, $97, $ff, $ba, $9a        ;; 0d:7b70 ........
    db   $49, $51, $f3, $f3, $12, $1b, $00, $f0        ;; 0d:7b78 ........
    db   $1e, $04, $1a, $c1, $4b, $dc, $8c, $e3        ;; 0d:7b80 ........
    db   $4b, $6b, $25, $d4, $82, $ec, $f0, $12        ;; 0d:7b88 ........
    db   $1b, $00, $00                                 ;; 0d:7b90 ...

script_0270:
    db  $0b ;;IF JR
    db   $c9, $00, $21                                 ;; 0d:7b94 ???
    db  $09 ;;UNK_09
    db   $20, $00, $12, $08, $58, $00, $05, $02        ;; 0d:7b98 ????????
    db   $5a, $e2, $da, $6a, $f4, $0b, $07, $10        ;; 0d:7ba0 ????????
    db   $0c, $f8, $07, $01, $0b, $04, $10, $ff        ;; 0d:7ba8 ????????
    db   $c5, $e2, $9e, $39, $f0, $12, $11, $00        ;; 0d:7bb0 ????????
    db  $00 ;;RET

script_0271:
    db  $0b ;;IF JR
    db   $c9, $00, $13                                 ;; 0d:7bba ...
    db  $08 ;;IF ? JR
    db   $58, $00, $05                                 ;; 0d:7bbe ...
    db  $02 ;;CALL
    db   $5a, $e2                                      ;; 0d:7bc2 ??
    db  $da ;;UNK_DA
    db   $60                                           ;; 0d:7bc5 ?
    db  $f4 ;;UNK_f4
    db   $0e, $01, $0e, $0c, $f0, $14, $f8, $04        ;; 0d:7bc7 ........
    db   $ec                                           ;; 0d:7bcf .
    db  $00 ;;RET

script_0272:
    db  $0b ;;IF JR
    db   $c9, $00, $1b                                 ;; 0d:7bd2 ..?
    db  $f4 ;;UNK_f4
    db   $06, $32, $09, $0c, $f8, $04, $c5, $02        ;; 0d:7bd6 ........
    db   $08, $a6, $00, $06, $db, $78, $db, $79        ;; 0d:7bde ...?....
    db   $db, $7a, $08, $0c, $00, $03, $f9, $10        ;; 0d:7be6 ......??
    db   $e0, $ec                                      ;; 0d:7bee ?.
    db  $00 ;;RET

script_0273:
    db  $0b ;;IF JR
    db   $c9, $c1, $00, $0d                            ;; 0d:7bf2 ????
    db  $f9 ;;UNK_SFX_F9
    db   $0c                                           ;; 0d:7bf7 ?
    db  $8a ;;UNK_8a
    db   $14, $00, $f0, $3c, $f4, $03, $11, $09        ;; 0d:7bf9 ????????
    db   $07, $ec                                      ;; 0d:7c01 ??
    db  $00 ;;RET

script_0274:
    db  $0b ;;IF JR
    db   $c9, $c1, $00, $0d                            ;; 0d:7c05 ????
    db  $f9 ;;UNK_SFX_F9
    db   $0c                                           ;; 0d:7c0a ?
    db  $8a ;;UNK_8a
    db   $14, $00, $f0, $3c, $f4, $06, $07, $09        ;; 0d:7c0c ????????
    db   $07, $ec                                      ;; 0d:7c14 ??
    db  $00 ;;RET

script_0275:
    db  $0b ;;IF JR
    db   $c9, $00, $29                                 ;; 0d:7c18 ...
    db  $09 ;;UNK_09
    db   $21, $00, $1a, $08, $58, $00, $05, $02        ;; 0d:7c1c ...?????
    db   $5a, $e2, $da, $62, $f4, $09, $31, $10        ;; 0d:7c24 ????????
    db   $02, $08, $c8, $00, $04, $fc, $4d, $fd        ;; 0d:7c2c ????????
    db   $00, $f8, $07, $01, $0b, $04, $10, $ff        ;; 0d:7c34 ?????...
    db   $c5, $e2, $9e, $39, $f0, $12, $11, $00        ;; 0d:7c3c ........
    db  $00 ;;RET

script_0276:
    db  $0b ;;IF JR
    db   $c9, $00, $13                                 ;; 0d:7c46 ???
    db  $08 ;;IF ? JR
    db   $58, $00, $05                                 ;; 0d:7c4a ???
    db  $02 ;;CALL
    db   $5a, $e2                                      ;; 0d:7c4e ??
    db  $da ;;UNK_DA
    db   $61                                           ;; 0d:7c51 ?
    db  $c5 ;;UNK_c5
    db   $00, $f4, $03, $41, $09, $0c, $f8, $07        ;; 0d:7c53 ????????
    db   $ec                                           ;; 0d:7c5b ?
    db  $00 ;;RET

script_0277:
    db  $0b ;;IF JR
    db   $c9, $00, $11                                 ;; 0d:7c5e ???
    db  $08 ;;IF ? JR
    db   $58, $00, $05                                 ;; 0d:7c62 ???
    db  $02 ;;CALL
    db   $5a, $e2                                      ;; 0d:7c66 ??
    db  $da ;;UNK_DA
    db   $63                                           ;; 0d:7c69 ?
    db  $f4 ;;UNK_f4
    db   $0e, $17, $0b, $0c, $f8, $0b, $ec             ;; 0d:7c6b ???????
    db  $00 ;;RET

script_0278:
    db  $0b ;;IF JR
    db   $c9, $00, $11                                 ;; 0d:7c74 ???
    db  $08 ;;IF ? JR
    db   $58, $00, $05                                 ;; 0d:7c78 ???
    db  $02 ;;CALL
    db   $5a, $e2                                      ;; 0d:7c7c ??
    db  $da ;;UNK_DA
    db   $65                                           ;; 0d:7c7f ?
    db  $f4 ;;UNK_f4
    db   $0a, $66, $10, $02, $f8, $18, $ec             ;; 0d:7c81 ???????
    db  $00 ;;RET

script_0279:
    db  $0b ;;IF JR
    db   $c9, $00, $39                                 ;; 0d:7c8a ???
    db  $08 ;;IF ? JR
    db   $58, $00, $05                                 ;; 0d:7c8e ???
    db  $02 ;;CALL
    db   $5a, $e2                                      ;; 0d:7c92 ??
    db  $da ;;UNK_DA
    db   $64                                           ;; 0d:7c95 ?
    db  $08 ;;IF ? JR
    db   $54, $00, $24                                 ;; 0d:7c97 ???
    db  $04 ;;MSG
    db   $10, $bb, $e2, $da, $2e, $d7, $f5, $c1        ;; 0d:7c9b ????????
    db   $d8, $ec, $f3, $97, $d8, $ec, $f3, $1a        ;; 0d:7ca3 ????????
    db   $6a, $2a, $38, $2d, $38, $59, $21, $1a        ;; 0d:7cab ????????
    db   $60, $e2, $2f, $da, $f4, $f4, $12, $11        ;; 0d:7cb3 ????????
    db   $00                                           ;; 0d:7cbb ?
    db  $01 ;;JR
    db   $08                                           ;; 0d:7cbd ?
    db  $f4 ;;UNK_f4
    db   $0a, $55, $10, $02, $f8, $07, $ec             ;; 0d:7cbf ???????
    db  $00 ;;RET

script_027a:
    db  $0b ;;IF JR
    db   $c9, $00, $7c                                 ;; 0d:7cc8 ???
    db  $09 ;;UNK_09
    db   $46, $00, $09, $f4, $0a, $13, $10, $0c        ;; 0d:7ccc ????????
    db   $f8, $07, $01, $6f, $09, $54, $00, $09        ;; 0d:7cd4 ????????
    db   $f4, $0a, $13, $10, $0c, $f8, $07, $01        ;; 0d:7cdc ????????
    db   $62, $09, $5f, $00, $09, $f4, $0a, $13        ;; 0d:7ce4 ????????
    db   $10, $0c, $f8, $07, $01, $55, $09, $6a        ;; 0d:7cec ????????
    db   $00, $09, $f4, $0a, $13, $10, $0c, $f8        ;; 0d:7cf4 ????????
    db   $07, $01, $48, $04, $10, $c0, $8a, $d4        ;; 0d:7cfc ????????
    db   $f5, $d0, $3b, $d4, $d4, $d4, $f1, $00        ;; 0d:7d04 ????????
    db   $f0, $28, $04, $1a, $ff, $bd, $5e, $5e        ;; 0d:7d0c ????????
    db   $e1, $ee, $28, $82, $df, $de, $37, $e1        ;; 0d:7d14 ????????
    db   $1a, $42, $57, $e0, $5e, $5e, $84, $db        ;; 0d:7d1c ????????
    db   $f1, $12, $1b, $1a, $ff, $c8, $5e, $5e        ;; 0d:7d24 ????????
    db   $ff, $00, $f0, $28, $04, $69, $d2, $e8        ;; 0d:7d2c ????????
    db   $9e, $f3, $f3, $00, $f0, $3c, $04, $11        ;; 0d:7d34 ????????
    db   $00, $f9, $0c, $8a, $0c, $03, $03, $02        ;; 0d:7d3c ????????
    db   $02, $81, $00                                 ;; 0d:7d44 ???
    db  $00 ;;RET

script_027b:
    db  $0b ;;IF JR
    db   $c9, $00, $08                                 ;; 0d:7d49 ???
    db  $f4 ;;UNK_f4
    db   $0a, $05, $10, $0c, $f8, $07, $ec             ;; 0d:7d4d ???????
    db  $00 ;;RET

script_027c:
    db  $0b ;;IF JR
    db   $c9, $00, $0c                                 ;; 0d:7d56 ???
    db  $08 ;;IF ? JR
    db   $96, $00, $08                                 ;; 0d:7d5a ???
    db  $f4 ;;UNK_f4
    db   $0e, $62, $0c, $0c, $f8, $0e, $ec             ;; 0d:7d5e ???????
    db  $00 ;;RET

script_027d:
    db  $0b ;;IF JR
    db   $c9, $00, $06                                 ;; 0d:7d67 ???
    db  $f9 ;;UNK_SFX_F9
    db   $18                                           ;; 0d:7d6b ?
    db  $b0 ;;UNK_b0
    db   $02, $01, $01                                 ;; 0d:7d6d ???
    db  $00 ;;RET

script_027e:
    db  $0b ;;IF JR
    db   $c9, $a9, $00, $06                            ;; 0d:7d72 ????
    db  $f9 ;;UNK_SFX_F9
    db   $18                                           ;; 0d:7d77 ?
    db  $b0 ;;UNK_b0
    db   $02, $08, $01                                 ;; 0d:7d79 ???
    db  $0c ;;IF ! JR
    db   $c9, $00, $06                                 ;; 0d:7d7d ???
    db  $f9 ;;UNK_SFX_F9
    db   $18                                           ;; 0d:7d81 ?
    db  $b0 ;;UNK_b0
    db   $00, $08, $01                                 ;; 0d:7d83 ???
    db  $00 ;;RET

script_027f:
    db  $0b ;;IF JR
    db   $c9, $00, $11                                 ;; 0d:7d88 ???
    db  $08 ;;IF ? JR
    db   $58, $00, $05                                 ;; 0d:7d8c ???
    db  $02 ;;CALL
    db   $5a, $e2                                      ;; 0d:7d90 ??
    db  $da ;;UNK_DA
    db   $5f                                           ;; 0d:7d93 ?
    db  $f4 ;;UNK_f4
    db   $0e, $53, $0d, $0c, $f8, $04, $ec             ;; 0d:7d95 ???????
    db  $00 ;;RET

script_0280:
    db  $0b ;;IF JR
    db   $c9, $00, $1b                                 ;; 0d:7d9e ???
    db  $08 ;;IF ? JR
    db   $58, $00, $05                                 ;; 0d:7da2 ???
    db  $02 ;;CALL
    db   $5a, $e2                                      ;; 0d:7da6 ??
    db  $da ;;UNK_DA
    db   $5b                                           ;; 0d:7da9 ?
    db  $f4 ;;UNK_f4
    db   $0e, $15, $07, $0c, $08, $a8, $00, $02        ;; 0d:7dab ????????
    db   $f8, $00, $08, $28, $00, $02, $f8, $0d        ;; 0d:7db3 ????????
    db   $ec                                           ;; 0d:7dbb ?
    db  $00 ;;RET

script_0281:
    db  $0b ;;IF JR
    db   $c9, $00, $53                                 ;; 0d:7dbe ???
    db  $08 ;;IF ? JR
    db   $58, $00, $05                                 ;; 0d:7dc2 ???
    db  $02 ;;CALL
    db   $5a, $e2                                      ;; 0d:7dc6 ??
    db  $da ;;UNK_DA
    db   $5c                                           ;; 0d:7dc9 ?
    db  $f4 ;;UNK_f4
    db   $08, $54, $10, $02, $f8, $08, $08, $a7        ;; 0d:7dcb ????????
    db   $00, $3f, $fc, $51, $fd, $00, $16, $85        ;; 0d:7dd3 ????????
    db   $8a, $10, $03, $03, $04, $02, $80, $00        ;; 0d:7ddb ????????
    db   $87, $03, $05, $02, $80, $00, $04, $10        ;; 0d:7de3 ????????
    db   $00, $08, $1b, $00, $19, $04, $ba, $63        ;; 0d:7deb ????????
    db   $2b, $d4, $f5, $c2, $ee, $8c, $da, $df        ;; 0d:7df3 ????????
    db   $d4, $d7, $1a, $59, $21, $ee, $38, $6f        ;; 0d:7dfb ????????
    db   $d4, $9e, $f3, $00, $01, $03, $02, $6d        ;; 0d:7e03 ????????
    db   $f9, $04, $12, $11, $00, $9c, $05, $da        ;; 0d:7e0b ????????
    db   $55                                           ;; 0d:7e13 ?
    db  $00 ;;RET

script_0282:
    db  $0b ;;IF JR
    db   $c9, $00, $98                                 ;; 0d:7e16 ???
    db  $08 ;;IF ? JR
    db   $58, $00, $05                                 ;; 0d:7e1a ???
    db  $02 ;;CALL
    db   $5a, $e2                                      ;; 0d:7e1e ??
    db  $da ;;UNK_DA
    db   $5d                                           ;; 0d:7e21 ?
    db  $c5 ;;UNK_c5
    db   $01, $f4, $06, $17, $09, $0c, $f8, $0c        ;; 0d:7e23 ????????
    db   $fc, $52, $84, $fd, $02, $10, $10, $10        ;; 0d:7e2b ????????
    db   $04, $10, $5b, $ba, $c6, $51, $ba, $cb        ;; 0d:7e33 ????????
    db   $bc, $c2, $be, $f0, $1a, $5b, $cc, $be        ;; 0d:7e3b ????????
    db   $ba, $cb, $bc, $c1, $ff, $cb, $be, $c5        ;; 0d:7e43 ????????
    db   $c2, $bc, $cc, $f0, $1a, $bd, $cb, $f0        ;; 0d:7e4b ????????
    db   $bb, $c8, $d0, $c8, $d0, $51, $ba, $bd        ;; 0d:7e53 ????????
    db   $6d, $c6, $be, $f0, $12, $1b, $9d, $ff        ;; 0d:7e5b ????????
    db   $c5, $be, $bf, $cd, $51, $6d, $9d, $cb        ;; 0d:7e63 ????????
    db   $be, $f0, $1a, $5b, $d0, $ba, $c2, $cd        ;; 0d:7e6b ????????
    db   $be, $bd, $ff, $b5, $b0, $ff, $d2, $be        ;; 0d:7e73 ????????
    db   $ba, $cb, $cc, $f0, $1a, $9d, $ff, $bf        ;; 0d:7e7b ????????
    db   $c8, $cb, $c0, $c8, $cd, $51, $be, $f0        ;; 0d:7e83 ????????
    db   $12, $1b, $5b, $bc, $ba, $c7, $97, $be        ;; 0d:7e8b ????????
    db   $c5, $c9, $ff, $d2, $c8, $ce, $f0, $1a        ;; 0d:7e93 ????????
    db   $cd, $ba, $c4, $6d, $c6, $6d, $d0, $c2        ;; 0d:7e9b ????????
    db   $cd, $c1, $ff, $d2, $c8, $ce, $f0, $12        ;; 0d:7ea3 ????????
    db   $11, $00, $9c, $07, $da, $57                  ;; 0d:7eab ??????
    db  $00 ;;RET

script_0283:
    db  $00 ;;RET

script_0284:
    db  $0b ;;IF JR
    db   $c9, $00, $11                                 ;; 0d:7eb4 ???
    db  $08 ;;IF ? JR
    db   $58, $00, $05                                 ;; 0d:7eb8 ???
    db  $02 ;;CALL
    db   $5a, $e2                                      ;; 0d:7ebc ??
    db  $da ;;UNK_DA
    db   $6c                                           ;; 0d:7ebf ?
    db  $f4 ;;UNK_f4
    db   $09, $03, $02, $0c, $f8, $08, $ec             ;; 0d:7ec1 ???????
    db  $00 ;;RET

script_0285:
    db  $0b ;;IF JR
    db   $c9, $00, $11                                 ;; 0d:7eca ???
    db  $08 ;;IF ? JR
    db   $58, $00, $05                                 ;; 0d:7ece ???
    db  $02 ;;CALL
    db   $5a, $e2                                      ;; 0d:7ed2 ??
    db  $da ;;UNK_DA
    db   $6b                                           ;; 0d:7ed5 ?
    db  $f4 ;;UNK_f4
    db   $0d, $77, $10, $0c, $f8, $08, $ec             ;; 0d:7ed7 ???????
    db  $00 ;;RET

script_0286:
    db  $0b ;;IF JR
    db   $c9, $00, $10                                 ;; 0d:7ee0 ???
    db  $08 ;;IF ? JR
    db   $58, $00, $05                                 ;; 0d:7ee4 ???
    db  $02 ;;CALL
    db   $5a, $e2                                      ;; 0d:7ee8 ??
    db  $da ;;UNK_DA
    db   $6d                                           ;; 0d:7eeb ?
    db  $f4 ;;UNK_f4
    db   $08, $03, $08, $08, $f8, $07                  ;; 0d:7eed ??????
    db  $00 ;;RET

script_0287:
    db  $0b ;;IF JR
    db   $c9, $00, $07                                 ;; 0d:7ef5 ???
    db  $f4 ;;UNK_f4
    db   $0f, $10, $10, $02, $f8, $07                  ;; 0d:7ef9 ??????
    db  $00 ;;RET

script_0288:
    db  $0b ;;IF JR
    db   $c9, $00, $19                                 ;; 0d:7f01 ???
    db  $08 ;;IF ? JR
    db   $58, $00, $05                                 ;; 0d:7f05 ???
    db  $02 ;;CALL
    db   $5a, $e2                                      ;; 0d:7f09 ??
    db  $da ;;UNK_DA
    db   $66                                           ;; 0d:7f0c ?
    db  $f4 ;;UNK_f4
    db   $0f, $37, $09, $0c, $08, $21, $00, $04        ;; 0d:7f0e ????????
    db   $f8, $04, $01, $02, $f8, $1b, $ec             ;; 0d:7f16 ???????
    db  $00 ;;RET

script_0289:
    db  $0b ;;IF JR
    db   $c9, $00, $08                                 ;; 0d:7f1f ???
    db  $f4 ;;UNK_f4
    db   $0d, $17, $10, $0c, $f8, $0c, $ec             ;; 0d:7f23 ???????
    db  $00 ;;RET

script_028a:
    db  $0b ;;IF JR
    db   $c9, $00, $1b                                 ;; 0d:7f2c ???
    db  $08 ;;IF ? JR
    db   $58, $00, $05                                 ;; 0d:7f30 ???
    db  $02 ;;CALL
    db   $5a, $e2                                      ;; 0d:7f34 ??
    db  $da ;;UNK_DA
    db   $68                                           ;; 0d:7f37 ?
    db  $c5 ;;UNK_c5
    db   $04, $f4, $03, $47, $09, $0c, $08, $2d        ;; 0d:7f39 ????????
    db   $00, $04, $f8, $0b, $01, $02, $f8, $0a        ;; 0d:7f41 ????????
    db   $ec                                           ;; 0d:7f49 ?
    db  $00 ;;RET

script_028b:
    db  $0b ;;IF JR
    db   $c9, $00, $13                                 ;; 0d:7f4c ???
    db  $08 ;;IF ? JR
    db   $58, $00, $05                                 ;; 0d:7f50 ???
    db  $02 ;;CALL
    db   $5a, $e2                                      ;; 0d:7f54 ??
    db  $da ;;UNK_DA
    db   $67                                           ;; 0d:7f57 ?
    db  $f4 ;;UNK_f4
    db   $0e, $77, $0e, $02, $f8, $08, $da, $47        ;; 0d:7f59 ????????
    db   $ec                                           ;; 0d:7f61 ?
    db  $00 ;;RET

script_028c:
    db  $0b ;;IF JR
    db   $c9, $00, $0a                                 ;; 0d:7f64 ???
    db  $f4 ;;UNK_f4
    db   $01, $17, $10, $05, $f8, $07, $02, $14        ;; 0d:7f68 ????????
    db   $cf                                           ;; 0d:7f70 ?
    db  $00 ;;RET

script_028d:
    db  $0b ;;IF JR
    db   $c9, $00, $08                                 ;; 0d:7f73 ???
    db  $f4 ;;UNK_f4
    db   $0b, $76, $10, $02, $f8, $07, $ec             ;; 0d:7f77 ???????
    db  $00 ;;RET

script_028e:
    db  $00 ;;RET

script_028f:
    db  $00 ;;RET

script_0290:
    db  $0b ;;IF JR
    db   $c9, $00, $09                                 ;; 0d:7f82 ???
    db  $f4 ;;UNK_f4
    db   $00, $f0, $08, $08, $f8, $19, $ab, $ec        ;; 0d:7f86 ????????
    db  $00 ;;RET

script_0291:
    db  $0b ;;IF JR
    db   $c9, $c1, $00, $0a                            ;; 0d:7f90 ...?
    db  $f4 ;;UNK_f4
    db   $00, $87, $08, $02, $f0, $14, $f8, $14        ;; 0d:7f95 ........
    db   $ec                                           ;; 0d:7f9d .
    db  $00 ;;RET

script_0292:
    db  $0b ;;IF JR
    db   $c9, $c1, $00, $0d                            ;; 0d:7fa0 ????
    db  $f9 ;;UNK_SFX_F9
    db   $0c                                           ;; 0d:7fa5 ?
    db  $8a ;;UNK_8a
    db   $14, $00, $f0, $3c, $f4, $06, $26, $09        ;; 0d:7fa7 ????????
    db   $07, $ec                                      ;; 0d:7faf ??
    db  $00 ;;RET

script_0293:
    db  $00 ;;RET
    db   $0b, $c9, $00, $33, $08, $52, $c8, $00        ;; 0d:7fb3 ????????
    db   $25, $04, $10, $62, $e1, $f5, $bd, $dc        ;; 0d:7fbb ????????
    db   $d7, $e1, $ee, $28, $24, $e8, $1a, $87        ;; 0d:7fc3 ????????
    db   $64, $20, $2a, $38, $22, $36, $da, $98        ;; 0d:7fcb ????????
    db   $1a, $22, $2a, $51, $8b, $5f, $e5, $f4        ;; 0d:7fd3 ????????
    db   $12, $11, $00, $98, $db, $52, $f4, $00        ;; 0d:7fdb ????????
    db   $e8, $0a, $03, $f8, $14, $ab, $ec, $00        ;; 0d:7fe3 ????????
