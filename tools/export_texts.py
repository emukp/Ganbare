#!/usr/bin/env python3
"""
export_texts.py — 从 ROM 提取 DrawCellStream 文本脚本 -> texts.tsv (翻译用)

依据 TextSystem.md:
  流格式 (入口 PrintTextXY 0x48F3 / EraseTextXY 0x48F7, 读取器 PrintText 0x48FD):
    [位置字 2B: D=X, E=Y] 码流...; 0xFE=重定位(后跟 2B 位置); 0xFF=结束
  字符码表 (标题菜单罗塞塔 + 五十音序 + 字形点阵验证):
    00=␣ 20-29=0-9 2A-2F=K,O,N,A,M,I 30-5D=あ..ん(五十音) 5E=っ 5F-61=ゃゅょ
    62=゜ 63=゛ 66=装饰块 67=？ 69=©
  浊点为独立 4px 字形 (63), 导出时与前一假名合并成浊音假名。

文本流来源:
  1. 固定流: 各 bank 调用点引用的标题/HUD/菜单文本 (bank0/bank1)
  2. 对话表: PrintDialogText(0x4280) -> bank C 0xA9C0 指针表, 流在 bank C 0xAAB0+
     (对话字库含汉字, 位于 bank A 0x6552, 码表未完全破解 -> 未识码以 {XX} 输出)

用法: python3 tools/export_texts.py   (产出 texts.tsv)
"""
import re
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
ROM = ROOT / "Ganbare Goemon (1987) (Konami) (J).rom"

# bank -> (宿主窗口基址, 文件偏移); 槽位循环: 0->0x4000, 其余 (i-1)%3 -> 0x6000/0x8000/0xA000
BANK_FILE = {b: i * 0x2000 for i, b in enumerate("0123456789ABCDEF")}
BANK_ORG = {}
for _i, _b in enumerate("0123456789ABCDEF"):
    BANK_ORG[_b] = 0x4000 if _i == 0 else (0x6000, 0x8000, 0xA000)[(_i - 1) % 3]

CHARS = {
    0x00: " ", 0x20: "0", 0x21: "1", 0x22: "2", 0x23: "3", 0x24: "4",
    0x25: "5", 0x26: "6", 0x27: "7", 0x28: "8", 0x29: "9",
    0x2A: "K", 0x2B: "O", 0x2C: "N", 0x2D: "A", 0x2E: "M", 0x2F: "I",
    0x30: "あ", 0x31: "い", 0x32: "う", 0x33: "え", 0x34: "お",
    0x35: "か", 0x36: "き", 0x37: "く", 0x38: "け", 0x39: "こ",
    0x3A: "さ", 0x3B: "し", 0x3C: "す", 0x3D: "せ", 0x3E: "そ",
    0x3F: "た", 0x40: "ち", 0x41: "つ", 0x42: "て", 0x43: "と",
    0x44: "な", 0x45: "に", 0x46: "ぬ", 0x47: "ね", 0x48: "の",
    0x49: "は", 0x4A: "ひ", 0x4B: "ふ", 0x4C: "へ", 0x4D: "ほ",
    0x4E: "ま", 0x4F: "み", 0x50: "む", 0x51: "め", 0x52: "も",
    0x53: "や", 0x54: "ゆ", 0x55: "よ", 0x56: "ら", 0x57: "り",
    0x58: "る", 0x59: "れ", 0x5A: "ろ", 0x5B: "わ", 0x5C: "を",
    0x5D: "ん", 0x5E: "っ", 0x5F: "ゃ", 0x60: "ゅ", 0x61: "ょ",
    0x63: "゛",  # 浊点 (4px, 导出时合并)
}
VOICED = {  # 清音 -> 浊音 (码 0x63 合并用)
    "か": "が", "き": "ぎ", "く": "ぐ", "け": "げ", "こ": "ご",
    "さ": "ざ", "し": "じ", "す": "ず", "せ": "ぜ", "そ": "ぞ",
    "た": "だ", "ち": "ぢ", "つ": "づ", "て": "で", "と": "ど",
    "は": "ば", "ひ": "び", "ふ": "ぶ", "へ": "べ", "ほ": "ぼ",
}
SEMIVOICED = {"は": "ぱ", "ひ": "ぴ", "ふ": "ぷ", "へ": "ぺ", "ほ": "ぽ"}
GRAPHICS_LO = 0x01   # 0x01-0x1F 为 logo 图块 (非文本)


def read_stream(rom, bank, addr, max_len=0x100):
    """读一条流: 返回 (完整字节含位置字, 终止偏移); 终止于 0xFF。
    未找到 0xFF (截断) 时返回 None —— 通常是数据/字库而非文本流"""
    off = BANK_FILE[bank] + (addr - BANK_ORG[bank])
    data = rom[off:off + max_len]
    for i, b in enumerate(data):
        if b == 0xFF:
            return data[:i + 1], i + 1
    return None, None


def decode(codes, base=4):
    """码序列 -> (可读文本, 未识码数)。合并浊点; 未知码 -> {XX}; 位置字不在此处理"""
    out = []
    unk = 0
    i = 0
    while i < len(codes):
        c = codes[i]
        if c in (0x62, 0x63) and out:      # 半浊/浊点 -> 与前一假名合并
            prev = out[-1]
            if c == 0x63 and prev in VOICED:
                out[-1] = VOICED[prev]
            elif c == 0x62 and prev in SEMIVOICED:
                out[-1] = SEMIVOICED[prev]
            else:
                out[-1] = prev + ("゛" if c == 0x63 else "゜")
            i += 1
            continue
        ch = CHARS.get(c)
        if ch is not None:
            out.append(ch)
        elif GRAPHICS_LO <= c <= 0x1F:
            out.append("{g%02X}" % c)
            unk += 1
        else:
            out.append("{%02X}" % c)
            unk += 1
        i += 1
    return "".join(out), unk


def split_positions(data):
    """流 -> [(X, Y, 码序列)]；按前导位置字与 FE 重定位切分"""
    segs = []
    i = 0
    if len(data) >= 2:
        x, y = data[0], data[1]
        i = 2
    else:
        x, y = None, None
    cur = []
    while i < len(data):
        b = data[i]
        if b == 0xFE and i + 2 < len(data):
            if cur:
                segs.append((x, y, cur))
            x, y = data[i + 1], data[i + 2]
            i += 3
            cur = []
        elif b == 0xFF:
            break
        else:
            cur.append(b)
            i += 1
    if cur or x is not None:
        segs.append((x, y, cur))
    return segs


def bank1_stream(addr):
    return read_stream(ROM.read_bytes(), "1", addr)


FIXED = [
    # (addr, kind, 场景/调用点说明)
    (0x628a, "text",  "PrintText@6284 (DE=6060), 状态栏related"),
    (0x636c, "text",  "PrintTextXY@6369"),
    (0x639b, "text",  "标题屏主文本流 (©KONAMI1987+菜单) @5b06"),
    (0x63bc, "blink", "菜单选中行闪烁·显示流"),
    (0x63cb, "blink", "菜单选中行闪烁·擦除流"),
    (0x63d8, "cursor","菜单光标流 (图块 BC BD, 位置由 DrawTitleModeCursor 设定)"),
    (0x63db, "text",  "logo 屏文本1 @5fd2"),
    (0x63e3, "text",  "logo 屏文本2 @5fde"),
    (0x63f0, "text",  "HUD 标签流 @43f4"),
    (0x642d, "text",  "1P 文本变体 @43ee"),
    (0x6435, "text",  "2P 文本变体 @43ee"),
    (0x64c9, "logo",  "Konami logo 基底图块流 @6486"),
    (0x6ccc, "text",  "关卡内文本 @6bdb"),
    (0x7f41, "text",  "对话框文本 @7f25"),
]


def main():
    rom = ROM.read_bytes()
    rows = []   # (id, kind, bank, addr, seg_no, x, y, text, unk, raw, note)

    def add(rid, kind, bank, addr, seg_no, x, y, codes, note):
        text, unk = decode(codes)
        raw = " ".join("%02X" % b for b in codes)
        rows.append((rid, kind, bank, addr, seg_no, x, y, text, unk, raw, note))

    # 1) 固定流
    n = 0
    for addr, kind, note in FIXED:
        data, _ = bank1_stream(addr)
        segs = split_positions(data)
        for si, (x, y, codes) in enumerate(segs):
            n += 1
            add("T%03d" % n, kind, 1, addr, si, x, y, codes, note)

    # 2) 对话表 (bank C 0xA9C0): 表共 0xAAB0-0xA9C0 = 240B; 有效项数以
    #    指针重复/超窗/无 FF 终止为界 (表尾残留项指向字库数据区)
    cbase = BANK_FILE["C"]
    tbl = cbase + (0xA9C0 - 0xA000)
    ptrs = []
    seen = set()
    for i in range(120):
        w = rom[tbl + i * 2] | (rom[tbl + i * 2 + 1] << 8)
        if not (0xA000 <= w < 0xC000):
            break
        if w in seen:          # 多个 idx 复用同一流: 跳过但不终止 (2025-10-19 修复)
            continue
        data, _ = read_stream(rom, "C", w)
        if data is None:
            break
        seen.add(w)
        ptrs.append((i, w, data))
    for i, w, data in ptrs:
        segs = split_positions(data)
        for si, (x, y, codes) in enumerate(segs):
            n += 1
            add("D%03d" % n, "dialog", "C", w, si, x, y, codes,
                "PrintDialogText idx=%d" % i)

    # 输出 TSV
    out = ROOT / "texts.tsv"
    with out.open("w", encoding="utf-8") as f:
        f.write("# Ganbare Goemon 文本脚本导出 (tools/export_texts.py)\n")
        f.write("# 列: id\tkind\tbank\taddr\tseg\tx\ty\ttext\tunknown\traw\tnote\n")
        f.write("# text 列: 5E=っ 63=゛(已并入前一假名) {XX}=未识码 {gXX}=logo图块\n")
        f.write("# 未识码集中在 8px 宽字形区 (0x6A-0x8E, HUD/框线/图形), 假名区 0x30-0x63 已全解\n")
        for r in rows:
            f.write("\t".join(str(v) for v in r) + "\n")
    stats = {}
    for r in rows:
        stats[r[1]] = stats.get(r[1], 0) + 1
    print(f"texts.tsv: {len(rows)} 段 (按 kind: {stats})")


if __name__ == "__main__":
    main()
