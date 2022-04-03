from annotation.annotation import annotation
from annotation.simple import DataBlock, JumpTable
from block.base import Block
from block.gfx import GfxBlock
from block.code import CodeBlock
from autoLabel import RelativeLabel
from romInfo import RomInfo


@annotation
def item_data(memory, addr, *, amount):
    RomInfo.macros["ITEM_DATA"] = r"""
        db \1
        TXT \2
        db \3, \4, \5, \6, \7, \8, \9
"""
    for n in range(1, 16):
        RelativeLabel(memory, addr + n, addr)
    for n in range(int(amount)):
        ItemDataBlock(memory, addr + n * 16)


class ItemDataBlock(Block):
    def __init__(self, memory, addr):
        super().__init__(memory, addr, size=16)

    def export(self, file):
        charmap = RomInfo.charmap["BASIC"]
        name = ""
        for n in range(8):
            name += charmap[self.memory.byte(file.addr + 1 + n)]
        name = "\"%s\"" % (name)
        name = "%-40s" % (name)
        file.asmLine(16, "ITEM_DATA",
            "$%02x" % (self.memory.byte(file.addr + 0)),
            name,
            "$%02x" % (self.memory.byte(file.addr + 9)),
            "$%02x" % (self.memory.byte(file.addr + 10)),
            "$%02x" % (self.memory.byte(file.addr + 11)),
            "$%02x" % (self.memory.byte(file.addr + 12)),
            "$%02x" % (self.memory.byte(file.addr + 13)),
            "$%02x" % (self.memory.byte(file.addr + 14)),
            "$%02x" % (self.memory.byte(file.addr + 15)),
            is_data=True
        )
