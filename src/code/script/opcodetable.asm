;; Disassembled with BadBoy Disassembler: https://github.com/daid/BadBoy


;@jumptable amount=256 label=scriptOpCode%02X
scriptOpcodeTable:
    dw   scriptOpCodeEND                               ;; 02:4576 pP
    dw   scriptOpCodeJR                                ;; 02:4578 pP
    dw   scriptOpCodeCall                              ;; 02:457a pP
    dw   scriptOpCodeLoop                              ;; 02:457c pP
    dw   scriptOpCodeMsg                               ;; 02:457e pP
    dw   scriptOpCodePal                               ;; 02:4580 ??
    dw   scriptOpCodeNOP                               ;; 02:4582 ??
    dw   scriptOpCodeNOP                               ;; 02:4584 ??
    dw   scriptOpCodeIfFlags                           ;; 02:4586 pP
    dw   scriptOpCodeIfEquiped                         ;; 02:4588 pP
    dw   scriptOpCodeIfInventory                       ;; 02:458a pP
    dw   scriptOpCodeIfTriggeredOnBy                   ;; 02:458c pP
    dw   scriptOpCodeIfTriggeredOffBy                  ;; 02:458e ??
    dw   scriptOpCodeNOP                               ;; 02:4590 ??
    dw   scriptOpCodeNOP                               ;; 02:4592 ??
    dw   scriptOpCodeNOP                               ;; 02:4594 ??
    dw   scriptOpCodeNpc1StepForward                   ;; 02:4596 pP
    dw   scriptOpCodeNpc1StepBackwards                 ;; 02:4598 ??
    dw   scriptOpCodeFullHealDummyFA                   ;; 02:459a ??
    dw   scriptOpCodeFullHealDummyFA                   ;; 02:459c ??
    dw   scriptOpCodeNpc1DirectionUp                   ;; 02:459e pP
    dw   scriptOpCodeNpc1DirectionDown                 ;; 02:45a0 pP
    dw   scriptOpCodeNpc1DirectionRight                ;; 02:45a2 pP
    dw   scriptOpCodeNpc1DirectionLeft                 ;; 02:45a4 pP
    dw   scriptOpCodeNpc1Delete                        ;; 02:45a6 ??
    dw   scriptOpCodeNpc1SetPosition                   ;; 02:45a8 ??
    dw   scriptOpCodeNpc1WalkSpeed4                    ;; 02:45aa ??
    dw   scriptOpCodeNpc1WalkSpeedDefault              ;; 02:45ac ??
    dw   scriptOpCodeNOP                               ;; 02:45ae ??
    dw   scriptOpCodeNOP                               ;; 02:45b0 ??
    dw   scriptOpCodeNOP                               ;; 02:45b2 ??
    dw   scriptOpCodeNOP                               ;; 02:45b4 ??
    dw   scriptOpCodeNpc2StepForward                   ;; 02:45b6 ??
    dw   scriptOpCodeNpc2StepBackwards                 ;; 02:45b8 ??
    dw   scriptOpCodeFullHealDummyFA                   ;; 02:45ba ??
    dw   scriptOpCodeFullHealDummyFA                   ;; 02:45bc ??
    dw   scriptOpCodeNpc2DirectionUp                   ;; 02:45be pP
    dw   scriptOpCodeNpc2DirectionDown                 ;; 02:45c0 pP
    dw   scriptOpCodeNpc2DirectionRight                ;; 02:45c2 pP
    dw   scriptOpCodeNpc2DirectionLeft                 ;; 02:45c4 pP
    dw   scriptOpCodeNpc2Delete                        ;; 02:45c6 pP
    dw   scriptOpCodeNpc2SetPosition                   ;; 02:45c8 ??
    dw   scriptOpCodeNpc2WalkSpeed4                    ;; 02:45ca ??
    dw   scriptOpCodeNpc2WalkSpeedDefault              ;; 02:45cc ??
    dw   scriptOpCodeNOP                               ;; 02:45ce ??
    dw   scriptOpCodeNOP                               ;; 02:45d0 ??
    dw   scriptOpCodeNOP                               ;; 02:45d2 ??
    dw   scriptOpCodeNOP                               ;; 02:45d4 ??
    dw   scriptOpCodeNpc3StepForward                   ;; 02:45d6 ??
    dw   scriptOpCodeNpc3StepBackwards                 ;; 02:45d8 ??
    dw   scriptOpCodeFullHealDummyFA                   ;; 02:45da ??
    dw   scriptOpCodeFullHealDummyFA                   ;; 02:45dc ??
    dw   scriptOpCodeNpc3DirectionUp                   ;; 02:45de ??
    dw   scriptOpCodeNpc3DirectionDown                 ;; 02:45e0 ??
    dw   scriptOpCodeNpc3DirectionRight                ;; 02:45e2 ??
    dw   scriptOpCodeNpc3DirectionLeft                 ;; 02:45e4 ??
    dw   scriptOpCodeNpc3Delete                        ;; 02:45e6 ??
    dw   scriptOpCodeNpc3SetPosition                   ;; 02:45e8 ??
    dw   scriptOpCodeNpc3WalkSpeed4                    ;; 02:45ea ??
    dw   scriptOpCodeNpc3WalkSpeedDefault              ;; 02:45ec ??
    dw   scriptOpCodeNOP                               ;; 02:45ee ??
    dw   scriptOpCodeNOP                               ;; 02:45f0 ??
    dw   scriptOpCodeNOP                               ;; 02:45f2 ??
    dw   scriptOpCodeNOP                               ;; 02:45f4 ??
    dw   scriptOpCodeNpc4StepForward                   ;; 02:45f6 ??
    dw   scriptOpCodeNpc4StepBackwards                 ;; 02:45f8 ??
    dw   scriptOpCodeFullHealDummyFA                   ;; 02:45fa ??
    dw   scriptOpCodeFullHealDummyFA                   ;; 02:45fc ??
    dw   scriptOpCodeNpc4DirectionUp                   ;; 02:45fe ??
    dw   scriptOpCodeNpc4DirectionDown                 ;; 02:4600 ??
    dw   scriptOpCodeNpc4DirectionRight                ;; 02:4602 ??
    dw   scriptOpCodeNpc4DirectionLeft                 ;; 02:4604 ??
    dw   scriptOpCodeNpc4Delete                        ;; 02:4606 ??
    dw   scriptOpCodeNpc4SetPosition                   ;; 02:4608 ??
    dw   scriptOpCodeNpc4WalkSpeed4                    ;; 02:460a ??
    dw   scriptOpCodeNpc4WalkSpeedDefault              ;; 02:460c ??
    dw   scriptOpCodeNOP                               ;; 02:460e ??
    dw   scriptOpCodeNOP                               ;; 02:4610 ??
    dw   scriptOpCodeNOP                               ;; 02:4612 ??
    dw   scriptOpCodeNOP                               ;; 02:4614 ??
    dw   scriptOpCodeNpc5StepForward                   ;; 02:4616 ??
    dw   scriptOpCodeNpc5StepBackwards                 ;; 02:4618 ??
    dw   scriptOpCodeFullHealDummyFA                   ;; 02:461a ??
    dw   scriptOpCodeFullHealDummyFA                   ;; 02:461c ??
    dw   scriptOpCodeNpc5DirectionUp                   ;; 02:461e ??
    dw   scriptOpCodeNpc5DirectionDown                 ;; 02:4620 ??
    dw   scriptOpCodeNpc5DirectionRight                ;; 02:4622 ??
    dw   scriptOpCodeNpc5DirectionLeft                 ;; 02:4624 ??
    dw   scriptOpCodeNpc5Delete                        ;; 02:4626 ??
    dw   scriptOpCodeNpc5SetPosition                   ;; 02:4628 ??
    dw   scriptOpCodeNpc5WalkSpeed4                    ;; 02:462a ??
    dw   scriptOpCodeNpc5WalkSpeedDefault              ;; 02:462c ??
    dw   scriptOpCodeNOP                               ;; 02:462e ??
    dw   scriptOpCodeNOP                               ;; 02:4630 ??
    dw   scriptOpCodeNOP                               ;; 02:4632 ??
    dw   scriptOpCodeNOP                               ;; 02:4634 ??
    dw   scriptOpCodeNpc6StepForward                   ;; 02:4636 ??
    dw   scriptOpCodeNpc6StepBackwards                 ;; 02:4638 ??
    dw   scriptOpCodeFullHealDummyFA                   ;; 02:463a ??
    dw   scriptOpCodeFullHealDummyFA                   ;; 02:463c ??
    dw   scriptOpCodeNpc6DirectionUp                   ;; 02:463e ??
    dw   scriptOpCodeNpc6DirectionDown                 ;; 02:4640 ??
    dw   scriptOpCodeNpc6DirectionRight                ;; 02:4642 ??
    dw   scriptOpCodeNpc6DirectionLeft                 ;; 02:4644 ??
    dw   scriptOpCodeNpc6Delete                        ;; 02:4646 ??
    dw   scriptOpCodeNpc6SetPosition                   ;; 02:4648 ??
    dw   scriptOpCodeNpc6WalkSpeed4                    ;; 02:464a ??
    dw   scriptOpCodeNpc6WalkSpeedDefault              ;; 02:464c ??
    dw   scriptOpCodeNOP                               ;; 02:464e ??
    dw   scriptOpCodeNOP                               ;; 02:4650 ??
    dw   scriptOpCodeNOP                               ;; 02:4652 ??
    dw   scriptOpCodeNOP                               ;; 02:4654 ??
    dw   scriptOpCodeNpc7StepForward                   ;; 02:4656 ??
    dw   scriptOpCodeNpc7StepBackwards                 ;; 02:4658 ??
    dw   scriptOpCodeFullHealDummyFA                   ;; 02:465a ??
    dw   scriptOpCodeFullHealDummyFA                   ;; 02:465c ??
    dw   scriptOpCodeNpc7DirectionUp                   ;; 02:465e ??
    dw   scriptOpCodeNpc7DirectionDown                 ;; 02:4660 ??
    dw   scriptOpCodeNpc7DirectionRight                ;; 02:4662 ??
    dw   scriptOpCodeNpc7DirectionLeft                 ;; 02:4664 ??
    dw   scriptOpCodeNpc7Delete                        ;; 02:4666 ??
    dw   scriptOpCodeNpc7SetPosition                   ;; 02:4668 ??
    dw   scriptOpCodeNpc7WalkSpeed4                    ;; 02:466a ??
    dw   scriptOpCodeNpc7WalkSpeedDefault              ;; 02:466c ??
    dw   scriptOpCodeNOP                               ;; 02:466e ??
    dw   scriptOpCodeNOP                               ;; 02:4670 ??
    dw   scriptOpCodeNOP                               ;; 02:4672 ??
    dw   scriptOpCodeNOP                               ;; 02:4674 ??
    dw   scriptOpCodePlayerStepForward                 ;; 02:4676 pP
    dw   scriptOpCodePlayerStepBackwards               ;; 02:4678 pP
    dw   scriptOpCodeFullHealDummyFA                   ;; 02:467a ??
    dw   scriptOpCodeFullHealDummyFA                   ;; 02:467c ??
    dw   scriptOpCodePlayerDirectionUp                 ;; 02:467e pP
    dw   scriptOpCodePlayerDirectionDown               ;; 02:4680 pP
    dw   scriptOpCodePlayerDirectionRight              ;; 02:4682 pP
    dw   scriptOpCodePlayerDirectionLeft               ;; 02:4684 pP
    dw   scriptOpCodeSetFastMovement                   ;; 02:4686 pP
    dw   scriptOpCodeClearFastMovement                 ;; 02:4688 pP
    dw   scriptOpCodePlayerSetPosition                 ;; 02:468a pP
    dw   scriptOpCodePlayerJump                        ;; 02:468c ??
    dw   scriptOpCodeFullHealDummyFA                   ;; 02:468e ??
    dw   scriptOpCodeFullHealDummyFA                   ;; 02:4690 ??
    dw   scriptOpCodeFullHealDummyFA                   ;; 02:4692 ??
    dw   scriptOpWaitWhileMovement                     ;; 02:4694 ??
    dw   scriptOpCodeFollowerStepForward               ;; 02:4696 ??
    dw   scriptOpCodeFollowerStepBackwards             ;; 02:4698 ??
    dw   scriptOpCodeFullHealDummyFA                   ;; 02:469a ??
    dw   scriptOpCodeFullHealDummyFA                   ;; 02:469c ??
    dw   scriptOpCodeFollowerDirectionUp               ;; 02:469e ??
    dw   scriptOpCodeFollowerDirectionDown             ;; 02:46a0 ??
    dw   scriptOpCodeFollowerDirectionRight            ;; 02:46a2 ??
    dw   scriptOpCodeFollowerDirectionLeft             ;; 02:46a4 ??
    dw   scriptOpCodeFollowerDelete                    ;; 02:46a6 ??
    dw   scriptOpCodeFollowerSetPosition               ;; 02:46a8 ??
    dw   scriptOpCodeFollowerWalkSpeed4                ;; 02:46aa ??
    dw   scriptOpCodeFollowerWalkSpeedDefault          ;; 02:46ac ??
    dw   scriptOpCodeGiveFollower                      ;; 02:46ae pP
    dw   scriptOpCodeGiveFollower_Dup                  ;; 02:46b0 ??
    dw   scriptOpCodeNOP                               ;; 02:46b2 ??
    dw   scriptOpCodeNOP                               ;; 02:46b4 ??
    dw   scriptOpCodePlayerOnChocobo                   ;; 02:46b6 ??
    dw   scriptOpCodePlayerOnChocobot                  ;; 02:46b8 ??
    dw   scriptOpCodePlayerOnChocobotWater             ;; 02:46ba ??
    dw   scriptOpCodePlayerInMinecart                  ;; 02:46bc ??
    dw   scriptOpCodeSetPlayerNormalSprite             ;; 02:46be pP
    dw   scriptOpCodeSetPlayerHurtSprite               ;; 02:46c0 pP
    dw   scriptOpCodeSetPlayerLaydownSprite            ;; 02:46c2 pP
    dw   scriptOpCodeNOP                               ;; 02:46c4 ??
    dw   scriptOpCodeNOP                               ;; 02:46c6 ??
    dw   scriptOpCodeCheckIfCanOpenMap                 ;; 02:46c8 pP
    dw   scriptOpCodeClearPlayerAttack                 ;; 02:46ca ??
    dw   scriptOpCodeClearRoomHistory                  ;; 02:46cc pP
    dw   scriptOpCodeOpenMap                           ;; 02:46ce pP
    dw   scriptOpCodeWaitMapClose                      ;; 02:46d0 pP
    dw   scriptOpCodeCloseMap                          ;; 02:46d2 pP
    dw   scriptOpCodeChangeIntoEmptyChest              ;; 02:46d4 pP
    dw   scriptOpCodeSetRoomTile                       ;; 02:46d6 pP
    dw   scriptOpCodeNOP                               ;; 02:46d8 ??
    dw   scriptOpCodeNOP                               ;; 02:46da ??
    dw   scriptOpCodeNOP                               ;; 02:46dc ??
    dw   scriptOpCodeNOP                               ;; 02:46de ??
    dw   scriptOpCodeNOP                               ;; 02:46e0 ??
    dw   scriptOpCodeSetLetterboxGraphicEffect         ;; 02:46e2 ??
    dw   scriptOpCodeSetNormalGraphicEffect            ;; 02:46e4 ??
    dw   scriptOpCodeSetDarkGraphicEffect              ;; 02:46e6 ??
    dw   scriptOpCodeClearDarkGraphicEffect            ;; 02:46e8 ??
    dw   scriptOpCodeCreateEffect                      ;; 02:46ea ??
    dw   scriptOpCodeNOP                               ;; 02:46ec ??
    dw   scriptOpCodeFadeToNormal                      ;; 02:46ee pP
    dw   scriptOpCodeFadeToBlack                       ;; 02:46f0 pP
    dw   scriptOpCodeFadeToWhite                       ;; 02:46f2 ??
    dw   scriptOpCodeFlashScreen                       ;; 02:46f4 pP
    dw   scriptOpCodeFullHealDummyFA                   ;; 02:46f6 pP
    dw   scriptOpCodeFullMana                          ;; 02:46f8 pP
    dw   scriptOpCodeClearStatus                       ;; 02:46fa ??
    dw   scriptOpCodeAltNOP                            ;; 02:46fc ??
    dw   scriptOpCodeGiveStatus                        ;; 02:46fe pP
    dw   scriptOpCodeSetLocationFlags                  ;; 02:4700 pP
    dw   scriptOpCodeStartNameEntry                    ;; 02:4702 pP
    dw   scriptOpCodeRNG                               ;; 02:4704 ??
    dw   scriptOpCodeResetGame                         ;; 02:4706 pP
    dw   scriptOpCodeSetChestOpenScript1               ;; 02:4708 pP
    dw   scriptOpCodeSetChestOpenScript2               ;; 02:470a ??
    dw   scriptOpCodeSetChestOpenScript3               ;; 02:470c ??
    dw   scriptOpCodeHalt                              ;; 02:470e ??
    dw   scriptOpCodeNOP                               ;; 02:4710 ??
    dw   scriptOpCodeNOP                               ;; 02:4712 ??
    dw   scriptOpCodeNOP                               ;; 02:4714 ??
    dw   scriptOpCodeGiveMoney                         ;; 02:4716 ??
    dw   scriptOpCodeTakeMoney                         ;; 02:4718 pP
    dw   scriptOpCodeGiveXP                            ;; 02:471a ??
    dw   scriptOpCodeTakeXP                            ;; 02:471c ??
    dw   scriptOpCodeGiveItem                          ;; 02:471e pP
    dw   scriptOpCodeRemoveItemFromInventory           ;; 02:4720 ??
    dw   scriptOpCodeGiveMagic                         ;; 02:4722 ??
    dw   scriptOpCodeRemoveMagicFromInventory          ;; 02:4724 ??
    dw   scriptOpCodeGiveEquipment                     ;; 02:4726 ??
    dw   scriptOpCodeRemoveEquipmentFromInventory      ;; 02:4728 ??
    dw   scriptOpCodeSetFlag                           ;; 02:472a pP
    dw   scriptOpCodeClearFlag                         ;; 02:472c pP
    dw   scriptOpCodeTextSpeedLockOn                   ;; 02:472e pP
    dw   scriptOpCodeTextSpeedLockOff                  ;; 02:4730 pP
    dw   scriptOpCodeTakeEquipedItem                   ;; 02:4732 ??
    dw   scriptOpCodeNOP                               ;; 02:4734 ??
    dw   scriptOpCodeOpenNorthDoor                     ;; 02:4736 pP
    dw   scriptOpCodeCloseNorthDoor                    ;; 02:4738 ??
    dw   scriptOpCodeOpenSouthDoor                     ;; 02:473a ??
    dw   scriptOpCodeCloseSouthDoor                    ;; 02:473c ??
    dw   scriptOpCodeOpenEastDoor                      ;; 02:473e ??
    dw   scriptOpCodeCloseEastDoor                     ;; 02:4740 ??
    dw   scriptOpCodeOpenWestDoor                      ;; 02:4742 ??
    dw   scriptOpCodeCloseWestDoor                     ;; 02:4744 ??
    dw   scriptOpCodeScrollRoomDown                    ;; 02:4746 pP
    dw   scriptOpCodeScrollRoomUp                      ;; 02:4748 ??
    dw   scriptOpCodeScrollRoomLeft                    ;; 02:474a pP
    dw   scriptOpCodeScrollRoomRight                   ;; 02:474c pP
    dw   scriptOpCodeRunRoomScript                     ;; 02:474e pP
    dw   scriptOpCodeRunRoomExitScript                 ;; 02:4750 ??
    dw   scriptOpCodeRunRoomAllKilledScript            ;; 02:4752 ??
    dw   scriptOpCodeSetNextRoom                       ;; 02:4754 pP
    dw   scriptOpCodeDelay                             ;; 02:4756 pP
    dw   scriptOpCodeFullHealDummyFA                   ;; 02:4758 ??
    dw   scriptOpCodeFullHealDummyFA                   ;; 02:475a ??
    dw   scriptOpCodeLoadRoomInstant                   ;; 02:475c pP
    dw   scriptOpCodeLoadRoom                          ;; 02:475e pP
    dw   scriptOpCodeFullHealDummyFA                   ;; 02:4760 ??
    dw   scriptOpCodeOpenShop                          ;; 02:4762 pP
    dw   scriptOpCodeFullHealDummyFA                   ;; 02:4764 ??
    dw   scriptOpCodeSetMusic                          ;; 02:4766 pP
    dw   scriptOpCodeSFX                               ;; 02:4768 pP
    dw   scriptOpCodeFullHealDummyFA                   ;; 02:476a ??
    dw   scriptOpCodeShakeScreen                       ;; 02:476c ??
    dw   scriptOpCodeSetNPCTypes                       ;; 02:476e pP
    dw   scriptOpCodeSpawnNPC                          ;; 02:4770 pP
    dw   scriptOpCodeSpawnBoss                         ;; 02:4772 pP
    dw   scriptOpCodeFF                                ;; 02:4774 pP
