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
        RomInfo.macros[v[0]] = f"db ${(k&0xFF):02x}" + params


class MusicPointerBlock(Block):
    def __init__(self, memory, addr, *, amount):
        super().__init__(memory, addr, size=amount*6)

        for song_nr in range(amount):
            for channel_nr in range(3):
                pointer = memory.word(addr + song_nr * 6 + channel_nr * 2)
                if memory.getLabel(pointer) is None:
                    memory.addLabel(pointer, f"song{song_nr:02x}_channel{[2,1,3][channel_nr]}")
                MusicBlock(memory, pointer, channel_nr=channel_nr)

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
    0xD0: ("mOCTAVE_0", "none"),
    0xD1: ("mOCTAVE_1", "none"),
    0xD2: ("mOCTAVE_2", "none"),
    0xD3: ("mOCTAVE_3", "none"),
    0xD4: ("mOCTAVE_4", "none"),
    0xD5: ("mOCTAVE_5", "none"),
    0xD6: ("mOCTAVE_6", "none"),
    0xD7: ("mOCTAVE_7", "none"),
    0xD8: ("mOCTAVE_PLUS_1", "none"),
    0xD9: ("mOCTAVE_PLUS_2", "none"),
    0xDA: ("mOCTAVE_PLUS_3", "none"),
    0xDB: ("mOCTAVE_PLUS_4", "none"),
    0xDC: ("mOCTAVE_MINUS_1", "none"),
    0xDD: ("mOCTAVE_MINUS_2", "none"),
    0xDE: ("mOCTAVE_MINUS_3", "none"),
    0xDF: ("mOCTAVE_MINUS_4", "none"),
    0xE0: ("mVOLUME_ENVELOPE", "ptr"),
    0x3E0: ("mVOLUME", "byte"), # Special exception for channel 3 E0
    0xE1: ("mJUMP", "mptr"),
    0xE2: ("mREPEAT", "mptr"),
    0xE3: ("mCOUNTER", "byte"),
    0xE4: ("mVIBRATO", "ptr"),
    0xE5: ("mDUTYCYCLE", "byte"),
    0xE6: ("mSTEREOPAN", "byte"),
    0xE7: ("mTEMPO", "byte"),
    0xE8: ("mWAVETABLE", "ptr"),
    0xE9: ("mREPEAT_2", "mptr"),
    0xEA: ("mCOUNTER_2", "byte"),
    0xEB: ("mJUMPIF", "byte", "mptr"),
    0xED: ("mUNK_ED", "byte"),
    0xFF: ("mEND", "none")
}
PARAM_SIZE = {"none": 0, "byte": 1, "ptr": 2, "mptr": 2}

NOTES = {
    0x00: ("mC"),
    0x01: ("mCis"),
    0x02: ("mD"),
    0x03: ("mDis"),
    0x04: ("mE"),
    0x05: ("mF"),
    0x06: ("mFis"),
    0x07: ("mG"),
    0x08: ("mGis"),
    0x09: ("mA"),
    0x0A: ("mAis"),
    0x0B: ("mB"),
    0x0C: ("mCPlus"),
    0x0D: ("mCisPlus"),
    0x0E: ("mWait"),
    0x0F: ("mRest"),
}

class MusicBlock(Block):
    def __init__(self, memory, addr, *, channel_nr):
        super().__init__(memory, addr)
        self.channel_nr = channel_nr

        while True:
            if memory[addr + len(self)] is not None:
                break
            size = 1
            instruction = memory.byte(addr + len(self))

            if instruction == 0xE0 and channel_nr == 2:
                instruction = 0x3E0

            if instruction >= 0xD0:
                opcode_data = OPCODES.get(instruction)
            else:
                opcode_data = ("none", "none")
            for param in opcode_data[1:]:
                if param == "mptr":
                    target = memory.word(addr + len(self) + size)
                    memory.addAutoLabel(target, addr + len(self), "data")
                    MusicBlock(memory, target, channel_nr=channel_nr)
                if param == "ptr":
                    target = memory.word(addr + len(self) + size)
                    if 0x4000 <= target < 0x8000:
                        memory.addAutoLabel(target, addr + len(self), "data")
                size += PARAM_SIZE[param]
            self.resize(len(self) + size)

            if instruction == 0xFF or instruction == 0xE1: # channels seem to loop on this jump.
                break

    def export(self, file):
        while file.addr < self.base_address + len(self):
            self.outputInstruction(file)

    def outputInstruction(self, file):
        instruction = self.memory.byte(file.addr)

        if instruction < 0xD0:
            note = self.memory.byte(file.addr)
            name = NOTES.get(note & 0x0f)
            file.asmLine(1, name + '_' + str((note & 0xf0) // 16))
            return

        if instruction == 0xE0 and self.channel_nr == 2:
            instruction = 0x3E0
        opcode = OPCODES.get(instruction)
        if opcode is None:
            file.asmLine(1, "db", f"${self.memory.byte(file.addr):02X}", comment="unknown music opcode")
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
            elif param != "none":
                params.append("??")
            size += PARAM_SIZE[param]
        file.asmLine(size, opcode[0], *params)
