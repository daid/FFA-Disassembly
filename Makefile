
ASM_FILES = $(shell find -type f -name '*.asm')

rom.gb: src/main.o
	rgblink -n $(basename $@).sym -o $@ $^
	rgbfix --validate $@

src/main.o: $(ASM_FILES)
	rgbasm --export-all -o $@ src/main.asm

check: rom.gb rom.md5
	md5sum -c rom.md5

clean:
	rm -rf src/main.o rom.gb rom.sym

.PHONY: all clean check
all: rom.gb
