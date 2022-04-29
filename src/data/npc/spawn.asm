;; Disassembled with BadBoy Disassembler: https://github.com/daid/BadBoy


;@npc_spawn_data amount=109
; NPC spawn data, selected a row with sSET_NPC_TYPES, and spawn actual NPCs with sSPAWN_NPC to select the column to spawn.
; Controls which NPCs to spawn, and how many to spawn, as well as on which positions (or random position)
NPCSpawnPointers:
    dw   data_03_7440, data_03_7448, data_03_7518      ;; 03:7142 ......
    dw   data_03_7450, data_03_7458, data_03_7458      ;; 03:7148 ......
    dw   data_03_7460, data_03_7468, data_03_7470      ;; 03:714e ......
    dw   data_03_7460, data_03_7480, data_03_7478      ;; 03:7154 ......
    dw   data_03_7488, data_03_7490, data_03_750e      ;; 03:715a ??????
    dw   data_03_7498, data_03_74a0, data_03_74fa      ;; 03:7160 ??????
    dw   data_03_74a8, data_03_74b0, data_03_7504      ;; 03:7166 ??????
    dw   data_03_74b8, data_03_74c0, data_03_74f0      ;; 03:716c ??????
    dw   data_03_74c8, data_03_74d0, data_03_7518      ;; 03:7172 ??????
    dw   data_03_74d8, data_03_74e0, data_03_74e0      ;; 03:7178 ??????
    dw   data_03_74e8, data_03_7542, data_03_753a      ;; 03:717e ??????
    dw   data_03_7552, data_03_7552, data_03_754a      ;; 03:7184 ??????
    dw   data_03_755a, data_03_7562, data_03_756a      ;; 03:718a ??????
    dw   data_03_7572, data_03_757a, data_03_7582      ;; 03:7190 ??????
    dw   data_03_758a, data_03_758a, data_03_7592      ;; 03:7196 ??????
    dw   data_03_758a, data_03_759a, data_03_75a2      ;; 03:719c ??????
    dw   data_03_758a, data_03_75b2, data_03_75ba      ;; 03:71a2 ??????
    dw   data_03_74a8, data_03_74a8, data_03_75aa      ;; 03:71a8 ??????
    dw   data_03_75c2, data_03_75ca, data_03_7528      ;; 03:71ae ??????
    dw   data_03_75d2, data_03_75da, data_03_7528      ;; 03:71b4 ??????
    dw   data_03_75e2, data_03_75ea, data_03_75ba      ;; 03:71ba ??????
    dw   data_03_75e2, data_03_75e2, data_03_750e      ;; 03:71c0 ??????
    dw   data_03_74f0, data_03_75f2, data_03_75fa      ;; 03:71c6 ??????
    dw   data_03_7602, data_03_760c, data_03_760c      ;; 03:71cc ??????
    dw   data_03_7616, data_03_761e, data_03_7626      ;; 03:71d2 ??????
    dw   data_03_762e, data_03_7636, data_03_763e      ;; 03:71d8 ??????
    dw   data_03_7646, data_03_764e, data_03_763e      ;; 03:71de ??????
    dw   data_03_7656, data_03_765e, data_03_763e      ;; 03:71e4 ??????
    dw   data_03_7666, data_03_766e, data_03_7520      ;; 03:71ea ??????
    dw   data_03_7676, data_03_766e, data_03_7520      ;; 03:71f0 ??????
    dw   data_03_767e, data_03_7686, data_03_75ba      ;; 03:71f6 ??????
    dw   data_03_768e, data_03_7696, data_03_769e      ;; 03:71fc ??????
    dw   data_03_7504, data_03_76a6, data_03_76ae      ;; 03:7202 ??????
    dw   data_03_76b6, data_03_76be, data_03_769e      ;; 03:7208 ??????
    dw   data_03_76c6, data_03_76ce, data_03_769e      ;; 03:720e ??????
    dw   data_03_76e0, data_03_76e0, data_03_76d6      ;; 03:7214 ??????
    dw   data_03_7738, data_03_7738, data_03_76e8      ;; 03:721a ......
    dw   data_03_7892, data_03_7892, data_03_7756      ;; 03:7220 ......
    dw   data_03_779a, data_03_771a, data_03_771a      ;; 03:7226 ??????
    dw   data_03_7742, data_03_76f2, data_03_76f2      ;; 03:722c ......
    dw   data_03_777c, data_03_76f2, data_03_7b02      ;; 03:7232 ??????
    dw   data_03_774c, data_03_774c, data_03_76e8      ;; 03:7238 ......
    dw   data_03_7a8e, data_03_7458, data_03_76e8      ;; 03:723e ......
    dw   data_03_78a2, data_03_789a, data_03_78ba      ;; 03:7244 ......
    dw   data_03_78aa, data_03_78b2, data_03_77b8      ;; 03:724a ......
    dw   data_03_7908, data_03_7910, data_03_7910      ;; 03:7250 ??????
    dw   data_03_7900, data_03_7900, data_03_7900      ;; 03:7256 ??????
    dw   data_03_7918, data_03_7920, data_03_7920      ;; 03:725c ??????
    dw   data_03_7808, data_03_7826, data_03_76e8      ;; 03:7262 ??????
    dw   data_03_77d6, data_03_78c2, data_03_78ca      ;; 03:7268 ??????
    dw   data_03_77ea, data_03_7a8e, data_03_7a8e      ;; 03:726e ??????
    dw   data_03_78d2, data_03_78ee, data_03_78f8      ;; 03:7274 ??????
    dw   data_03_78dc, data_03_78e6, data_03_7530      ;; 03:727a ??????
    dw   data_03_77fe, data_03_7530, data_03_7530      ;; 03:7280 ??????
    dw   data_03_7530, data_03_7530, data_03_7530      ;; 03:7286 ??????
    dw   data_03_7706, data_03_77a4, data_03_77f4      ;; 03:728c ??????
    dw   data_03_7948, data_03_7950, data_03_7530      ;; 03:7292 ??????
    dw   data_03_7958, data_03_7960, data_03_7530      ;; 03:7298 ??????
    dw   data_03_7970, data_03_7968, data_03_7530      ;; 03:729e ??????
    dw   data_03_7980, data_03_7988, data_03_7978      ;; 03:72a4 ??????
    dw   data_03_7990, data_03_7998, data_03_79a0      ;; 03:72aa ??????
    dw   data_03_79a8, data_03_79b0, data_03_79b0      ;; 03:72b0 ??????
    dw   data_03_7844, data_03_7844, data_03_784e      ;; 03:72b6 ??????
    dw   data_03_7928, data_03_7928, data_03_7928      ;; 03:72bc ??????
    dw   data_03_7930, data_03_7938, data_03_7940      ;; 03:72c2 ??????
    dw   data_03_783a, data_03_7858, data_03_7862      ;; 03:72c8 ??????
    dw   data_03_7768, data_03_7772, data_03_7772      ;; 03:72ce ??????
    dw   data_03_79e8, data_03_79f2, data_03_79fc      ;; 03:72d4 ??????
    dw   data_03_7a06, data_03_7a10, data_03_7a1a      ;; 03:72da ??????
    dw   data_03_7a24, data_03_7a2e, data_03_7a2e      ;; 03:72e0 ??????
    dw   data_03_7a42, data_03_7a38, data_03_7888      ;; 03:72e6 ??????
    dw   data_03_7a4a, data_03_7a38, data_03_7a38      ;; 03:72ec ??????
    dw   data_03_79b8, data_03_79c0, data_03_7530      ;; 03:72f2 ??????
    dw   data_03_79c8, data_03_79d0, data_03_7530      ;; 03:72f8 ??????
    dw   data_03_7530, data_03_7ae4, data_03_786c      ;; 03:72fe ??????
    dw   data_03_79d8, data_03_79e0, data_03_7530      ;; 03:7304 ??????
    dw   data_03_77c2, data_03_7876, data_03_7530      ;; 03:730a ??????
    dw   data_03_772e, data_03_7aee, data_03_7aee      ;; 03:7310 ??????
    dw   data_03_781c, data_03_7b02, data_03_7812      ;; 03:7316 ??????
    dw   data_03_77cc, data_03_77cc, data_03_77cc      ;; 03:731c ??????
    dw   data_03_7830, data_03_7ab6, data_03_7adc      ;; 03:7322 ??????
    dw   data_03_775e, data_03_775e, data_03_775e      ;; 03:7328 ??????
    dw   data_03_7af8, data_03_7af8, data_03_7af8      ;; 03:732e ??????
    dw   data_03_7aa2, data_03_7aac, data_03_76e8      ;; 03:7334 ??????
    dw   data_03_7a52, data_03_7a7a, data_03_7a7a      ;; 03:733a ......
    dw   data_03_7a66, data_03_7a70, data_03_7a70      ;; 03:7340 ......
    dw   data_03_7880, data_03_7530, data_03_7530      ;; 03:7346 ??????
    dw   data_03_7530, data_03_7530, data_03_77f4      ;; 03:734c ??????
    dw   data_03_777c, data_03_7b0c, data_03_77b8      ;; 03:7352 ??????
    dw   data_03_7b28, data_03_7b32, data_03_7b3c      ;; 03:7358 ......
    dw   data_03_7530, data_03_77d6, data_03_77e0      ;; 03:735e ??????
    dw   data_03_7a5c, data_03_7a84, data_03_7a84      ;; 03:7364 ......
    dw   data_03_7710, data_03_7786, data_03_7786      ;; 03:736a ??????
    dw   data_03_7706, data_03_7786, data_03_7786      ;; 03:7370 ??????
    dw   data_03_7b18, data_03_7b46, data_03_7b46      ;; 03:7376 ??????
    dw   data_03_742c, data_03_74b0, data_03_7436      ;; 03:737c ??????
    dw   data_03_7790, data_03_7530, data_03_76fc      ;; 03:7382 ??????
    dw   data_03_7ac0, data_03_7ac0, data_03_7ac0      ;; 03:7388 ??????
    dw   data_03_779a, data_03_77a4, data_03_77a4      ;; 03:738e ??????
    dw   data_03_7416, data_03_7416, data_03_7416      ;; 03:7394 ??????
    dw   data_03_73f8, data_03_7402, data_03_740c      ;; 03:739a ??????
    dw   data_03_7aca, data_03_7aca, data_03_7ad2      ;; 03:73a0 ??????
    dw   data_03_73ee, data_03_73ee, data_03_73ee      ;; 03:73a6 ??????
    dw   data_03_73e4, data_03_7844, data_03_7844      ;; 03:73ac ??????
    dw   data_03_7ac0, data_03_73da, data_03_73da      ;; 03:73b2 ??????
    dw   data_03_7420, data_03_7420, data_03_7420      ;; 03:73b8 ??????
    dw   data_03_73d0, data_03_73d0, data_03_73d0      ;; 03:73be ??????
    dw   data_03_77ae, data_03_77ae, data_03_77ae      ;; 03:73c4 ??????
    dw   data_03_7724, data_03_7724, data_03_7724      ;; 03:73ca ??????

; Spawn tables:
; MinSpawn, MaxSpawn, 4x ID (picked at random), Y, X (repeated, $80 $80 indicates random position and ends list)
data_03_73d0:
    db   1, 1, NPC_MAGIC_SALESMAN, NPC_MAGIC_SALESMAN, NPC_MAGIC_SALESMAN, NPC_MAGIC_SALESMAN ;; 03:73d0 ??????
    db   $09, $06, $80, $80                            ;; 03:73d6 ????

data_03_73da:
    db   1, 1, NPC_CHOCOBO_1, NPC_CHOCOBO_1, NPC_CHOCOBO_1, NPC_CHOCOBO_1 ;; 03:73da ??????
    db   $10, $06, $80, $80                            ;; 03:73e0 ????

data_03_73e4:
    db   1, 1, NPC_WOMAN_MENOS_2, NPC_WOMAN_MENOS_2, NPC_WOMAN_MENOS_2, NPC_WOMAN_MENOS_2 ;; 03:73e4 ??????
    db   $12, $04, $80, $80                            ;; 03:73ea ????

data_03_73ee:
    db   1, 1, NPC_WATTS, NPC_WATTS, NPC_WATTS, NPC_WATTS ;; 03:73ee ??????
    db   $0c, $04, $80, $80                            ;; 03:73f4 ????

data_03_73f8:
    db   1, 1, NPC_BOWOW, NPC_BOWOW, NPC_BOWOW, NPC_BOWOW ;; 03:73f8 ??????
    db   $00, $07, $80, $80                            ;; 03:73fe ????

data_03_7402:
    db   1, 1, NPC_SARAH, NPC_SARAH, NPC_SARAH, NPC_SARAH ;; 03:7402 ??????
    db   $0a, $06, $80, $80                            ;; 03:7408 ????

data_03_740c:
    db   1, 1, NPC_BOGARD_1, NPC_BOGARD_1, NPC_BOGARD_1, NPC_BOGARD_1 ;; 03:740c ??????
    db   $0a, $08, $80, $80                            ;; 03:7412 ????

data_03_7416:
    db   1, 1, NPC_INV_CURE, NPC_INV_CURE, NPC_INV_CURE, NPC_INV_CURE ;; 03:7416 ??????
    db   $09, $0a, $80, $80                            ;; 03:741c ????

data_03_7420:
    db   2, 2, NPC_MINOTAUR, NPC_MINOTAUR, NPC_MINOTAUR, NPC_MINOTAUR ;; 03:7420 ??????
    db   $0c, $0c, $06, $0c, $80, $80                  ;; 03:7426 ??????

data_03_742c:
    db   1, 1, NPC_CHEST_4, NPC_CHEST_4, NPC_CHEST_4, NPC_CHEST_4 ;; 03:742c ??????
    db   $0a, $08, $80, $80                            ;; 03:7432 ????

data_03_7436:
    db   1, 1, NPC_SNOWMAN_STILL, NPC_SNOWMAN_STILL, NPC_SNOWMAN_STILL, NPC_SNOWMAN_STILL ;; 03:7436 ??????
    db   $08, $08, $80, $80                            ;; 03:743c ????

data_03_7440:
    db   1, 2, NPC_CHIBIDEVIL, NPC_CHIBIDEVIL, NPC_CHIBIDEVIL, NPC_CHIBIDEVIL ;; 03:7440 ......
    db   $80, $80                                      ;; 03:7446 ..

data_03_7448:
    db   1, 2, NPC_RABBITE, NPC_RABBITE, NPC_RABBITE, NPC_RABBITE ;; 03:7448 ......
    db   $80, $80                                      ;; 03:744e ..

data_03_7450:
    db   1, 2, NPC_GOBLIN, NPC_GOBLIN, NPC_GOBLIN, NPC_GOBLIN ;; 03:7450 ......
    db   $80, $80                                      ;; 03:7456 ..

data_03_7458:
    db   1, 3, NPC_MUSHROOM, NPC_MUSHROOM, NPC_MUSHROOM, NPC_MUSHROOM ;; 03:7458 ......
    db   $80, $80                                      ;; 03:745e ..

data_03_7460:
    db   0, 2, NPC_JELLYFISH, NPC_JELLYFISH, NPC_JELLYFISH, NPC_JELLYFISH ;; 03:7460 ....?.
    db   $80, $80                                      ;; 03:7466 ..

data_03_7468:
    db   1, 2, NPC_SWAMPMAN, NPC_SWAMPMAN, NPC_SWAMPMAN, NPC_SWAMPMAN ;; 03:7468 ...?.?
    db   $80, $80                                      ;; 03:746e ..

data_03_7470:
    db   1, 1, NPC_LIZARDMAN, NPC_LIZARDMAN, NPC_LIZARDMAN, NPC_LIZARDMAN ;; 03:7470 ???.?.
    db   $80, $80                                      ;; 03:7476 ??

data_03_7478:
    db   2, 3, NPC_LIZARDMAN, NPC_LIZARDMAN, NPC_LIZARDMAN, NPC_LIZARDMAN ;; 03:7478 ??..??
    db   $80, $80                                      ;; 03:747e ??

data_03_7480:
    db   1, 2, NPC_FLOWER, NPC_FLOWER, NPC_FLOWER, NPC_FLOWER ;; 03:7480 ......
    db   $80, $80                                      ;; 03:7486 ..

data_03_7488:
    db   1, 3, NPC_FACEORB, NPC_FACEORB, NPC_FACEORB, NPC_FACEORB ;; 03:7488 ??????
    db   $80, $80                                      ;; 03:748e ??

data_03_7490:
    db   1, 2, NPC_SKELETON, NPC_SKELETON, NPC_SKELETON, NPC_SKELETON ;; 03:7490 ??????
    db   $80, $80                                      ;; 03:7496 ??

data_03_7498:
    db   1, 2, NPC_EVIL_PLANT, NPC_EVIL_PLANT, NPC_EVIL_PLANT, NPC_EVIL_PLANT ;; 03:7498 ??????
    db   $80, $80                                      ;; 03:749e ??

data_03_74a0:
    db   1, 1, NPC_FLYING_FISH, NPC_FLYING_FISH, NPC_FLYING_FISH, NPC_FLYING_FISH ;; 03:74a0 ??????
    db   $80, $80                                      ;; 03:74a6 ??

data_03_74a8:
    db   1, 3, NPC_ZOMBIE, NPC_ZOMBIE, NPC_ZOMBIE, NPC_ZOMBIE ;; 03:74a8 ??????
    db   $80, $80                                      ;; 03:74ae ??

data_03_74b0:
    db   1, 2, NPC_MOUSE, NPC_MOUSE, NPC_MOUSE, NPC_MOUSE ;; 03:74b0 ??????
    db   $80, $80                                      ;; 03:74b6 ??

data_03_74b8:
    db   1, 2, NPC_PUMPKIN, NPC_PUMPKIN, NPC_PUMPKIN, NPC_PUMPKIN ;; 03:74b8 ??????
    db   $80, $80                                      ;; 03:74be ??

data_03_74c0:
    db   1, 1, NPC_OWL, NPC_OWL, NPC_OWL, NPC_OWL      ;; 03:74c0 ??????
    db   $80, $80                                      ;; 03:74c6 ??

data_03_74c8:
    db   2, 3, NPC_BEE, NPC_BEE, NPC_BEE, NPC_BEE      ;; 03:74c8 ??????
    db   $80, $80                                      ;; 03:74ce ??

data_03_74d0:
    db   0, 2, NPC_CLOUD, NPC_CLOUD, NPC_CLOUD, NPC_CLOUD ;; 03:74d0 ??????
    db   $80, $80                                      ;; 03:74d6 ??

data_03_74d8:
    db   1, 2, NPC_PIG, NPC_PIG, NPC_PIG, NPC_PIG      ;; 03:74d8 ??????
    db   $80, $80                                      ;; 03:74de ??

data_03_74e0:
    db   1, 2, NPC_CRAB, NPC_CRAB, NPC_CRAB, NPC_CRAB  ;; 03:74e0 ??????
    db   $80, $80                                      ;; 03:74e6 ??

data_03_74e8:
    db   2, 3, NPC_SPIDER, NPC_SPIDER, NPC_SPIDER, NPC_SPIDER ;; 03:74e8 ??????
    db   $80, $80                                      ;; 03:74ee ??

data_03_74f0:
    db   1, 1, NPC_INV_OPEN_NORTH, NPC_INV_OPEN_NORTH, NPC_INV_OPEN_NORTH, NPC_INV_OPEN_NORTH ;; 03:74f0 ??????
    db   $09, $ff, $80, $80                            ;; 03:74f6 ????

data_03_74fa:
    db   1, 1, NPC_INV_OPEN_SOUTH, NPC_INV_OPEN_SOUTH, NPC_INV_OPEN_SOUTH, NPC_INV_OPEN_SOUTH ;; 03:74fa ??????
    db   $09, $0e, $80, $80                            ;; 03:7500 ????

data_03_7504:
    db   1, 1, NPC_INV_OPEN_EAST, NPC_INV_OPEN_EAST, NPC_INV_OPEN_EAST, NPC_INV_OPEN_EAST ;; 03:7504 ??????
    db   $12, $07, $80, $80                            ;; 03:750a ????

data_03_750e:
    db   1, 1, NPC_INV_OPEN_WEST, NPC_INV_OPEN_WEST, NPC_INV_OPEN_WEST, NPC_INV_OPEN_WEST ;; 03:750e ??????
    db   $00, $07, $80, $80                            ;; 03:7514 ????

data_03_7518:
    db   1, 2, NPC_WATER_DEMON, NPC_WATER_DEMON, NPC_WATER_DEMON, NPC_WATER_DEMON ;; 03:7518 ??....
    db   $80, $80                                      ;; 03:751e ??

data_03_7520:
    db   1, 3, NPC_SEA_DRAGON, NPC_SEA_DRAGON, NPC_SEA_DRAGON, NPC_SEA_DRAGON ;; 03:7520 ??????
    db   $80, $80                                      ;; 03:7526 ??

data_03_7528:
    db   1, 1, NPC_GALL_FISH, NPC_GALL_FISH, NPC_GALL_FISH, NPC_GALL_FISH ;; 03:7528 ??????
    db   $80, $80                                      ;; 03:752e ??

data_03_7530:
    db   1, 1, NPC_INV_DESSERT_CAVE_STONE, NPC_INV_DESSERT_CAVE_STONE, NPC_INV_DESSERT_CAVE_STONE, NPC_INV_DESSERT_CAVE_STONE ;; 03:7530 ??????
    db   $0e, $0a, $80, $80                            ;; 03:7536 ????

data_03_753a:
    db   1, 1, NPC_MIMIC_CHEST, NPC_MIMIC_CHEST, NPC_MIMIC_CHEST, NPC_MIMIC_CHEST ;; 03:753a ??????
    db   $80, $80                                      ;; 03:7540 ??

data_03_7542:
    db   1, 2, NPC_HOPPING_BUG, NPC_HOPPING_BUG, NPC_HOPPING_BUG, NPC_HOPPING_BUG ;; 03:7542 ??????
    db   $80, $80                                      ;; 03:7548 ??

data_03_754a:
    db   1, 2, NPC_PORCUPINE, NPC_PORCUPINE, NPC_PORCUPINE, NPC_PORCUPINE ;; 03:754a ??????
    db   $80, $80                                      ;; 03:7550 ??

data_03_7552:
    db   1, 1, NPC_CARROT, NPC_CARROT, NPC_CARROT, NPC_CARROT ;; 03:7552 ??????
    db   $80, $80                                      ;; 03:7558 ??

data_03_755a:
    db   1, 3, NPC_EYE_SPY, NPC_EYE_SPY, NPC_EYE_SPY, NPC_EYE_SPY ;; 03:755a ??????
    db   $80, $80                                      ;; 03:7560 ??

data_03_7562:
    db   1, 2, NPC_WEREWOLF_2, NPC_WEREWOLF_2, NPC_WEREWOLF_2, NPC_WEREWOLF_2 ;; 03:7562 ??????
    db   $80, $80                                      ;; 03:7568 ??

data_03_756a:
    db   1, 2, NPC_GHOST, NPC_GHOST, NPC_GHOST, NPC_GHOST ;; 03:756a ??????
    db   $80, $80                                      ;; 03:7570 ??

data_03_7572:
    db   1, 2, NPC_BASILISK, NPC_BASILISK, NPC_BASILISK, NPC_BASILISK ;; 03:7572 ??????
    db   $80, $80                                      ;; 03:7578 ??

data_03_757a:
    db   1, 1, NPC_SCORPION, NPC_SCORPION, NPC_SCORPION, NPC_SCORPION ;; 03:757a ??????
    db   $80, $80                                      ;; 03:7580 ??

data_03_7582:
    db   1, 2, NPC_SAURUS, NPC_SAURUS, NPC_SAURUS, NPC_SAURUS ;; 03:7582 ??????
    db   $80, $80                                      ;; 03:7588 ??

data_03_758a:
    db   2, 3, NPC_MUMMY, NPC_MUMMY, NPC_MUMMY, NPC_MUMMY ;; 03:758a ??????
    db   $80, $80                                      ;; 03:7590 ??

data_03_7592:
    db   1, 1, NPC_PAKKUN_LIZARD, NPC_PAKKUN_LIZARD, NPC_PAKKUN_LIZARD, NPC_PAKKUN_LIZARD ;; 03:7592 ??????
    db   $80, $80                                      ;; 03:7598 ??

data_03_759a:
    db   1, 2, NPC_SNAKE, NPC_SNAKE, NPC_SNAKE, NPC_SNAKE ;; 03:759a ??????
    db   $80, $80                                      ;; 03:75a0 ??

data_03_75a2:
    db   1, 2, NPC_SHADOW, NPC_SHADOW, NPC_SHADOW, NPC_SHADOW ;; 03:75a2 ??????
    db   $80, $80                                      ;; 03:75a8 ??

data_03_75aa:
    db   1, 2, NPC_BLACK_WIZARD, NPC_BLACK_WIZARD, NPC_BLACK_WIZARD, NPC_BLACK_WIZARD ;; 03:75aa ??????
    db   $80, $80                                      ;; 03:75b0 ??

data_03_75b2:
    db   1, 1, NPC_FLAME, NPC_FLAME, NPC_FLAME, NPC_FLAME ;; 03:75b2 ??????
    db   $80, $80                                      ;; 03:75b8 ??

data_03_75ba:
    db   1, 2, NPC_GARGOYLE, NPC_GARGOYLE, NPC_GARGOYLE, NPC_GARGOYLE ;; 03:75ba ??????
    db   $80, $80                                      ;; 03:75c0 ??

data_03_75c2:
    db   1, 1, NPC_MONKEY, NPC_MONKEY, NPC_MONKEY, NPC_MONKEY ;; 03:75c2 ??????
    db   $80, $80                                      ;; 03:75c8 ??

data_03_75ca:
    db   1, 2, NPC_MOLEBEAR, NPC_MOLEBEAR, NPC_MOLEBEAR, NPC_MOLEBEAR ;; 03:75ca ??????
    db   $80, $80                                      ;; 03:75d0 ??

data_03_75d2:
    db   1, 1, NPC_OGRE, NPC_OGRE, NPC_OGRE, NPC_OGRE  ;; 03:75d2 ??????
    db   $80, $80                                      ;; 03:75d8 ??

data_03_75da:
    db   1, 2, NPC_BARNACLEJACK, NPC_BARNACLEJACK, NPC_BARNACLEJACK, NPC_BARNACLEJACK ;; 03:75da ??????
    db   $80, $80                                      ;; 03:75e0 ??

data_03_75e2:
    db   1, 2, NPC_PHANTASM, NPC_PHANTASM, NPC_PHANTASM, NPC_PHANTASM ;; 03:75e2 ??????
    db   $80, $80                                      ;; 03:75e8 ??

data_03_75ea:
    db   1, 1, NPC_MINOTAUR, NPC_MINOTAUR, NPC_MINOTAUR, NPC_MINOTAUR ;; 03:75ea ??????
    db   $80, $80                                      ;; 03:75f0 ??

data_03_75f2:
    db   1, 2, NPC_GLAIVE_MAGE, NPC_GLAIVE_MAGE, NPC_GLAIVE_MAGE, NPC_GLAIVE_MAGE ;; 03:75f2 ??????
    db   $80, $80                                      ;; 03:75f8 ??

data_03_75fa:
    db   2, 2, NPC_GLAIVE_KNIGHT, NPC_GLAIVE_KNIGHT, NPC_GLAIVE_KNIGHT, NPC_GLAIVE_KNIGHT ;; 03:75fa ??????
    db   $80, $80                                      ;; 03:7600 ??

data_03_7602:
    db   1, 1, NPC_DARK_LORD, NPC_DARK_LORD, NPC_DARK_LORD, NPC_DARK_LORD ;; 03:7602 ??????
    db   $0a, $07, $80, $80                            ;; 03:7608 ????

data_03_760c:
    db   1, 1, NPC_LAST_GUY, NPC_LAST_GUY, NPC_LAST_GUY, NPC_LAST_GUY ;; 03:760c ??????
    db   $0a, $07, $80, $80                            ;; 03:7612 ????

data_03_7616:
    db   1, 2, NPC_MEGA_FLYTRAP, NPC_MEGA_FLYTRAP, NPC_MEGA_FLYTRAP, NPC_MEGA_FLYTRAP ;; 03:7616 ??????
    db   $80, $80                                      ;; 03:761c ??

data_03_761e:
    db   1, 1, NPC_DRAGONFLY, NPC_DRAGONFLY, NPC_DRAGONFLY, NPC_DRAGONFLY ;; 03:761e ??????
    db   $80, $80                                      ;; 03:7624 ??

data_03_7626:
    db   1, 3, NPC_ARMADILLO, NPC_ARMADILLO, NPC_ARMADILLO, NPC_ARMADILLO ;; 03:7626 ??????
    db   $80, $80                                      ;; 03:762c ??

data_03_762e:
    db   1, 2, NPC_SNOWMAN_MOVING, NPC_SNOWMAN_MOVING, NPC_SNOWMAN_MOVING, NPC_SNOWMAN_MOVING ;; 03:762e ??????
    db   $80, $80                                      ;; 03:7634 ??

data_03_7636:
    db   1, 2, NPC_SABER_CAT, NPC_SABER_CAT, NPC_SABER_CAT, NPC_SABER_CAT ;; 03:7636 ??????
    db   $80, $80                                      ;; 03:763c ??

data_03_763e:
    db   1, 2, NPC_WALRUS, NPC_WALRUS, NPC_WALRUS, NPC_WALRUS ;; 03:763e ??????
    db   $80, $80                                      ;; 03:7644 ??

data_03_7646:
    db   1, 2, NPC_DUCK_SOLDIER, NPC_DUCK_SOLDIER, NPC_DUCK_SOLDIER, NPC_DUCK_SOLDIER ;; 03:7646 ??????
    db   $80, $80                                      ;; 03:764c ??

data_03_764e:
    db   1, 2, NPC_POTO_RABBIT, NPC_POTO_RABBIT, NPC_POTO_RABBIT, NPC_POTO_RABBIT ;; 03:764e ??????
    db   $80, $80                                      ;; 03:7654 ??

data_03_7656:
    db   1, 2, NPC_CYCLONE, NPC_CYCLONE, NPC_CYCLONE, NPC_CYCLONE ;; 03:7656 ??????
    db   $80, $80                                      ;; 03:765c ??

data_03_765e:
    db   1, 2, NPC_BEHOLDER_EYE, NPC_BEHOLDER_EYE, NPC_BEHOLDER_EYE, NPC_BEHOLDER_EYE ;; 03:765e ??????
    db   $80, $80                                      ;; 03:7664 ??

data_03_7666:
    db   1, 2, NPC_MANTA_RAY, NPC_MANTA_RAY, NPC_MANTA_RAY, NPC_MANTA_RAY ;; 03:7666 ??????
    db   $80, $80                                      ;; 03:766c ??

data_03_766e:
    db   1, 1, NPC_JUMPING_HAND, NPC_JUMPING_HAND, NPC_JUMPING_HAND, NPC_JUMPING_HAND ;; 03:766e ??????
    db   $80, $80                                      ;; 03:7674 ??

data_03_7676:
    db   1, 2, NPC_TORTOISE, NPC_TORTOISE, NPC_TORTOISE, NPC_TORTOISE ;; 03:7676 ??????
    db   $80, $80                                      ;; 03:767c ??

data_03_767e:
    db   1, 2, NPC_FIRE_MOTH, NPC_FIRE_MOTH, NPC_FIRE_MOTH, NPC_FIRE_MOTH ;; 03:767e ??????
    db   $80, $80                                      ;; 03:7684 ??

data_03_7686:
    db   1, 3, NPC_EARTH_DIGGER, NPC_EARTH_DIGGER, NPC_EARTH_DIGGER, NPC_EARTH_DIGGER ;; 03:7686 ??????
    db   $80, $80                                      ;; 03:768c ??

data_03_768e:
    db   1, 3, NPC_DENDEN_SNAIL, NPC_DENDEN_SNAIL, NPC_DENDEN_SNAIL, NPC_DENDEN_SNAIL ;; 03:768e ??????
    db   $80, $80                                      ;; 03:7694 ??

data_03_7696:
    db   1, 2, NPC_DOPPEL_MIRROR, NPC_DOPPEL_MIRROR, NPC_DOPPEL_MIRROR, NPC_DOPPEL_MIRROR ;; 03:7696 ??????
    db   $80, $80                                      ;; 03:769c ??

data_03_769e:
    db   1, 3, NPC_GUARDIAN, NPC_GUARDIAN, NPC_GUARDIAN, NPC_GUARDIAN ;; 03:769e ??????
    db   $80, $80                                      ;; 03:76a4 ??

data_03_76a6:
    db   1, 2, NPC_EVIL_SWORD, NPC_EVIL_SWORD, NPC_EVIL_SWORD, NPC_EVIL_SWORD ;; 03:76a6 ??????
    db   $80, $80                                      ;; 03:76ac ??

data_03_76ae:
    db   1, 2, NPC_GAUNTLET, NPC_GAUNTLET, NPC_GAUNTLET, NPC_GAUNTLET ;; 03:76ae ??????
    db   $80, $80                                      ;; 03:76b4 ??

data_03_76b6:
    db   1, 2, NPC_GARASHA_DUCK, NPC_GARASHA_DUCK, NPC_GARASHA_DUCK, NPC_GARASHA_DUCK ;; 03:76b6 ??????
    db   $80, $80                                      ;; 03:76bc ??

data_03_76be:
    db   1, 2, NPC_FUZZY_WONDER, NPC_FUZZY_WONDER, NPC_FUZZY_WONDER, NPC_FUZZY_WONDER ;; 03:76be ??????
    db   $80, $80                                      ;; 03:76c4 ??

data_03_76c6:
    db   1, 2, NPC_ELEPHANT, NPC_ELEPHANT, NPC_ELEPHANT, NPC_ELEPHANT ;; 03:76c6 ??????
    db   $80, $80                                      ;; 03:76cc ??

data_03_76ce:
    db   1, 2, NPC_NINJA, NPC_NINJA, NPC_NINJA, NPC_NINJA ;; 03:76ce ??????
    db   $80, $80                                      ;; 03:76d4 ??

data_03_76d6:
    db   1, 1, NPC_JULIUS, NPC_JULIUS, NPC_JULIUS, NPC_JULIUS ;; 03:76d6 ??????
    db   $0a, $07, $80, $80                            ;; 03:76dc ????

data_03_76e0:
    db   1, 3, NPC_DEMON_HEAD, NPC_DEMON_HEAD, NPC_DEMON_HEAD, NPC_DEMON_HEAD ;; 03:76e0 ??????
    db   $80, $80                                      ;; 03:76e6 ??

data_03_76e8:
    db   1, 1, NPC_WILLY, NPC_WILLY, NPC_WILLY, NPC_WILLY ;; 03:76e8 ..?..?
    db   $08, $0a, $80, $80                            ;; 03:76ee ..??

data_03_76f2:
    db   1, 1, NPC_JULIUS, NPC_JULIUS, NPC_JULIUS, NPC_JULIUS ;; 03:76f2 ..?..?
    db   $0c, $0c, $80, $80                            ;; 03:76f8 ..??

data_03_76fc:
    db   1, 1, NPC_JULIUS, NPC_JULIUS, NPC_JULIUS, NPC_JULIUS ;; 03:76fc ??????
    db   $00, $08, $80, $80                            ;; 03:7702 ????

data_03_7706:
    db   1, 1, NPC_MYSTERYMAN_1, NPC_MYSTERYMAN_1, NPC_MYSTERYMAN_1, NPC_MYSTERYMAN_1 ;; 03:7706 ??????
    db   $09, $0c, $80, $80                            ;; 03:770c ????

data_03_7710:
    db   1, 1, NPC_JULIUS, NPC_JULIUS, NPC_JULIUS, NPC_JULIUS ;; 03:7710 ??????
    db   $09, $0c, $80, $80                            ;; 03:7716 ????

data_03_771a:
    db   1, 1, NPC_JULIUS, NPC_JULIUS, NPC_JULIUS, NPC_JULIUS ;; 03:771a ??????
    db   $08, $09, $80, $80                            ;; 03:7720 ????

data_03_7724:
    db   3, 3, NPC_JULIUS, NPC_JULIUS, NPC_JULIUS, NPC_JULIUS ;; 03:7724 ??????
    db   $09, $04, $80, $80                            ;; 03:772a ????

data_03_772e:
    db   1, 1, NPC_MYSTERYMAN_2, NPC_MYSTERYMAN_2, NPC_MYSTERYMAN_2, NPC_MYSTERYMAN_2 ;; 03:772e ??????
    db   $09, $06, $80, $80                            ;; 03:7734 ????

data_03_7738:
    db   1, 1, NPC_DARK_LORD, NPC_DARK_LORD, NPC_DARK_LORD, NPC_DARK_LORD ;; 03:7738 ?????.
    db   $09, $00, $80, $80                            ;; 03:773e ????

data_03_7742:
    db   1, 1, NPC_DARK_LORD, NPC_DARK_LORD, NPC_DARK_LORD, NPC_DARK_LORD ;; 03:7742 ...???
    db   $0a, $0c, $80, $80                            ;; 03:7748 ..??

data_03_774c:
    db   1, 1, NPC_DARK_LORD, NPC_DARK_LORD, NPC_DARK_LORD, NPC_DARK_LORD ;; 03:774c ..?.?.
    db   $12, $07, $80, $80                            ;; 03:7752 ..??

data_03_7756:
    db   1, 1, NPC_AMANDA_1, NPC_AMANDA_1, NPC_AMANDA_1, NPC_AMANDA_1 ;; 03:7756 ...???
    db   $80, $80                                      ;; 03:775c ..

data_03_775e:
    db   1, 1, NPC_AMANDA_2, NPC_AMANDA_2, NPC_AMANDA_2, NPC_AMANDA_2 ;; 03:775e ??????
    db   $09, $07, $80, $80                            ;; 03:7764 ????

data_03_7768:
    db   1, 1, NPC_AMANDA_ILL, NPC_AMANDA_ILL, NPC_AMANDA_ILL, NPC_AMANDA_ILL ;; 03:7768 ??????
    db   $0a, $08, $80, $80                            ;; 03:776e ????

data_03_7772:
    db   1, 1, NPC_AMANDA_DEAD, NPC_AMANDA_DEAD, NPC_AMANDA_DEAD, NPC_AMANDA_DEAD ;; 03:7772 ??????
    db   $0a, $08, $80, $80                            ;; 03:7778 ????

data_03_777c:
    db   1, 1, NPC_FUJI_2, NPC_FUJI_2, NPC_FUJI_2, NPC_FUJI_2 ;; 03:777c ??????
    db   $0a, $0c, $80, $80                            ;; 03:7782 ????

data_03_7786:
    db   1, 1, NPC_FUJI_2, NPC_FUJI_2, NPC_FUJI_2, NPC_FUJI_2 ;; 03:7786 ??????
    db   $08, $0e, $80, $80                            ;; 03:778c ????

data_03_7790:
    db   1, 1, NPC_FUJI_WINDOW, NPC_FUJI_WINDOW, NPC_FUJI_WINDOW, NPC_FUJI_WINDOW ;; 03:7790 ??????
    db   $0a, $06, $80, $80                            ;; 03:7796 ????

data_03_779a:
    db   1, 1, NPC_FUJI_2, NPC_FUJI_2, NPC_FUJI_2, NPC_FUJI_2 ;; 03:779a ??????
    db   $0a, $09, $80, $80                            ;; 03:77a0 ????

data_03_77a4:
    db   1, 1, NPC_MOTHER, NPC_MOTHER, NPC_MOTHER, NPC_MOTHER ;; 03:77a4 ??????
    db   $09, $03, $80, $80                            ;; 03:77aa ????

data_03_77ae:
    db   1, 1, NPC_MOTHER, NPC_MOTHER, NPC_MOTHER, NPC_MOTHER ;; 03:77ae ??????
    db   $0a, $0a, $80, $80                            ;; 03:77b4 ????

data_03_77b8:
    db   1, 1, NPC_BOGARD_1, NPC_BOGARD_1, NPC_BOGARD_1, NPC_BOGARD_1 ;; 03:77b8 .....?
    db   $04, $02, $80, $80                            ;; 03:77be ..??

data_03_77c2:
    db   1, 1, NPC_BOGARD_2, NPC_BOGARD_2, NPC_BOGARD_2, NPC_BOGARD_2 ;; 03:77c2 ??????
    db   $0c, $03, $80, $80                            ;; 03:77c8 ????

data_03_77cc:
    db   1, 1, NPC_BOGARD_3, NPC_BOGARD_3, NPC_BOGARD_3, NPC_BOGARD_3 ;; 03:77cc ??????
    db   $06, $07, $80, $80                            ;; 03:77d2 ????

data_03_77d6:
    db   1, 1, NPC_KETTS_WEREWOLF, NPC_KETTS_WEREWOLF, NPC_KETTS_WEREWOLF, NPC_KETTS_WEREWOLF ;; 03:77d6 ??????
    db   $10, $07, $80, $80                            ;; 03:77dc ????

data_03_77e0:
    db   1, 1, NPC_WEREWOLF_1, NPC_WEREWOLF_1, NPC_WEREWOLF_1, NPC_WEREWOLF_1 ;; 03:77e0 ??????
    db   $10, $07, $80, $80                            ;; 03:77e6 ????

data_03_77ea:
    db   1, 1, NPC_INV_FUJI_COFFIN, NPC_INV_FUJI_COFFIN, NPC_INV_FUJI_COFFIN, NPC_INV_FUJI_COFFIN ;; 03:77ea ??????
    db   $0a, $0a, $80, $80                            ;; 03:77f0 ????

data_03_77f4:
    db   1, 1, NPC_CIBBA, NPC_CIBBA, NPC_CIBBA, NPC_CIBBA ;; 03:77f4 ??????
    db   $0a, $06, $80, $80                            ;; 03:77fa ????

data_03_77fe:
    db   1, 1, NPC_GUY_WENDEL, NPC_GUY_WENDEL, NPC_GUY_WENDEL, NPC_GUY_WENDEL ;; 03:77fe ??????
    db   $0a, $08, $80, $80                            ;; 03:7804 ????

data_03_7808:
    db   1, 1, NPC_WATTS, NPC_WATTS, NPC_WATTS, NPC_WATTS ;; 03:7808 ??????
    db   $0e, $08, $80, $80                            ;; 03:780e ????

data_03_7812:
    db   1, 1, NPC_WATTS_FOLLOWING, NPC_WATTS_FOLLOWING, NPC_WATTS_FOLLOWING, NPC_WATTS_FOLLOWING ;; 03:7812 ??????
    db   $0a, $0a, $80, $80                            ;; 03:7818 ????

data_03_781c:
    db   1, 1, NPC_WATTS, NPC_WATTS, NPC_WATTS, NPC_WATTS ;; 03:781c ??????
    db   $0a, $0a, $80, $80                            ;; 03:7822 ????

data_03_7826:
    db   1, 1, NPC_MINECART, NPC_MINECART, NPC_MINECART, NPC_MINECART ;; 03:7826 ??????
    db   $00, $06, $80, $80                            ;; 03:782c ????

data_03_7830:
    db   1, 1, NPC_CHOCOBO_EGG, NPC_CHOCOBO_EGG, NPC_CHOCOBO_EGG, NPC_CHOCOBO_EGG ;; 03:7830 ??????
    db   $0c, $06, $80, $80                            ;; 03:7836 ????

data_03_783a:
    db   1, 1, NPC_DAVIAS, NPC_DAVIAS, NPC_DAVIAS, NPC_DAVIAS ;; 03:783a ??????
    db   $09, $04, $80, $80                            ;; 03:7840 ????

data_03_7844:
    db   1, 1, NPC_LESTER_1, NPC_LESTER_1, NPC_LESTER_1, NPC_LESTER_1 ;; 03:7844 ??????
    db   $0c, $08, $80, $80                            ;; 03:784a ????

data_03_784e:
    db   1, 1, NPC_MUSIC_NOTES, NPC_MUSIC_NOTES, NPC_MUSIC_NOTES, NPC_MUSIC_NOTES ;; 03:784e ??????
    db   $0e, $08, $80, $80                            ;; 03:7854 ????

data_03_7858:
    db   1, 1, NPC_LESTER_PARROT, NPC_LESTER_PARROT, NPC_LESTER_PARROT, NPC_LESTER_PARROT ;; 03:7858 ??????
    db   $0e, $04, $80, $80                            ;; 03:785e ????

data_03_7862:
    db   1, 1, NPC_LESTER_2, NPC_LESTER_2, NPC_LESTER_2, NPC_LESTER_2 ;; 03:7862 ??????
    db   $0e, $04, $80, $80                            ;; 03:7868 ????

data_03_786c:
    db   1, 1, NPC_BOWOW, NPC_BOWOW, NPC_BOWOW, NPC_BOWOW ;; 03:786c ??????
    db   $04, $02, $80, $80                            ;; 03:7872 ????

data_03_7876:
    db   1, 1, NPC_SARAH, NPC_SARAH, NPC_SARAH, NPC_SARAH ;; 03:7876 ??????
    db   $02, $0c, $80, $80                            ;; 03:787c ????

data_03_7880:
    db   1, 1, NPC_MARCIE_1, NPC_MARCIE_1, NPC_MARCIE_1, NPC_MARCIE_1 ;; 03:7880 ??????
    db   $80, $80                                      ;; 03:7886 ??

data_03_7888:
    db   1, 1, NPC_KING_OF_LORIM, NPC_KING_OF_LORIM, NPC_KING_OF_LORIM, NPC_KING_OF_LORIM ;; 03:7888 ??????
    db   $09, $04, $80, $80                            ;; 03:788e ????

data_03_7892:
    db   1, 1, NPC_GLADIATOR_FRIEND, NPC_GLADIATOR_FRIEND, NPC_GLADIATOR_FRIEND, NPC_GLADIATOR_FRIEND ;; 03:7892 ..?.??
    db   $80, $80                                      ;; 03:7898 ..

data_03_789a:
    db   1, 1, NPC_GIRL_TOPPLE, NPC_GIRL_TOPPLE, NPC_GIRL_TOPPLE, NPC_GIRL_TOPPLE ;; 03:789a ......
    db   $80, $80                                      ;; 03:78a0 ..

data_03_78a2:
    db   1, 1, NPC_GUY_TOPPLE, NPC_GUY_TOPPLE, NPC_GUY_TOPPLE, NPC_GUY_TOPPLE ;; 03:78a2 ...?..
    db   $80, $80                                      ;; 03:78a8 ..

data_03_78aa:
    db   1, 1, NPC_GUY_TOPPLE_HOUSE, NPC_GUY_TOPPLE_HOUSE, NPC_GUY_TOPPLE_HOUSE, NPC_GUY_TOPPLE_HOUSE ;; 03:78aa ...??.
    db   $80, $80                                      ;; 03:78b0 ..

data_03_78b2:
    db   1, 1, NPC_GIRL_TOPPLE_HOUSE, NPC_GIRL_TOPPLE_HOUSE, NPC_GIRL_TOPPLE_HOUSE, NPC_GIRL_TOPPLE_HOUSE ;; 03:78b2 ..?...
    db   $80, $80                                      ;; 03:78b8 ..

data_03_78ba:
    db   1, 1, NPC_OLDMAN_TOPPLE, NPC_OLDMAN_TOPPLE, NPC_OLDMAN_TOPPLE, NPC_OLDMAN_TOPPLE ;; 03:78ba ......
    db   $80, $80                                      ;; 03:78c0 ..

data_03_78c2:
    db   1, 1, NPC_GUY_KETTS, NPC_GUY_KETTS, NPC_GUY_KETTS, NPC_GUY_KETTS ;; 03:78c2 ??????
    db   $80, $80                                      ;; 03:78c8 ??

data_03_78ca:
    db   1, 1, NPC_GIRL_KETTS, NPC_GIRL_KETTS, NPC_GIRL_KETTS, NPC_GIRL_KETTS ;; 03:78ca ??????
    db   $80, $80                                      ;; 03:78d0 ??

data_03_78d2:
    db   1, 1, NPC_GIRL_CIBBA, NPC_GIRL_CIBBA, NPC_GIRL_CIBBA, NPC_GIRL_CIBBA ;; 03:78d2 ??????
    db   $0c, $0c, $80, $80                            ;; 03:78d8 ????

data_03_78dc:
    db   1, 1, NPC_GUY_WENDEL2, NPC_GUY_WENDEL2, NPC_GUY_WENDEL2, NPC_GUY_WENDEL2 ;; 03:78dc ??????
    db   $0a, $06, $80, $80                            ;; 03:78e2 ????

data_03_78e6:
    db   1, 1, NPC_GUY_WENDEL_HOUSE, NPC_GUY_WENDEL_HOUSE, NPC_GUY_WENDEL_HOUSE, NPC_GUY_WENDEL_HOUSE ;; 03:78e6 ??????
    db   $80, $80                                      ;; 03:78ec ??

data_03_78ee:
    db   1, 1, NPC_WOMAN_CIBBA, NPC_WOMAN_CIBBA, NPC_WOMAN_CIBBA, NPC_WOMAN_CIBBA ;; 03:78ee ??????
    db   $04, $06, $80, $80                            ;; 03:78f4 ????

data_03_78f8:
    db   1, 1, NPC_OLDMAN_WENDEL, NPC_OLDMAN_WENDEL, NPC_OLDMAN_WENDEL, NPC_OLDMAN_WENDEL ;; 03:78f8 ??????
    db   $80, $80                                      ;; 03:78fe ??

data_03_7900:
    db   1, 1, NPC_DWARF_1, NPC_DWARF_1, NPC_DWARF_1, NPC_DWARF_1 ;; 03:7900 ??????
    db   $80, $80                                      ;; 03:7906 ??

data_03_7908:
    db   1, 1, NPC_DWARF_2, NPC_DWARF_2, NPC_DWARF_2, NPC_DWARF_2 ;; 03:7908 ??????
    db   $80, $80                                      ;; 03:790e ??

data_03_7910:
    db   1, 1, NPC_DWARF_3, NPC_DWARF_3, NPC_DWARF_3, NPC_DWARF_3 ;; 03:7910 ??????
    db   $80, $80                                      ;; 03:7916 ??

data_03_7918:
    db   1, 1, NPC_DWARF_4, NPC_DWARF_4, NPC_DWARF_4, NPC_DWARF_4 ;; 03:7918 ??????
    db   $80, $80                                      ;; 03:791e ??

data_03_7920:
    db   1, 1, NPC_DWARF_5, NPC_DWARF_5, NPC_DWARF_5, NPC_DWARF_5 ;; 03:7920 ??????
    db   $80, $80                                      ;; 03:7926 ??

data_03_7928:
    db   1, 1, NPC_GUY_AIRSHIP_1, NPC_GUY_AIRSHIP_1, NPC_GUY_AIRSHIP_1, NPC_GUY_AIRSHIP_1 ;; 03:7928 ??????
    db   $80, $80                                      ;; 03:792e ??

data_03_7930:
    db   1, 1, NPC_GUY_AIRSHIP_2, NPC_GUY_AIRSHIP_2, NPC_GUY_AIRSHIP_2, NPC_GUY_AIRSHIP_2 ;; 03:7930 ??????
    db   $80, $80                                      ;; 03:7936 ??

data_03_7938:
    db   1, 1, NPC_GUY_AIRSHIP_3, NPC_GUY_AIRSHIP_3, NPC_GUY_AIRSHIP_3, NPC_GUY_AIRSHIP_3 ;; 03:7938 ??????
    db   $80, $80                                      ;; 03:793e ??

data_03_7940:
    db   1, 1, NPC_GUY_AIRSHIP_4, NPC_GUY_AIRSHIP_4, NPC_GUY_AIRSHIP_4, NPC_GUY_AIRSHIP_4 ;; 03:7940 ??????
    db   $80, $80                                      ;; 03:7946 ??

data_03_7948:
    db   1, 1, NPC_OLDMAN_MENOS_1, NPC_OLDMAN_MENOS_1, NPC_OLDMAN_MENOS_1, NPC_OLDMAN_MENOS_1 ;; 03:7948 ??????
    db   $80, $80                                      ;; 03:794e ??

data_03_7950:
    db   1, 1, NPC_GUY_MENOS, NPC_GUY_MENOS, NPC_GUY_MENOS, NPC_GUY_MENOS ;; 03:7950 ??????
    db   $80, $80                                      ;; 03:7956 ??

data_03_7958:
    db   1, 1, NPC_GIRL_MENOS_1, NPC_GIRL_MENOS_1, NPC_GIRL_MENOS_1, NPC_GIRL_MENOS_1 ;; 03:7958 ??????
    db   $80, $80                                      ;; 03:795e ??

data_03_7960:
    db   1, 1, NPC_OLDMAN_MENOS_2, NPC_OLDMAN_MENOS_2, NPC_OLDMAN_MENOS_2, NPC_OLDMAN_MENOS_2 ;; 03:7960 ??????
    db   $80, $80                                      ;; 03:7966 ??

data_03_7968:
    db   1, 1, NPC_GIRL_MENOS, NPC_GIRL_MENOS, NPC_GIRL_MENOS, NPC_GIRL_MENOS ;; 03:7968 ??????
    db   $80, $80                                      ;; 03:796e ??

data_03_7970:
    db   1, 1, NPC_WOMAN_MENOS_2, NPC_WOMAN_MENOS_2, NPC_WOMAN_MENOS_2, NPC_WOMAN_MENOS_2 ;; 03:7970 ??????
    db   $80, $80                                      ;; 03:7976 ??

data_03_7978:
    db   1, 1, NPC_GIRL_JADD_1, NPC_GIRL_JADD_1, NPC_GIRL_JADD_1, NPC_GIRL_JADD_1 ;; 03:7978 ??????
    db   $80, $80                                      ;; 03:797e ??

data_03_7980:
    db   1, 1, NPC_OLDMAN_JADD, NPC_OLDMAN_JADD, NPC_OLDMAN_JADD, NPC_OLDMAN_JADD ;; 03:7980 ??????
    db   $80, $80                                      ;; 03:7986 ??

data_03_7988:
    db   1, 1, NPC_GIRL_JADD_2, NPC_GIRL_JADD_2, NPC_GIRL_JADD_2, NPC_GIRL_JADD_2 ;; 03:7988 ??????
    db   $80, $80                                      ;; 03:798e ??

data_03_7990:
    db   1, 1, NPC_GUY_JADD, NPC_GUY_JADD, NPC_GUY_JADD, NPC_GUY_JADD ;; 03:7990 ??????
    db   $80, $80                                      ;; 03:7996 ??

data_03_7998:
    db   1, 1, NPC_DWARF_JADD, NPC_DWARF_JADD, NPC_DWARF_JADD, NPC_DWARF_JADD ;; 03:7998 ??????
    db   $80, $80                                      ;; 03:799e ??

data_03_79a0:
    db   1, 1, NPC_SALESMAN_JADD, NPC_SALESMAN_JADD, NPC_SALESMAN_JADD, NPC_SALESMAN_JADD ;; 03:79a0 ??????
    db   $80, $80                                      ;; 03:79a6 ??

data_03_79a8:
    db   1, 1, NPC_GIRL_JADD_3, NPC_GIRL_JADD_3, NPC_GIRL_JADD_3, NPC_GIRL_JADD_3 ;; 03:79a8 ??????
    db   $80, $80                                      ;; 03:79ae ??

data_03_79b0:
    db   1, 1, NPC_BOY_JADD, NPC_BOY_JADD, NPC_BOY_JADD, NPC_BOY_JADD ;; 03:79b0 ??????
    db   $80, $80                                      ;; 03:79b6 ??

data_03_79b8:
    db   1, 1, NPC_OLDMAN_ISH, NPC_OLDMAN_ISH, NPC_OLDMAN_ISH, NPC_OLDMAN_ISH ;; 03:79b8 ??????
    db   $80, $80                                      ;; 03:79be ??

data_03_79c0:
    db   1, 1, NPC_GUY_ISH_1, NPC_GUY_ISH_1, NPC_GUY_ISH_1, NPC_GUY_ISH_1 ;; 03:79c0 ??????
    db   $80, $80                                      ;; 03:79c6 ??

data_03_79c8:
    db   1, 1, NPC_GUY_ISH_2, NPC_GUY_ISH_2, NPC_GUY_ISH_2, NPC_GUY_ISH_2 ;; 03:79c8 ??????
    db   $80, $80                                      ;; 03:79ce ??

data_03_79d0:
    db   1, 1, NPC_GIRL_ISH, NPC_GIRL_ISH, NPC_GIRL_ISH, NPC_GIRL_ISH ;; 03:79d0 ??????
    db   $80, $80                                      ;; 03:79d6 ??

data_03_79d8:
    db   1, 1, NPC_GUY_ISH_3, NPC_GUY_ISH_3, NPC_GUY_ISH_3, NPC_GUY_ISH_3 ;; 03:79d8 ??????
    db   $80, $80                                      ;; 03:79de ??

data_03_79e0:
    db   1, 1, NPC_GUY_ISH_4, NPC_GUY_ISH_4, NPC_GUY_ISH_4, NPC_GUY_ISH_4 ;; 03:79e0 ??????
    db   $80, $80                                      ;; 03:79e6 ??

data_03_79e8:
    db   1, 1, NPC_INV_STONE_1, NPC_INV_STONE_1, NPC_INV_STONE_1, NPC_INV_STONE_1 ;; 03:79e8 ??????
    db   $09, $04, $80, $80                            ;; 03:79ee ????

data_03_79f2:
    db   1, 1, NPC_INV_STONE_2, NPC_INV_STONE_2, NPC_INV_STONE_2, NPC_INV_STONE_2 ;; 03:79f2 ??????
    db   $09, $04, $80, $80                            ;; 03:79f8 ????

data_03_79fc:
    db   1, 1, NPC_INV_STONE_3, NPC_INV_STONE_3, NPC_INV_STONE_3, NPC_INV_STONE_3 ;; 03:79fc ??????
    db   $09, $06, $80, $80                            ;; 03:7a02 ????

data_03_7a06:
    db   1, 1, NPC_INV_STONE_4, NPC_INV_STONE_4, NPC_INV_STONE_4, NPC_INV_STONE_4 ;; 03:7a06 ??????
    db   $09, $06, $80, $80                            ;; 03:7a0c ????

data_03_7a10:
    db   1, 1, NPC_INV_STONE_5, NPC_INV_STONE_5, NPC_INV_STONE_5, NPC_INV_STONE_5 ;; 03:7a10 ??????
    db   $09, $02, $80, $80                            ;; 03:7a16 ????

data_03_7a1a:
    db   1, 1, NPC_INV_STONE_6, NPC_INV_STONE_6, NPC_INV_STONE_6, NPC_INV_STONE_6 ;; 03:7a1a ??????
    db   $09, $02, $80, $80                            ;; 03:7a20 ????

data_03_7a24:
    db   1, 1, NPC_INV_STONE_7, NPC_INV_STONE_7, NPC_INV_STONE_7, NPC_INV_STONE_7 ;; 03:7a24 ??????
    db   $09, $06, $80, $80                            ;; 03:7a2a ????

data_03_7a2e:
    db   1, 1, NPC_INV_STONE_8, NPC_INV_STONE_8, NPC_INV_STONE_8, NPC_INV_STONE_8 ;; 03:7a2e ??????
    db   $09, $06, $80, $80                            ;; 03:7a34 ????

data_03_7a38:
    db   1, 1, NPC_GUY_LORIM_FROZEN, NPC_GUY_LORIM_FROZEN, NPC_GUY_LORIM_FROZEN, NPC_GUY_LORIM_FROZEN ;; 03:7a38 ??????
    db   $06, $07, $80, $80                            ;; 03:7a3e ????

data_03_7a42:
    db   1, 1, NPC_GUY_LORIM_1, NPC_GUY_LORIM_1, NPC_GUY_LORIM_1, NPC_GUY_LORIM_1 ;; 03:7a42 ??????
    db   $80, $80                                      ;; 03:7a48 ??

data_03_7a4a:
    db   1, 1, NPC_GUY_LORIM_2, NPC_GUY_LORIM_2, NPC_GUY_LORIM_2, NPC_GUY_LORIM_2 ;; 03:7a4a ??????
    db   $80, $80                                      ;; 03:7a50 ??

data_03_7a52:
    db   1, 1, NPC_SALESMAN, NPC_SALESMAN, NPC_SALESMAN, NPC_SALESMAN ;; 03:7a52 ..?..?
    db   $0d, $04, $80, $80                            ;; 03:7a58 ..??

data_03_7a5c:
    db   1, 1, NPC_SALESMAN, NPC_SALESMAN, NPC_SALESMAN, NPC_SALESMAN ;; 03:7a5c ..?.??
    db   $09, $04, $80, $80                            ;; 03:7a62 ..??

data_03_7a66:
    db   1, 1, NPC_SALESMAN, NPC_SALESMAN, NPC_SALESMAN, NPC_SALESMAN ;; 03:7a66 ..???.
    db   $09, $08, $80, $80                            ;; 03:7a6c ..??

data_03_7a70:
    db   1, 1, NPC_INV_INN, NPC_INV_INN, NPC_INV_INN, NPC_INV_INN ;; 03:7a70 ..??..
    db   $09, $0a, $80, $80                            ;; 03:7a76 ..??

data_03_7a7a:
    db   1, 1, NPC_INV_SALESMAN_1, NPC_INV_SALESMAN_1, NPC_INV_SALESMAN_1, NPC_INV_SALESMAN_1 ;; 03:7a7a ....?.
    db   $0d, $06, $80, $80                            ;; 03:7a80 ..??

data_03_7a84:
    db   1, 1, NPC_INV_SALESMAN_2, NPC_INV_SALESMAN_2, NPC_INV_SALESMAN_2, NPC_INV_SALESMAN_2 ;; 03:7a84 ..??..
    db   $09, $06, $80, $80                            ;; 03:7a8a ..??

data_03_7a8e:
    db   1, 1, NPC_FUJI_1, NPC_FUJI_1, NPC_FUJI_1, NPC_FUJI_1 ;; 03:7a8e ..?.??
    db   $0a, $0a, $80, $80, $01, $01, $af, $af        ;; 03:7a94 ..??????
    db   $af, $af, $09, $0c, $80, $80                  ;; 03:7a9c ??????

data_03_7aa2:
    db   1, 1, NPC_CHOCOBO_2, NPC_CHOCOBO_2, NPC_CHOCOBO_2, NPC_CHOCOBO_2 ;; 03:7aa2 ??????
    db   $12, $07, $80, $80                            ;; 03:7aa8 ????

data_03_7aac:
    db   1, 1, NPC_CHOCOBO_2, NPC_CHOCOBO_2, NPC_CHOCOBO_2, NPC_CHOCOBO_2 ;; 03:7aac ??????
    db   $00, $07, $80, $80                            ;; 03:7ab2 ????

data_03_7ab6:
    db   1, 1, NPC_CHOCOBO_2, NPC_CHOCOBO_2, NPC_CHOCOBO_2, NPC_CHOCOBO_2 ;; 03:7ab6 ??????
    db   $0c, $06, $80, $80                            ;; 03:7abc ????

data_03_7ac0:
    db   1, 1, NPC_CHOCOBOT, NPC_CHOCOBOT, NPC_CHOCOBOT, NPC_CHOCOBOT ;; 03:7ac0 ??????
    db   $fe, $00, $80, $80                            ;; 03:7ac6 ????

data_03_7aca:
    db   1, 1, NPC_CHOCOBOT, NPC_CHOCOBOT, NPC_CHOCOBOT, NPC_CHOCOBOT ;; 03:7aca ??????
    db   $80, $80                                      ;; 03:7ad0 ??

data_03_7ad2:
    db   1, 1, NPC_CHOCOBOT, NPC_CHOCOBOT, NPC_CHOCOBOT, NPC_CHOCOBOT ;; 03:7ad2 ??????
    db   $0e, $08, $80, $80                            ;; 03:7ad8 ????

data_03_7adc:
    db   1, 1, NPC_CHOCOBO_2, NPC_CHOCOBO_2, NPC_CHOCOBO_2, NPC_CHOCOBO_2 ;; 03:7adc ??????
    db   $80, $80                                      ;; 03:7ae2 ??

data_03_7ae4:
    db   1, 1, NPC_CHOCOBOT, NPC_CHOCOBOT, NPC_CHOCOBOT, NPC_CHOCOBOT ;; 03:7ae4 ??????
    db   $04, $04, $80, $80                            ;; 03:7aea ????

data_03_7aee:
    db   1, 1, NPC_AMANDA_1, NPC_AMANDA_1, NPC_AMANDA_1, NPC_AMANDA_1 ;; 03:7aee ??????
    db   $09, $00, $80, $80                            ;; 03:7af4 ????

data_03_7af8:
    db   1, 1, NPC_MARCIE_2, NPC_MARCIE_2, NPC_MARCIE_2, NPC_MARCIE_2 ;; 03:7af8 ??????
    db   $09, $07, $80, $80                            ;; 03:7afe ????

data_03_7b02:
    db   1, 1, NPC_PRISION_BARS, NPC_PRISION_BARS, NPC_PRISION_BARS, NPC_PRISION_BARS ;; 03:7b02 ??????
    db   $0a, $07, $80, $80                            ;; 03:7b08 ????

data_03_7b0c:
    db   2, 2, NPC_PRISION_BARS, NPC_PRISION_BARS, NPC_PRISION_BARS, NPC_PRISION_BARS ;; 03:7b0c ??????
    db   $0a, $07, $09, $0e, $80, $80                  ;; 03:7b12 ??????

data_03_7b18:
    db   4, 4, NPC_WEREWOLF_2, NPC_WEREWOLF_2, NPC_WEREWOLF_2, NPC_WEREWOLF_2 ;; 03:7b18 ??????
    db   $02, $04, $02, $06, $02, $08, $02, $0a        ;; 03:7b1e ????????
    db   $80, $80                                      ;; 03:7b26 ??

data_03_7b28:
    db   1, 1, NPC_CHEST_1, NPC_CHEST_1, NPC_CHEST_1, NPC_CHEST_1 ;; 03:7b28 ???.??
    db   $09, $07, $80, $80                            ;; 03:7b2e ????

data_03_7b32:
    db   1, 1, NPC_CHEST_1, NPC_CHEST_1, NPC_CHEST_1, NPC_CHEST_1 ;; 03:7b32 ..?.??
    db   $0a, $08, $80, $80                            ;; 03:7b38 ..??

data_03_7b3c:
    db   1, 1, NPC_CHEST_2, NPC_CHEST_2, NPC_CHEST_2, NPC_CHEST_2 ;; 03:7b3c ???.??
    db   $0c, $08, $80, $80                            ;; 03:7b42 ????

data_03_7b46:
    db   4, 4, NPC_CHEST_4, NPC_CHEST_4, NPC_CHEST_4, NPC_CHEST_4 ;; 03:7b46 ??????
    db   $06, $04, $06, $0a, $0c, $0a, $0c, $04        ;; 03:7b4c ????????
    db   $80, $80                                      ;; 03:7b54 ??
