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

        if dis.rom.data[tile_addr] != 0xff and unknown == 0:
            dis.formatter[tile_addr] = roomTileFormatter

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

OPCODES = {
    0x00: ("END", 0),
    0x01: ("JR", 1),
    0x02: ("CALL", 2),
    0x03: ("LOOP", 2), # loop count, [ignored]
    0x04: ("MSG", -1),

    0x05: ("NOP", 0),
    0x06: ("NOP", 0),
    0x07: ("NOP", 0),

    0x08: ("IF ? JR", -2),
    0x09: ("IF ? JR", -2),
    0x0B: ("IF JR", -2),
    0x0C: ("IF ! JR", -2),

    0x0D: ("NOP", 0),
    0x0E: ("NOP", 0),
    0x0F: ("NOP", 0),

    0x1C: ("NOP", 0),
    0x1D: ("NOP", 0),
    0x1E: ("NOP", 0),
    0x1F: ("NOP", 0),

    0x2C: ("NOP", 0),
    0x2D: ("NOP", 0),
    0x2E: ("NOP", 0),
    0x2F: ("NOP", 0),

    0x3C: ("NOP", 0),
    0x3D: ("NOP", 0),
    0x3E: ("NOP", 0),
    0x3F: ("NOP", 0),

    0x4C: ("NOP", 0),
    0x4D: ("NOP", 0),
    0x4E: ("NOP", 0),
    0x4F: ("NOP", 0),

    0x5C: ("NOP", 0),
    0x5D: ("NOP", 0),
    0x5E: ("NOP", 0),
    0x5F: ("NOP", 0),

    0x6C: ("NOP", 0),
    0x6D: ("NOP", 0),
    0x6E: ("NOP", 0),
    0x6F: ("NOP", 0),

    0x7C: ("NOP", 0),
    0x7D: ("NOP", 0),
    0x7E: ("NOP", 0),
    0x7F: ("NOP", 0),

    0x80: ("WAIT_PLAYER_WALK_DONE", 0),
    0x84: ("SET_PLAYER_DIRECTION_UP", 0),
    0x85: ("SET_PLAYER_DIRECTION_DOWN", 0),
    0x86: ("SET_PLAYER_DIRECTION_RIGHT", 0),
    0x87: ("SET_PLAYER_DIRECTION_LEFT", 0),
    0x8A: ("SET_PLAYER_POSITION", 2),

    0x9E: ("NOP", 0),
    0x9F: ("NOP", 0),

    0xA7: ("NOP", 0),
    0xA8: ("NOP", 0),

    0xB0: ("SET_ROOM_TILE", 3), # tile, x, y
    0xB1: ("NOP", 0),
    0xB2: ("NOP", 0),
    0xB3: ("NOP", 0),
    0xB4: ("NOP", 0),
    0xB5: ("NOP", 0),
    0xBB: ("NOP", 0),
    0xC2: ("UNK_C2", 1),
    0xC6: ("UNK_C6", 0),
    0xCD: ("NOP", 0),
    0xCE: ("NOP", 0),
    0xCF: ("NOP", 0),
    0xD1: ("CHECK_MONEY", 2),
    0xDA: ("UNK_DA", 1),
    0xDB: ("UNK_DB", 1),
    0xDF: ("NOP", 0),

    0xF0: ("UNK_F0_DELAY?", 1),
    0xF4: ("LOAD_MAP", 4), # MapNr, RoomXY, PlayerX, PlayerY
    0xF8: ("SET_MUSIC", 1),
    0xF9: ("SFX", 1),
    0xFC: ("SET_ENEMY_TYPES", 1),
    0xFD: ("SPAWN_ENEMY", 1),
    0xFE: ("SPAWN_BOSS", 1),
}

def scriptProcessor(dis, addr, *, allow_continue=False):
    opcode = dis.rom.data[addr]
    
    def scriptOpcodeFormatter(output, addr):
        if opcode in OPCODES:
            name, size = OPCODES[opcode]
        else:
            name, size = "UNK_%02x??" % (opcode), 1
        dis.formatLine(output, addr, 1, "db  $%02x ;;%s" % (dis.rom.data[addr], name))
        return addr + 1
    if addr in dis.formatter:
        return
    dis.formatter[addr] = scriptOpcodeFormatter

    if opcode not in OPCODES:
        return

    addr += 1
    size = OPCODES[opcode][1]
    if size < 0:
        while dis.rom.data[addr] != 0x00:
            addr += 1
        addr -= size
    else:
        addr += size
    if opcode in (0x01, 0x08, 0x0B, 0x0C): # JR
        scriptProcessor(dis, addr + dis.rom.data[addr - 1])
    if opcode in (0x03,):
        allow_continue = True
    
    if opcode not in (0x00, 0x01): # No continue opcode
        scriptProcessor(dis, addr, allow_continue=allow_continue)
    elif opcode == 0x00 and allow_continue:
        scriptProcessor(dis, addr)
    

def scriptPointer(dis, addr, params):
    script_pointer = dis.info.markAsWord(dis.rom, addr)
    script_addr = (0x0D << 14) + script_pointer
    label = "script_%04x" % (0 if script_pointer == 0x000 else params[0])
    dis.info.addAbsoluteRomSymbol(script_addr, name=label)

    def formatScriptPointer(output, addr):
        dis.formatLine(output, addr, 2, "dw   ((%s - $4000) + ((BANK(%s) - $0D) * $4000))" % (label, label))
        return addr + 2

    dis.formatter[addr] = formatScriptPointer
    scriptProcessor(dis, script_addr)

def scriptPointers(dis, addr, params):
    for n in range(int(params[0])):
        scriptPointer(dis, addr, [n])
        addr += 2


annotations.ALL["map_headers"] = mapHeaders
annotations.ALL["script_pointers"] = scriptPointers
