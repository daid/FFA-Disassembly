;; Disassembled with BadBoy Disassembler: https://github.com/daid/BadBoy



;@map_headers amount=16
; This bank seems to start with some kind of map information with 11 bytes per record
; Format:
;  dw Graphics data (in bank 0B or 0C)
;  db $00 ; ignored
;  dw Pointer to Metatile info
;  db $00 ; ignored
;  db BankNr
;  dw MapPointer
;  db ?, ?
mapHeader_00:
    MAP_HEADER tilesetGfxOutdoor, $00, data_08_40b0, $80, mapRoomPointers_00, $d7, $3c ;; 08:4000 ..?..?...??

mapHeader_01:
    MAP_HEADER tilesetGfxOutdoor, $00, data_08_40b0, $80, mapRoomPointers_01, $0e, $11 ;; 08:400b ..?..?...??

mapHeader_02:
    MAP_HEADER tilesetGfxIndoor, $00, data_08_46b0, $6c, mapRoomPointers_02, $63, $08 ;; 08:4016 ..?..?...??

mapHeader_03:
    MAP_HEADER tilesetGfxIndoor, $00, data_08_46b0, $6c, mapRoomPointers_03, $71, $08 ;; 08:4021 ..?..?...??

mapHeader_04:
    MAP_HEADER tilesetGfxIndoor, $00, data_08_46b0, $6c, mapRoomPointers_04, $3e, $08 ;; 08:402c ..?..?...??

mapHeader_05:
    MAP_HEADER tilesetGfxIndoor, $00, data_08_46b0, $6c, mapRoomPointers_05, $6f, $07 ;; 08:4037 ???????????

mapHeader_06:
    MAP_HEADER tilesetGfxIndoor, $00, data_08_46b0, $6c, mapRoomPointers_06, $e1, $05 ;; 08:4042 ..?..?...??

mapHeader_07:
    MAP_HEADER tilesetGfxTitle, $c0, data_08_4c1a, $4a, mapRoomPointers_07, $09, $04 ;; 08:404d ..?..?...??

mapHeader_08:
    MAP_HEADER tilesetGfxCaves, $00, data_08_4938, $7b, mapRoomPointers_08, $59, $06 ;; 08:4058 ???????????

mapHeader_09:
    MAP_HEADER tilesetGfxCaves, $00, data_08_4938, $7b, mapRoomPointers_09, $86, $02 ;; 08:4063 ???????????

mapHeader_0a:
    MAP_HEADER tilesetGfxCaves, $00, data_08_4938, $7b, mapRoomPointers_0a, $37, $0a ;; 08:406e ???????????

mapHeader_0b:
    MAP_HEADER tilesetGfxCaves, $00, data_08_4938, $7b, mapRoomPointers_0b, $b8, $06 ;; 08:4079 ???????????

mapHeader_0c:
    MAP_HEADER tilesetGfxCaves, $00, data_08_4938, $7b, mapRoomPointers_0c, $39, $06 ;; 08:4084 ???????????

mapHeader_0d:
    MAP_HEADER tilesetGfxCaves, $00, data_08_4938, $7b, mapRoomPointers_0d, $5e, $08 ;; 08:408f ..?..?...??

mapHeader_0e:
    MAP_HEADER tilesetGfxTown, $00, data_08_43b0, $80, mapRoomPointers_0e, $69, $0e ;; 08:409a ..?..?...??

mapHeader_0f:
    MAP_HEADER tilesetGfxTown, $00, data_08_43b0, $80, mapRoomPointers_0f, $ee, $0f ;; 08:40a5 ..?..?...??
