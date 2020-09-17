import annotations
import struct

def mapRoomData(dis, addr, index):
    def roomTileFormatter(output, addr):
        x = 0
        y = 0
        line = []
        start_addr = addr
        while y < 8:
            b = dis.rom.data[addr]
            addr += 1
            if b & 0x80:
                x += rle
                line.append(("    " * (rle - 1)) + "$%02x" % (b))
            else:
                line.append("$%02x" % (b))
                x += 1
            if x >= 10:
                x -= 10
                y += 1
                dis.formatLine(output, start_addr, addr - start_addr, "db " + ",".join(line), is_data=True)
                start_addr = addr
                line = []
        return addr
    def templatedRoomFormatter(output, addr):
        line = []
        for n in range(4):
            line.append("$%02x" % (dis.rom.data[addr + n]))
        dis.formatLine(output, addr, 4, "db   " + ", ".join(line) + " ;; Door info", is_data=True)
        addr += 4
        while True:
            line = []
            for n in range(2):
                line.append("$%02x" % (dis.rom.data[addr + n]))
            dis.formatLine(output, addr, 2, "db   " + ", ".join(line) + " ;; BlockID, XY", is_data=True)
            if dis.rom.data[addr] == 0xff and dis.rom.data[addr + 1] == 0xff:
                return addr + 2
            addr += 2

    unknown, rle, h, w = struct.unpack("<BBBB", dis.rom.data[addr:addr + 4])
    addr += 4
    if unknown:
        # 0x1A bytes of data follow
        # First 2 bytes are a pointer to a room template, which is used as primary tile data
        tile_addr = dis.info.markAsPointer(dis.rom, addr + 0, name="map%02x_room_tile_template" % (index))
        dis.formatter[tile_addr] = roomTileFormatter
        addr += 0x1A
    for n in range(w * h):
        obj_addr = dis.info.markAsPointer(dis.rom, addr + 0, name="map%02x_room%02x_%02x_script" % (index, n % w, n // w))
        tile_addr = dis.info.markAsPointer(dis.rom, addr + 2, name="map%02x_room%02x_%02x_tiles" % (index, n % w, n // w))
        assert obj_addr >= 0x4000, hex(addr)
        assert tile_addr >= 0x4000, hex(addr)
        addr += 4
        
        script_index = dis.info.markAsWord(dis.rom, obj_addr)
        obj_addr += 2
        while dis.rom.data[obj_addr] != 0xff:
            obj_addr += 1
            script_index = dis.info.markAsWord(dis.rom, obj_addr)
            obj_addr += 2

        if dis.rom.data[tile_addr] != 0xff:
            if unknown == 0:
                dis.formatter[tile_addr] = roomTileFormatter
            else:
                dis.formatter[tile_addr] = templatedRoomFormatter
            

def mapHeaders(dis, addr, params):
    assert len(params) == 1

    def mapHeaderFormatter(output, addr):
        tile_set_A, u1, tile_set_B, u2, bank, room_data_ptr, u3, u4 = struct.unpack("<HBHBBHBB", dis.rom.data[addr:addr + 11])
        dis.formatLine(output, addr+0, 2, "dw %s" % (dis.info.formatParameter(addr+0, tile_set_A, is_word=True)))
        dis.formatLine(output, addr+2, 1, "db $%02x" % (u1))
        dis.formatLine(output, addr+3, 2, "dw %s" % (dis.info.formatParameter(addr+3, tile_set_B, is_word=True)))
        dis.formatLine(output, addr+5, 1, "db $%02x" % (u2))
        dis.formatLine(output, addr+6, 1, "db $%02x" % (bank))
        dis.formatLine(output, addr+7, 2, "dw %s" % (dis.info.formatParameter(addr+7, room_data_ptr, is_word=True)))
        dis.formatLine(output, addr+9, 2, "db $%02x, $%02x" % (u3, u4))
        return addr + 11

    for n in range(int(params[0])):
        tile_set_A, u1, tile_set_B, u2, bank, room_data_ptr, u3, u4 = struct.unpack("<HBHBBHBB", dis.rom.data[addr:addr + 11])

        dis.info.addAbsoluteRomSymbol(addr, name="mapHeader_%02x" % (n))
        dis.info.addRelativeSymbol(tile_set_B, addr)

        dis.info.setActiveBank(addr + 7, bank)
        dis.info.addAbsoluteRomSymbol(bank << 14 | (room_data_ptr & 0x3FFF), name="mapRoomPointers_%02x" % (n))

        dis.formatter[addr] = mapHeaderFormatter
        addr += 11

        mapRoomData(dis, bank << 14 | (room_data_ptr & 0x3FFF), n)

# Opcodes marked with DUMMY or NOP are never actually used in the scripts.
# But the script lookup table maps those to those actions.
OPCODES = {
    0x00: ("END", 0),
    0x01: ("JR", 1),
    0x02: ("CALL", 2),
    0x03: ("LOOP", 2), # loop count, [ignored, number of bytes in the loop]
    0x04: ("MSG", -1),

    0x05: ("NOP", 0),
    0x06: ("NOP", 0),
    0x07: ("NOP", 0),

    0x08: ("IF ? JR", -2),
    0x09: ("IF ? JR", -2),
    0x0A: ("IF ? JR", -2),
    0x0B: ("IF JR", -2),
    0x0C: ("IF ! JR", -2),

    0x0D: ("NOP", 0),
    0x0E: ("NOP", 0),
    0x0F: ("NOP", 0),

    0x10: ("NPC_1_STEP_FORWARD", 0),
    0x11: ("NPC_1_STEP_BACKWARDS", 0),
    0x12: ("FULL_HP_DUMMY", 0),
    0x13: ("FULL_HP_DUMMY", 0),
    0x14: ("SET_NPC_1_DIRECTION_UP", 0),
    0x15: ("SET_NPC_1_DIRECTION_DOWN", 0),
    0x16: ("SET_NPC_1_DIRECTION_RIGHT", 0),
    0x17: ("SET_NPC_1_DIRECTION_LEFT", 0),
    0x18: ("DEL_NPC_1", 0),
    0x19: ("SET_NPC_1_POSITION", 2),
    0x1A: ("UNK_1A", 0),
    0x1B: ("UNK_1B", 0),
    0x1C: ("NOP", 0),
    0x1D: ("NOP", 0),
    0x1E: ("NOP", 0),
    0x1F: ("NOP", 0),

    0x20: ("NPC_2_STEP_FORWARD", 0),
    0x21: ("NPC_2_STEP_BACKWARDS", 0),
    0x22: ("FULL_HP_DUMMY", 0),
    0x23: ("FULL_HP_DUMMY", 0),
    0x24: ("SET_NPC_2_DIRECTION_UP", 0),
    0x25: ("SET_NPC_2_DIRECTION_DOWN", 0),
    0x26: ("SET_NPC_2_DIRECTION_RIGHT", 0),
    0x27: ("SET_NPC_2_DIRECTION_LEFT", 0),
    0x28: ("DEL_NPC_2", 0),
    0x29: ("SET_NPC_2_POSITION", 2),
    0x2A: ("UNK_2A", 0),
    0x2B: ("UNK_2B", 0),
    0x2C: ("NOP", 0),
    0x2D: ("NOP", 0),
    0x2E: ("NOP", 0),
    0x2F: ("NOP", 0),

    0x30: ("NPC_3_STEP_FORWARD", 0),
    0x31: ("NPC_3_STEP_BACKWARDS", 0),
    0x32: ("FULL_HP_DUMMY", 0),
    0x33: ("FULL_HP_DUMMY", 0),
    0x34: ("SET_NPC_3_DIRECTION_UP", 0),
    0x35: ("SET_NPC_3_DIRECTION_DOWN", 0),
    0x36: ("SET_NPC_3_DIRECTION_RIGHT", 0),
    0x37: ("SET_NPC_3_DIRECTION_LEFT", 0),
    0x38: ("DEL_NPC_3", 0),
    0x39: ("SET_NPC_3_POSITION", 2),
    0x3A: ("UNK_3A", 0),
    0x3B: ("UNK_3B", 0),
    0x3C: ("NOP", 0),
    0x3D: ("NOP", 0),
    0x3E: ("NOP", 0),
    0x3F: ("NOP", 0),

    0x40: ("NPC_4_STEP_FORWARD", 0),
    0x41: ("NPC_4_STEP_BACKWARDS", 0),
    0x42: ("FULL_HP_DUMMY", 0),
    0x43: ("FULL_HP_DUMMY", 0),
    0x44: ("SET_NPC_4_DIRECTION_UP", 0),
    0x45: ("SET_NPC_4_DIRECTION_DOWN", 0),
    0x46: ("SET_NPC_4_DIRECTION_RIGHT", 0),
    0x47: ("SET_NPC_4_DIRECTION_LEFT", 0),
    0x48: ("DEL_NPC_4", 0),
    0x49: ("SET_NPC_4_POSITION", 2),
    0x4A: ("UNK_4A", 0),
    0x4B: ("UNK_4B", 0),
    0x4C: ("NOP", 0),
    0x4D: ("NOP", 0),
    0x4E: ("NOP", 0),
    0x4F: ("NOP", 0),

    0x50: ("NPC_5_STEP_FORWARD", 0),
    0x51: ("NPC_5_STEP_BACKWARDS", 0),
    0x52: ("FULL_HP_DUMMY", 0),
    0x53: ("FULL_HP_DUMMY", 0),
    0x54: ("SET_NPC_5_DIRECTION_UP", 0),
    0x55: ("SET_NPC_5_DIRECTION_DOWN", 0),
    0x56: ("SET_NPC_5_DIRECTION_RIGHT", 0),
    0x57: ("SET_NPC_5_DIRECTION_LEFT", 0),
    0x58: ("DEL_NPC_5", 0),
    0x59: ("SET_NPC_5_POSITION", 2),
    0x5A: ("UNK_5A", 0),
    0x5B: ("UNK_5B", 0),
    0x5C: ("NOP", 0),
    0x5D: ("NOP", 0),
    0x5E: ("NOP", 0),
    0x5F: ("NOP", 0),

    0x60: ("NPC_6_STEP_FORWARD", 0),
    0x61: ("NPC_6_STEP_BACKWARDS", 0),
    0x62: ("FULL_HP_DUMMY", 0),
    0x63: ("FULL_HP_DUMMY", 0),
    0x64: ("SET_NPC_6_DIRECTION_UP", 0),
    0x65: ("SET_NPC_6_DIRECTION_DOWN", 0),
    0x66: ("SET_NPC_6_DIRECTION_RIGHT", 0),
    0x67: ("SET_NPC_6_DIRECTION_LEFT", 0),
    0x68: ("DEL_NPC_6", 0),
    0x69: ("SET_NPC_6_POSITION", 2),
    0x6A: ("UNK_6A", 0),
    0x6B: ("UNK_6B", 0),
    0x6C: ("NOP", 0),
    0x6D: ("NOP", 0),
    0x6E: ("NOP", 0),
    0x6F: ("NOP", 0),

    0x70: ("NPC_7_STEP_FORWARD", 0),
    0x71: ("NPC_7_STEP_BACKWARDS", 0),
    0x72: ("FULL_HP_DUMMY", 0),
    0x73: ("FULL_HP_DUMMY", 0),
    0x74: ("SET_NPC_7_DIRECTION_UP", 0),
    0x75: ("SET_NPC_7_DIRECTION_DOWN", 0),
    0x76: ("SET_NPC_7_DIRECTION_RIGHT", 0),
    0x77: ("SET_NPC_7_DIRECTION_LEFT", 0),
    0x78: ("DEL_NPC_7", 0),
    0x79: ("SET_NPC_7_POSITION", 2),
    0x7A: ("UNK_7A", 0),
    0x7B: ("UNK_7B", 0),
    0x7C: ("NOP", 0),
    0x7D: ("NOP", 0),
    0x7E: ("NOP", 0),
    0x7F: ("NOP", 0),

    0x80: ("PLAYER_STEP_FORWARD", 0),
    0x81: ("PLAYER_STEP_BACKWARD", 0),
    0x82: ("FULL_HP_DUMMY", 0),
    0x83: ("FULL_HP_DUMMY", 0),
    0x84: ("SET_PLAYER_DIRECTION_UP", 0),
    0x85: ("SET_PLAYER_DIRECTION_DOWN", 0),
    0x86: ("SET_PLAYER_DIRECTION_RIGHT", 0),
    0x87: ("SET_PLAYER_DIRECTION_LEFT", 0),
    0x88: ("SET_FAST_MOVEMENT", 0),
    0x89: ("CLEAR_FAST_MOVEMENT", 0),
    0x8A: ("SET_PLAYER_POSITION", 2),
    0x8B: ("PLAYER_JUMP", 1),
    0x8C: ("FULL_HP_DUMMY", 0),
    0x8D: ("FULL_HP_DUMMY", 0),
    0x8E: ("FULL_HP_DUMMY", 0),

    0x90: ("UNK_90", 0),
    0x92: ("FULL_HP_DUMMY", 0),
    0x93: ("FULL_HP_DUMMY", 0),
    0x94: ("UNK_94", 0),
    0x95: ("UNK_95", 0),
    0x96: ("UNK_96", 0),
    0x97: ("UNK_97", 0),
    0x98: ("UNK_98", 0),
    0x99: ("UNK_99", 2),
    0x9A: ("UNK_9A", 0),
    0x9B: ("UNK_9B", 0),
    0x9C: ("GIVE_FOLLOWER", 1), # exact workings unknown, needs a proper NPC with it it seems
    0x9E: ("NOP", 0),
    0x9F: ("NOP", 0),

    0xA0: ("UNK_A0", 0),
    0xA2: ("UNK_A2", 0),
    0xA1: ("UNK_A1", 0),
    0xA3: ("UNK_A3", 0),
    0xA4: ("SET_PLAYER_NORMAL_SPRITE", 0),
    0xA5: ("SET_PLAYER_HURT_SPRITE", 0),
    0xA6: ("SET_PLAYER_LAYDOWN_SPRITE", 0),
    0xA7: ("NOP", 0),
    0xA8: ("NOP", 0),
    0xA9: ("UNK_A9", 0),
    0xAB: ("UNK_AB", 0),
    0xAC: ("OPEN_MAP", 0),
    0xAD: ("WAIT_MAP_CLOSE", 0),
    0xAE: ("CLOSE_MAP", 0),
    0xAF: ("UNK_AF", 0),

    0xB0: ("SET_ROOM_TILE", 3), # tile, x, y
    0xB1: ("NOP", 0),
    0xB2: ("NOP", 0),
    0xB3: ("NOP", 0),
    0xB4: ("NOP", 0),
    0xB5: ("NOP", 0),
    0xB6: ("UNK_B6", 0), # messes up a lot of things ingame? credits or title screen related?
    0xBA: ("UNK_BA", 3),
    0xBB: ("NOP", 0),
    0xBC: ("FADE_TO_NORMAL", 0),
    0xBD: ("FADE_TO_BLACK", 0),
    0xBE: ("FADE_TO_WHITE", 0),
    0xBF: ("FLASH_SCREEN", 0),

    0xC0: ("FULL_HP", 0),
    0xC1: ("FULL_MANA", 0),
    0xC2: ("UNK_C2", 1),
    0xC4: ("PLAYER_GIVE_STATUS", 1),
    0xC5: ("UNK_C5", 1),
    0xC6: ("UNK_C6", 0),
    0xC7: ("UNK_C7", 0),
    0xC8: ("RESET_GAME", 0),
    0xC9: ("UNK_C9", 2),
    0xCA: ("UNK_CA", 2),
    0xCC: ("UNK_CC", 0), # hangs when testing?
    0xCD: ("NOP", 0),
    0xCE: ("NOP", 0),
    0xCF: ("NOP", 0),

    0xD1: ("CHECK_MONEY", 2),
    0xD2: ("GIVE_XP", 2), # Add XP points (unused)
    0xD3: ("TAKE_XP", 2), # Remove XP points (unused)
    0xD4: ("UNK_D4", 1),
    0xD5: ("UNK_D5", 1),
    0xD6: ("GIVE_MAGIC", 1),
    0xD7: ("UNK_D7", 1),
    0xD8: ("GIVE_EQUIPMENT", 1),
    0xD9: ("UNK_D9", 1),
    0xDA: ("SET_FLAG", 1),
    0xDB: ("CLEAR_FLAG", 1),
    0xDC: ("UNK_DC", 0),
    0xDD: ("UNK_DD", 0),
    0xDE: ("UNK_DE", 0),
    0xDF: ("NOP", 0),

    0xE0: ("UNK_E0", 0),
    0xE1: ("UNK_E1", 0),
    0xE2: ("UNK_E2", 0),
    0xE3: ("UNK_E3", 0),
    0xE4: ("UNK_E4", 0),
    0xE5: ("UNK_E5", 0),
    0xE6: ("UNK_E6", 0),
    0xE7: ("UNK_E7", 0),
    0xE8: ("SCROLL_ROOM_DOWN", 0),
    0xE9: ("SCROLL_ROOM_UP", 0),
    0xEA: ("SCROLL_ROOM_LEFT", 0),
    0xEB: ("SCROLL_ROOM_RIGHT", 0),
    0xEC: ("RUN_ROOM_SCRIPT", 0),
    0xEE: ("UNK_EE", 0),
    0xEF: ("UNK_EF", 2),

    0xF0: ("DELAY", 1),
    0xF1: ("FULL_HP_DUMMY", 0),
    0xF2: ("FULL_HP_DUMMY", 0),
    0xF3: ("LOAD_ROOM_INSTANT", 4), # MapNr, RoomXY, PlayerX, PlayerY
    0xF4: ("LOAD_ROOM", 4), # MapNr, RoomXY, PlayerX, PlayerY
    0xF5: ("FULL_HP_DUMMY", 0),
    0xF6: ("OPEN_SHOP", 1), # shop item table number
    0xF7: ("FULL_HP_DUMMY", 0),
    0xF8: ("SET_MUSIC", 1),
    0xF9: ("SFX", 1),
    0xFA: ("FULL_HP_DUMMY", 0),
    0xFB: ("SHAKE_SCREEN", 0),
    0xFC: ("SET_NPC_TYPES", 1),
    0xFD: ("SPAWN_NPC", 1),
    0xFE: ("SPAWN_BOSS", 1),
}


def scriptProcessor(dis, addr, *, loop_level=0):
    opcode = dis.rom.data[addr]
    
    def scriptOpcodeFormatter(output, addr):
        if opcode in OPCODES:
            name, size = OPCODES[opcode]
        else:
            name, size = "UNK_%02x??" % (opcode), 1
        dis.formatLine(output, addr, 1, "db  $%02x ;;%s" % (dis.rom.data[addr], name))
        return addr + 1
    def textFormatter(output, addr):
        s = ""
        length = 0
        while dis.rom.data[addr + length] != 0x00:
            s += dis.charmaps["main"][dis.rom.data[addr + length]]
            if dis.rom.data[addr + length] == 0x12:
                dis.formatLine(output, addr, length, "db   \"%s\"" % (s), is_data=True)
                addr += length
                length = 0
                s = ""
            length += 1
        length += 1
        dis.formatLine(output, addr, length, "db   \"%s\", $00" % (s), is_data=True)
        return addr + length

    if addr in dis.formatter:
        return
    dis.formatter[addr] = scriptOpcodeFormatter

    if opcode not in OPCODES:
        print("Unknown script opcode: %02x" % (opcode))
        return
    dis.info.mark(addr, dis.info.MARK_DATA)

    addr += 1
    if opcode == 0x04:
        dis.formatter[addr] = textFormatter
    size = OPCODES[opcode][1]
    if size < 0:
        while dis.rom.data[addr] != 0x00:
            dis.info.mark(addr, dis.info.MARK_DATA)
            addr += 1
        for n in range(-size):
            dis.info.mark(addr + n, dis.info.MARK_DATA)
        addr -= size
    else:
        for n in range(size):
            dis.info.mark(addr + n, dis.info.MARK_DATA)
        addr += size
    if opcode in (0x01, 0x08, 0x0B, 0x0C): # JR
        scriptProcessor(dis, addr + dis.rom.data[addr - 1])
    if opcode in (0x02,): # call
        call_addr = (0x0D << 14) + (dis.rom.data[addr - 2] << 8) + (dis.rom.data[addr - 1])
        scriptProcessor(dis, call_addr)
        dis.info.addAbsoluteRomSymbol(call_addr)
    if opcode in (0x03,): # loop
        loop_level += 1

    if opcode not in (0x00, 0x01): # No continue opcode
        scriptProcessor(dis, addr, loop_level=loop_level)
    elif opcode == 0x00 and loop_level > 0:
        scriptProcessor(dis, addr, loop_level=loop_level-1)


def scriptPointer(dis, addr, params):
    dis.macros["SCRIPT_POINTER"] = "dw ((\\1 - $4000) + ((BANK(\\1) - $0D) * $4000))"

    script_pointer = dis.info.markAsWord(dis.rom, addr)
    script_addr = (0x0D << 14) + script_pointer
    label = "script_%04x" % (0 if script_pointer == 0x000 else params[0])
    dis.info.addAbsoluteRomSymbol(script_addr, name=label)

    def formatScriptPointer(output, addr):
        dis.formatLine(output, addr, 2, "SCRIPT_POINTER %s" % (label))
        return addr + 2

    dis.formatter[addr] = formatScriptPointer
    scriptProcessor(dis, script_addr)

def scriptPointers(dis, addr, params):
    for n in range(int(params[0])):
        scriptPointer(dis, addr, [n])
        addr += 2

def dualCharMap(dis, addr, params):
    charmap = {n: "<%02x>" % (n) for n in range(256)}
    for n in range(10):
        charmap[0xB0 + n] = str(n)
    for n in range(26):
        charmap[0xBA + n] = chr(65 + n)
        charmap[0xD4 + n] = chr(97 + n)
    charmap[0x14] = "<BOY>"
    charmap[0x15] = "<GIRL>"
    charmap[0x1A] = "\\n"
    charmap[0xEE] = "'"
    charmap[0xEF] = ","
    charmap[0xF0] = "."
    charmap[0xF1] = "_"
    charmap[0xF2] = "-"
    charmap[0xF3] = "!"
    charmap[0xF4] = "?"
    charmap[0xF5] = ":"
    charmap[0xF6] = "/"
    charmap[0xFF] = " "
    for n in range(0x70):
        d0 = dis.rom.data[addr + n * 2]
        d1 = dis.rom.data[addr + n * 2 + 1]
        if 0x30 + n >= 0x80:
            charmap[0x30 + n] = charmap[d0] + charmap[d1]
        else:
            charmap[0x20 + n] = charmap[d0] + charmap[d1]
    dis.charmaps["main"] = charmap

annotations.ALL["map_headers"] = mapHeaders
annotations.ALL["script_pointers"] = scriptPointers
annotations.ALL["dual_char_map"] = dualCharMap
