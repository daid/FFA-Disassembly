import sys

# Decode the whole rom as text, as we have special text encoding, it requires some extra work that normal hex editors cannot do.

rom = open(sys.argv[1], "rb").read()

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
    d0 = rom[0x3f1d + n * 2]
    d1 = rom[0x3f1d + n * 2 + 1]
    if 0x30 + n >= 0x80:
        charmap[0x30 + n] = charmap[d0] + charmap[d1]
    else:
        charmap[0x20 + n] = charmap[d0] + charmap[d1]

for idx in range(0, len(rom), 32):
    line = "%02x:%04x: " % (idx >> 14, (idx & 0x3FFF) + (0 if idx < 0x4000 else 0x4000))
    for n in range(32):
        line += charmap[rom[idx+n]]
    print(line)
