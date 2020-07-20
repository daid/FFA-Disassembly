include "constants/regs.asm"
include "constants/memory.asm"
include "src/macros.asm"
include "src/charmaps.asm"

SECTION "bank00", ROM0[$0000]
include "src/bank00.asm"

SECTION "bank01", ROMX[$4000], BANK[$01]
include "src/bank01.asm"

SECTION "bank02", ROMX[$4000], BANK[$02]
include "src/bank02.asm"

SECTION "bank03", ROMX[$4000], BANK[$03]
include "src/bank03.asm"

SECTION "bank04", ROMX[$4000], BANK[$04]
include "src/bank04.asm"

SECTION "bank05", ROMX[$4000], BANK[$05]
include "src/bank05.asm"

SECTION "bank06", ROMX[$4000], BANK[$06]
include "src/bank06.asm"

SECTION "bank07", ROMX[$4000], BANK[$07]
include "src/bank07.asm"

SECTION "bank08", ROMX[$4000], BANK[$08]
include "src/bank08.asm"

SECTION "bank09", ROMX[$4000], BANK[$09]
include "src/bank09.asm"

SECTION "bank0a", ROMX[$4000], BANK[$0a]
include "src/bank0A.asm"

SECTION "bank0b", ROMX[$4000], BANK[$0b]
include "src/bank0B.asm"

SECTION "bank0c", ROMX[$4000], BANK[$0c]
include "src/bank0C.asm"

SECTION "bank0d", ROMX[$4000], BANK[$0d]
include "src/bank0D.asm"

SECTION "bank0e", ROMX[$4000], BANK[$0e]
include "src/bank0E.asm"

SECTION "bank0f", ROMX[$4000], BANK[$0f]
include "src/bank0F.asm"
