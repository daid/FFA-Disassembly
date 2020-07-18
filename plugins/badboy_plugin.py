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
        obj_addr = dis.info.markAsPointer(dis.rom, addr + 0, name="map%02x_room%02x_%02x_objects" % (index, n % w, n // w))
        tile_addr = dis.info.markAsPointer(dis.rom, addr + 2, name="map%02x_room%02x_%02x_tiles" % (index, n % w, n // w))
        assert obj_addr >= 0x4000, hex(addr)
        assert tile_addr >= 0x4000, hex(addr)
        addr += 4

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

annotations.ALL["map_headers"] = mapHeaders
