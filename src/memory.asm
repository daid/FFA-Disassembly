;; Disassembled with BadBoy Disassembler: https://github.com/daid/BadBoy

INCLUDE "include/hardware.inc"
INCLUDE "include/macros.inc"
INCLUDE "include/charmaps.inc"
INCLUDE "include/constants.inc"

SECTION "wram0", WRAM0[$c000]

wOAMBuffer:
    ds 1                                               ;; c000
._01:
    ds 7                                               ;; c001
._08:
    ds 8                                               ;; c008
._10:
    ds 144                                             ;; c010

wC0A0:
    ds 1                                               ;; c0a0

wC0A1:
    ds 1                                               ;; c0a1

wC0A2:
    ds 2                                               ;; c0a2

wOAM_MemoryHighAddress:
    ds 1                                               ;; c0a4

wVideoLCDC:
    ds 1                                               ;; c0a5

wVideoSCX:
    ds 1                                               ;; c0a6

wVideoSCY:
    ds 1                                               ;; c0a7

wVideoWX:
    ds 1                                               ;; c0a8

wVideoWY:
    ds 1                                               ;; c0a9

wVideoBGP:
    ds 1                                               ;; c0aa

wVideoOBP0:
    ds 1                                               ;; c0ab

wVideoOBP1:
    ds 1                                               ;; c0ac

wVBlankDone:
    ds 1                                               ;; c0ad

wInterruptFiredFlags:
    ds 1                                               ;; c0ae

wJoypadInput:
    ds 1                                               ;; c0af

wRndState0:
    ds 1                                               ;; c0b0

wRndState1:
    ds 1                                               ;; c0b1

wScratchBankCallFunctionNumber:
    ds 1                                               ;; c0b2

wScratchBankCallA:
    ds 1                                               ;; c0b3

wScratchBankCallL:
    ds 1                                               ;; c0b4

wScratchBankCallH:
    ds 11                                              ;; c0b5

wBankStack:
    ds 64                                              ;; c0c0

wC100:
    ds 1                                               ;; c100

wC101:
    ds 1                                               ;; c101

wC102:
    ds 1                                               ;; c102

wC103:
    ds 1                                               ;; c103

wMusicInstructionPointerLow:
    ds 1                                               ;; c104

wMusicInstructionPointerHigh:
    ds 1                                               ;; c105

wC106:
    ds 1                                               ;; c106

wC107:
    ds 1                                               ;; c107

wC108:
    ds 1                                               ;; c108

wC109:
    ds 1                                               ;; c109

wC10A:
    ds 1                                               ;; c10a

wC10B:
    ds 1                                               ;; c10b

wC10C:
    ds 1                                               ;; c10c

wC10D:
    ds 1                                               ;; c10d

wC10E:
    ds 1                                               ;; c10e

wC10F:
    ds 1                                               ;; c10f

wC110:
    ds 1                                               ;; c110

wC111:
    ds 2                                               ;; c111

wC113:
    ds 1                                               ;; c113

wC114:
    ds 1                                               ;; c114

wC115:
    ds 1                                               ;; c115

wC116:
    ds 1                                               ;; c116

wC117:
    ds 1                                               ;; c117

wC118:
    ds 1                                               ;; c118

wC119:
    ds 1                                               ;; c119

wC11A:
    ds 1                                               ;; c11a

wC11B:
    ds 1                                               ;; c11b

wC11C:
    ds 1                                               ;; c11c

wC11D:
    ds 1                                               ;; c11d

wC11E:
    ds 1                                               ;; c11e

wC11F:
    ds 1                                               ;; c11f

wC120:
    ds 1                                               ;; c120

wC121:
    ds 1                                               ;; c121

wC122:
    ds 1                                               ;; c122

wC123:
    ds 1                                               ;; c123

wC124:
    ds 1                                               ;; c124

wC125:
    ds 1                                               ;; c125

wC126:
    ds 1                                               ;; c126

wC127:
    ds 1                                               ;; c127

wC128:
    ds 1                                               ;; c128

wC129:
    ds 1                                               ;; c129

wC12A:
    ds 1                                               ;; c12a

wC12B:
    ds 1                                               ;; c12b

wC12C:
    ds 1                                               ;; c12c

wC12D:
    ds 1                                               ;; c12d

wC12E:
    ds 1                                               ;; c12e

wC12F:
    ds 1                                               ;; c12f

wC130:
    ds 1                                               ;; c130

wC131:
    ds 1                                               ;; c131

wC132:
    ds 1                                               ;; c132

wC133:
    ds 1                                               ;; c133

wC134:
    ds 1                                               ;; c134

wC135:
    ds 1                                               ;; c135

wC136:
    ds 1                                               ;; c136

wC137:
    ds 1                                               ;; c137

wC138:
    ds 1                                               ;; c138

wC139:
    ds 1                                               ;; c139

wC13A:
    ds 1                                               ;; c13a

wC13B:
    ds 2                                               ;; c13b

wC13D:
    ds 1                                               ;; c13d

wC13E:
    ds 1                                               ;; c13e

wC13F:
    ds 1                                               ;; c13f

wC140:
    ds 1                                               ;; c140

wC141:
    ds 2                                               ;; c141

wC143:
    ds 6                                               ;; c143

wC149:
    ds 1                                               ;; c149

wC14A:
    ds 17                                              ;; c14a

wC15B:
    ds 7                                               ;; c15b

wC162:
    ds 98                                              ;; c162

wC1C4:
    ds 1                                               ;; c1c4

wC1C5:
    ds 1                                               ;; c1c5

wC1C6:
    ds 1                                               ;; c1c6

wC1C7:
    ds 1                                               ;; c1c7

wC1C8:
    ds 1                                               ;; c1c8

wC1C9:
    ds 1                                               ;; c1c9

wC1CA:
    ds 54                                              ;; c1ca

; 16 bytes per object, or potentially 16x16 sprite?
; 00: Lower nibble, orientation. $80=walking, other bits unknown ($ff indicates unused)
; 01: Movement speed
; 02: Something collision related ($01: blocked by walls, $80 blocks player, $10 can be pushed by player or take damage on touch?)
; 03: Unknown
; 04: Y position
; 05: X position
; 06-07: Something sprite related (meta sprite pointer?)
; 08-09: Shadow OAM memory location
; 09-15: Unknown
; (wC270 seems just more of this data)
wObjectRuntimeData:
    ds 112                                             ;; c200

wC270:
    ds 208                                             ;; c270

wC340:
    ds 1                                               ;; c340

wC341:
    ds 1                                               ;; c341

wBackgroundDrawPositionX:
    ds 1                                               ;; c342

wBackgroundDrawPositionY:
    ds 1                                               ;; c343

;Sets the next room to be loaded on a screen transition.
wNextRoomOverride:
    ds 1                                               ;; c344
.x:
    ds 3                                               ;; c345

wC348:
    ds 1                                               ;; c348

wC349:
    ds 7                                               ;; c349

wRoomTiles:
    ds 80                                              ;; c350

wC3A0:
    ds 80                                              ;; c3a0

wMapTableBankNr:
    ds 1                                               ;; c3f0

wC3F1:
    ds 1                                               ;; c3f1

wMapTablePointerLow:
    ds 1                                               ;; c3f2

wMapTablePointerHigh:
    ds 1                                               ;; c3f3

wC3F4:
    ds 1                                               ;; c3f4

wMapNumber:
    ds 1                                               ;; c3f5

wRoomX:
    ds 1                                               ;; c3f6

wRoomY:
    ds 1                                               ;; c3f7

wC3F8:
    ds 1                                               ;; c3f8

wMapTileRLECount:
    ds 1                                               ;; c3f9

wMapHeight:
    ds 1                                               ;; c3fa

wMapWidth:
    ds 1                                               ;; c3fb

wC3FC:
    ds 1                                               ;; c3fc

wC3FD:
    ds 1                                               ;; c3fd

; Points at the mapXX_roomXX_XX_script label of the current room
wRoomScriptTableLow:
    ds 1                                               ;; c3fe

wRoomScriptTableHigh:
    ds 1                                               ;; c3ff

; Two bytes per room are stored here. First byte is $80 if the room is cleared, 2nd byte is XY position of the room.
; Any room entered will add an entry to this table.
; This is used to set/clear wScriptFlags.7 when entering a room to indicate if all enemies have been defeated.
; First byte of this list is alway "current room status"
; List is cleared when warping?
wRoomClearedStatus:
    ds 128                                             ;; c400

wC480:
    ds 32                                              ;; c480

wC4A0:
    ds 1                                               ;; c4a0

wC4A1:
    ds 1                                               ;; c4a1

wC4A2:
    ds 46                                              ;; c4a2

wC4D0:
    ds 1                                               ;; c4d0

wC4D1:
    ds 1                                               ;; c4d1

wC4D2:
    ds 2                                               ;; c4d2

wC4D4:
    ds 12                                              ;; c4d4

; 8 records of $18 size, related to NPCs
; 12-13: HP
wC4E0:
    ds 16                                              ;; c4e0
._10:
    ds 176                                             ;; c4f0

wC5A0:
    ds 8                                               ;; c5a0

; List of 3 random NPC types, one per entry of the selected NPCSpawnPointers, selected from the 4 options
wNPCSpawnTypes:
    ds 6                                               ;; c5a8

; Current active index into NPCSpawnPointers.
wNPCSpawnTableIndex:
    ds 1                                               ;; c5ae

wC5AF:
    ds 1                                               ;; c5af

wC5B0:
    ds 16                                              ;; c5b0

wC5C0:
    ds 32                                              ;; c5c0

wTileCopyRequestData:
    ds 768                                             ;; c5e0

wTileCopyRequestCount:
    ds 1                                               ;; c8e0

wTileCopyRequestMutex:
    ds 1                                               ;; c8e1

wStackPointerBackupLow:
    ds 1                                               ;; c8e2

wStackPointerBackupHigh:
    ds 5                                               ;; c8e3

; Blocks of 6 bytes:
;0) Bank number to load from (change is skipped if >= $10)
;1) Amount of bytes to copy (must be multiple of 2)
;2-3) Source address
;4-5) Destination address
wBackgroundRenderRequests:
    ds 1536                                            ;; c8e8

; Amount of entries in wBackgroundRenderRequests
wBackgroundRenderRequestCount:
    ds 8                                               ;; cee8

wCEF0:
    ds 8                                               ;; cef0

wCEF8:
    ds 8                                               ;; cef8

wCF00:
    ds 8                                               ;; cf00

wCF08:
    ds 16                                              ;; cf08

wCF18:
    ds 16                                              ;; cf18

wCF28:
    ds 32                                              ;; cf28

wCF48:
    ds 8                                               ;; cf48

wCF50:
    ds 8                                               ;; cf50

wCF58:
    ds 1                                               ;; cf58

wCF59:
    ds 1                                               ;; cf59

wCF5A:
    ds 1                                               ;; cf5a

wCF5B:
    ds 1                                               ;; cf5b

wCF5C:
    ds 1                                               ;; cf5c

wCF5D:
    ds 1                                               ;; cf5d

wCF5E:
    ds 1                                               ;; cf5e

wCF5F:
    ds 1                                               ;; cf5f

wCF60:
    ds 1                                               ;; cf60

wCF61:
    ds 1                                               ;; cf61

wCF62:
    ds 1                                               ;; cf62

wCF63:
    ds 269                                             ;; cf63

wD070:
    ds 8                                               ;; d070

wD078:
    ds 1                                               ;; d078

wD079:
    ds 1                                               ;; d079

wD07A:
    ds 1                                               ;; d07a

wD07B:
    ds 1                                               ;; d07b

wD07C:
    ds 1                                               ;; d07c

wD07D:
    ds 1                                               ;; d07d

wD07E:
    ds 1                                               ;; d07e

wD07F:
    ds 1                                               ;; d07f

; Loopup of graphics tile number -> VRAM tile number
wBackgroundGraphicsTileMapping:
    ds 240                                             ;; d080

wD170:
    ds 4                                               ;; d170

wD174:
    ds 4                                               ;; d174

wD178:
    ds 2                                               ;; d178

wD17A:
    ds 2                                               ;; d17a

wD17C:
    ds 2                                               ;; d17c

wD17E:
    ds 2                                               ;; d17e

; Written to $0F when this graphic tile index is loaded into VRAM
wBackgroundGraphicsTileState:
    ds 240                                             ;; d180

; Written to $01 when a VRAM tile is used, starting from tile $80
wBackgroundGraphicsTileUsed:
    ds 128                                             ;; d270

wD2F0:
    ds 16                                              ;; d2f0

wD300:
    ds 16                                              ;; d300

wD310:
    ds 16                                              ;; d310

wD320:
    ds 16                                              ;; d320

wD330:
    ds 16                                              ;; d330

wD340:
    ds 16                                              ;; d340

wD350:
    ds 16                                              ;; d350

wD360:
    ds 16                                              ;; d360

wD370:
    ds 16                                              ;; d370

wD380:
    ds 14                                              ;; d380

wD38E:
    ds 1                                               ;; d38e

wD38F:
    ds 1                                               ;; d38f

; Points to graphics in bank $0B or $0C as a packed pointer from the map header.
wMapGraphicsPointer:
    ds 1                                               ;; d390
.High:
    ds 1                                               ;; d391

wTileDataTablePointer:
    ds 1                                               ;; d392
.High:
    ds 1                                               ;; d393

wD394:
    ds 4                                               ;; d394

wD398:
    ds 1                                               ;; d398

wD399:
    ds 7                                               ;; d399

; Buffer containing LCDC effects. 4 bytes per entry:
; 0: rLYC value ($FF for no next)
; 1: rLCDC and MASK
; 2: rLCDC xor MASK
; 3: BGP value
wLCDCEffectBuffer:
    ds 3                                               ;; d3a0
._03:
    ds 63                                              ;; d3a3

; Index into the wLCDCEffectBuffer (as entry number, not byte offset)
wLCDCEffectIndex:
    ds 6                                               ;; d3e2

wD3E8:
    ds 1                                               ;; d3e8

wD3E9:
    ds 2                                               ;; d3e9

wBossIframes:
    ds 1                                               ;; d3eb

wD3EC:
    ds 1                                               ;; d3ec

wD3ED:
    ds 1                                               ;; d3ed

wD3EE:
    ds 1                                               ;; d3ee

wD3EF:
    ds 1                                               ;; d3ef

wD3F0:
    ds 2                                               ;; d3f0

wD3F2:
    ds 1                                               ;; d3f2

wD3F3:
    ds 1                                               ;; d3f3

wD3F4:
    ds 1                                               ;; d3f4

wD3F5:
    ds 1                                               ;; d3f5

wD3F6:
    ds 66                                              ;; d3f6

wCurrentBossDataPointer:
    ds 1                                               ;; d438
.high:
    ds 1                                               ;; d439

wD43A:
    ds 1                                               ;; d43a

wD43B:
    ds 1                                               ;; d43b

wD43C:
    ds 1                                               ;; d43c

wD43D:
    ds 1                                               ;; d43d

wD43E:
    ds 1                                               ;; d43e

wD43F:
    ds 1                                               ;; d43f

wD440:
    ds 1                                               ;; d440

wD441:
    ds 1                                               ;; d441

wD442:
    ds 4                                               ;; d442

wD446:
    ds 82                                              ;; d446

wD498:
    ds 1                                               ;; d498

; Counter used in various script opcodes, left at 0 after opcode is done.
wScriptOpCounter:
    ds 1                                               ;; d499

wScriptOpCounter2:
    ds 1                                               ;; d49a

wD49B:
    ds 1                                               ;; d49b

wD49C:
    ds 1                                               ;; d49c

wD49D:
    ds 1                                               ;; d49d

wD49E:
    ds 1                                               ;; d49e

wD49F:
    ds 1                                               ;; d49f

wD4A0:
    ds 1                                               ;; d4a0

wD4A1:
    ds 1                                               ;; d4a1

wD4A2:
    ds 1                                               ;; d4a2

wD4A3:
    ds 1                                               ;; d4a3

wD4A4:
    ds 3                                               ;; d4a4

wDialogX:
    ds 1                                               ;; d4a7

wDialogY:
    ds 1                                               ;; d4a8

wD4A9:
    ds 1                                               ;; d4a9

wD4AA:
    ds 1                                               ;; d4aa

wD4AB:
    ds 155                                             ;; d4ab

wD546:
    ds 40                                              ;; d546

wD56E:
    ds 62                                              ;; d56e

wD5AC:
    ds 103                                             ;; d5ac

; Script that is run when you open a chest. Actual script code is stored in here,
; but with only 3 bytes storage, it just calls an actual script in one of the script banks.
wOpenChestScript1:
    ds 3                                               ;; d613

wD616:
    ds 1                                               ;; d616

wD617:
    ds 12                                              ;; d617

; Script that is run when you open a chest. Actual script code is stored in here,
; it just calls an actual script in one of the script banks.
wOpenChestScript2:
    ds 16                                              ;; d623

wD633:
    ds 4                                               ;; d633

wD637:
    ds 76                                              ;; d637

; End of the script stack, used by script call/loop operations
; 4 bytes are pushed onto this at a time. Stack grows upwards!
; Memory below this label is also used to backup and restore some OAM data (when?)
wScriptStackTop:
    ds 24                                              ;; d683

; Amount of the same type of item in inventory. wItemInventory indicates the type, wItemInventoryAmount indicates the amount
wItemInventoryAmount:
    ds 16                                              ;; d69b

wD6AB:
    ds 8                                               ;; d6ab

wD6B3:
    ds 12                                              ;; d6b3

wD6BF:
    ds 1                                               ;; d6bf

wD6C0:
    ds 1                                               ;; d6c0

;Alternative totalAP location?
wD6C1:
    ds 1                                               ;; d6c1

wD6C2:
    ds 1                                               ;; d6c2

;Alternative totalDP location?
wD6C3:
    ds 2                                               ;; d6c3

; List if item IDs in your current inventory. ItemID has $80 added to it if it has a usage counter.
wItemInventory:
    ds 16                                              ;; d6c5

wMagicInventory:
    ds 8                                               ;; d6d5

wEquipmentInventory:
    ds 12                                              ;; d6dd

wEquipedWeapon:
    ds 1                                               ;; d6e9

wEquipedHelm:
    ds 2                                               ;; d6ea

wEquipedArmor:
    ds 2                                               ;; d6ec

wEquipedShield:
    ds 1                                               ;; d6ee

wEquipedItem:
    ds 1                                               ;; d6ef

wEquipedItemAmount:
    ds 1                                               ;; d6f0

wD6F1:
    ds 2                                               ;; d6f1

wD6F3:
    ds 7                                               ;; d6f3

wD6FA:
    ds 7                                               ;; d6fa

wD701:
    ds 14                                              ;; d701

wD70F:
    ds 32                                              ;; d70f

wD72F:
    ds 32                                              ;; d72f

wD74F:
    ds 64                                              ;; d74f

wD78F:
    ds 1                                               ;; d78f

wD790:
    ds 1                                               ;; d790

wD791:
    ds 2                                               ;; d791

wD793:
    ds 10                                              ;; d793

wBoyName:
    ds 5                                               ;; d79d

wGirlName:
    ds 5                                               ;; d7a2

wD7A7:
    ds 1                                               ;; d7a7

wD7A8:
    ds 2                                               ;; d7a8

wD7AA:
    ds 7                                               ;; d7aa

wD7B1:
    ds 1                                               ;; d7b1

wHPLow:
    ds 1                                               ;; d7b2

wHPHigh:
    ds 1                                               ;; d7b3

wMaxHPLow:
    ds 1                                               ;; d7b4

wMaxHPHigh:
    ds 1                                               ;; d7b5

wManaLow:
    ds 1                                               ;; d7b6

wManaHigh:
    ds 1                                               ;; d7b7

wMaxManaLow:
    ds 1                                               ;; d7b8

wMaxManaHigh:
    ds 1                                               ;; d7b9

wLevel:
    ds 1                                               ;; d7ba

wXPLow:
    ds 1                                               ;; d7bb

wXPHigh:
    ds 1                                               ;; d7bc

wXPHighExt:
    ds 1                                               ;; d7bd

wMoneyLow:
    ds 1                                               ;; d7be

wMoneyHigh:
    ds 1                                               ;; d7bf

; Status that the player currently has
;Bit0: ?
;Bit1: Dark
;Bit2: ?
;Bit3: ?
;Bit4: ?
;Bit5: ?
;Bit6: ?
;Bit7: ?
wStatusEffect:
    ds 1                                               ;; d7c0

wStatStamina:
    ds 1                                               ;; d7c1

wStatPower:
    ds 1                                               ;; d7c2

wStatWisdom:
    ds 1                                               ;; d7c3

wStatWill:
    ds 2                                               ;; d7c4

; Script flags bits are numbered from high to low. So Bit0 = $80, Bit7 = $01
; Bit5: Set by sGIVE_ITEM, sGIVE_EQUIPMENT and sGIVE_MAGIC when there is not enough room in your inventory
; Bit6: Set by money script code when you do not have enough money
; Bit7: Set when all enemies in the room haven't been defeated yet.
wScriptFlags:
    ds 1                                               ;; d7c6

wScriptFlags01:
    ds 1                                               ;; d7c7

wScriptFlags02:
    ds 1                                               ;; d7c8

wScriptFlags03:
    ds 1                                               ;; d7c9

wScriptFlags04:
    ds 1                                               ;; d7ca

wScriptFlags05:
    ds 1                                               ;; d7cb

wScriptFlags06:
    ds 1                                               ;; d7cc

wScriptFlags07:
    ds 1                                               ;; d7cd

wScriptFlags08:
    ds 1                                               ;; d7ce

wScriptFlags09:
    ds 1                                               ;; d7cf

wScriptFlags0A:
    ds 1                                               ;; d7d0

wScriptFlags0B:
    ds 1                                               ;; d7d1

wScriptFlags0C:
    ds 1                                               ;; d7d2

wScriptFlags0D:
    ds 1                                               ;; d7d3

wScriptFlags0E:
    ds 1                                               ;; d7d4

;.7 set when awnsered NO on a YES/NO question dialog
wScriptFlags0F:
    ds 1                                               ;; d7d5

wD7D6:
    ds 1                                               ;; d7d6

wD7D7:
    ds 1                                               ;; d7d7

wD7D8:
    ds 5                                               ;; d7d8

wD7DD:
    ds 2                                               ;; d7dd

;Attack power, depending on stats and equiped weapon
wTotalAP:
    ds 1                                               ;; d7df

;Defence, depending on stats and equiped armor
wTotalDP:
    ds 1                                               ;; d7e0

wD7E1:
    ds 80                                              ;; d7e1

wD831:
    ds 17                                              ;; d831

wD842:
    ds 1                                               ;; d842

wD843:
    ds 1                                               ;; d843

wD844:
    ds 1                                               ;; d844

wD845:
    ds 1                                               ;; d845

wD846:
    ds 2                                               ;; d846

wD848:
    ds 1                                               ;; d848

wD849:
    ds 1                                               ;; d849

; Indicates which dialog is being opened. For example $11 = select menu (save/map/status)
wDialogType:
    ds 1                                               ;; d84a

; Selection index in menus, after selection.
; Or $FF when pressing B to exit a menu
wSelectedMenuIndex:
    ds 1                                               ;; d84b

; Second selection, when swapping items in the inventory menu.
wSelectedMenuIndex2:
    ds 1                                               ;; d84c

wD84D:
    ds 1                                               ;; d84d

wD84E:
    ds 1                                               ;; d84e

wD84F:
    ds 1                                               ;; d84f

wD850:
    ds 1                                               ;; d850

wD851:
    ds 2                                               ;; d851

wD853:
    ds 1                                               ;; d853

wD854:
    ds 2                                               ;; d854

wD856:
    ds 1                                               ;; d856

wD857:
    ds 1                                               ;; d857

; Amount of special attack charge, from $00 to $40.
wWillCharge:
    ds 1                                               ;; d858

wD859:
    ds 1                                               ;; d859

wScriptCommand:
    ds 2                                               ;; d85a

wD85C:
    ds 1                                               ;; d85c

wD85D:
    ds 1                                               ;; d85d

wD85E:
    ds 1                                               ;; d85e

wD85F:
    ds 1                                               ;; d85f

wD860:
    ds 2                                               ;; d860

wD862:
    ds 1                                               ;; d862

; Dialog border tile, depending on it if it drawing the top or bottom row, different tile numbers are stored here
wDialogBorderTile:
    ds 1                                               ;; d863

wD864:
    ds 1                                               ;; d864

; Amount of pushes done on the script stack
wScriptStackCount:
    ds 1                                               ;; d865

wD866:
    ds 1                                               ;; d866

wD867:
    ds 1                                               ;; d867

wD868:
    ds 1                                               ;; d868

wD869:
    ds 1                                               ;; d869

wScriptBank:
    ds 1                                               ;; d86a

wD86B:
    ds 1                                               ;; d86b

wD86C:
    ds 1                                               ;; d86c

wD86D:
    ds 1                                               ;; d86d

wD86E:
    ds 1                                               ;; d86e

wD86F:
    ds 1                                               ;; d86f

wD870:
    ds 1                                               ;; d870

wD871:
    ds 1                                               ;; d871

wD872:
    ds 1                                               ;; d872

wD873:
    ds 1                                               ;; d873

wD874:
    ds 2                                               ;; d874

wD876:
    ds 1                                               ;; d876

wD877:
    ds 1                                               ;; d877

wD878:
    ds 1                                               ;; d878

wD879:
    ds 1                                               ;; d879

wD87A:
    ds 1                                               ;; d87a

wD87B:
    ds 1                                               ;; d87b

wD87C:
    ds 1                                               ;; d87c

wD87D:
    ds 1                                               ;; d87d

wD87E:
    ds 1                                               ;; d87e

wD87F:
    ds 1                                               ;; d87f

wD880:
    ds 1                                               ;; d880

wD881:
    ds 1                                               ;; d881

wD882:
    ds 1                                               ;; d882

wD883:
    ds 1                                               ;; d883

wD884:
    ds 1                                               ;; d884

wD885:
    ds 1                                               ;; d885

wIntroScrollState:
    ds 1                                               ;; d886

wD887:
    ds 1                                               ;; d887

wD888:
    ds 1                                               ;; d888

wD889:
    ds 1                                               ;; d889

wD88A:
    ds 1                                               ;; d88a

wD88B:
    ds 1                                               ;; d88b

; On the title screen, wait a number of frames before the new game and continue options are shown.
wTitleScreenDelay:
    ds 1                                               ;; d88c

wD88D:
    ds 1                                               ;; d88d

wD88E:
    ds 1                                               ;; d88e

wD88F:
    ds 1                                               ;; d88f

wD890:
    ds 1                                               ;; d890

wD891:
    ds 1                                               ;; d891

wD892:
    ds 1                                               ;; d892

wD893:
    ds 1                                               ;; d893

wD894:
    ds 1                                               ;; d894

wD895:
    ds 1                                               ;; d895

wD896:
    ds 1                                               ;; d896

wD897:
    ds 1                                               ;; d897

wD898:
    ds 1                                               ;; d898

wD899:
    ds 1                                               ;; d899

wD89A:
    ds 1                                               ;; d89a

wD89B:
    ds 1                                               ;; d89b

wD89C:
    ds 1                                               ;; d89c

wD89D:
    ds 1                                               ;; d89d

wD89E:
    ds 1                                               ;; d89e

wD89F:
    ds 3                                               ;; d89f

wD8A2:
    ds 1                                               ;; d8a2

wD8A3:
    ds 1                                               ;; d8a3

wD8A4:
    ds 1                                               ;; d8a4

wD8A5:
    ds 1                                               ;; d8a5

wD8A6:
    ds 1                                               ;; d8a6

wD8A7:
    ds 1                                               ;; d8a7

wD8A8:
    ds 1                                               ;; d8a8

wD8A9:
    ds 1                                               ;; d8a9

wD8AA:
    ds 1                                               ;; d8aa

wD8AB:
    ds 1                                               ;; d8ab

wD8AC:
    ds 1                                               ;; d8ac

wD8AD:
    ds 1                                               ;; d8ad

wD8AE:
    ds 1                                               ;; d8ae

wD8AF:
    ds 1                                               ;; d8af

wD8B0:
    ds 1                                               ;; d8b0

wD8B1:
    ds 1                                               ;; d8b1

wD8B2:
    ds 1                                               ;; d8b2

wD8B3:
    ds 1                                               ;; d8b3

wD8B4:
    ds 1                                               ;; d8b4

wD8B5:
    ds 1                                               ;; d8b5

wScriptPointerLow:
    ds 1                                               ;; d8b6

wScriptPointerHigh:
    ds 1                                               ;; d8b7

wD8B8:
    ds 1                                               ;; d8b8

wD8B9:
    ds 1                                               ;; d8b9

wD8BA:
    ds 1                                               ;; d8ba

wD8BB:
    ds 1                                               ;; d8bb

; Pointer to the script stack.
wScriptStackPointer:
    ds 1                                               ;; d8bc
.high:
    ds 1                                               ;; d8bd

; SP is stored here while operating on the script stack
wStackBackup:
    ds 1                                               ;; d8be
.high:
    ds 1                                               ;; d8bf

wNextXPLevelLow:
    ds 1                                               ;; d8c0

wNextXPLevelHigh:
    ds 1                                               ;; d8c1

wNextXPLevelHighExt:
    ds 1                                               ;; d8c2

wD8C3:
    ds 1                                               ;; d8c3

wD8C4:
    ds 1                                               ;; d8c4

wD8C5:
    ds 1                                               ;; d8c5

wD8C6:
    ds 1                                               ;; d8c6

wD8C7:
    ds 16                                              ;; d8c7

wD8D7:
    ds 1                                               ;; d8d7

wD8D8:
    ds 1                                               ;; d8d8

wD8D9:
    ds 1                                               ;; d8d9

wD8DA:
    ds 1                                               ;; d8da

wD8DB:
    ds 1829                                            ;; d8db

SECTION "hram", HRAM[$ff80]

hOAM_DMA_Routine:
    ds 10                                              ;; ff80

hBankStackPointer:
    ds 6                                               ;; ff8a

hCurrentMusic:
    ds 1                                               ;; ff90

hFF91:
    ds 1                                               ;; ff91

hSFX:
    ds 1                                               ;; ff92

hFF93:
    ds 1                                               ;; ff93

hFF94:
    ds 1                                               ;; ff94

hFF95:
    ds 1                                               ;; ff95

hFF96:
    ds 1                                               ;; ff96

hFF97:
    ds 2                                               ;; ff97

hFF99:
    ds 1                                               ;; ff99

hFF9A:
    ds 1                                               ;; ff9a

hFF9B:
    ds 1                                               ;; ff9b

hFF9C:
    ds 1                                               ;; ff9c

hFF9D:
    ds 10                                               ;; ff9d

hCurBGPal:
    ds 1
hCurObjPal:
    ds 82

hFFFA:
    ds 2                                               ;; fffa

hFFFC:
    ds 1                                               ;; fffc

hFFFD:
    ds 1                                               ;; fffd

hFFFE:
    ds 1                                               ;; fffe

SECTION "sram", SRAM[$a000]

sA000:
    ds 6                                               ;; a000

sA006:
    ds 250                                             ;; a006

sA100:
    ds 6                                               ;; a100

sA106:
    ds 7930                                            ;; a106
