---
title: Part1 - Adventures of code
---

# Part1 - The quest for maps

Ah, maps. Always a highly visible part of a game. It has to be somewhere, and there has to be a lot of it. I forgot how I discovered the first bit.
So lets just explain how it all works. Or at least, how part of it works, as there is a part of it we will cover later.

## Humble beginnings

Map data starts at bank $08, at the beginning of the bank. It's stored at [src/data/map/headers.asm](https://github.com/daid/FFA-Disassembly/blob/master/src/data/map/headers.asm) in the disassembly.
There are a wopping total of 16 maps. That is a lot of maps. But not all maps are the same size, and not all maps are completely used.
```asm
MAP_HEADER tilesetGfxOutdoor, $00, metatilesOutdoor, $80, mapRoomPointers_00, $d7, $3c
```
Per map there is a header here. Which is just a few pointers to other data, as well as some junk data. I'm quite sure the junk data is never used.

## The main bit

The main bit of maps is after the first pointer. The `mapRoomPointers` pointer, it's stored with a bank number, so this data can be in any bank.

The data after the `mapRoomPointers` starts with a small header, and then a large list of pointers. The disassembly has this nicely split into files per map in `src/data/map/XX_rooms.asm`.

```asm
mapRoomPointers_00:
    db   $00, $03, $10, $10
    ;;Room data pointers
    dw   map00_room00_00_script, map00_room00_00_tiles
    dw   map00_room01_00_script, map00_room01_00_tiles
```

The header bytes are as followed:
1. Encoding mode: $00 = RLE, $01 = Templated
2. RLE length (more on this in a bit)
3. Height of the map in rooms
4. Width of the map in rooms

There are two types of map encoding, dictated by the first byte. We will cover RLE mode first, as templated mode builds on top of that.

### RLE Map encoding

Each of the `mapXX_roomXX_XX_tiles` pointers points at a block of data. The encoding of this data is quite simple. Each byte is the tile number tile.
$11 might be a water tile, $00 normal ground, and a lot more. There are up to 128 types available. As there is one more rule. If the upper bit is set,
then the tile is repeated a number of times. How often? Well, that's that 2nd byte of the header, the RLE length. So all rooms in a map share a single RLE length.

Example row:
```asm
    db $91, $02, $50, $e4, $64, $64
```
First byte is `$91`, so that's tile `$11` repeated RLE length time. RLE length is 3 in this case. So after this byte the row on that map looks like:
```asm
$11, $11, $11
```
Two bytes after that do not have bit `$80` set, so:
```asm
$11, $11, $11, $02, $50
```
`$e4` follows after that, which has the highest bit set, resulting in tile `$64` repeated 3 times:
```asm
$11, $11, $11, $02, $50, $64, $64, $64
```
And finally two $64 bytes are added:
```
$11, $11, $11, $02, $50, $64, $64, $64, $64, $64
```
Making this the complete row.
