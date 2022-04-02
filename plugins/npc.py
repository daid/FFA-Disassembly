from annotation.annotation import annotation
from annotation.simple import DataBlock, JumpTable
from block.base import Block
from block.gfx import GfxBlock
from block.code import CodeBlock
from romInfo import RomInfo


@annotation
def npc_data(memory, addr, *, amount):
    for n in range(int(amount)):
        NpcDataBlock(memory, addr + n * 24)


class NpcDataBlock(Block):
    def __init__(self, memory, addr):
        super().__init__(memory, addr, size=24)
        
        script_index = memory.word(addr + 20)
        gfx_ptr = memory.word(addr + 4)
        
        self.gfx_bank = (gfx_ptr >> 14) + 0x08
        self.gfx_ptr = (gfx_ptr & 0x3FFF) | 0x4000
        RomInfo.romBank(self.gfx_bank).addAutoLabel(self.gfx_ptr, None, "data")

        memory.addAutoLabel(memory.word(addr + 6), None, "data")
        a = memory.word(addr + 8)
        if a >= 0x4000:
            memory.addAutoLabel(memory.word(addr + 8), None, "data")
        
        RomInfo.macros["NPC_DATA"] = r"""
    db \1, \2, \3, \4
    dw (\5 & $3FFF) | ((BANK(\5) - $08) << 14), \6, \7
    db \8, \9
    SHIFT 9
    db \1, \2, \3, \4, \5, \6, \7, \8
    SCRIPT_IDX \9
    SHIFT 9
    db \1, \2
"""

    def export(self, file):
        some_ptr = self.memory.word(file.addr + 8)
        some_label = str(self.memory.getLabel(some_ptr) if some_ptr >= 0x4000 else RomInfo.romBank(0).getLabel(some_ptr))

        script_index = self.memory.word(file.addr + 20) # script index
        script_pointer = RomInfo.romBank(0x08).word(0x4f05 + script_index * 2)
        script_bank = RomInfo.romBank(0x0D + (script_pointer >> 14))
        script_label = script_bank.getLabel((script_pointer & 0x3FFF) | 0x4000)
        
        # bbbbw p p bbbbbbbbbbwbb
        file.asmLine(24, "NPC_DATA",
            "$%02x" % (self.memory.byte(file.addr + 0)),
            "$%02x" % (self.memory.byte(file.addr + 1)),
            "$%02x" % (self.memory.byte(file.addr + 2)),
            "$%02x" % (self.memory.byte(file.addr + 3)),
            str(RomInfo.romBank(self.gfx_bank).getLabel(self.gfx_ptr)),
            str(self.memory.getLabel(self.memory.word(file.addr + 6))),
            some_label,
            "$%02x" % (self.memory.byte(file.addr + 10)),
            "$%02x" % (self.memory.byte(file.addr + 11)),
            "$%02x" % (self.memory.byte(file.addr + 12)),
            "$%02x" % (self.memory.byte(file.addr + 13)),
            "$%02x" % (self.memory.byte(file.addr + 14)),
            "$%02x" % (self.memory.byte(file.addr + 15)),
            "$%02x" % (self.memory.byte(file.addr + 16)),
            "$%02x" % (self.memory.byte(file.addr + 17)),
            "$%02x" % (self.memory.byte(file.addr + 18)),
            "$%02x" % (self.memory.byte(file.addr + 19)),
            script_label,
            "$%02x" % (self.memory.byte(file.addr + 22)),
            "$%02x" % (self.memory.byte(file.addr + 23)),
            is_data=True
        )
