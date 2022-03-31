from annotation.annotation import annotation
from annotation.simple import DataBlock, JumpTable
from block.base import Block
from block.gfx import GfxBlock
from block.code import CodeBlock
from romInfo import RomInfo


@annotation
def boss_data(memory, addr, *, amount):
    for n in range(int(amount)):
        BossDataBlock(memory, addr + n * 24)


class BossDataBlock(Block):
    def __init__(self, memory, addr):
        super().__init__(memory, addr, size=24)
        
        script_index = memory.word(addr + 6)
        gfx_ptr = memory.word(addr + 10)
        tile_indices_ptr = memory.word(addr + 12)
        metatile_ptr = memory.word(addr + 14)
        
        damage_ptr = memory.word(addr + 16)
        attack_pattern_ptr = memory.word(addr + 18)
        initial_pattern_ptr = memory.word(addr + 20)
        death_animation_ptr = memory.word(addr + 22)
        
        memory.addAutoLabel(tile_indices_ptr, None, "data")
        memory.addAutoLabel(metatile_ptr, None, "data")

        memory.addAutoLabel(damage_ptr, None, "data")
        memory.addAutoLabel(attack_pattern_ptr, None, "data")
        memory.addAutoLabel(initial_pattern_ptr, None, "data")
        memory.addAutoLabel(death_animation_ptr, None, "data")
        
        if memory[attack_pattern_ptr] is None:
            BossPatternBlock(memory, attack_pattern_ptr)
        if memory[initial_pattern_ptr] is None:
            BossPatternBlock(memory, initial_pattern_ptr)
        
        RomInfo.macros["BOSS_HEADER"] = r"""
    db \1, \2, \3, \4, \5, \6
    dw \7
"""
        RomInfo.macros["BOSS_HEADER_GFX"] = r"""
    db \1, \2
    dw \3, \4, \5
"""

    def export(self, file):
        death_script_index = self.memory.word(file.addr + 6) # script index
        file.asmLine(8, "BOSS_HEADER",
            "$%02x" % (self.memory.byte(file.addr + 0)),
            "$%02x" % (self.memory.byte(file.addr + 1)),
            "$%02x" % (self.memory.byte(file.addr + 2)),
            "$%02x" % (self.memory.byte(file.addr + 3)),
            "$%02x" % (self.memory.byte(file.addr + 4)),
            "$%02x" % (self.memory.byte(file.addr + 5)),
            "$%04x" % (death_script_index),
            is_data=True
        )
        file.asmLine(8, "  BOSS_HEADER_GFX",
            "$%02x" % (self.memory.byte(file.addr + 0)),
            "$%02x" % (self.memory.byte(file.addr + 1)),
            "$%04x" % (self.memory.word(file.addr + 2)),
            str(self.memory.getLabel(self.memory.word(file.addr + 4))),
            str(self.memory.getLabel(self.memory.word(file.addr + 6))),
            is_data=True
        )
        file.asmLine(8, "  dw",
            str(self.memory.getLabel(self.memory.word(file.addr + 0))),
            str(self.memory.getLabel(self.memory.word(file.addr + 2))),
            str(self.memory.getLabel(self.memory.word(file.addr + 4))),
            str(self.memory.getLabel(self.memory.word(file.addr + 6))),
            is_data=True
        )


class BossPatternBlock(Block):
    def __init__(self, memory, addr):
        super().__init__(memory, addr, size=10)
        
        for n in range(4):
            a = memory.word(addr + n * 2)
            memory.addAutoLabel(a, None, "data")
            if memory[a] is None:
                BossPatternBlock2(memory, a)

        if memory.word(addr + 10) != 0xFFFF:
            BossPatternBlock(memory, addr + 10)

    def export(self, file):
        file.asmLine(8, "dw",
            str(self.memory.getLabel(self.memory.word(file.addr + 0))),
            str(self.memory.getLabel(self.memory.word(file.addr + 2))),
            str(self.memory.getLabel(self.memory.word(file.addr + 4))),
            str(self.memory.getLabel(self.memory.word(file.addr + 6))),
            is_data=True
        )
        file.asmLine(2, "db",
            "$%02x" % (self.memory.byte(file.addr + 0)),
            "$%02x" % (self.memory.byte(file.addr + 1)),
            is_data=True
        )

class BossPatternBlock2(Block):
    def __init__(self, memory, addr):
        super().__init__(memory, addr, size=5)
        
        for n in range(2):
            memory.addAutoLabel(memory.word(addr + 1 + n * 2), None, "data")

        if memory.byte(addr + 5) != 0xFF:
            BossPatternBlock2(memory, addr + 5)

    def export(self, file):
        file.asmLine(1, "db",
            "$%02x" % (self.memory.byte(file.addr + 0)),
            is_data=True
        )
        file.asmLine(4, "dw",
            str(self.memory.getLabel(self.memory.word(file.addr + 0))),
            str(self.memory.getLabel(self.memory.word(file.addr + 2))),
            is_data=True
        )
