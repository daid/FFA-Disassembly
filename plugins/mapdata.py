from annotation.annotation import annotation
from annotation.simple import DataBlock, JumpTable
from block.base import Block
from block.gfx import GfxBlock
from block.code import CodeBlock
from romInfo import RomInfo


@annotation
def map_headers(memory, addr, *, amount):
    for n in range(int(amount)):
        MapHeaderBlock(memory, addr + n * 11)


class MapHeaderBlock(Block):
    def __init__(self, memory, addr):
        super().__init__(memory, addr, size=11)
        
        self.graphics_addr = memory.word(addr)
        self.graphics_bank = 0x0C
        if self.graphics_addr >= 0x4000:
            self.graphics_bank -= 1
        else:
            self.graphics_addr += 0x4000
        self.unused0 = memory.byte(addr + 2)
        self.metatiles_addr = memory.word(addr + 3)
        self.unused1 = memory.byte(addr + 5)
        self.room_data_bank = memory.byte(addr + 6)
        self.room_data_addr = memory.word(addr + 7)
        self.unused2 = memory.byte(addr + 9)
        self.unused3 = memory.byte(addr + 10)

        RomInfo.macros["MAP_HEADER"] = r"""
assert BANK(\1) == $0B || BANK(\1) == $0C
dw (\1) - ($4000 * (BANK(\1) - $0B))
db \2
assert BANK(\3) == BANK(@)
dw \3
db \4
db BANK(\5)
dw \5
db \6
db \7
"""
        
        RomInfo.romBank(self.graphics_bank).addAutoLabel(self.graphics_addr, None, "data")
        memory.addAutoLabel(self.metatiles_addr, None, "data")
        MapRoomPrefixBlock(RomInfo.romBank(self.room_data_bank), self.room_data_addr).addAutoLabel(self.room_data_addr, None, "data")
        
        # GfxBlock(RomInfo.romBank(self.graphics_bank), self.graphics_addr, bpp=2, size=0x0800)

    def export(self, file):
        file.asmLine(11, "MAP_HEADER",
            str(RomInfo.romBank(self.graphics_bank).getLabel(self.graphics_addr)),
            "$%02x" % (self.unused0),
            str(self.memory.getLabel(self.metatiles_addr)),
            "$%02x" % (self.unused1),
            str(RomInfo.romBank(self.room_data_bank).getLabel(self.room_data_addr)),
            "$%02x" % (self.unused2),
            "$%02x" % (self.unused3),
            is_data=True
        )


class MapRoomPrefixBlock(Block):
    def __init__(self, memory, addr):
        super().__init__(memory, addr, size=4)
        self.indoor_flag = memory.byte(addr)
        self.rle = memory.byte(addr + 1)
        self.h = memory.byte(addr + 2)
        self.w = memory.byte(addr + 3)

        if self.indoor_flag:
            self.room_template_addr = memory.word(addr + 4)
            memory.addAutoLabel(self.room_template_addr, None, "data")
            RLERoomDataBlock(memory, self.room_template_addr, self.rle)
            self.resize(30)
        
        for y in range(self.h):
            for x in range(self.w):
                room_script_info_addr = memory.word(addr + len(self))
                room_tiles_addr = memory.word(addr + len(self) + 2)
            
                memory.addAutoLabel(room_script_info_addr, None, "data")
                memory.addAutoLabel(room_tiles_addr, None, "data")
                self.resize(len(self) + 4)
                
                ScriptInfoBlock(memory, room_script_info_addr)
                if self.indoor_flag:
                    IndoorTileRoomDataBlock(memory, room_tiles_addr)
                else:
                    RLERoomDataBlock(memory, room_tiles_addr, self.rle)

    def export(self, file):
        file.dataLine(4)
        if self.indoor_flag:
            file.asmLine(2, "dw", self.memory.getLabel(self.room_template_addr))
            file.comment("Door tile info")
            for n in range(3):
                file.dataLine(8)
        file.comment("Room data pointers")
        for y in range(self.h):
            for x in range(self.w):
                file.asmLine(4, "dw", self.memory.getLabel(self.memory.word(file.addr)), self.memory.getLabel(self.memory.word(file.addr + 2)))

class ScriptInfoBlock(Block):
    def __init__(self, memory, addr):
        super().__init__(memory, addr, size=2)
        while memory.byte(addr + len(self)) != 0xFF:
            self.resize(len(self) + 3)
        self.resize(len(self) + 1)
        
        RomInfo.macros["SCRIPT_IDX"] = r"dw (__script_pointer_\1 - scriptPointersTable) / 2"
        RomInfo.macros["SCRIPT_AT_POS"] = r"""
            db ((\1) << 4) | (\2)
            SCRIPT_IDX \3
            """

    def getScriptLabel(self, index):
        pointer = RomInfo.romBank(0x08).word(0x4f05 + index * 2)
        bank = RomInfo.romBank(0x0D + (pointer >> 14))
        label = bank.getLabel((pointer & 0x3FFF) | 0x4000)
        return "%s" % (label)

    def export(self, file):
        index = self.memory.word(file.addr)
        if index == 0xFFFF:
            file.asmLine(2, "dw", "$%04x" % (index))
        else:
            # TODO: This is actually used for more then 1 thing.
            #   The direct index is on entering the room
            #   index + 1 is used when leaving the room (not when warping)
            #   index + 2 is used when all monsters are defeated (only if there where monsters)
            file.asmLine(2, "SCRIPT_IDX", self.getScriptLabel(index))
        while self.memory.byte(file.addr) != 0xFF:
            xy = self.memory.byte(file.addr)
            index = self.memory.word(file.addr + 1)
            if index == 0xFFFF: # Todo, figure out what $FFFF means...
                file.dataLine(3)
            else:
                file.asmLine(3, "SCRIPT_AT_POS", str(xy >> 4), str(xy & 0x0F), self.getScriptLabel(index))
        file.asmLine(1, "db", "$ff")

class RLERoomDataBlock(Block):
    def __init__(self, memory, addr, rle):
        super().__init__(memory, addr)
        self.rle = rle
        
        if memory.byte(addr) == 0xFF:
            return
        
        count = 0
        while count < 10 * 8:
            if memory.byte(addr + len(self)) & 0x80:
                count += rle
            else:
                count += 1
            self.resize(len(self) + 1)

    def export(self, file):
        for y in range(8):
            x = 0
            args = []
            while x < 10:
                data = self.memory.byte(file.addr + len(args))
                args.append("$%02x" % (data))
                if data & 0x80:
                    x += self.rle
                    args[-1] = ("     " * (self.rle - 1)) + args[-1]
                else:
                    x += 1
            file.asmLine(len(args), "db", *args, is_data=True)

class IndoorTileRoomDataBlock(Block):
    def __init__(self, memory, addr, size=4):
        super().__init__(memory, addr)
        while memory.byte(addr + len(self)) != 0xff:
            self.resize(len(self) + 2)
        self.resize(len(self) + 2)

    def export(self, file):
        file.dataLine(4)
        while self.memory.byte(file.addr) != 0xff:
            file.dataLine(2)
        file.dataLine(2)
