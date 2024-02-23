ROM = rom.gb

SRCS = $(wildcard src/*.asm)
GFXS = $(shell find gfx/ -type f -name '*.png')

all: $(ROM)

check: $(ROM)
	md5sum -c $(ROM).md5

clean:
	-rm -rf .bin .obj .dep .gfx ${ROM}

$(ROM): $(patsubst src/%.asm,.obj/%.o,$(SRCS))
	@mkdir -p $(@D)
	rgblink -w -m $(basename $@).map -n $(basename $@).sym -o $@ $^
	rgbfix --validate $(FIXFLAGS) $@


.obj/%.o $(DEPDIR)/%.mk: src/%.asm $(patsubst gfx/%.png,.gfx/%.bin,$(GFXS))
	@mkdir -p $(dir .obj/$* .dep/$*)
	rgbasm --halt-without-nop --preserve-ld -Wall -Wextra --export-all -Isrc -I.gfx -M .dep/$*.mk -MP -MQ .obj/$*.o -MQ .dep/$*.mk -o .obj/$*.o $<

.gfx/%.bin: gfx/%.png
	@mkdir -p $(dir .gfx/$*)
	rgbgfx -o .gfx/$*.bin $< -c '#ffffff,#c8c8c8,#646464,#000000'

ifneq ($(MAKECMDGOALS),clean)
-include $(patsubst src/%.asm,.dep/%.mk,$(SRCS))
endif

.PHONY: all clean
.SECONDARY:
