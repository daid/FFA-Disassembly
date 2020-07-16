import annotations
import struct

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

        dis.info.addAbsoluteRomSymbol(addr)
        dis.info.addRelativeSymbol(tile_set_B, addr)

        dis.info.setActiveBank(addr + 7, bank)
        dis.info.addAbsoluteRomSymbol(bank << 14 | (room_data_ptr & 0x3FFF))

        dis.formatter[addr] = mapHeaderFormatter
        addr += 11

annotations.ALL["map_headers"] = mapHeaders
