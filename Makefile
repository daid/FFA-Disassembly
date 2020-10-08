ROM = rom.gb

SRCS = $(wildcard src/*.asm)

all: $(ROM)

check: $(ROM)
	md5sum -c $(ROM).md5

clean:
	-rm -rf .bin .obj .dep

$(ROM): $(patsubst src/%.asm,.obj/%.o,$(SRCS))
	@mkdir -p $(@D)
	rgblink -w -m $(basename $@).map -n $(basename $@).sym -o $@ $^
	rgbfix --validate $(FIXFLAGS) $@


.obj/%.o $(DEPDIR)/%.mk: src/%.asm
	@mkdir -p $(dir .obj/$* .dep/$*)
	rgbasm -Wall -Wextra --export-all -isrc -M .dep/$*.mk -MP -MQ .obj/$*.o -MQ .dep/$*.mk -o .obj/$*.o $<

ifneq ($(MAKECMDGOALS),clean)
-include $(patsubst src/%.asm,.dep/%.mk,$(SRCS))
endif

.PHONY: all clean
