from annotation.annotation import annotation
from annotation.simple import DataBlock, JumpTable
from block.base import Block
from block.gfx import GfxBlock
from block.code import CodeBlock
from romInfo import RomInfo


@annotation
def attack_info(memory, addr, *, amount):
    DataBlock(memory, addr, format="p", amount=int(amount))
    for n in range(int(amount)):
        ptr = memory.word(addr + n * 2)
        if ptr != 0 and not memory[ptr]:
            AttackInfo(memory, ptr)


class AttackInfo(Block):
    def __init__(self, memory, addr):
        super().__init__(memory, addr, size=42)
        
        gfx_ptr = memory.word(addr + 6)
        RomInfo.romBank(0x08).addAutoLabel(gfx_ptr, None, "data")

        for n in range(17):
            memory.addAutoLabel(memory.word(addr + 8 + n * 2), None, "data")

    def export(self, file):
        # 0) animation delay
        # 6) pointer to graphics
        file.asmLine(6, "db",
            "$%02x" % self.memory.byte(file.addr+0), "$%02x" % self.memory.byte(file.addr+1),
            "$%02x" % self.memory.byte(file.addr+2), "$%02x" % self.memory.byte(file.addr+3),
            "$%02x" % self.memory.byte(file.addr+4), "$%02x" % self.memory.byte(file.addr+5), is_data=True)
        file.asmLine(4, "dw", str(RomInfo.romBank(0x08).getLabel(self.memory.word(file.addr))), str(self.memory.getLabel(self.memory.word(file.addr+2))), is_data=True)
        for n in range(4):
            file.asmLine(8, "dw",
                str(self.memory.getLabel(self.memory.word(file.addr+0))), str(self.memory.getLabel(self.memory.word(file.addr+2))),
                str(self.memory.getLabel(self.memory.word(file.addr+4))), str(self.memory.getLabel(self.memory.word(file.addr+6))), is_data=True)
