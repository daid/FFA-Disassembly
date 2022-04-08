from annotation.annotation import annotation
from annotation.simple import DataBlock, JumpTable
from block.base import Block
from block.gfx import GfxBlock
from block.code import CodeBlock
from romInfo import RomInfo


class CallToBankCodeBlock(CodeBlock):
    def __init__(self, memory, addr, *, bank):
        super().__init__(memory, addr)
        self.target_bank = bank

    def onCall(self, from_memory, from_address, next_addr):
        print("call", from_memory, from_address, next_addr, self.target_bank)

    def onJump(self, from_memory, from_address, next_addr):
        assert from_memory.byte(from_address-3) == 0xf5 # PUSH AF
        assert from_memory.byte(from_address-2) == 0x3e # LD A, $xx
        index = from_memory.byte(from_address-1)
        block = from_memory[from_address]
        block.resize(len(block) - (next_addr - from_address) - 3, allow_shrink=True)
        JumpToBankBlock(from_memory, from_address - 3, target_bank=self.target_bank, function_index=index)

class JumpToBankBlock(Block):
    def __init__(self, memory, addr, *, target_bank, function_index):
        super().__init__(memory, addr, size=6)
        self.target_bank = target_bank
        self.function_index = function_index

    def export(self, file):
        mem = RomInfo.romBank(self.target_bank)
        addr = mem.word(0x4000 + self.function_index * 2)
        label = mem.getLabel(addr)
        file.asmLine(6, "jp_to_bank %02x, %s" % (self.target_bank, label));

@annotation(priority=0)
def call_to_bank(memory, addr, *, bank):
    CallToBankCodeBlock(memory, addr, bank=int(bank, 16))
    if "jp_to_bank" not in RomInfo.macros:
        RomInfo.macros["jp_to_bank"] = """
            push af
            ld   a, (_call_to_bank_target_\\2 - $4000) / 2
            jp callFunctionInBank\\1
        """

class CallToBankJumpTable(JumpTable):
    def export(self, file):
        for n in range(len(self) // 2):
            label = self.memory.getLabel(self.memory.word(file.addr))
            if label:
                label = str(label)
            else:
                label = "$%04x" % self.memory.word(file.addr)
            file.asmLine(2, "call_to_bank_target", label, is_data=True)

@annotation
def call_to_bank_jumptable(memory, addr, *, amount=None, label=None):
    CallToBankJumpTable(memory, addr, amount=int(amount) if amount is not None else None)
    if "call_to_bank_target" not in RomInfo.macros:
        RomInfo.macros["call_to_bank_target"] = "_call_to_bank_target_\\1::\ndw \\1"
