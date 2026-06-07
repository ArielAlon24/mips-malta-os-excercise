V ?= 0

ifeq ($(V),1)
	Q :=
else
	Q := @
endif
k.el
RESET := \033[0m
GREEN  := \033[34m
GREEN := \033[32m
DIM   := \033[2m
BOLD  := \033[1m

define log
	@printf " $(GREEN)$(BOLD)%+12s$(RESET) %s\n" "$(1)" "$(2)"
endef

CROSS := <?>

CC := $(CROSS)-gcc
LD := $(CROSS)-ld

OUT := build
OUTDIR := $(OUT)/.dir

SRC := src
INCLUDE := include

LINKER_SCRIPT := <?>

C_SOURCES := \
	<?>

ASM_SOURCES := \
	<?>

C_OBJECTS := $(addprefix $(OUT)/,$(C_SOURCES:.c=.o))
ASM_OBJECTS := $(addprefix $(OUT)/,$(ASM_SOURCES:.S=.o))

OBJECTS := $(C_OBJECTS) $(ASM_OBJECTS)

KERNEL := $(OUT)/kernel.elf

CFLAGS := \
	-ffreestanding \
	-nostdlib \
	-nostdinc \
	-fno-builtin \
	-Wall \
	-Wextra \
	-G 0 \
	-mno-abicalls \
	-fno-pic \
	-I$(INCLUDE)

ASFLAGS := \
	-ffreestanding \
	-nostdlib \
	-G 0 \
	-mno-abicalls \
	-fno-pic

LDFLAGS := \
	-T $(LINKER_SCRIPT) \
	-nostdlib

build: $(KERNEL)

$(OUTDIR):
	$(Q)mkdir -p $(OUT)
	$(Q)touch $(OUTDIR)

$(KERNEL): $(OBJECTS)
	$(call log,linking,$@)
	$(Q)$(LD) $(LDFLAGS) $^ -o $@

$(OUT)/%.o: $(SRC)/%.c | $(OUTDIR)
	$(Q)mkdir -p $(dir $@)
	$(call log,compiling,$@)
	$(Q)$(CC) $(CFLAGS) -c $< -o $@

$(OUT)/%.o: $(SRC)/%.S | $(OUTDIR)
	$(Q)mkdir -p $(dir $@)
	$(call log,assembling,$@)
	$(Q)$(CC) $(ASFLAGS) -c $< -o $@

clean:
	$(call log,cleaning,$(OUT))
	$(Q)rm -rf $(OUT)

.PHONY: build clean
