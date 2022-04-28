cgbPaletteTable:
    ; $00 Overworld background palette
    dw $47FF, $51F3, $2867, $0000 ; grey/ui
    dw $47FF, $26C4, $1521, $0000 ; dark green
    dw $47FF, $11D9, $10CE, $0000 ; brown
    dw $47FF, $1419, $100A, $0000 ; red
    dw $47FF, $12EC, $15A6, $0000 ; light green
    dw $47FF, $7CC3, $2C00, $0000 ; dark blue (water)
    dw $12EC, $11D9, $10CE, $0ce2 ; brown/green combo
    dw $0000, $0000, $0000, $0000

    ; $01 Main object palette
    dw $7FFF, $46FF, $05FF, $0000 ; yellow NPCs
    dw $7FFF, $46FF, $22A2, $0000 ; green NPCs
    dw $0000, $0000, $0000, $0000
    dw $7FFF, $175F, $1417, $0000 ; Fire effect
    dw $7FFF, $7CC3, $2C00, $0000 ; Ice effect
    dw $0000, $0000, $0000, $0000
    dw $7FFF, $6f9b, $251f, $0000 ; hand cursor
    dw $7FFF, $46FF, $22A2, $0000 ; boss

    ; $02 Title screen palette
    dw $47FF, $51F3, $2867, $0000 ; main colors for everything else
    dw $47FF, $1aec, $1a4a, $0000 ; light & dark green colors  (for main letters)
    dw $47FF, $0000, $0000, $0000
    dw $47FF, $4a73, $31ad, $0000 ; sword greys
    dw $47FF, $16f8, $51cc, $0000 ; sword yellow and blue
    dw $47FF, $1cf7, $108d, $0000 ; sword reds
    dw $47FF, $0000, $0000, $0000
    dw $0000, $0000, $0000, $0000

    ; $03 Cave background palette
    dw $2F3D, $51F3, $2867, $0000 ; greys
    dw $2F3D, $26C4, $1521, $0000 ; green / plants
    dw $2F3D, $11D9, $10CE, $0000 ; browns
    dw $2F3D, $1419, $100A, $0000 ; red/lava
    dw $2F3D, $7dc9, $7CC3, $0000 ; ice
    dw $2F3D, $7CC3, $2C00, $0000 ; dark blue water
    dw $0000, $0000, $0000, $0000
    dw $0000, $0000, $0000, $0000

    ; $04 Object palette with Jackal boss
    dw $7FFF, $46FF, $05FF, $0000 ; yellow NPCs
    dw $7FFF, $46FF, $22A2, $0000 ; green NPCs
    dw $0000, $0000, $0000, $0000
    dw $7FFF, $175F, $1417, $0000 ; Fire effect
    dw $7FFF, $7CC3, $2C00, $0000 ; Ice effect
    dw $0000, $0000, $0000, $0000
    dw $7FFF, $6f9b, $251f, $0000 ; hand cursor
    dw $7FFF, $46FF, $0F1F, $0000 ; boss
