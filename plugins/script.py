from annotation.annotation import annotation
from annotation.simple import DataBlock, JumpTable
from block.base import Block
from block.gfx import GfxBlock
from block.code import CodeBlock
from romInfo import RomInfo


CHARMAP = None

@annotation(priority=0)
def dual_char_map(memory, addr):
    charmap = {n: "<%02x>" % (n) for n in range(256)}
    for n in range(10):
        charmap[0xB0 + n] = str(n)
    for n in range(26):
        charmap[0xBA + n] = chr(65 + n)
        charmap[0xD4 + n] = chr(97 + n)
    charmap[0x14] = "<BOY>"
    charmap[0x15] = "<GIRL>"
    charmap[0x1A] = "\\n"
    charmap[0xEE] = "'"
    charmap[0xEF] = ","
    charmap[0xF0] = "."
    charmap[0xF1] = "_"
    charmap[0xF2] = "-"
    charmap[0xF3] = "!"
    charmap[0xF4] = "?"
    charmap[0xF5] = ":"
    charmap[0xF6] = "/"
    charmap[0xFF] = " "
    for n in range(0x70):
        d0 = memory.byte(addr + n * 2)
        d1 = memory.byte(addr + n * 2 + 1)
        if 0x30 + n >= 0x80:
            charmap[0x30 + n] = charmap[d0] + charmap[d1]
        else:
            charmap[0x20 + n] = charmap[d0] + charmap[d1]

    RomInfo.charmap["SCRIPT"] = charmap
    global CHARMAP
    CHARMAP = charmap

@annotation(priority=1)
def script_pointers(memory, addr, *, amount):
    if "sEND" not in RomInfo.macros:
        # Ok, this is a hell of a macro, but it works to convert:
        # wScriptFlagXX.Y into an index. Including:
        # !wScriptFlagXX.Y which is a "not" for jump checks.
        RomInfo.macros["FLAG_TO_IDX"] = r"""
assert STRSUB("\1", STRLEN("\1") - 1, 1) == "."
LBL equs STRSUB("\1", 1, STRLEN("\1") - 2)
IDX = STRSUB("\1", STRLEN("\1")) - "0"
  db (LBL - wScriptFlags) * 8 + (IDX)
PURGE LBL
"""
        RomInfo.macros["FLAG_CONDITION_TO_IDX"] = r"""
assert STRSUB("\1", STRLEN("\1") - 1, 1) == "."
IF STRCMP(STRSUB("\1", 1, 1), "!") == 0
LBL equs STRSUB("\1", 2, STRLEN("\1") - 3)
IDX = STRSUB("\1", STRLEN("\1")) - "0"
  db (LBL - wScriptFlags) * 8 + (IDX)
PURGE LBL
ELSE
LBL equs STRSUB("\1", 1, STRLEN("\1") - 2)
IDX = STRSUB("\1", STRLEN("\1")) - "0"
  db (LBL - wScriptFlags) * 8 + (IDX) | $80
PURGE LBL
ENDC
"""
        for index, data in OPCODES.items():
            assert data[0] not in RomInfo.macros, data[0]
            if len(data) > 1:
                RomInfo.macros[data[0]] = "db $%02x\n%s" % (index, data[1])
            else:
                RomInfo.macros[data[0]] = "db $%02x" % (index)

    ScriptPointerBlock(memory, addr, amount=int(amount))


class ScriptPointerBlock(Block):
    def __init__(self, memory, addr, *, amount):
        super().__init__(memory, addr, size=amount*2)
        RomInfo.macros["SCRIPT_POINTER"] = "__script_pointer_\\1::\n  dw ((\\1 - $4000) + ((BANK(\\1) - $0D) * $4000))"

        for n in range(int(amount)):
            pointer = memory.word(addr + n * 2)
            bank = RomInfo.romBank(0x0D + (pointer >> 14))
            bank.addAutoLabel((pointer & 0x3FFF) | 0x4000, None, "data")
            ScriptBlock(bank, (pointer & 0x3FFF) | 0x4000)

    def export(self, file):
        for n in range(len(self) // 2):
            pointer = self.memory.word(file.addr)
            if pointer == 0x0000 and n > 0:
                file.asmLine(2, "dw", "$0000")
            else:
                bank = RomInfo.romBank(0x0D + (pointer >> 14))
                label = bank.getLabel((pointer & 0x3FFF) | 0x4000)
                file.asmLine(2, "SCRIPT_POINTER", str(label))


IF_MACRO = r"""
REPT _NARG - 1
    db \1
    SHIFT
ENDR
    db $00
    db \1 - @ - 1
"""
OPCODES = {
    0x00: ("sEND",),
    0x01: ("sJR", r"db \1 - @ - 1", "REL_LABEL"),
    0x02: ("sCALL", r"db ((BANK(\1) - $0D) << 6) | (HIGH(\1) & $3F), LOW(\1)", "LABEL"),
    0x03: ("sLOOP", r"db \1, \2", "BYTE", "BYTE"),
    0x04: ("sMSG", r"SETCHARMAP SCRIPT", "MSG"),

    0x05: ("sNOP_05",),
    0x06: ("sNOP_06",),
    0x07: ("sNOP_07",),

    0x08: ("sIF_FLAG_JR", "REPT _NARG - 1\n FLAG_CONDITION_TO_IDX \\1\n SHIFT\nENDR\n db $00\n db \\1 - @ - 1", "FLAG_LIST", "REL_LABEL"),
    0x09: ("sIF_NOT_EQUIPED_JR", IF_MACRO, "LIST", "REL_LABEL"),
    0x0A: ("sIF_NOT_INVENTORY_JR", IF_MACRO, "LIST", "REL_LABEL"),
    0x0B: ("sIF_0B_JR", IF_MACRO, "LIST", "REL_LABEL"),
    0x0C: ("sIF_0C_JR", IF_MACRO, "LIST", "REL_LABEL"),

    0x0D: ("sNOP_0D",),
    0x0E: ("sNOP_0E",),
    0x0F: ("sNOP_0F",),

    0x10: ("sNPC_1_STEP_FORWARD",),
    0x11: ("sNPC_1_STEP_BACKWARDS",),
    0x12: ("sFULL_HP_DUMMY_12",),
    0x13: ("sFULL_HP_DUMMY_13",),
    0x14: ("sSET_NPC_1_DIRECTION_UP",),
    0x15: ("sSET_NPC_1_DIRECTION_DOWN",),
    0x16: ("sSET_NPC_1_DIRECTION_RIGHT",),
    0x17: ("sSET_NPC_1_DIRECTION_LEFT",),
    0x18: ("sDEL_NPC_1",),
    0x19: ("sSET_NPC_1_POSITION", r"db \1, \2", "BYTE", "BYTE"),
    0x1A: ("sUNK_1A",),
    0x1B: ("sUNK_1B",),
    0x1C: ("sNOP_1C",),
    0x1D: ("sNOP_1D",),
    0x1E: ("sNOP_1E",),
    0x1F: ("sNOP_1F",),

    0x20: ("sNPC_2_STEP_FORWARD",),
    0x21: ("sNPC_2_STEP_BACKWARDS",),
    0x22: ("sFULL_HP_DUMMY_22",),
    0x23: ("sFULL_HP_DUMMY_23",),
    0x24: ("sSET_NPC_2_DIRECTION_UP",),
    0x25: ("sSET_NPC_2_DIRECTION_DOWN",),
    0x26: ("sSET_NPC_2_DIRECTION_RIGHT",),
    0x27: ("sSET_NPC_2_DIRECTION_LEFT",),
    0x28: ("sDEL_NPC_2",),
    0x29: ("sSET_NPC_2_POSITION", r"db \1, \2", "BYTE", "BYTE"),
    0x2A: ("sUNK_2A",),
    0x2B: ("sUNK_2B",),
    0x2C: ("sNOP_2C",),
    0x2D: ("sNOP_2D",),
    0x2E: ("sNOP_2E",),
    0x2F: ("sNOP_2F",),

    0x30: ("sNPC_3_STEP_FORWARD",),
    0x31: ("sNPC_3_STEP_BACKWARDS",),
    0x32: ("sFULL_HP_DUMMY_32",),
    0x33: ("sFULL_HP_DUMMY_33",),
    0x34: ("sSET_NPC_3_DIRECTION_UP",),
    0x35: ("sSET_NPC_3_DIRECTION_DOWN",),
    0x36: ("sSET_NPC_3_DIRECTION_RIGHT",),
    0x37: ("sSET_NPC_3_DIRECTION_LEFT",),
    0x38: ("sDEL_NPC_3",),
    0x39: ("sSET_NPC_3_POSITION", r"db \1, \2", "BYTE", "BYTE"),
    0x3A: ("sUNK_3A",),
    0x3B: ("sUNK_3B",),
    0x3C: ("sNOP_3C",),
    0x3D: ("sNOP_3D",),
    0x3E: ("sNOP_3E",),
    0x3F: ("sNOP_3F",),

    0x40: ("sNPC_4_STEP_FORWARD",),
    0x41: ("sNPC_4_STEP_BACKWARDS",),
    0x42: ("sFULL_HP_DUMMY_42",),
    0x43: ("sFULL_HP_DUMMY_43",),
    0x44: ("sSET_NPC_4_DIRECTION_UP",),
    0x45: ("sSET_NPC_4_DIRECTION_DOWN",),
    0x46: ("sSET_NPC_4_DIRECTION_RIGHT",),
    0x47: ("sSET_NPC_4_DIRECTION_LEFT",),
    0x48: ("sDEL_NPC_4",),
    0x49: ("sSET_NPC_4_POSITION", r"db \1, \2", "BYTE", "BYTE"),
    0x4A: ("sUNK_4A",),
    0x4B: ("sUNK_4B",),
    0x4C: ("sNOP_4C",),
    0x4D: ("sNOP_4D",),
    0x4E: ("sNOP_4E",),
    0x4F: ("sNOP_4F",),

    0x50: ("sNPC_5_STEP_FORWARD",),
    0x51: ("sNPC_5_STEP_BACKWARDS",),
    0x52: ("sFULL_HP_DUMMY_52",),
    0x53: ("sFULL_HP_DUMMY_53",),
    0x54: ("sSET_NPC_5_DIRECTION_UP",),
    0x55: ("sSET_NPC_5_DIRECTION_DOWN",),
    0x56: ("sSET_NPC_5_DIRECTION_RIGHT",),
    0x57: ("sSET_NPC_5_DIRECTION_LEFT",),
    0x58: ("sDEL_NPC_5",),
    0x59: ("sSET_NPC_5_POSITION", r"db \1, \2", "BYTE", "BYTE"),
    0x5A: ("sUNK_5A",),
    0x5B: ("sUNK_5B",),
    0x5C: ("sNOP_5C",),
    0x5D: ("sNOP_5D",),
    0x5E: ("sNOP_5E",),
    0x5F: ("sNOP_5F",),

    0x60: ("sNPC_6_STEP_FORWARD",),
    0x61: ("sNPC_6_STEP_BACKWARDS",),
    0x62: ("sFULL_HP_DUMMY_62",),
    0x63: ("sFULL_HP_DUMMY_63",),
    0x64: ("sSET_NPC_6_DIRECTION_UP",),
    0x65: ("sSET_NPC_6_DIRECTION_DOWN",),
    0x66: ("sSET_NPC_6_DIRECTION_RIGHT",),
    0x67: ("sSET_NPC_6_DIRECTION_LEFT",),
    0x68: ("sDEL_NPC_6",),
    0x69: ("sSET_NPC_6_POSITION", r"db \1, \2", "BYTE", "BYTE"),
    0x6A: ("sUNK_6A",),
    0x6B: ("sUNK_6B",),
    0x6C: ("sNOP_6C",),
    0x6D: ("sNOP_6D",),
    0x6E: ("sNOP_6E",),
    0x6F: ("sNOP_6F",),

    0x70: ("sNPC_7_STEP_FORWARD",),
    0x71: ("sNPC_7_STEP_BACKWARDS",),
    0x72: ("sFULL_HP_DUMMY_72",),
    0x73: ("sFULL_HP_DUMMY_73",),
    0x74: ("sSET_NPC_7_DIRECTION_UP",),
    0x75: ("sSET_NPC_7_DIRECTION_DOWN",),
    0x76: ("sSET_NPC_7_DIRECTION_RIGHT",),
    0x77: ("sSET_NPC_7_DIRECTION_LEFT",),
    0x78: ("sDEL_NPC_7",),
    0x79: ("sSET_NPC_7_POSITION", r"db \1, \2", "BYTE", "BYTE"),
    0x7A: ("sUNK_7A",),
    0x7B: ("sUNK_7B",),
    0x7C: ("sNOP_7C",),
    0x7D: ("sNOP_7D",),
    0x7E: ("sNOP_7E",),
    0x7F: ("sNOP_7F",),

    0x80: ("sPLAYER_STEP_FORWARD",),
    0x81: ("sPLAYER_STEP_BACKWARD",),
    0x82: ("sFULL_HP_DUMMY_82",),
    0x83: ("sFULL_HP_DUMMY_83",),
    0x84: ("sSET_PLAYER_DIRECTION_UP",),
    0x85: ("sSET_PLAYER_DIRECTION_DOWN",),
    0x86: ("sSET_PLAYER_DIRECTION_RIGHT",),
    0x87: ("sSET_PLAYER_DIRECTION_LEFT",),
    0x88: ("sSET_FAST_MOVEMENT",),
    0x89: ("sCLEAR_FAST_MOVEMENT",),
    0x8A: ("sSET_PLAYER_POSITION", r"db \1, \2", "BYTE", "BYTE"),
    0x8B: ("sPLAYER_JUMP", r"db \1", "BYTE"),
    0x8C: ("sFULL_HP_DUMMY_8C",),
    0x8D: ("sFULL_HP_DUMMY_8D",),
    0x8E: ("sFULL_HP_DUMMY_8E",),

    0x90: ("sFOLLOWER_STEP_FORWARD",),
    0x91: ("sFOLLOWER_STEP_BACKWARD",), # not used by base script
    0x92: ("sFULL_HP_DUMMY_92",),
    0x93: ("sFULL_HP_DUMMY_93",),
    0x94: ("sFOLLOWER_DIRECTION_UP",),
    0x95: ("sFOLLOWER_DIRECTION_DOWN",),
    0x96: ("sFOLLOWER_DIRECTION_RIGHT",),
    0x97: ("sFOLLOWER_DIRECTION_LEFT",),
    0x98: ("sFOLLOWER_DELETE",),
    0x99: ("sFOLLOWER_SET_POSITION", r"db \1, \2", "BYTE", "BYTE"),
    0x9A: ("sUNK_9A",),
    0x9B: ("sUNK_9B",),
    0x9C: ("sGIVE_FOLLOWER", r"db \1", "BYTE"), # exact workings unknown, needs a proper NPC with it it seems
    0x9E: ("sNOP_9E",),
    0x9F: ("sNOP_9F",),

    0xA0: ("sUNK_A0",),
    0xA2: ("sUNK_A2",),
    0xA1: ("sUNK_A1",),
    0xA3: ("sUNK_A3",),
    0xA4: ("sSET_PLAYER_NORMAL_SPRITE",),
    0xA5: ("sSET_PLAYER_HURT_SPRITE",),
    0xA6: ("sSET_PLAYER_LAYDOWN_SPRITE",),
    0xA7: ("sNOP_A7",),
    0xA8: ("sNOP_A8",),
    0xA9: ("sUNK_A9",),
    0xAB: ("sUNK_AB",),
    0xAC: ("sOPEN_MAP",),
    0xAD: ("sWAIT_MAP_CLOSE",),
    0xAE: ("sCLOSE_MAP",),
    0xAF: ("sUNK_AF",),

    0xB0: ("sSET_ROOM_TILE", r"db \1, \2, \3", "HEX", "BYTE", "BYTE"), # tile, x, y
    0xB1: ("sNOP_B1",),
    0xB2: ("sNOP_B2",),
    0xB3: ("sNOP_B3",),
    0xB4: ("sNOP_B4",),
    0xB5: ("sNOP_B5",),
    0xB6: ("sUNK_B6",), # messes up a lot of things ingame? credits or title screen related?
    0xBA: ("sCREATE_EFFECT", r"db \1, \2, \3", "HEX", "HEX", "HEX"), # Create various visual effects at a position.
    0xBB: ("sNOP_BB",),
    0xBC: ("sFADE_TO_NORMAL",),
    0xBD: ("sFADE_TO_BLACK",),
    0xBE: ("sFADE_TO_WHITE",),
    0xBF: ("sFLASH_SCREEN",),

    0xC0: ("sFULL_HP",),
    0xC1: ("sFULL_MANA",),
    0xC2: ("sUNK_C2", r"db \1", "BYTE"),
    0xC4: ("sPLAYER_GIVE_STATUS", r"db \1", "BYTE"),
    0xC5: ("sUNK_C5", r"db \1", "BYTE"), # This sets up to 6 script flags in flags0E in a single go. (flags .3 to .7)
    0xC6: ("sUNK_C6",),
    0xC7: ("sUNK_C7",),
    0xC8: ("sRESET_GAME",),
    0xC9: ("sUNK_C9", r"db \1, \2", "HEX", "HEX"),
    0xCA: ("sUNK_CA", r"db \1, \2", "HEX", "HEX"),
    0xCC: ("sHALT_GAME",), # Stop the game, blocking in the script forever. Used at the end of the credits
    0xCD: ("sNOP_CD",),
    0xCE: ("sNOP_CE",),
    0xCF: ("sNOP_CF",),

    0xD1: ("sTAKE_MONEY", r"dw \1", "WORD"), # Take a certain amount of money or set a flag if it failed
    0xD2: ("sGIVE_XP", r"dw \1", "WORD"), # Add XP points (unused)
    0xD3: ("sTAKE_XP", r"dw \1", "WORD"), # Remove XP points (unused)
    0xD4: ("sGIVE_ITEM", r"db \1", "BYTE"),
    0xD5: ("sUNK_D5", r"db \1", "BYTE"),
    0xD6: ("sGIVE_MAGIC", r"db \1", "BYTE"),
    0xD7: ("sUNK_D7", r"db \1", "BYTE"),
    0xD8: ("sGIVE_EQUIPMENT", r"db \1", "BYTE"),
    0xD9: ("sUNK_D9", r"db \1", "BYTE"),
    0xDA: ("sSET_FLAG", r" FLAG_TO_IDX \1", "FLAG"),
    0xDB: ("sCLEAR_FLAG", r" FLAG_TO_IDX \1", "FLAG"),
    0xDC: ("sUNK_DC",),
    0xDD: ("sUNK_DD",),
    0xDE: ("sUNK_DE",),
    0xDF: ("sNOP_DF",),

    0xE0: ("sUNK_E0",),
    0xE1: ("sUNK_E1",),
    0xE2: ("sUNK_E2",),
    0xE3: ("sUNK_E3",),
    0xE4: ("sUNK_E4",),
    0xE5: ("sUNK_E5",),
    0xE6: ("sUNK_E6",),
    0xE7: ("sUNK_E7",),
    0xE8: ("sSCROLL_ROOM_DOWN",),
    0xE9: ("sSCROLL_ROOM_UP",),
    0xEA: ("sSCROLL_ROOM_LEFT",),
    0xEB: ("sSCROLL_ROOM_RIGHT",),
    0xEC: ("sRUN_ROOM_SCRIPT",),
    0xEE: ("sUNK_EE",),
    0xEF: ("sUNK_EF", r"db \1, \2", "HEX", "HEX"),

    0xF0: ("sDELAY", r"db \1", "BYTE"),
    0xF1: ("sFULL_HP_DUMMY_F1",),
    0xF2: ("sFULL_HP_DUMMY_F2",),
    0xF3: ("sLOAD_ROOM_INSTANT", r"db \1, \2, \3, \4", "BYTE", "HEX", "BYTE", "BYTE"), # MapNr, RoomXY, PlayerX, PlayerY
    0xF4: ("sLOAD_ROOM", r"db \1, \2, \3, \4", "BYTE", "HEX", "BYTE", "BYTE"), # MapNr, RoomXY, PlayerX, PlayerY
    0xF5: ("sFULL_HP_DUMMY_F5",),
    0xF6: ("sOPEN_SHOP", r"db \1", "BYTE"), # shop item table number
    0xF7: ("sFULL_HP_DUMMY_F7",),
    0xF8: ("sSET_MUSIC", r"db \1", "BYTE"),
    0xF9: ("sSFX", r"db \1", "BYTE"),
    0xFA: ("sFULL_HP_DUMMY_FA",),
    0xFB: ("sSHAKE_SCREEN",),
    0xFC: ("sSET_NPC_TYPES", r"db \1", "BYTE"),
    0xFD: ("sSPAWN_NPC", r"db \1", "BYTE"),
    0xFE: ("sSPAWN_BOSS", r"db \1", "BYTE"),
}

class ScriptBlock(Block):
    def __init__(self, memory, addr):
        super().__init__(memory, addr)
        
        loop_count = 0
        while True:
            if memory[addr + len(self)] is not None:
                break
        
            opcode = OPCODES[memory.byte(addr + len(self))]

            size = 1
            if len(opcode) > 2:
                for t in opcode[2:]:
                    if t == "WORD":
                        size += 2
                    elif t == "LABEL":
                        target = memory.wordBE(addr + len(self) + size)
                        target_bank = 0x0D + (target >> 14)
                        target = (target & 0x3FFF) | 0x4000
                        target_bank = RomInfo.romBank(target_bank)
                        target_bank.addAutoLabel(target, None, "call")
                        ScriptBlock(target_bank, target)
                        size += 2
                    elif t in ("LIST", "MSG"):
                        while memory.byte(addr + len(self) + size) != 0:
                            size += 1
                        size += 1
                    elif t == "FLAG_LIST":
                        while memory.byte(addr + len(self) + size) != 0:
                            flag = memory.byte(addr + len(self) + size) & 0x7F
                            if RomInfo.getWRam().getLabel(0xD7C6 + (flag // 8)) is None:
                                RomInfo.getWRam().addLabel(0xD7C6 + (flag // 8), "wScriptFlags%02X" % (flag // 8))
                            size += 1
                        size += 1
                    elif t == "REL_LABEL":
                        target = addr + len(self) + size + 1 + memory.byte(addr + len(self) + size)
                        memory.addAutoLabel(target, addr + len(self) + 1, "jr")
                        ScriptBlock(memory, target)
                        size += 1
                    elif t in ("BYTE", "HEX"):
                        size += 1
                    elif t == "FLAG":
                        flag = memory.byte(addr + len(self) + size)
                        if RomInfo.getWRam().getLabel(0xD7C6 + (flag // 8)) is None:
                            RomInfo.getWRam().addLabel(0xD7C6 + (flag // 8), "wScriptFlags%02X" % (flag // 8))
                        size += 1
                    else:
                        assert False, t
            self.resize(len(self) + size)
            if opcode[0] == "sLOOP":
                loop_count += 1
                # For a loop, continue after the sEND of the loop.
            if opcode[0] == "sEND":
                if loop_count > 0:
                    loop_count -= 1
                else:
                    break

    def export(self, file):
        self.__loop_count = 0
        while file.addr < self.base_address + len(self):
            self.outputOpcode(file)

    def outputOpcode(self, file):
        opcode = OPCODES[self.memory.byte(file.addr)]

        size = 1
        args = []
        msg = None
        if len(opcode) > 2:
            for t in opcode[2:]:
                if t == "WORD":
                    args.append("%d" % (self.memory.word(file.addr + size)))
                    size += 2
                elif t == "LABEL":
                    target = self.memory.wordBE(file.addr + size)
                    target_bank = 0x0D + (target >> 14)
                    target = (target & 0x3FFF) | 0x4000
                    target_bank = RomInfo.romBank(target_bank)
                    args.append(str(target_bank.getLabel(target)))

                    size += 2
                elif t == "LIST":
                    while self.memory.byte(file.addr + size) != 0:
                        args.append("$%02x" % (self.memory.byte(file.addr + size)))
                        size += 1
                    size += 1
                elif t == "FLAG_LIST":
                    while self.memory.byte(file.addr + size) != 0:
                        flag = self.memory.byte(file.addr + size)
                        is_not = (flag & 0x80) != 0x80
                        flag = flag & 0x7F
                        label = RomInfo.getWRam().getLabel(0xD7C6 + flag // 8)
                        if is_not:
                            args.append("!%s.%d" % (label, (flag % 8)))
                        else:
                            args.append("%s.%d" % (label, (flag % 8)))
                        size += 1
                    size += 1
                elif t == "MSG":
                    msg = ""
                    while self.memory.byte(file.addr + size) != 0:
                        msg += CHARMAP[self.memory.byte(file.addr + size)]
                        if self.memory.byte(file.addr + size) == 0x12:
                            msg += "\"\n      db \""
                        size += 1
                    size += 1
                elif t == "BYTE":
                    args.append("%d" % (self.memory.byte(file.addr + size)))
                    size += 1
                elif t == "HEX":
                    args.append("$%02x" % (self.memory.byte(file.addr + size)))
                    size += 1
                elif t == "FLAG":
                    flag = self.memory.byte(file.addr + size)
                    label = RomInfo.getWRam().getLabel(0xD7C6 + flag // 8)
                    args.append("%s.%d" % (label, (flag % 8)))
                    size += 1
                elif t == "REL_LABEL":
                    target = file.addr + size + 1 + self.memory.byte(file.addr + size)
                    args.append(str(self.memory.getLabel(target)))
                    size += 1

        if opcode[0] == "sEND" and self.__loop_count > 0:
            self.__loop_count -= 1

        if msg is not None:
            file.asmLine(1, ("  " * self.__loop_count) + opcode[0], *args)
            file.asmLine(size - 1, ("  " * self.__loop_count) + "  db", "\"%s\", $00" % (msg), is_data=True, add_data_comment=False)
        else:
            file.asmLine(size, ("  " * self.__loop_count) + opcode[0], *args)
        if opcode[0] == "sLOOP":
            self.__loop_count += 1
