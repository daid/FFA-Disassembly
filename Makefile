ROM = rom.gb

SRCS = $(wildcard src/*.asm)
GFXS = $(shell find gfx/ -type f -name '*.png')

all: $(ROM)

check: $(ROM)
	md5sum -c $(ROM).md5

clean:
	-rm -rf .bin .obj .dep .gfx

$(ROM): $(patsubst src/%.asm,.obj/%.o,$(SRCS))
	@mkdir -p $(@D)
	rgblink -w -m $(basename $@).map -n $(basename $@).sym -o $@ $^
	rgbfix --validate $(FIXFLAGS) $@


.obj/%.o $(DEPDIR)/%.mk: src/%.asm $(patsubst gfx/%.png,.gfx/%.bin,$(GFXS))
	@mkdir -p $(dir .obj/$* .dep/$*)
	rgbasm -Wall -Wextra --export-all -isrc -i.gfx -M .dep/$*.mk -MP -MQ .obj/$*.o -MQ .dep/$*.mk -o .obj/$*.o $<

.gfx/%.bin: gfx/%.png
	@mkdir -p $(dir .gfx/$*)
	rgbgfx -o .gfx/$*.bin $< #-c '#c4f0c2, #5ab9a8, #1e606e, #2d1b00'

ifneq ($(MAKECMDGOALS),clean)
-include $(patsubst src/%.asm,.dep/%.mk,$(SRCS))
endif

.PHONY: all clean
.SECONDARY:
