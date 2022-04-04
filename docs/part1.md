---
title: Part1 - Adventures of code
---

# Part1 - Adventures of code

## Finding the code.

When starting this project, I thougth, my disassembler is following the code. That should mark most of the code directly...

OH BOY, I was wrong. I quickly noticed only a small portion of the rom was disassembled as code. The first cause was quickly to spot. Jumptables. Example:

```asm
    ld   HL, data_38ee
    ld   B, $00
    ld   C, A
    add  HL, BC
    add  HL, BC
    ld   A, [HL+]
    ld   H, [HL]
    ld   L, A
    jp   HL

data_38ee:
    dw   $34e7, $34f4, $3502, $351a, $357d, $3582
```

Now, these are all over the place. Luckily, I was accounting for this. Marking the `data_38ee` label with an `;@jumptable` is usually enough.
It will make all pointers after it as labels to code. And it will stop as soon as it encounters something that is marked as something already.
As the first pointer is usually directly after the table, it will stop there.

In some rare cases, it requires to specify the size of the table. Like: `;@jumptable amount=16`. This quickly expanded the amount of code,
as from any jumptable pointer the disassembler traced any code called from it.

## The odd one... farcalling.

After marking most of the jumptables, a pattern arose. At the start of any bank with code (except for bank0F), there is a jump table at the start of the bank.
And digging a tiny bit more, it clicked. Some roms have a `farcall` function to allow to call a function in a different bank. But FFA does not have that, instead
it has the option to call a function from that first jumptable. I'm not sure why they did it that way, it uses quite a bit of code. But it does preserve all
registers while calling, which is something not often seen with farcalls.

Example:
```asm
callFunction02InBank01:
    push AF
    ld   A, $02       ; Function index
    jp   callFunctionInBank01

callFunctionInBank01:
    ld   [wScratchBankCallFunctionNumber], A
    pop  AF
    ld   [wScratchBankCallA], A
    ld   A, H
    ld   [wScratchBankCallH], A
    ld   A, L
    ld   [wScratchBankCallL], A
    ld   HL, returnFromBankCall
    push HL ; push code that has to run after returning from the function, which will restore the bank
    ld   A, $01
    call pushBankNrAndSwitch
    ld   A, [wScratchBankCallFunctionNumber]
    add  A, A
    ld   L, A
    ld   H, $40
    ld   A, [HL+]
    ld   H, [HL]
    ld   L, A
    push HL  ; push the function address on the stack, so the RET at the end will goto it
    ld   A, [wScratchBankCallH]
    ld   H, A
    ld   A, [wScratchBankCallL]
    ld   L, A
    ld   A, [wScratchBankCallA]
    ret

returnFromBankCall:
    push AF
    push HL
    call popBankNrAndSwitch
    pop  HL
    pop  AF
    ret
```

The first short part exists once per function, and the second part exists once per bank.

## After that...

After this, I'm confident all code that is actually used is disassembled. And there is a lot of it.

I'm used to reading the code of LADX, and that's very different from FFA. While LADX has lots of very direct code,
FFA on the other hand, it very indirect. It's very often writting something to a WRAM location to later use as trigger or data.

And there are a few other things noticed after this. Bank0F deals with sound and music. It's obvious, because it's the only code that is touching
the sound registers. Bank0D and Bank0E are "odd", they have patterns like code, but are not code. More on that later, as that's a lot to take in.

Banks 05, 06 and 07 are just all data. With 08, 09, 0A, 0B and 0C all being mostly graphics, it gives a pretty overal picture.
The big blocks of data are quite certainly part of map data. So let us look into that next.

* Previous: [Part0 - Humble beginnings](part0)
