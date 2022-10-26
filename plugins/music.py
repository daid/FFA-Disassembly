from annotation.annotation import annotation
from annotation.simple import DataBlock, JumpTable
from block.base import Block
from block.gfx import GfxBlock
from block.code import CodeBlock
from romInfo import RomInfo


@annotation
def music_pointers(memory, addr, *, amount):
    MusicPointerBlock(memory, addr, amount=int(amount))
    for k, v in OPCODES.items():
        params = ""
        for idx, param in enumerate(v[1:]):
            if PARAM_SIZE[param] == 1:
                params += f"\ndb \{idx+1}"
            elif PARAM_SIZE[param] == 2:
                params += f"\ndw \{idx+1}"
        RomInfo.macros[v[0]] = f"db ${k:02x}" + params


class MusicPointerBlock(Block):
    def __init__(self, memory, addr, *, amount):
        super().__init__(memory, addr, size=amount*6)

        for song_nr in range(amount):
            for channel_nr in range(3):
                pointer = memory.word(addr + song_nr * 6 + channel_nr * 2)
                if memory.getLabel(pointer) is None:
                    memory.addLabel(pointer, f"song{song_nr:02x}_channel{[2,1,3][channel_nr]}")
                MusicBlock(memory, pointer)

    def export(self, file):
        for n in range(len(self) // 6):
            pointer2 = self.memory.word(file.addr)
            pointer1 = self.memory.word(file.addr + 2)
            pointer3 = self.memory.word(file.addr + 4)
            
            label2 = self.memory.getLabel(pointer2)
            label1 = self.memory.getLabel(pointer1)
            label3 = self.memory.getLabel(pointer3)
            file.asmLine(6, "dw", str(label2), str(label1), str(label3))

OPCODES = {
    0xE0: ("mUNK_E0", "byte"),
    0xE1: ("mUNK_E1", "mptr"),
    0xE2: ("mUNK_E2", "mptr"),
    0xE3: ("mUNK_E3", "byte"),
    0xE4: ("mUNK_E4", "ptr"),
    0xE5: ("mUNK_E5", "byte"),
    0xE6: ("mUNK_E6", "byte"),
    0xE7: ("mUNK_E7", "byte"),
    0xE8: ("mUNK_E8", "ptr"),
    0xEB: ("mUNK_EB", "byte", "mptr"),
    0xED: ("mUNK_ED", "byte"),
}
PARAM_SIZE = {"byte": 1, "ptr": 2, "mptr": 2}

class MusicBlock(Block):
    def __init__(self, memory, addr):
        super().__init__(memory, addr)

        while True:
            if memory[addr + len(self)] is not None:
                break
            size = 1
            opcode = memory.byte(addr + len(self))
            opcode_data = OPCODES.get(opcode)
            if opcode_data:
                for param in opcode_data[1:]:
                    if param == "mptr":
                        target = memory.word(addr + len(self) + size)
                        memory.addAutoLabel(target, addr + len(self), "data")
                        MusicBlock(memory, target)
                    if param == "ptr":
                        target = memory.word(addr + len(self) + size)
                        if 0x4000 <= target < 0x8000:
                            memory.addAutoLabel(target, addr + len(self), "data")
                    size += PARAM_SIZE[param]
            self.resize(len(self) + size)

            if opcode == 0xE1: # channels seem to loop on this jump.
                break

    def export(self, file):
        while file.addr < self.base_address + len(self):
            self.outputOpcode(file)

    def outputOpcode(self, file):
        opcode = OPCODES.get(self.memory.byte(file.addr))
        if opcode is None:
            file.asmLine(1, "db", f"${self.memory.byte(file.addr):02X} ; unknown music opcode")
            return
        size = 1
        params = []
        for param in opcode[1:]:
            if param == "byte":
                params.append(f"${self.memory.byte(file.addr+size):02x}")
            elif param in {"ptr", "mptr"}:
                label = self.memory.getLabel(self.memory.word(file.addr+size))
                if label:
                    params.append(str(label))
                else:
                    params.append(f"${self.memory.word(file.addr+size):04x}")
            else:
                params.append("??")
            size += PARAM_SIZE[param]
        file.asmLine(size, opcode[0], *params)
