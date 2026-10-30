#!/usr/bin/env python3
"""
build_texts.py — 两遍构建的第二步: 从**已编译的** bank1/C/2/F 生成影子 bank 0x14-0x17
"""
import argparse
import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
rom = b""               # main() 中按 --from 载入 (两遍构建的 pass 1 输出)

DLG_X = 56
DLG_Y = (52, 68)
DLG_MAXW = 160          # px (汉字 12px, 其他 8px; 文本右缘抵 216 与原版一致)
DLG_REGION_START = 0xAAB0
DLG_REGION_END = 0xB6D3  # exclusive; 之后为其它指针表数据
DLG_TABLE = 0xA9C0
DLG_TABLE_N = 120

BANK_ORG = {"1": 0x6000, "C": 0xA000}
BANK_BASE = {"1": 0x2000, "C": 0xC * 0x2000}

# ---------------------------------------------------------------- TSV 解析

def load_textscn():
    zh = {}
    for line in (ROOT / "textscn.tsv").open(encoding="utf-8"):
        if line.startswith("#"):
            continue
        p = line.rstrip("\n").split("\t")
        if len(p) >= 11 and p[1] not in TYPEWRITER_KINDS:
            zh[p[0]] = p[10]
    return zh


def load_textscn_pos():
    """id -> (x, y): textscn 的坐标覆盖列 (bank1 固定流使用; 打字机行跳过)"""
    pos = {}
    for line in (ROOT / "textscn.tsv").open(encoding="utf-8"):
        if line.startswith("#"):
            continue
        p = line.rstrip("\n").split("\t")
        if len(p) >= 11 and p[1] not in TYPEWRITER_KINDS and p[5] and p[6]:
            pos[p[0]] = (int(p[5]), int(p[6]))
    return pos


def load_glyph_index():
    idx = {}
    for line in (ROOT / "tools" / "zh_glyph_index.tsv").open(encoding="utf-8"):
        if line.startswith("#"):
            continue
        p = line.rstrip("\n").split("\t")
        if len(p) >= 3:
            idx[p[2]] = int(p[0])
    return idx


# ---------------------------------------------------------------- 打字机 (0x42E1/0x42F1)
TYPEWRITER_KINDS = ("tw-shop", "tw-cut")


def load_typewriter_rows():
    rows = []
    for line in (ROOT / "textscn.tsv").open(encoding="utf-8"):
        if line.startswith("#"):
            continue
        p = line.rstrip("\n").split("\t")
        if len(p) >= 12 and p[1] in TYPEWRITER_KINDS:
            rows.append({"id": p[0], "kind": p[1], "bank": int(p[2], 0),
                         "addr": int(p[3], 0), "alloc": int(p[7]),
                         "lines": int(p[8]), "jp": p[9], "zh": p[10], "note": p[11]})
    return rows


def encode(rid, text, line_count, glyphs):
    """zh char -> 2B (lead 0xC0+idx//256, low idx%256);
    '|' -> FE FE (16px line pitch); ASCII digit/space -> 1B; FF terminator."""
    segs = text.split("|")
    if len(segs) != line_count:
        sys.exit("%s: %d '|' segments but lines=%d" % (rid, len(segs), line_count))
    out = bytearray()
    for i, seg in enumerate(segs):
        if i:
            out += b"\xfe\xfe"
        for ch in seg:
            if ch == " ":
                out.append(0x00)
            elif "0" <= ch <= "9":
                out.append(0x20 + ord(ch) - ord("0"))
            elif ch in glyphs:
                idx = glyphs[ch]
                lead, low = 0xC0 + idx // 256, idx % 256
                if lead > 0xDF:
                    sys.exit("%s: glyph %r lead 0x%02X out of player range"
                             % (rid, ch, lead))
                out += bytes((lead, low))
            else:
                sys.exit("%s: char %r not in tools/zh_glyph_index.tsv" % (rid, ch))
    out.append(0xFF)
    return bytes(out)


def load_tsv_rows():
    rows = {}
    for line in (ROOT / "texts.tsv").open(encoding="utf-8"):
        if line.startswith("#"):
            continue
        p = line.rstrip("\n").split("\t")
        if len(p) >= 8:
            rows[p[0]] = {"kind": p[1], "bank": p[2], "addr": int(p[3]),
                          "seg": int(p[4]), "x": int(p[5]), "y": int(p[6]),
                          "text": p[7]}
    return rows

# ---------------------------------------------------------------- 流解析

def parse_stream(bank, addr):
    """原 ROM 中解析流 -> (segs[(x,y,codes)], total_bytes)。segs[0] 有位置字"""
    off = BANK_BASE[bank] + (addr - BANK_ORG[bank])
    i = off
    segs = []
    x, y = rom[i], rom[i + 1]
    i += 2
    codes = bytearray()
    while True:
        b = rom[i]
        i += 1
        if b == 0xFF:
            segs.append((x, y, bytes(codes)))
            return segs, i - off
        if b == 0xFE:
            segs.append((x, y, bytes(codes)))
            codes = bytearray()
            x, y = rom[i], rom[i + 1]
            i += 2
        else:
            codes.append(b)


def build_stream(segs):
    """segs[(x,y,codes)] -> bytes"""
    out = bytearray()
    for n, (x, y, codes) in enumerate(segs):
        if n:
            out.append(0xFE)
        out += bytes((x, y))
        out += codes
    out.append(0xFF)
    return bytes(out)

# ---------------------------------------------------------------- zh 编码

KONAMI = {"K": 0x2A, "O": 0x2B, "N": 0x2C, "A": 0x2D, "M": 0x2E, "I": 0x2F}

def encode_zh(zh, gidx):
    codes = []
    i = 0
    while i < len(zh):
        m = re.match(r"\{s(.)\}", zh[i:])
        if m:
            ch = m.group(1)
            if ch not in MENU_GLYPHS:
                raise ValueError("no 8px menu glyph for %r (U+%04X)" % (ch, ord(ch)))
            gi = MENU_GLYPHS[ch]
            codes += [0xC0 + gi // 256, gi % 256]
            i += len(m.group(0))
            continue
        m = re.match(r"\{([0-9A-Fa-f]{2})\}", zh[i:])
        if m:
            codes.append(int(m.group(1), 16))
            i += 4
            continue
        ch = zh[i]
        if ch == " ":
            codes.append(0x00)
        elif "0" <= ch <= "9":
            codes.append(0x20 + ord(ch) - 0x30)
        elif ch in KONAMI:
            codes.append(KONAMI[ch])
        elif ch in gidx:
            gi = gidx[ch]
            codes += [0xC0 + gi // 256, gi % 256]
        else:
            raise ValueError("no glyph for %r (U+%04X)" % (ch, ord(ch)))
        i += 1
    return codes


def width_of(codes):
    """编码后显示宽度 px: 双字节(>=0xC0 引导) 12px, 单字节 8px (0x62/63 浊点 4px 忽略)"""
    w = 0
    i = 0
    while i < len(codes):
        if 0xC0 <= codes[i] <= 0xFD:
            w += 12
            i += 2
        else:
            w += 8
            i += 1
    return w

# ---------------------------------------------------------------- bank C 对话

def _dialog_pos(rid, orig, pos_map):
    """textscn 的 x/y 覆盖: 仅当值与原流坐标不同时生效 (未改动的行保持原布局)"""
    if pos_map:
        p = pos_map.get(rid)
        if p and tuple(p) != tuple(orig):
            return p
    return None

def build_dialogs(rows, zh_map, gidx, errors, pos_map=None):
    # 收集 idx -> (addr, segs, [(x,y,codes,zh)])
    streams = {}
    for rid, r in rows.items():
        if r["kind"] != "dialog":
            continue
        m = re.search(r"idx=(\d+)", r.get("note", ""))
        idx = int(m.group(1)) if m else None
        key = r["addr"]
        streams.setdefault(key, {"rows": [], "idx": None})
        if idx is not None:
            streams[key]["idx"] = idx
        streams[key]["rows"].append((rid, r))
    for k in streams:
        streams[k]["rows"].sort(key=lambda t: t[1]["seg"])

    # 原指针表
    tbl_off = BANK_BASE["C"] + (DLG_TABLE - BANK_ORG["C"])
    orig_table = [rom[tbl_off + i * 2] | (rom[tbl_off + i * 2 + 1] << 8)
                  for i in range(DLG_TABLE_N)]

    new_region = bytearray()
    ptr_of_addr = {}
    content2ptr = {}

    for addr in sorted(streams):
        st = streams[addr]
        segs, total = parse_stream("C", addr)
        orig_bytes = rom[BANK_BASE["C"] + (addr - BANK_ORG["C"]):
                         BANK_BASE["C"] + (addr - BANK_ORG["C"]) + total]
        zhs = []
        for rid, r in st["rows"]:
            if r["text"].strip() == "":      # 全空格段 = 占位, 不参与重排
                zhs.append("")
            else:
                zhs.append(zh_map.get(rid, ""))
        ptr_of_addr[addr] = DLG_REGION_START + len(new_region)
        if all(not z for z in zhs):
            new = orig_bytes                       # 全保留: 原样
        elif any(not z for z in zhs):
            # 混合: 逐段原位 (zh 段编码, 空段原样), 段长不强制 (重排指针)
            new_segs = []
            for (x, y, codes), z, (rid, _r) in zip(segs, zhs, st["rows"]):
                ov = _dialog_pos(rid, (x, y), pos_map)
                if ov:
                    x, y = ov
                if z:
                    codes = bytes(encode_zh(z, gidx))
                new_segs.append((x, y, codes))
            new = build_stream(new_segs)
        else:
            # 全 zh: 3 行→2 行重排 (行1 = 段0+段1, 行2 = 段2+段3...)
            enc_segs = [encode_zh(z, gidx) for z in zhs]
            if len(enc_segs) == 1:
                lines = [enc_segs[0]]
            else:
                lines = [enc_segs[0] + enc_segs[1]]
                if len(enc_segs) >= 3:
                    lines.append(enc_segs[2] + (enc_segs[3] if len(enc_segs) > 3 else []))
            for li, lc in enumerate(lines):
                if width_of(lc) > DLG_MAXW:
                    errors.append("dialog idx=%s @0x%04X 行%d 超宽 %dpx" %
                                  (st["idx"], addr, li, width_of(lc)))
            # 位置覆盖: 用该对话第一段 (seg0) 行在 textscn 的 x/y; 第2行 = y+11
            # (11px = 给 8px 菜单留出 78..84 的空间, 见 MENU_GLYPHS)
            ov = _dialog_pos(st["rows"][0][0], (segs[0][0], segs[0][1]), pos_map)
            if len(lines) == 1:
                x, y = ov if ov else (segs[0][0], segs[0][1])
                new = build_stream([(x, y, bytes(lines[0]))])
            else:
                x, y = ov if ov else (DLG_X, DLG_Y[0])
                new = build_stream([(x, y, bytes(lines[0])),
                                    (x, y + 11, bytes(lines[1]))])
        content2ptr[orig_bytes] = DLG_REGION_START + len(new_region)
        new_region += new

    if len(new_region) > DLG_REGION_END - DLG_REGION_START:
        errors.append("对话区溢出: %d > %d bytes" %
                      (len(new_region), DLG_REGION_END - DLG_REGION_START))

    # 指针表重建 (按内容匹配; 失败回退同指针首项)
    last_stream_ff = DLG_REGION_START + len(new_region) - 1
    new_table = []
    for ptr in orig_table:
        segs, total = parse_stream("C", ptr)
        content = rom[BANK_BASE["C"] + (ptr - BANK_ORG["C"]):
                      BANK_BASE["C"] + (ptr - BANK_ORG["C"]) + total]
        if ptr == 0xB6D2:                  # 表尾伪项: 指向末流 FF 终结符
            new_table.append(last_stream_ff)
        elif content in content2ptr:
            new_table.append(content2ptr[content])
        elif content == b"\xff":
            new_table.append(last_stream_ff)
        else:
            errors.append("指针表项 0x%04X 内容未匹配" % ptr)
            new_table.append(ptr)
    return new_region, new_table, ptr_of_addr

# ---------------------------------------------------------------- bank1 固定流

# (addr, [rid 按段序], no_pos)
BANK1_STREAMS = [
    (0x628A, ["T001"], True),
    (0x636C, ["T002"], False),
    (0x639B, ["T003", "T004", "T005", "T006"], False),   # T007-9 为本流尾段入口, 无需替换
    # T011/T012 (Game Over) 在扩容 bank 0x18, 原 0x63DB/0x63E3 日文保持不动
    (0x6CCC, ["T026"], False),
    (0x7F41, ["T027", "T028", "T029", "T030", "T031"], False),
]

def build_bank1_subs(zh_map, gidx, errors, pos_map=None):
    subs = []                                # (addr, new_bytes)
    for addr, rids, no_pos in BANK1_STREAMS:
        segs, total = parse_stream("1", addr)
        assert len(segs) == len(rids), "seg count mismatch @0x%04X" % addr
        orig = rom[BANK_BASE["1"] + (addr - BANK_ORG["1"]):
                   BANK_BASE["1"] + (addr - BANK_ORG["1"]) + total]
        if no_pos:                           # 无位置字: 整流一段 (codes + FF)
            z = zh_map.get(rids[0], "")
            orig_codes = orig[:-1]
            new_codes = bytes(encode_zh(z, gidx)) if z else orig_codes
            if len(new_codes) > len(orig_codes):
                errors.append("%s @0x%04X 超长: %d > %d" %
                              (rids[0], addr, len(new_codes), len(orig_codes)))
            new = bytes(new_codes) + bytes(len(orig_codes) - len(new_codes)) + b"\xff"
        else:
            new_segs = []
            for (x, y, codes), rid in zip(segs, rids):
                if pos_map and rid in pos_map:      # textscn x/y 覆盖 (12px 行距等)
                    x, y = pos_map[rid]
                z = zh_map.get(rid, "")
                nc = bytes(encode_zh(z, gidx)) if z else codes
                if len(nc) > len(codes):
                    errors.append("%s @0x%04X 段超长: %d > %d" %
                                  (rid, addr, len(nc), len(codes)))
                nc = nc + bytes(len(codes) - len(nc))   # 0x00 空格补齐
                new_segs.append((x, y, nc))
            new = build_stream(new_segs)
        assert len(new) == len(orig), "length drift @0x%04X" % addr
        subs.append((addr, new))
    return subs

# ---------------------------------------------------------------- HUD 中文字流

# HUD 8px 中文字形 (quan.bdf 7x7, 放在扩展字库 bank 0x11-0x13 的 434..449)
# 这些字形按 8px 行高绘制 (12px cell 的顶部)，不占用原版 8px 日文字库。
HUD_GLYPHS = {ch: 434 + i for i, ch in enumerate("时间金币两体力生命五右卫门惠比寿丸")}
# 菜单 8px 字形 (quan.bdf 7x7, 追加在 452..455; 与 HUD 同一套 8px cell 布局)
MENU_GLYPHS = {"是": 452, "否": 453, "双": 454, "单": 455}
HUD_LABEL_IDS = ("T013", "T014", "T015", "T016", "T017")
HUD_NAME_IDS = ("T018", "T019")
HUD_LABEL_ADDR = 0x63F0     # 原标签流起始 (影子 bank 1 内原位压缩写入)
HUD_NAME1_ADDR = 0x6412     # 1P 名流 (原标签流腾出的空间)
HUD_NAME2_ADDR = 0x641E     # 2P 名流


def hud_codes(text):
    """HUD 专用字库编码: 强制使用 434..449 的 8px 字形 (2 字节/字)"""
    out = bytearray()
    for ch in text:
        if ch not in HUD_GLYPHS:
            raise ValueError("no HUD glyph for %r (U+%04X)" % (ch, ord(ch)))
        gi = HUD_GLYPHS[ch]
        out += bytes([0xC0 + gi // 256, gi % 256])
    return bytes(out)


def build_hud_streams(b1, zh_map, pos_map, errors):
    """在影子 bank 0x14 内写入 HUD 中文字流:
    标签流压缩后放回原 0x63F0, 名字流放到腾出的 0x6410/0x641C。
    原 bank 1 的日文数据不受影响 (pass 1 的 base.rom 只读)。"""
    def pos(rid, dx, dy):
        return pos_map.get(rid, (dx, dy))
    stream = bytearray()
    for k, rid in enumerate(HUD_LABEL_IDS):
        dflt = (72, 0) if k == 0 else (0, 0)
        x, y = pos(rid, dflt[0], dflt[1])
        text = zh_map.get(rid, "")
        try:
            codes = hud_codes(text)
        except ValueError as e:
            errors.append("%s: %s" % (rid, e))
            codes = b""
        if k == 0:
            stream += bytes([x, y])
        else:
            stream += b"\xFE" + bytes([x, y])
        stream += codes
    stream += b"\xFF"
    if len(stream) > HUD_NAME1_ADDR - HUD_LABEL_ADDR:
        errors.append("HUD 标签流超长: %d > %d" % (len(stream), HUD_NAME1_ADDR - HUD_LABEL_ADDR))
    name_streams = []
    for rid, dx in zip(HUD_NAME_IDS, (16, 8)):
        x, y = pos(rid, dx, 0)
        text = zh_map.get(rid, "")
        try:
            codes = hud_codes(text)
        except ValueError as e:
            errors.append("%s: %s" % (rid, e))
            codes = b""
        ns = bytes([x, y]) + codes + b"\xFF"
        if len(ns) > HUD_NAME2_ADDR - HUD_NAME1_ADDR:
            errors.append("HUD %s 名流超长: %d > %d" %
                          (rid, len(ns), HUD_NAME2_ADDR - HUD_NAME1_ADDR))
        name_streams.append(ns)
    if errors:
        return
    # 清空原标签流区域 (0x63F0..0x642C), 再写三条中文流
    b1[HUD_LABEL_ADDR - 0x6000: 0x642D - 0x6000] = b"\x00" * (0x642D - HUD_LABEL_ADDR)
    b1[HUD_LABEL_ADDR - 0x6000: HUD_LABEL_ADDR - 0x6000 + len(stream)] = stream
    b1[HUD_NAME1_ADDR - 0x6000: HUD_NAME1_ADDR - 0x6000 + len(name_streams[0])] = name_streams[0]
    b1[HUD_NAME2_ADDR - 0x6000: HUD_NAME2_ADDR - 0x6000 + len(name_streams[1])] = name_streams[1]

# ---------------------------------------------------------------- Game Over (bank 0x18)

# Game Over 中文流放进新增的扩容 bank 0x18（映射到 slot 0x6000，
# ZhDrawStub 借用的是 0x8000，不会把流切走）。原日文 0x63DB/0x63E3 保持不动。
Z_BANK = 0x18
ZGAMEOVER_ADDR = 0x6040
ZCONTINUE_ADDR = 0x604B
Z_BANK_END = 0x8000
GAMEOVER_RID = "T011"
CONTINUE_RID = "T012"
GAMEOVER_POS = (0x70, 0x50)      # 原流位置 (112,80)
CONTINUE_POS = (0x60, 0x60)      # 原流位置 (96,96)


def build_gameover_streams(b18, zh_map, gidx, errors):
    for rid, pos, addr, limit in ((GAMEOVER_RID, GAMEOVER_POS, ZGAMEOVER_ADDR, ZCONTINUE_ADDR),
                                  (CONTINUE_RID, CONTINUE_POS, ZCONTINUE_ADDR, Z_BANK_END)):
        text = zh_map.get(rid, "")
        codes = bytes(encode_zh(text, gidx))
        stream = bytes(pos) + codes + b"\xff"
        if len(stream) > limit - addr:
            errors.append("%s 中文流超长: %d > %d" % (rid, len(stream), limit - addr))
            continue
        b18[addr - 0x6000: addr - 0x6000 + len(stream)] = stream

# ---------------------------------------------------------------- 模块再生成

def _unused_git_labels(path):
    """从 git HEAD 版模块提取 (name, addr) 标签对, 保持跨模块引用不断"""
    import subprocess
    rel = path.relative_to(ROOT)
    try:
        src = subprocess.run(["git", "show", "HEAD:%s" % rel],
                             capture_output=True, text=True, cwd=ROOT).stdout
    except Exception:
        return []
    labels = []
    pending = None
    for line in src.splitlines():
        m = re.match(r"^([A-Za-z_][A-Za-z0-9_]*):\s*(?:equ\s+#([0-9A-Fa-f]{4}))?", line)
        if m:
            if m.group(2):
                labels.append((m.group(1), int(m.group(2), 16)))
            else:
                pending = m.group(1)
            continue
        m = re.search(r";\s*([0-9a-fA-F]{4})\b", line)
        if pending and m:
            labels.append((pending, int(m.group(1), 16)))
            pending = None
    return labels


def emit_shadow_bin(path, data):
    """整 bank 二进制输出 (0x2000 字节, 由 pass 2 的 INCBIN 装入)"""
    if len(data) != 0x2000:
        sys.exit("error: shadow bank size %d != 0x2000 (%s)" % (len(data), path))
    path.write_bytes(bytes(data))


# (源 bank, 影子 bank, bank 的映射基址)
TYPEWRITER_BANKS = ((0x2, 0x16, 0x8000), (0xF, 0x17, 0xA000))
# bank -> (表地址, 项数); bank2 的第 8 条流地址固定为 0x9F92
TYPEWRITER_TABLES = {0xF: ((0xBC16, 16), (0xBC36, 16)), 0x2: ((0x9E0B, 7),)}


def check_tables(rom, rows):
    """校验原 bank2/F 的表项仍指向 TSV 地址 (恢复原版后应通过)。"""
    errors = []
    for bank, tables in TYPEWRITER_TABLES.items():
        base = 0xA000 if bank == 0xF else 0x8000
        ptrs = []
        for t, n in tables:
            for i in range(n):
                off = bank * 0x2000 + (t - base) + i * 2
                ptrs.append(rom[off] | (rom[off + 1] << 8))
        if bank == 0x2:
            ptrs.append(0x9F92)
        got = [r["addr"] for r in sorted((r for r in rows if r["bank"] == bank),
                                        key=lambda r: r["addr"])]
        if got != ptrs:
            errors.append("bank %X: table pointers %s != TSV addresses %s"
                          % (bank, ["%04X" % p for p in ptrs],
                             ["%04X" % p for p in got]))
    return errors


def build_typewriter_shadows(out_dir, rows, dry=False):
    """bank2/F 的完整副本 + 中文打字机流 (表/流外字节保留)。"""
    gidx = load_glyph_index()
    written = []
    for bank, shadow, base in TYPEWRITER_BANKS:
        data = bytearray(rom[bank * 0x2000:(bank + 1) * 0x2000])
        for r in rows:
            if r["bank"] != bank:
                continue
            enc = encode(r["id"], r["zh"], r["lines"], gidx)
            if len(enc) > r["alloc"]:
                sys.exit("error: %s: %d bytes > alloc %d" % (r["id"], len(enc), r["alloc"]))
            off = r["addr"] - base
            data[off:off + r["alloc"]] = enc + b"\x00" * (r["alloc"] - len(enc))
        if not dry:
            path = out_dir / ("bank%02x.bin" % shadow)
            emit_shadow_bin(path, data)
            written.append(path)
    return written


def main():
    global rom
    ap = argparse.ArgumentParser(
        description="generate zh shadow banks (0x14-0x17) from a compiled ROM")
    ap.add_argument("--from", dest="src_rom", default="work/base.rom",
                    help="input ROM (pass-1 build; default: work/base.rom)")
    ap.add_argument("--out-dir", default="work",
                    help="output directory for bank14.bin..bank17.bin (default: work)")
    ap.add_argument("--check", action="store_true",
                    help="validate TSV/dialog/fixed streams/typewriter tables; write nothing")
    args = ap.parse_args()

    src = Path(args.src_rom)
    if not src.is_file():
        sys.exit("error: %s not found (run the pass-1 build first: make %s)" % (src, src))
    rom = src.read_bytes()
    if len(rom) < 0x1A000:
        sys.exit("error: %s is too small (%d bytes); need >= 0x1A000 (bank C)" %
                 (src, len(rom)))

    out_dir = Path(args.out_dir)
    out_dir.mkdir(parents=True, exist_ok=True)

    zh_map = load_textscn()
    gidx = load_glyph_index()
    rows = load_tsv_rows()
    tw_rows = load_typewriter_rows()
    errors = []
    cap = DLG_REGION_END - DLG_REGION_START

    # ---- 影子 bank 0x15 (bank C 副本 + 中文对话区 + 重建指针表) ----
    region, table, _ = build_dialogs(rows, zh_map, gidx, errors, load_textscn_pos())
    used = len(region)                    # 实际占用 (padding 前; 溢出的 error 已由 build_dialogs 记录)

    # ---- 影子 bank 0x14 (bank 1 副本 + 中文固定流原位替换) ----
    subs = build_bank1_subs(zh_map, gidx, errors, load_textscn_pos())
    b1 = bytearray(rom[BANK_BASE["1"]: BANK_BASE["1"] + 0x2000])
    for addr, new in subs:
        b1[addr - BANK_ORG["1"]: addr - BANK_ORG["1"] + len(new)] = new
    build_hud_streams(b1, zh_map, load_textscn_pos(), errors)
    # ---- 扩容 bank 0x18：Game Over 中文流（原日文 bank 1 不动） ----
    b18 = bytearray([0xFF] * 0x2000)
    build_gameover_streams(b18, zh_map, gidx, errors)

    if args.check:
        for r in tw_rows:
            enc = encode(r["id"], r["zh"], r["lines"], gidx)
            if len(enc) > r["alloc"]:
                errors.append("%s: %d bytes > alloc %d" % (r["id"], len(enc), r["alloc"]))
        errors.extend(check_tables(rom, tw_rows))

    if errors:
        print("!! ERRORS:")
        for e in errors:
            print("  -", e)
        sys.exit(1)

    if args.check:
        print("source: %s (%d bytes)" % (src, len(rom)))
        print("dialog region: %d / %d bytes used (%d free)" % (used, cap, cap - used))
        print("OK: dialog %d/%d, typewriter %d" % (used, cap, len(tw_rows)))
        return

    region = region + bytes(cap - used)   # 0x00 pad 到区间尾
    c_new = bytearray(rom[BANK_BASE["C"]: BANK_BASE["C"] + 0x2000])
    for i, ptr in enumerate(table):
        c_new[(DLG_TABLE - BANK_ORG["C"]) + i * 2] = ptr & 0xFF
        c_new[(DLG_TABLE - BANK_ORG["C"]) + i * 2 + 1] = ptr >> 8
    c_new[(DLG_REGION_START - BANK_ORG["C"]):(DLG_REGION_END - BANK_ORG["C"])] = region

    b14 = out_dir / "bank14.bin"
    b15 = out_dir / "bank15.bin"
    emit_shadow_bin(b14, b1)
    emit_shadow_bin(b15, c_new)
    b18_path = out_dir / "bank18.bin"
    b18_path.write_bytes(bytes(b18[0x40:0x2000]))
    tw_bins = build_typewriter_shadows(out_dir, tw_rows)

    print("source: %s (%d bytes)" % (src, len(rom)))
    print("dialog region: %d / %d bytes used (%d free)" % (used, cap, cap - used))
    print("typewriter: bank16 (bank 2 copy + 8 cutscene streams), "
          "bank17 (bank F copy + 32 shop streams)")
    print("OK: %s" % ", ".join(str(p) for p in (b14, b15, b18_path) + tuple(tw_bins)))


if __name__ == "__main__":
    main()
