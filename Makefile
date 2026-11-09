# =============================================================================
# Ganbare Goemon Karakuri Douchuu (1987, Konami, RC-748) build
# ===============================================================================

SJASMPLUS ?= /usr/local/bin/sjasmplus
OPENMSX   ?= openmsx
MSXMODEL  ?= C-BIOS_MSX2_JP
ETAGS     ?= etags
PYTHON    ?= python3

OUTDIR    := out
TARGET    := $(OUTDIR)/ganbare.rom
WORKDIR   := work
BASEROM   := $(WORKDIR)/base.rom
SHADOW_DEPS := tools/build_texts.py textscn.tsv texts.tsv tools/zh_glyph_index.tsv

GROUP_SRCS := Banks0123.asm Banks456.asm Banks789.asm \
              BanksABC.asm BanksDEF.asm BanksExpansion.asm
CONST_SRCS := $(wildcard constants/*.asm)
MODULE_SRCS := $(wildcard logic/*.asm) $(wildcard data/*.asm) \
               $(wildcard gfx/*.asm) $(wildcard sound/*.asm)
SRC_SRCS  := Ganbare.asm $(GROUP_SRCS) $(CONST_SRCS) $(MODULE_SRCS)

# ---------- 编译 ----------
.PHONY: all run clean

all: $(TARGET)

# pass 1: 汇编源码, 影子 bank 为 0xFF 占位
$(BASEROM): $(SRC_SRCS) | $(WORKDIR)
	$(SJASMPLUS) --longptr --raw=$@ Ganbare.asm

# pass 2: 从 base.rom 的 bank1/C 生成影子 -> 再汇编最终 ROM (INCBIN 影子)
$(TARGET): $(SRC_SRCS) $(BASEROM) $(SHADOW_DEPS) | $(OUTDIR)
	$(PYTHON) tools/build_texts.py --from $(BASEROM) --out-dir $(WORKDIR)
	$(SJASMPLUS) --longptr -DZH_SHADOW --raw=$@ Ganbare.asm

$(OUTDIR):
	mkdir -p $(OUTDIR)

$(WORKDIR):
	mkdir -p $(WORKDIR)

# ---------- 运行 ----------
.PHONY: run
run: $(TARGET)
	$(OPENMSX) -machine $(MSXMODEL) $(TARGET)

# ---------- TAGS (Emacs etags) ----------
# 匹配顶行 "名字:" 定义: z80dasm 标签与 constants 里的 NAME: equ 均适用
.PHONY: tags
tags: $(SRC_SRCS)
	$(ETAGS) --language=none \
		--regex='/^\([a-zA-Z_][a-zA-Z0-9_]*\):/\1/' \
		$(SRC_SRCS) -o TAGS

# ---------- 清理 ----------
.PHONY: clean
clean:
	rm -rf $(OUTDIR) work
	rm -f TAGS
