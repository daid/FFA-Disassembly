from annotation.annotation import annotation
from annotation.simple import DataBlock, JumpTable
from block.base import Block
from block.gfx import GfxBlock
from block.code import CodeBlock
from romInfo import RomInfo


NPC_NAMES = {
    0x00: "NPC_SNOWMAN_STILL",
    0x01: "NPC_FUJI_FOLLOWING",
    0x02: "NPC_MYSTERYMAN_FOLLOWING",
    0x03: "NPC_WATTS_FOLLOWING",
    0x04: "NPC_BOGARD_FOLLOWING",
    0x05: "NPC_AMANDA_FOLLOWING",
    0x06: "NPC_LESTER_FOLLOWING",
    0x07: "NPC_MARCIE_FOLLOWING",
    0x08: "NPC_CHOCOBOT_FOLLOWING",
    0x09: "NPC_CHOCOBO_FOLLOWING",
    0x0a: "NPC_WEREWOLF_1",
    0x0b: "NPC_INV_CURE",
    0x0c: "NPC_CHEST_1",
    0x0d: "NPC_CHEST_2",
    0x0e: "NPC_CHEST_3",
    0x0f: "NPC_CHEST_4",
    0x10: "NPC_CHIBIDEVIL",
    0x11: "NPC_RABBITE",
    0x12: "NPC_GOBLIN",
    0x13: "NPC_MUSHROOM",
    0x14: "NPC_JELLYFISH",
    0x15: "NPC_SWAMPMAN",
    0x16: "NPC_LIZARDMAN",
    0x17: "NPC_FLOWER",
    0x18: "NPC_FACEORB",
    0x19: "NPC_SKELETON",
    0x1a: "NPC_EVIL_PLANT",
    0x1b: "NPC_FLYING_FISH",
    0x1c: "NPC_ZOMBIE",
    0x1d: "NPC_MOUSE",
    0x1e: "NPC_PUMPKIN",
    0x1f: "NPC_OWL",
    0x20: "NPC_BEE",
    0x21: "NPC_CLOUD",
    0x22: "NPC_PIG",
    0x23: "NPC_CRAB",
    0x24: "NPC_SPIDER",
    0x25: "NPC_INV_OPEN_NORTH",
    0x26: "NPC_INV_OPEN_SOUTH",
    0x27: "NPC_INV_OPEN_EAST",
    0x28: "NPC_INV_OPEN_WEST",
    0x29: "NPC_MIMIC_CHEST",
    0x2a: "NPC_HOPPING_BUG",
    0x2b: "NPC_PORCUPINE",
    0x2c: "NPC_CARROT",
    0x2d: "NPC_EYE_SPY",
    0x2e: "NPC_WEREWOLF_2",
    0x2f: "NPC_GHOST",
    0x30: "NPC_BASILISK",
    0x31: "NPC_SCORPION",
    0x32: "NPC_SAURUS",
    0x33: "NPC_MUMMY",
    0x34: "NPC_PAKKUN_LIZARD",
    0x35: "NPC_SNAKE",
    0x36: "NPC_SHADOW",
    0x37: "NPC_BLACK_WIZARD",
    0x38: "NPC_FLAME",
    0x39: "NPC_GARGOYLE",
    0x3a: "NPC_MONKEY",
    0x3b: "NPC_MOLEBEAR",
    0x3c: "NPC_OGRE",
    0x3d: "NPC_BARNACLEJACK",
    0x3e: "NPC_PHANTASM",
    0x3f: "NPC_MINOTAUR",
    0x40: "NPC_GLAIVE_MAGE",
    0x41: "NPC_GLAIVE_KNIGHT",
    0x42: "NPC_DARK_LORD",
    0x43: "NPC_MEGA_FLYTRAP",
    0x44: "NPC_DRAGONFLY",
    0x45: "NPC_ARMADILLO",
    0x46: "NPC_SNOWMAN_MOVING",
    0x47: "NPC_SABER_CAT",
    0x48: "NPC_WALRUS",
    0x49: "NPC_DUCK_SOLDIER",
    0x4a: "NPC_POTO_RABBIT",
    0x4b: "NPC_CYCLONE",
    0x4c: "NPC_BEHOLDER_EYE",
    0x4d: "NPC_MANTA_RAY",
    0x4e: "NPC_JUMPING_HAND",
    0x4f: "NPC_TORTOISE",
    0x50: "NPC_FIRE_MOTH",
    0x51: "NPC_EARTH_DIGGER",
    0x52: "NPC_DENDEN_SNAIL",
    0x53: "NPC_DOPPEL_MIRROR",
    0x54: "NPC_GUARDIAN",
    0x55: "NPC_EVIL_SWORD",
    0x56: "NPC_GAUNTLET",
    0x57: "NPC_GARASHA_DUCK",
    0x58: "NPC_FUZZY_WONDER",
    0x59: "NPC_ELEPHANT",
    0x5a: "NPC_NINJA",
    0x5b: "NPC_JULIUS",
    0x5c: "NPC_DEMON_HEAD",
    0x5d: "NPC_INV_DESSERT_CAVE_STONE",
    0x5e: "NPC_WATER_DEMON",
    0x5f: "NPC_SEA_DRAGON",
    0x60: "NPC_GALL_FISH",
    0x61: "NPC_WILLY",
    0x62: "NPC_MYSTERYMAN_1",
    0x63: "NPC_AMANDA_1",
    0x64: "NPC_AMANDA_ILL",
    0x65: "NPC_AMANDA_DEAD",
    0x66: "NPC_FUJI_1",
    0x67: "NPC_FUJI_WINDOW",
    0x68: "NPC_MOTHER",
    0x69: "NPC_BOGARD_1",
    0x6a: "NPC_BOGARD_2",
    0x6b: "NPC_KETTS_WEREWOLF",
    0x6c: "NPC_INV_FUJI_COFFIN",
    0x6d: "NPC_CIBBA",
    0x6e: "NPC_GUY_WENDEL",
    0x6f: "NPC_WATTS",
    0x70: "NPC_MINECART",
    0x71: "NPC_CHOCOBO_EGG",
    0x72: "NPC_DAVIAS",
    0x73: "NPC_LESTER_1",
    0x74: "NPC_LESTER_PARROT",
    0x75: "NPC_BOWOW",
    0x76: "NPC_SARAH",
    0x77: "NPC_MARCIE_1",
    0x78: "NPC_KING_OF_LORIM",
    0x79: "NPC_GLADIATOR_FRIEND",
    0x7a: "NPC_INV_INN",
    0x7b: "NPC_GIRL_TOPPLE",
    0x7c: "NPC_GUY_TOPPLE",
    0x7d: "NPC_GUY_TOPPLE_HOUSE",
    0x7e: "NPC_GIRL_TOPPLE_HOUSE",
    0x7f: "NPC_OLDMAN_TOPPLE",
    0x80: "NPC_GUY_KETTS",
    0x81: "NPC_GIRL_KETTS",
    0x82: "NPC_GIRL_CIBBA",
    0x83: "NPC_GUY_WENDEL2",
    0x84: "NPC_GUY_WENDEL_HOUSE",
    0x85: "NPC_WOMAN_CIBBA",
    0x86: "NPC_OLDMAN_WENDEL",
    0x87: "NPC_DWARF_1",
    0x88: "NPC_DWARF_2",
    0x89: "NPC_DWARF_3",
    0x8a: "NPC_DWARF_4",
    0x8b: "NPC_DWARF_5",
    0x8c: "NPC_GUY_AIRSHIP_1",
    0x8d: "NPC_GUY_AIRSHIP_2",
    0x8e: "NPC_GUY_AIRSHIP_3",
    0x8f: "NPC_GUY_AIRSHIP_4",
    0x90: "NPC_OLDMAN_MENOS_1",
    0x91: "NPC_GUY_MENOS",
    0x92: "NPC_GIRL_MENOS_1",
    0x93: "NPC_OLDMAN_MENOS_2",
    0x94: "NPC_GIRL_MENOS",
    0x95: "NPC_WOMAN_MENOS_2",
    0x96: "NPC_GIRL_JADD_1",
    0x97: "NPC_OLDMAN_JADD",
    0x98: "NPC_GIRL_JADD_2",
    0x99: "NPC_GUY_JADD",
    0x9a: "NPC_DWARF_JADD",
    0x9b: "NPC_SALESMAN_JADD",
    0x9c: "NPC_GIRL_JADD_3",
    0x9d: "NPC_BOY_JADD",
    0x9e: "NPC_OLDMAN_ISH",
    0x9f: "NPC_GUY_ISH_1",
    0xa0: "NPC_GUY_ISH_2",
    0xa1: "NPC_GIRL_ISH",
    0xa2: "NPC_GUY_ISH_3",
    0xa3: "NPC_GUY_ISH_4",
    0xa4: "NPC_INV_STONE_1",
    0xa5: "NPC_INV_STONE_2",
    0xa6: "NPC_INV_STONE_3",
    0xa7: "NPC_INV_STONE_4",
    0xa8: "NPC_INV_STONE_5",
    0xa9: "NPC_INV_STONE_6",
    0xaa: "NPC_INV_STONE_7",
    0xab: "NPC_INV_STONE_8",
    0xac: "NPC_GUY_LORIM_FROZEN",
    0xad: "NPC_GUY_LORIM_1",
    0xae: "NPC_GUY_LORIM_2",
    0xaf: "NPC_SALESMAN",
    0xb0: "NPC_INV_SALESMAN_1",
    0xb1: "NPC_FUJI_2",
    0xb2: "NPC_INV_SALESMAN_2",
    0xb3: "NPC_MYSTERYMAN_2",
    0xb4: "NPC_BOGARD_3",
    0xb5: "NPC_AMANDA_2",
    0xb6: "NPC_LESTER_2",
    0xb7: "NPC_MARCIE_2",
    0xb8: "NPC_CHOCOBOT",
    0xb9: "NPC_CHOCOBO_1",
    0xba: "NPC_CHOCOBO_2",
    0xbb: "NPC_PRISION_BARS",
    0xbc: "NPC_MUSIC_NOTES",
    0xbd: "NPC_MAGIC_SALESMAN",
    0xbe: "NPC_LAST_GUY",
}


@annotation
def npc_data(memory, addr, *, amount):
    for n in range(int(amount)):
        NpcDataBlock(memory, addr + n * 24, n)

@annotation
def npc_spawn_data(memory, addr, *, amount):
    RomInfo.constants["NPC_NAMES"] = {v: k for k, v in NPC_NAMES.items()}
    for n in range(int(amount)):
        NpcSpawnDataPointers(memory, addr + n * 6)

class NpcDataBlock(Block):
    def __init__(self, memory, addr, index):
        super().__init__(memory, addr, size=24)
        self.index = index
        
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
    IF ISCONST(\1)
      dw \1
    ELSE
      SCRIPT_IDX \1
    ENDC
"""

    def export(self, file):
        some_ptr = self.memory.word(file.addr + 8)
        some_label = str(self.memory.getLabel(some_ptr) if some_ptr >= 0x4000 else RomInfo.romBank(0).getLabel(some_ptr))

        script_index = self.memory.word(file.addr + 20) # script index
        script_pointer = RomInfo.romBank(0x08).word(0x4f05 + script_index * 2)
        script_bank = RomInfo.romBank(0x0D + (script_pointer >> 14))
        script_label = script_bank.getLabel((script_pointer & 0x3FFF) | 0x4000)

        chest_script_index = self.memory.word(file.addr + 22) # script index
        if chest_script_index == 0x0000:
            chest_script_label = "$0000"
        else:
            chest_script_pointer = RomInfo.romBank(0x08).word(0x4f05 + chest_script_index * 2)
            chest_script_bank = RomInfo.romBank(0x0D + (chest_script_pointer >> 14))
            chest_script_label = chest_script_bank.getLabel((chest_script_pointer & 0x3FFF) | 0x4000)
        
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
            chest_script_label,
            is_data=True,
            add_data_comment=False,
            comment=NPC_NAMES.get(self.index)
        )

class NpcSpawnDataPointers(Block):
    def __init__(self, memory, addr):
        super().__init__(memory, addr, size=6)
        for n in range(3):
            ptr = memory.word(addr + n * 2)
            memory.addAutoLabel(ptr, None, "data")
            if memory[ptr] is None:
                NpcSpawnDataBlock(memory, ptr)

    def export(self, file):
        memory = self.memory
        file.asmLine(6, "dw",
            str(memory.getLabel(memory.word(file.addr))),
            str(memory.getLabel(memory.word(file.addr + 2))),
            str(memory.getLabel(memory.word(file.addr + 4))),
            is_data=True
        )

class NpcSpawnDataBlock(Block):
    def __init__(self, memory, addr):
        super().__init__(memory, addr, size=6)

    def export(self, file):
        m = self.memory
        file.asmLine(6, "db",
            str(m.byte(file.addr)), str(m.byte(file.addr + 1)), # min, max
            NPC_NAMES.get(m.byte(file.addr + 2), "$%02x" % (m.byte(file.addr + 2))),
            NPC_NAMES.get(m.byte(file.addr + 3), "$%02x" % (m.byte(file.addr + 3))),
            NPC_NAMES.get(m.byte(file.addr + 4), "$%02x" % (m.byte(file.addr + 4))),
            NPC_NAMES.get(m.byte(file.addr + 5), "$%02x" % (m.byte(file.addr + 5))),
            is_data=True
        )
