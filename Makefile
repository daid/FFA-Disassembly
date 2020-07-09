
ASM_FILES = $(shell find -type f -name '*.asm')

rom.gb: src/main.o
	rgblink -n $(basename $@).sym -o $@ $^
	rgbfix --validate $@

src/main.o: $(ASM_FILES)
	rgbasm --export-all -o $@ src/main.asm
