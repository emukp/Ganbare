# 文本处理系统分析

> 对象：大盗五右卫门—机关道中（Ganbare Goemon Karakuri Douchuu, Konami 1987, RC-748）
> 依据：本仓库反汇编源码（`logic/`、`gfx/`、`data/`）与汉化补丁源码，并用 openMSX 对 VRAM 布局做了运行时验证。
> 文中地址均为 Z80 运行地址（bank 内地址），RAM 变量为 0xC000–0xFFFF 区。

---

## 1. 总览

游戏没有使用 MSX BIOS 的文本输出（`CHPUT` 等），而是自己实现了一套**基于图形模式的点阵文本系统**。整套系统可以分成五层：

```
 ┌──────────────────────────────────────────────────────────────────┐
 │ 文本流（文本编码）                                                │
 │   bank1 固定流 / bankC 对话流 / bank2·F 打字机流 / bank18 结局流   │
 └───────────────┬──────────────────────────────────────────────────┘
                 │ 逐字节读取（PrintText / 打字机播放器）
 ┌───────────────▼──────────────────────────────────────────────────┐
 │ 字符编码                                                          │
 │   单字节 0x00-0xBD → 字模索引；0xFE/0xFF 控制码；                  │
 │   双字节 0xC0+idx>>8, idx&0xFF → 中文字模索引                      │
 └───────────────┬──────────────────────────────────────────────────┘
                 │ 索引
 ┌───────────────▼──────────────────────────────────────────────────┐
 │ 字模存储（VRAM 中的字模表）                                        │
 │   8×8 4bpp 字模表 @ 0x9C00（256 格）                              │
 │   12×12 中文 4bpp 字模页 @ 0x10000（456+1 格）                    │
 │   空白格 @ 0x8000 / 中文空白格 idx=456                            │
 └───────────────┬──────────────────────────────────────────────────┘
                 │ VDP HMMM 块传送
 ┌───────────────▼──────────────────────────────────────────────────┐
 │ 绘制函数                                                          │
 │   PrintTextXY / EraseTextXY / PrintText / PrintTextZh            │
 │   DrawChar / DrawChineseChar / VDP_Copy_Byte                     │
 └───────────────┬──────────────────────────────────────────────────┘
                 │
 ┌───────────────▼──────────────────────────────────────────────────┐
 │ 显示：SCREEN 5 位图（4bpp，256×212）                               │
 └──────────────────────────────────────────────────────────────────┘
```

要点：

| 项目 | 实现 |
|---|---|
| 显示模式 | `CHGMOD 5`（SCREEN 5 / GRAPHIC4），256×212，4bpp |
| 原始 8×8 字模 | ROM 中 1bpp、8 字节/字；加载时展开为 4bpp，放入 VRAM 0x9C00 |
| 中文字模 | ROM 中 1bpp 12×12、24 字节/字；加载时展开为 4bpp 16×12，放入 VRAM 0x10000 |
| 单字节字符码 | 码值 = 字模格号（0x00–0xBD 为文本/图形，0xFE/0xFF 为控制码） |
| 中文双字节码 | `0xC0 + idx/256`、`idx & 0xFF`（当前 456 字，lead 只用 0xC0/0xC1） |
| 文本流 | `[X,Y]` + 码流；`0xFE X Y` 重定位；`0xFF` 结束 |
| 绘制 | V9938 HMMM 命令（VRAM→VRAM 8×8 或 12×12 块传送） |
| 打字机 | 独立播放器（0x42E1 初始化 / 0x42F1 每帧推进），逐字绘制 |

---

## 2. 显示环境与 VRAM 布局

### 2.1 4bpp 位图寻址

SCREEN 5 每个像素 4 bit，一行 256 像素 = 128 字节，因此

```
VRAM 地址 = Y × 128 + X / 2        （X 为像素坐标，Y 为行号）
```

VDP 的 HMMM 命令中，SX/SY 是**像素坐标**，硬件按上式换算；SX 为 9 bit，SY 为 10 bit（bit8–9 即 64 KiB 页号）：

```
源地址 = (SY & 0x3FF) × 128 + SX/2
```

### 2.2 文本用 VRAM 区域

| 区域 | 地址 | 大小 | 用途 |
|---|---|---|---|
| 可见画面 | 0x0000–0x69FF | 0x6A00 | 256×212 4bpp 位图 |
| 8×8 空白格 | 0x8000 | 8×8 | 码 0x00 与擦除操作的源 |
| 8×8 字模表 | 0x9C00–0xBBFF | 8 KiB | 256 格 × 8×8 4bpp（8 组 × 32 格） |
| 中文字模页 | 0x10000–0x1AE00 | ~44 KiB | 456 格 16×12 + 1 空白格 |

> 运行时验证（openMSX）：码 0x20（字符 `0`）的 row1 位于 0xA080，码 0x21 的 row1 位于 0xA088；0x10000 起为中文第 0 字「密」，其 row1 在 0x10080，第 1 字「码」row1 在 0x10088，与下文公式完全一致。

### 2.3 颜色

- 8×8 文本字模以颜色 **0x0E** 展开（`Load1bppTiles` 的 `C` 参数 = 0x0E）。
- Konami logo 等特殊画面用颜色 1/2/3 加载同一套 1bpp 数据。
- 中文字模固定展开为颜色 **0x0E**（`ZhExpByte` 中的 `AND 0xEE`）。

---

## 3. 字模存储

### 3.1 原始 8×8 字模数据

**格式**：1bpp，每字 8 字节，每字节一行，bit7 = 最左像素。

```
; 例：码 0x20 = '0'，ROM 数据（bank E 0x929D 起）
00 3C 66 66 66 66 66 3C
```

**数据位置**：

| ROM bank | 地址 | 字数 | 内容 |
|---|---|---|---|
| E | 0x929D | 145 | 文本字模，装入码 0x20–0xB0（数字、KONAMI、假名、标点、HUD 半汉字、图块） |
| E | 0x9725 | 10 | 追加图块，装入码 0xB1–0xBA（笔/箭头等装饰） |
| E | 0x9775 | 3 | **已是 4bpp** 的 32 字节图块 → 码 0xBB–0xBD（光标箭头） |
| 4 | 0xBC92 | 13 | Konami logo 图块 → 码 0x01–0x0D，颜色 1 |
| 4 | 0xBCFA | 13 | Konami logo 图块 → 码 0x0E–0x1A，颜色 2 |
| 4 | 0xBD62 | 26 | Konami logo 图块 → 码 0x1B–0x34，颜色 3 |

1bpp 字模数据是**连续**的：0x929D + 145×8 = 0x9725，0x9725 + 10×8 = 0x9775。0x9775 起改用 4bpp 直接数据（`LoadTilesGfx` 每行读 4 字节、直接上传，不做颜色替换），装入码 0xBB–0xBD。

### 3.2 1bpp → 4bpp 展开与上传

相关函数（`gfx/vdp_copy_byte.asm`）：

| 函数 | 地址 | 作用 |
|---|---|---|
| `Load1bppTiles` | 0x484F | 循环 B 次：`Load1bppTile` + `CalcNextCharPos` |
| `Load1bppTile` | 0x4858 | 展开 1 个字模；源指针 +8，目标地址由 DE 换算 |
| `Decode1bppTile` | 0x48CD | 8 行 1bpp → 8 行 4 字节 4bpp，写入 `DecodeTileBuf`（0xC210） |
| `LoadTileGfx` | 0x4879 | 8 行 × 4 字节，用 `RAMtoVRAM` 写到 VRAM，行距 0x80 |
| `RAMtoVRAM` | 0x44B1 | 设 VRAM 地址（`SetVramAddressWR` 0x44F7），`OTIR` 批量写 |

`Decode1bppTile` 用 `RLD` 把每个像素半字节填成颜色 `C`（文本为 0x0E）：

```
源字节 bit7..bit0 → 每像素 4 bit（0x0E 或 0x00）
```

**目标地址换算**（`Load1bppTile` 开头，DE 输入为 X/Y 像素坐标，D=X、E=Y）：

```
DE' = 0x8000 + E × 128 + D / 2
```

然后把 DE' 作为起点，每行 +0x80 写 4 字节（= 8 像素）。`Load1bppTiles` 每装完一个字调用
`CalcNextCharPos`（0x4984）：`D += 8`，D 溢出（满 256 像素）时 `E += 8` 换到下一组。

> 注意 0x8000 这个偏移不是"页"，而是 HMMM 源 SY 的高位：8×8 字模在 VDP 眼中位于
> `SY = 0x100 + y`（y 为 0–255），因此 `(0x100 + y) × 128 = 0x8000 + y × 128`。
> 详见 §6.5。

### 3.3 VRAM 8×8 字模表布局

8×8 字模在 VRAM 中不是"每字连续 32 字节"，而是按**行**组织的转置布局：

```
地址(code, row) = 0x9C00 + (code >> 5) × 0x400 + (code & 0x1F) × 4 + row × 0x80
                  └──────┬──────┘   └────┬────┘   └──────┬──────┘   └──┬──┘
                     8 个组            组内 32 格        格内 4 字节/行     行距
```

即：256 个字模分成 8 组（每组 32 个码），每组占 0x400 字节；组内 32 个字模横向排成一行（每个 4 字节 = 8 像素），共 8 行，行距 0x80。

图示（一个组）：

```
offset 0x000 : [code+0 row0][code+1 row0] ... [code+31 row0]   ← 32×4 = 0x80 字节
offset 0x080 : [code+0 row1][code+1 row1] ... [code+31 row1]
offset 0x100 : ...
offset 0x380 : [code+0 row7] ...
offset 0x400 : 下一组（code + 32）
```

因此：

- 码 0x20–0x3F（组 1）基址 → 0xA000
- 码 0x40–0x5F（组 2）基址 → 0xA400
- 依此类推，码 0xE0–0xFF（组 7）基址 → 0xB800

以码 0x30（`あ`）为例：

```
组 = 0x30 >> 5 = 1        → 0x9C00 + 0x400 = 0xA000
格 = 0x30 & 0x1F = 0x10   → + 0x10 × 4 = 0xA040
```

（`あ` 的 row0 在 0xA040、row1 在 0xA0C0，行距 0x80；运行时 VRAM 与 ROM 数据一致。）

`DrawChar` 使用的等价公式为：

```
源地址 = 0x8000 + ((code >> 5) × 8 + 0x38) × 128 + (code & 0x1F) × 4
       = 0x9C00 + (code >> 5) × 0x400 + (code & 0x1F) × 4
```

其中 `0x38` 是字模表在 `y` 方向的起点（0x38 × 128 = 0x1C00，0x8000 + 0x1C00 = 0x9C00）。

### 3.4 空白字模

- **8×8**：码 0x00 与"擦除"都走 `DrawChar` 的 A=0 分支，源地址固定为 **0x8000**（8×8 全 0 区）。字模表组 0（码 0x00–0x1F）的正式位置是 0x9C00，但码 0x00 被特判到 0x8000，因此 0x9C00 的组 0 可被 Konami logo 图块（码 0x01 起）占用。
- **中文**：字模索引 `ZhGlyphCount = 456` 对应一个额外清空的空白格（见 §3.6），擦除中文时用它。

### 3.5 中文字模数据

中文字模由 `tools/bdf2asm.py` 从 `fonts/fusion-pixel-12px-monospaced-zh_hans.bdf` 生成：

- 字形数量按 `textscn.tsv` 中汉字的首现顺序编号；当前共 **456** 个（其中末尾 22 个是 HUD/菜单用的 8px 小字形，见下）。
- 每字 **24 字节** = 12 行 × 2 字节；行内 bit15…bit4 = 像素 0…11（左对齐，MSB 为最左像素）。
- 数据放在扩容 bank 0x11（256 字）与 0x12（200 字），每 bank 8 KiB，末尾 `DS` 填 0xFF。
- 索引表 `tools/zh_glyph_index.tsv` 记录 `index / codepoint / char`。

> 维护提示：现行 `textscn.tsv` 是 12 列（`… alloc lines jp zh note`），汉字在第 11 列（`parts[10]`）；
> 而 `tools/bdf2asm.py` 的 `collect_chars()` 仍读 `parts[8]`（旧 10 列格式的 `zh` 列）。
> 重新生成字库前需要把该列索引同步到 `parts[10]`，否则会收集到 0 个字。

**样例**（`gfx/zh_glyphs_bank11.asm`）：

```
; glyph 0: U+5BC6  密
DEFB 0x00,0x00, 0x04,0x00, 0xff,0xe0, 0x89,0x20
DEFB 0x52,0x40, 0x9c,0x20, 0x30,0x80, 0xdf,0x80
DEFB 0x00,0x00, 0x44,0x40, 0x44,0x40, 0x7f,0xc0
```

末尾 22 个槽位（434–455）是 **8px 小字形**（`quan.bdf` 7×7），仍按 12×12 cell 存放，只是内容只占顶部 7 行：

| 索引 | 用途 |
|---|---|
| 434–450 | HUD 8px 汉字：时 间 金 币 两 体 力 生 命 五 右 卫 门 惠 比 寿 丸 |
| 451 | 备用（束） |
| 452–455 | 对话框菜单 8px 字：是 否 双 单 |

### 3.6 中文字模加载流程

```
LoadTitleScreenAssets（0x4A6D，bank 0）
        │  末尾原为 JP SetBanks1_2_3，汉化版改为：
        ▼
ZhFontTramp（bank F 0xBEF8）
        │  slot 0x8000 ← bank 0x10，更新 BanksIn80
        ▼
LoadChineseFont（bank 0x10 0x8000）
        │  若 0xC238 的 magic == 0x5A 则直接返回（只装一次）
        │  ZhBankTable（0x8037）= 11 00 12 C8 00 00
        │     bank 0x11 装 256 字（计数 0 经 DJNZ 回绕为 256）
        │     bank 0x12 装 200 字
        ▼
   循环每个字：
   ZhExpandGlyph（0x80D0）
        ├─ 逐行读 2 字节（bit15..bit4 = 12 像素）
        ├─ 调用 6 次 ZhExpByte（0x8151）→ 每 2 像素生成 1 字节（0x0E 色）
        ├─ ZhRowBuf（0xC230）填成 8 字节：左右各 1 字节（2px）空边
        └─ ZhWriteRowP2（0x8165）→ ZhSetVramWRP2（0x8175）→ OTIR 写 8 字节
        │  每行 ZhCellOff += 0x80；12 行后 偏移 = 偏移 - 0x600 + 8（下一格）
        │  列满 16 格（偏移低字节 = 0x80）时 +0x580 换到下一 block
        ▼
   zh_load_done：补画最后一个字（DJNZ 循环的 off-by-one 兜底），
                 再清空索引 456 的空白格
        ▼
   JP SetBanks1_2_3（恢复 bank 1/2/3 及影子 bank）
```

关键 RAM 变量（`logic/zh_font_loader.asm`）：

| 符号 | 地址 | 说明 |
|---|---|---|
| `ZhRowBuf` | 0xC230 | 8 字节行缓冲 |
| `ZhFontLoaded` | 0xC238 | 0x5A = 已加载 |
| `ZhSrcPtr` | 0xC239 | 源字形指针 |
| `ZhCellOff` | 0xC23B | 当前格在 page 2 的字节偏移 |
| `ZhRowCnt` | 0xC23D | 行计数 |
| `ZhTypewriterFlag` | 0xC23F | 1 = 打字机路径 |

`ZhSetVramWRP2` 通过把 `R#14` 置为 `((H>>6)&3) | 4` 选择 **A16=1**，即 VRAM 的 0x10000 页（page 2）。写地址前 `DI`、写完 `EI`，避免中断里的 VRAM 访问插入。

### 3.7 中文字模 VRAM 布局

```
地址(idx, row) = 0x10000 + (idx >> 4) × 0x600 + (idx & 15) × 8 + row × 0x80
                 └───┬───┘   └────┬────┘   └──────┬──────┘   └───┬───┘
                  page 2        block(16 格/块)   格内 8 字节/行    行距（12 行）
```

- 每格 16×12 像素：左右各 2px 空边 + 中间 12px 字身。
- 每 block 有 16 个格，占 0x600 字节（16×8 = 0x80 字节/行 × 12 行 = 0x600）。
- 456 字 → 29 个 block → 0x10000–0x1AE00。
- 空白色 = idx 456 → block 28、col 8 → 0x1A840。

图示（一个 block）：

```
block b, row r:  0x10000 + b*0x600 + r*0x80
  ┌────┬────┬────┬────┬ ... ┬────┐
  │ g0 │ g1 │ g2 │ g3 │     │g15 │   每格 8 字节 = 2px 边 + 12px 字身 + 2px 边
  └────┴────┴────┴────┴ ... ┴────┘
  row 0..11，行距 0x80
```

### 3.8 字模汇总

| 项 | 8×8 文本字模 | 12×12 中文字模 |
|---|---|---|
| ROM 格式 | 1bpp，8 B/字 | 1bpp，24 B/字（12 行×2 B） |
| ROM 位置 | bank E 0x929D（145）/ 0x9725（10），bank 4 logo | bank 0x11（256）/ 0x12（200） |
| VRAM 格式 | 4bpp，8×8（32 B/字，行距 0x80） | 4bpp，16×12（96 B/格，行距 0x80） |
| VRAM 基址 | 0x9C00（码 0 空白在 0x8000） | 0x10000 |
| 颜色 | 0x0E（文本）/ 1,2,3（logo） | 0x0E |
| 数量 | 256 格（文本用 0x20–0xBD） | 456 + 1 空白 |
| 加载函数 | `Load1bppTiles` → `Load1bppTile` | `LoadChineseFont` → `ZhExpandGlyph` |

---

## 4. 字符编码

### 4.1 单字节码：码值即字模格号

`DrawChar` 直接把码值当成字模索引，不做任何映射表查表：

```
码 0x00            → 空白格（源 0x8000），宽 8px
码 0x01–0xBD       → 8×8 字模表第 code 格，宽 8px（0x62/0x63 为 4px）
码 0xBE–0xBF       → 8×8 字模表（预留给图形，文本中未用）
码 0xC0–0xFD       → 双字节中文引导码（见 §4.3）
码 0xFE            → 重定位控制码（见 §4.2）
码 0xFF            → 流结束
```

> 关键点：**码值 = 字符码 = 字模格号**，三者统一。0x01–0x1F 与 0x6A 以上因此可以兼作图形图块（0xBC/0xBD 光标就是例子）。

### 4.2 单字节码表（文本部分）

| 码 | 字符 | 备注 |
|---|---|---|
| 0x00 | 空格 | 空白格，8px |
| 0x01–0x1F | Konami logo 图形 | 由 `SetUpKonamiLogo` 载入，非文本 |
| 0x20–0x29 | `0`–`9` | 数字 |
| 0x2A–0x2F | `K` `O` `N` `A` `M` `I` | 版权行 "©KONAMI" |
| 0x30–0x5D | あ い う え お / か き く け こ / さ し す せ そ / た ち つ て と / な に ぬ ね の / は ひ ふ へ ほ / ま み む め も / や ゆ よ / ら り る れ ろ / わ を ん | 五十音顺序，共 46 个 |
| 0x5E | っ | 小写促音 |
| 0x5F / 0x60 / 0x61 | ゃ / ゅ / ょ | 小写拗音 |
| 0x62 | ゜ | 半浊点，**4px**，单独字形 |
| 0x63 | ゛ | 浊点，**4px**，单独字形 |
| 0x64 | 。 | 句号 |
| 0x65 | 、 | 顿号（小斜点） |
| 0x66 | ー | 长音/装饰横线，菜单中用作装饰块 |
| 0x67 | ？ | 问号 |
| 0x68 | 小记号 | 未完全识别的小图块 |
| 0x69 | © | 版权符 |
| 0x6A | 両 | 8×8 整字 |
| 0x6B–0x6E | 小判 | 4 个 8×8 半边拼成 16×8 |
| 0x6F–0x72 | 時間 | 4 个半边 |
| 0x73–0x77 | 体力 + 图标 | HUD 用 |
| 0x78 | `F` | "F5 で つづき" 用 |
| 0x79–0x7D | 装饰/图形 | 非文本 |
| 0x7E–0x82 | おしまい + 小记号 | 粗体变体，Game Over 流 0x63DB 专用 |
| 0x83–0x8E | HUD/框线/图形 | 非文本 |
| 0x8F–0xB0 | 地图/图形图块 | 与字模共用同一张表 |
| 0xB1–0xBA | 笔/箭头装饰 | 由 0x9725 的 10 个 1bpp 字模载入 |
| 0xBB–0xBD | 光标箭头 | 由 0x9775 的 3 个 4bpp 图块载入（流 0x63D8 用 0xBC/0xBD） |

> Konami logo 画面下 `SetUpKonamiLogo` 会把码 0x01–0x34 覆盖成 logo 图块；随后 `LoadTitleScreenAssets` 重新装载 0x20–0xBD（含 0xBB–0xBD 光标图块），所以正常游戏画面里 0x20 以上仍是上表的含义；0x01–0x1F 则一直保留为 logo 图块（正文不使用）。

**半角浊点**：`0x63`（浊点）与 `0x62`（半浊点）是独立的 4px 字形，绘制在假名右侧（当前位置），随后 X 只前进 4px，因此

```
で = 0x42(て) + 0x63(゛)      → 8 + 4 = 12px
づ = 0x41(つ) + 0x63(゛)
```

导出工具在生成 `texts.tsv` 时会把 `0x63` 合并到前一假名（`か` → `が` 等），见 `tools/export_texts.py` 的 `VOICED` / `SEMIVOICED`。

**粗体假名区 0x7E–0x82**：码 0x7E–0x81 是 `おしまい` 的粗体变体，0x82 是结尾小记号，供 Game Over 文本流 0x63DB 使用（`7E 7F 80 81 82`）。同一字符在 0x30–0x5D 有常规字形，属于**同一字模表内的两套字号**。

### 4.3 双字节中文码

```
第 1 字节 = 0xC0 + (idx >> 8)     ; 高位
第 2 字节 = idx & 0xFF            ; 低位
idx      = 0 … 455（ZhGlyphCount-1）
```

- 当前 `idx < 456`，因此 lead 只会是 **0xC0**（idx 0–255）或 **0xC1**（idx 256–455）。
- 编码空间理论上支持 lead 0xC0–0xFD 共 62 个 × 256 = 15872 字；但受打字机播放器的 `CP 0xE0` 限制，打字机流最多用到 0xDF（8192 字）。
- 选择 0xC0 作为引导码的原因：原版文本流中最大的码是 0xBD（光标图块），0xC0 以上从未出现在正文中（已用 `texts.tsv` 的 raw 列全量验证）。

绘制侧（`DrawChineseChar`）：

```
idx     = (lead - 0xC0) × 256 + low
block   = idx >> 4
col     = idx & 15
SX      = col × 16 + 2
SY      = 0x200 + block × 12
NX, NY  = 12, 12
```

`+2` 是跳过格内左侧 2px 空边；`0x200` 是 page 2 的 SY 页号（0x200 × 128 = 0x10000）。

### 4.4 控制码

| 码 | `PrintText` 流 | 打字机流（0x42F1） |
|---|---|---|
| 0xFF | 结束 | 结束（置 done） |
| 0xFE | **重定位**：后跟 2 字节 X、Y | **换行**：X 回到行首、Y += 8 |
| 0xC0–0xDF | 双字节中文 | 双字节中文 |
| 0xE0 | 中文引导码（idx 高位 = 0x20，超出当前字库） | **结束**（置 done，同 0xFF） |
| 0xE1–0xFD | 中文引导码（同上） | **横向跳格**：X += (code-0xE0) × 8 |

> 两种流的解析器不同，不可混用：
> - `PrintText` 只认 0xFE/0xFF，0xC0 以上一律按"中文引导码 + 第二字节"消费；
> - 打字机播放器把 0xE0 当结束、0xE1–0xFD 当跳格，只有 0xC0–0xDF 走中文。
>
> 因此普通流里不能出现 0xE0–0xFD 的单字节码（会被吃掉下一个字节），打字机流也不能使用普通流的 `0xFE X Y` 格式。

### 4.5 宽度规则

| 情形 | 前进量 | 代码位置 |
|---|---|---|
| 普通单字节 | 8px | `PrintText` 0x4914：`LD B,8` |
| 0x62 / 0x63 | 4px | `SUB 0x62; CP 2; JR NC` → `LD B,4` |
| 双字节中文 | 12px | `PrintTextZh` 0x4925：`ADD A,0x0C` |
| 打字机单字节 | 8px / 4px | 0x431E 同一逻辑 |
| 打字机中文 | 12px | `ZhTypewriterChar`：`LD A,0x0C; JP 0x4324` |
| 打字机跳格 | (code-0xE0)×8 | 0x4349：`ADD A,A` ×3 |

---

## 5. 文本编码与存储

### 5.1 普通文本流格式（`PrintText` / `PrintTextXY`）

```
+--------+--------+------------------------------------------+--------+
|  X     |  Y     | 码流 ...                                  |  0xFF  |
+--------+--------+------------------------------------------+--------+
   1B       1B      单字节码 / 0xC0+ 双字节码 / 0xFE X Y        1B
```

- 流首 2 字节是起始 X、Y（`PrintTextXY` 读取，`D = X, E = Y`）。
- `0xFE` 后跟 2 字节 X、Y，用于换行/另起一段/绝对定位。
- `0xFF` 结束。

例：标题屏主流 0x639B（bank 1）

```
50 10 69 2A 2B 2C 2D 2E 2F 00 21 29 28 27
FE 48 98 43 63 5E 40 42 63 00 30 3E 4A 63 4E 5E 35 67
FE 58 A8 4A 43 57 42 63 00 35 63 5D 49 63 58
FE ...
```

第一条：X=0x50、Y=0x10，依次是 ©、KONAMI、空格、"1987"（0x21 0x29 0x28 0x27）。

### 5.2 打字机流格式（0x42E1 / 0x42F1）

```
码流 ... 0xFF          ; 没有起始 X/Y，坐标由 0x42E1 的 DE 给出
```

- 进入时 `DE` = 起始 (X,Y)，`HL` = 流地址。
- `0xFE` 换行（X 回行首，Y += 8，**无坐标字节**）。
- 因为中文 12px 高，汉化流用**两个连续 0xFE** 实现 16px 行距（`tools/build_texts.py` 的 `encode()` 写入 `FE FE`）。
- `0xE0` 或 `0xFF` 结束。
- `0xE1`–`0xFD` = 横向跳 `(code-0xE0)×8` 像素。

例：bank 2 过场流 0x9E19

```
34 46 3B 48 00 31 5B 5D 43 00 3C 58 39 43 49 FE
55 66 37 00 5B 35 5E 3F 64 00 39 39 5A 00 30 56 3F 51 FE ...
```

### 5.3 文本流存储位置

| bank | 窗口 | 用途 | 流地址 / 表 |
|---|---|---|---|
| 1 | 0x6000 | 固定文本：标题、HUD、菜单、密码、关卡内 | 0x628A、0x636C、0x639B、0x63BC/0x63CB（闪烁）、0x63D8（光标）、0x63DB/0x63E3（Game Over）、0x63F0（HUD 标签）、0x6412/0x641E（1P/2P 名）、0x6CCC、0x7F41 |
| C | 0xA000 | 对话 | 指针表 0xA9C0（120 项），流 0xAAB0–0xB6D3 |
| 2 | 0x8000 | 过场打字机 | 表 0x9E0B（7 项）+ 固定 0x9F92（第 8 条），流 0x9E19–0x9F92 |
| F | 0xA000 | 商店打字机 | 表 0xBC16（16 项）、0xBC36（16 项），流 0xBC5C–0xBEA4 |
| 0x18 | 0x6000 | 汉化新增 Game Over | 0x6040「游戏结束」、0x604B「继续」 |

固定流清单（`tools/export_texts.py` 的 `FIXED`）：

| 地址 | 类型 | 用途 |
|---|---|---|
| 0x628A | text | 关卡选择/密码屏（`PrintText@6284`） |
| 0x636C | text | 休息字幕（`PrintTextXY@6369`） |
| 0x639B | text | 标题屏主文本（©KONAMI 1987 + 菜单 3 行） |
| 0x63BC | blink | 菜单选中行·显示流 |
| 0x63CB | blink | 菜单选中行·擦除流 |
| 0x63D8 | cursor | 光标流（码 0xBC 0xBD） |
| 0x63DB | text | Game Over 文本 1（おしまい 粗体） |
| 0x63E3 | text | Game Over 文本 2（F5 で つづき） |
| 0x63F0 | text | HUD 标签（時間/小判/両/体力…） |
| 0x6412 / 0x641E | text | 1P / 2P 名字 |
| 0x64C9 | logo | Konami logo 基底图块 |
| 0x6CCC | text | 关卡内文本（密码屏） |
| 0x7F41 | text | Game Master 选择菜单（`選択`/`よなおし` 等） |

### 5.4 指针表

**对话表**（bank C 0xA9C0，120 项 × 2 字节）：

```
PrintDialogText(A)：
    A = 0xFF → 直接返回（无文本）
    SetBanksA_B_C
    HL = word[0xA9C0 + A*2]        ; GetPointerDE2A
    PrintTextXY(HL)
    SetBanks1_2_3
```

流首字节 X/Y 由流自己携带。表尾 0xB6D2 是伪项（指向末流的 `0xFF`）。114 个唯一指针，部分 `idx` 复用同一流。

**打字机表**：

- bank F 0xBC16 / 0xBC36，各 16 项，指向 0xBC5C 起的 32 条商店文本。
- bank 2 0x9E0B，7 项，另有第 8 条固定地址 0x9F92（过场文本）。

### 5.5 影子 bank 与 bank 切换

汉化不改写原日文 bank，而是把 bank 1/2/C/F 的**整 bank 副本**放进扩容区，只替换文本区：

| 影子 bank | 原 bank | 映射位置 | 内容 |
|---|---|---|---|
| 0x14 | 1 | 0x6000 | bank 1 副本 + 中文固定流（原位等长替换） |
| 0x15 | C | 0xA000 | bank C 副本 + 中文对话区（重定位到 0xAAB0）+ 重建指针表 |
| 0x16 | 2 | 0x8000 | bank 2 副本 + 中文过场流（原位、按 alloc 填充） |
| 0x17 | F | 0xA000 | bank F 副本 + 中文商店流（原位、按 alloc 填充） |

`SetBanksN`（0x421A）在映射 1/2/3 时把 0x6000 换成 0x14、0x8000 换成 0x16：

```
SetBanks1_2_3 → 0x6000=0x14, 0x8000=0x16, 0xA000=0x03
SetBanksA_B_C → 0x6000=0x0A, 0x8000=0x0B, 0xA000=0x15
```

bank 0x17 由调用点显式映射（例如 0x961B、0x9753：`LD A,0x17; LD (0xA000),A; LD (BanksInA0),A`）。
bank 0x18 由 Game Over 分支映射（`gs_playing` 0x5FCF：`LD A,0x18; LD (0x6000),A`）。

`BanksIn60/80/A0`（0xF0F1–0xF0F3）是当前 bank 的影子寄存器，切换和恢复都同步更新。

### 5.6 构建管线

```
texts.tsv  (tools/export_texts.py 从原 ROM 提取；日文原文 + 原始字节)
   │
   ├─ tools/make_textscn.py  →  textscn.tsv（机翻初稿，人工校正）
   │                             列：id kind bank addr seg x y alloc lines jp zh note
   ▼
tools/bdf2asm.py   ← textscn.tsv 的 zh 列中所有唯一汉字
   │                  → gfx/zh_glyphs_bank11.asm / bank12.asm
   │                  → tools/zh_glyph_index.tsv
   ▼
tools/build_texts.py --from work/base.rom
   │  1. 解析原流（parse_stream）
   │  2. 按 zh 列重新编码（encode_zh / encode）
   │  3. 生成 work/bank14.bin … work/bank18.bin
   ▼
sjasmplus -DZH_SHADOW  →  out/ganbare.rom（256 KiB）
```

**编码规则**（`build_texts.py`）：

| TSV 写法 | 编码 |
|---|---|
| 普通汉字 | 查 `zh_glyph_index.tsv` → `0xC0+idx>>8, idx&0xFF` |
| `{s是}` | 菜单 8px 字（索引 452–455）→ 同样 2 字节 |
| `{XX}` | 直接写入单字节 0xXX（图形/原码） |
| 空格 | 0x00 |
| 数字 | 0x20 + digit |
| K/O/N/A/M/I | 0x2A–0x2F |
| `\|` | 行分隔符：打字机流展开为 `FE FE`；对话流按行重排为新的段（`0xFE` + X/Y） |
| 结束 | 0xFF |

**长度约束**：

- bank 1 固定流：**等长原位替换**，不足补 0x00（空格），超出报错。
- bank C 对话：重定位到 0xAAB0–0xB6D3，每行 ≤ 160px（`DLG_MAXW`），超宽报错。
- 打字机流：每条的 `alloc` 固定，超出报错。
- 中文对话排版：3 行日文压成 2 行（seg0+seg1 / seg2+seg3），行距 11px；单行时用原坐标。

---

## 6. 文字绘制函数

### 6.1 函数一览

| 函数 | 地址 | 所在 bank | 作用 |
|---|---|---|---|
| `PrintTextXY` | 0x48F3 | 0 | 显示：读流首 X/Y，C=0xFF |
| `EraseTextXY` | 0x48F7 | 0 | 擦除：C=0x00 |
| `PrintTextGetXY` | 0x48F9 | 0 | 读 X/Y 后进入 PrintText |
| `PrintText` | 0x48FD | 0 | 普通流解析 + 绘制 |
| `PrintTextZh` | 0x4920 | 0 | 中文分支：ZhDrawStub + 12px 前进 |
| `ZhTypewriterChar` | 0x492B | 0 | 打字机中文分支 |
| `ZhDrawStub` | 0x4251 | 0 | 切 bank 0x10 并调用 ZhDispatch，返回后恢复 |
| `DrawChar` | 0x426D | 0 | 8×8 绘制（码 → 源地址 → HMMM） |
| `GetTileXY` | 0x4976 | 0 | 码 → 像素坐标 (H,L) |
| `VDP_Copy_Byte` | 0x476E | 0 | HMMM 块传送（参数 A/BC/DE/HL） |
| `PrintDialogText` | 0x4286 | 0 | A=对话索引 → 查表 + PrintTextXY |
| `DrawCursor` | 0x4476 | 0 | 光标流 0x63D8 → PrintText |
| `DrawBcdNumber` | 0x4420 | 0 | BCD 数字 → DrawChar |
| `DrawBcdDigit` | 0x4438 | 0 | 单个 BCD 位（前导 0 消隐） |
| `DrawGameHud` | 0x43E2 | 0 | HUD 文本 + 数字 |
| `ZhDispatch` | 0x80BD | 0x10 | PrintText / 打字机两条中文路径的选择 |
| `DrawChineseChar` | 0x8075 | 0x10 | 12×12 中文（支持擦除） |
| `DrawChineseCharC` | 0x80B8 | 0x10 | 12×12 中文（打字机，总是绘制） |
| `LoadChineseFont` | 0x8000 | 0x10 | 中文字模展开/上传 |
| `ZhExpandGlyph` | 0x80D0 | 0x10 | 单字 24B → 12 行 VRAM |
| `ZhExpByte` | 0x8151 | 0x10 | 2 像素 → 1 字节（0x0E 色） |
| `ZhWriteRowP2` | 0x8165 | 0x10 | 写 8 字节到 page 2 |
| `ZhSetVramWRP2` | 0x8175 | 0x10 | 设置 page 2 写地址（A16=1） |
| 打字机初始化 | 0x42E1 | 0 | DE=起点，HL=流，清 done |
| 打字机推进 | 0x42F1 | 0 | 每调用一次画一个字 |

### 6.2 PrintTextXY / EraseTextXY / PrintText

```asm
; === PrintTextXY (0x48F3) ===
PrintTextXY:
        LD      c,0xff          ;C = 掩码：0xFF 显示
        JR      PrintTextGetXY
EraseTextXY:
        LD      c,0x0           ;C = 掩码：0x00 擦除
PrintTextGetXY:
        LD      d,(hl)          ;D = X
        INC     hl
        LD      e,(hl)          ;E = Y
        INC     hl
; === PrintText (0x48FD) ===
PrintText:
        LD      a,(hl)          ;取码
        INC     hl
        LD      b,a
        INC     b
        RET     z               ;0xFF → 结束
        INC     b
        JR      z,PrintTextXY   ;0xFE → 重新读 X/Y（注意：C 被重置为 0xFF）
        CP      0xc0
        JR      nc,PrintTextZh  ;0xC0-0xFD → 中文
        PUSH    af
        AND     c               ;显示=码值；擦除=0（空白格）
        CALL    DrawChar
        POP     af
        PUSH    bc
        SUB     0x62
        CP      0x2
        LD      b,0x8
        JR      nc,PrintText3
        LD      b,0x4           ;0x62/0x63 → 4px
PrintText3:
        LD      a,d
        ADD     a,b             ;X += 宽度
        LD      d,a
        POP     bc
        JR      PrintText
; --- 中文分支 ---
PrintTextZh:                    ;0x4920
        PUSH    bc
        CALL    ZhDrawStub      ;A=引导码, C=掩码, HL→第二字节
        POP     bc
        LD      a,d
        ADD     a,0xc           ;X += 12
        LD      d,a
        JR      PrintText
```

要点：

1. 位置由 **DE** 携带（D=X, E=Y），流里的 `0xFE X Y` 只是覆盖 DE。
2. `PrintText` 可以脱离 `PrintTextXY` 直接调用（DE 预置、HL 指向纯码流），如光标流 0x63D8。
3. **擦除** = 把码与 0x00 相与得到 0，`DrawChar` 走空白格；`0x62/0x63` 的 4px 逻辑仍然生效，因此擦除宽度与原绘制一致。
4. 已知限制：`0xFE` 分支跳回 `PrintTextXY`，会把 `C` 重置为 0xFF。所以**含 0xFE 的流不能用于 `EraseTextXY`**（会在中途开始"画"）。游戏中所有擦除流（0x63CB、0x63D8 等）都是单段流。

### 6.3 中文绘制调用链

```asm
; === ZhDrawStub (0x4251, bank 0) ===
ZhDrawStub:
        LD      b,a             ;保存引导码（切 bank 会破坏 A）
        DI
        LD      a,(BanksIn80)
        PUSH    af
        LD      a,0x10
        LD      (0x8000),a      ;slot 0x8000 ← bank 0x10
        LD      (BanksIn80),a
        LD      a,b
        CALL    ZhDispatch      ;0x80BD
        DI
        POP     af
        LD      (0x8000),a      ;恢复原 bank
        LD      (BanksIn80),a
        EI
        RET
```

```asm
; === ZhDispatch (0x80BD, bank 0x10) ===
ZhDispatch:
        PUSH    af
        LD      a,(ZhTypewriterFlag)
        AND     a
        JR      z,ZhDispatchHl
        XOR     a
        LD      (ZhTypewriterFlag),a
        POP     af
        JP      DrawChineseCharC    ;打字机：C 已是低位
ZhDispatchHl:
        POP     af
        JP      DrawChineseChar     ;普通：HL 指向第二字节
```

> 返回值：`DrawChineseChar` 内部 `INC HL` 跳过第二字节，返回后 HL 指向下一个码；这是 `PrintText` 继续循环所依赖的约定。

**DrawChineseChar**（0x8075）：

```asm
        LD      b,a             ;B = 引导码
        LD      a,c
        AND     a               ;掩码 = 0 ?
        LD      a,b
        JR      nz,zh_dc_show
        LD      bc,ZhGlyphCount ;擦除 → 空白格 456
        JR      zh_dc_go
zh_dc_show:
        SUB     0xc0            ;B = idx 高位
        LD      b,a
        LD      a,(hl)
        LD      c,a             ;C = idx 低位
zh_dc_go:
        INC     hl              ;跳过第二字节
zh_dc_go2:
        PUSH    hl
        LD      l,c
        LD      h,b             ;HL = idx
        SRL H / RR L  ×4        ;HL = block = idx / 16
        LD      a,l
        ADD     a,a
        ADD     a,a
        LD      b,a
        ADD     a,a
        ADD     a,b             ;A = block × 12
        LD      l,a             ;SY 低字节
        LD      a,2
        ADC     a,0             ;A = 2 + 进位 → 源页 2/3
        LD      b,a
        LD      a,c
        AND     0x0f
        ADD     a,a ×4          ;col × 16
        ADD     a,2             ;SX = col×16 + 2
        LD      h,a
        LD      a,b
        LD      bc,0x0c0c       ;NX = NY = 12
        CALL    VDP_Copy_Byte
        POP     hl
        RET
```

**DrawChineseCharC**（0x80B8）：`SUB 0xC0; LD B,A; JR zh_dc_go2` —— 跳过 `(HL)` 读取，因为打字机路径已经预先取走第二字节。

### 6.4 DrawChar / GetTileXY

```asm
; === DrawChar (0x426D, bank 0) ===
DrawChar:
        PUSH    bc
        PUSH    hl
        PUSH    de
        OR      a
        LD      h,a
        JR      z,DrawChar2     ;A = 0 → H=L=0（空白）
        CALL    GetTileXY       ;H = (code&0x1F)*8, L = (code&0xE0)>>2
        ADD     a,0x38          ;y 基址 0x38
DrawChar2:
        LD      l,a
        LD      bc,0x808        ;NX = NY = 8
        LD      a,0x1           ;模式字节：源页 1（SY+0x100），目标页 0
        CALL    VDP_Copy_Byte
        POP     de
        POP     hl
        POP     bc
        RET

; === GetTileXY (0x4976) ===
GetTileXY:
        LD      b,a
        AND     0x1f
        ADD     a,a ×3          ;×8 → H = X
        LD      h,a
        LD      a,b
        AND     0xe0
        RRCA
        RRCA                    ;>>2 → L = Y
        LD      l,a
        RET
```

注意 `DrawChar` 的 `ADD A,0x38` 只作用于 `GetTileXY` 返回的**Y**（A 此时等于 L），由此得到 `Y = 0x38 + (code>>5)*8`。

### 6.5 VDP_Copy_Byte（HMMM）

```asm
; === VDP_Copy_Byte (0x476E) ===
; in: HL = 源像素坐标（H=X, L=Y）
;     DE = 目标像素坐标（D=X, E=Y）
;     BC = NX, NY
;     A  = 模式字节：bit1-0 = 源 SY 高位（页），bit3-2 = 目标 DY 高位
VDP_Copy_Byte:
        EX      af,af'
        CALL    WaitVdpCmd          ;轮询 s#2 的 CE 位（0x4674）
        PUSH    bc
        LD      a,(0x0007)          ;BIOS 头部 0x0007 的约定值 = 0x98（VDP 数据口）
        INC     a                   ;→ 0x99（控制口）
        LD      c,a
        LD      a,0x20
        DI
        OUT     (c),a
        LD      a,0x91
        OUT     (c),a               ;R#17 = 0x20：间接寄存器指针 = R#32，自动递增
        INC     c
        INC     c                   ;0x9B = 命令寄存器口
        OUT     (c),h               ;R#32 SX 低
        XOR     a
        OUT     (c),a               ;R#33 SX 高
        OUT     (c),l               ;R#34 SY 低
        EX      af,af'
        LD      l,a
        AND     0x3
        OUT     (c),a               ;R#35 SY 高（源页）
        OUT     (c),d               ;R#36 DX 低
        XOR     a
        OUT     (c),a               ;R#37 DX 高
        OUT     (c),e               ;R#38 DY 低
        LD      a,l
        RRA
        RRA
        AND     0x3
        OUT     (c),a               ;R#39 DY 高（目标页）
        POP     hl                  ;HL = BC = NX/NY
        OUT     (c),h               ;R#40 NX 低
        XOR     a
        OUT     (c),a               ;R#41 NX 高
        OUT     (c),l               ;R#42 NY 低
        OUT     (c),a               ;R#43 NY 高
        OUT     (c),a               ;R#44 CLR
        OUT     (c),a               ;R#45 ARG
        LD      a,0xd0
        OUT     (c),a               ;R#46 CMD = HMMM
        EI
        RET
```

`R#17 = 0x20` 的含义：间接寄存器号 = 32（R#32），AII=0（自动递增）。随后 15 次写 0x9B 依次落到 R#32–R#46。命令字 `0xD0` = **HMMM**（VRAM→VRAM 高速拷贝，忽略 CLR/ARG）。

**参数换算**：

| 调用者 | A（模式） | SY 页 | 源地址 | 目标 |
|---|---|---|---|---|
| `DrawChar` | 0x01 | 0x100 | 0x8000 + (0x38+(c>>5)×8)×128 + (c&31)×4 | 页 0 |
| `DrawChineseChar` | 0x02/0x03 | 0x200/0x300 | 0x10000 + block×0x600 + col×8 + 1 | 页 0 |

因为 SY 是 10 bit 像素行号，`SY × 128` 天然覆盖 0x00000–0x1FFFF，`0x100` 和 `0x200` 分别是"0x8000 偏移"和"page 2"。

### 6.6 打字机播放器

```asm
; === 初始化 (0x42E1) ===
        LD      (0xCD61),de     ;当前 (X,Y)：E→0xCD61(Y), D→0xCD62(X)
        LD      (0xCD63),de     ;行首 (X,Y)
        LD      (0xCD65),hl     ;流指针
        XOR     a
        LD      (0xCD67),a      ;done = 0
        RET

; === 每帧推进 (0x42F1) ===
        LD      a,(0xCD67)
        OR      a
        RET     nz              ;已结束
        LD      hl,(0xCD65)
        LD      a,(hl)
        INC     hl
        LD      (0xCD65),hl
        LD      de,(0xCD61)
        CP      0xff
        JR      z,0x4330        ;结束
        CP      0xfe
        JR      z,0x4336        ;换行：Y += 8，X 回行首
        CP      0xe0
        JR      nc,0x4345       ;0xE0 = 结束；0xE1+ = 跳格
        CP      0xc0
        JR      c,0x4315        ;< 0xC0 → 8×8
        CALL    0x492B          ;中文：ZhTypewriterChar（不返回本处）
0x4315: PUSH    af
        CALL    DrawChar
        POP     af
        ...                     ;4/8px 前进，写回 0xCD61
```

中文分支 `ZhTypewriterChar`（0x492B）：

```asm
ZhTypewriterChar:
        LD      (ZhTypewriterFlag),a   ;标记：走 DrawChineseCharC
        LD      c,(hl)                 ;先读第二字节（bank 可能被切走）
        INC     hl
        LD      (0xCD65),hl
        CALL    ZhDrawStub
        POP     hl                     ;丢弃返回播放器的地址
        LD      a,0x0c
        JP      0x4324                 ;X += 12 并 RET 到播放器调用者
```

两个关键点：

1. **第二字节必须在切 bank 之前读**：`ZhDrawStub` 会把 0x8000 切成 bank 0x10，而 bank 2 的流正好在 0x8000。
2. `ZhTypewriterChar` 用 `POP HL` 丢弃返回地址，再用 `JP 0x4324` 复用播放器的"前进 + RET"，所以它**不会**回到 0x4315 的普通字符路径。

调用示例（bank F 商店）：

```asm
        LD      a,0x17
        LD      (0xA000),a          ;映射 bank 0x17（F 的影子）
        LD      (BanksInA0),a
        LD      de,0xBC16
        CALL    GetPointerDE2A      ;HL = 流
        EX      de,hl
        LD      de,0x20b0           ;起点 (X=0x20, Y=0xB0)
        CALL    0x42E1              ;初始化
        CALL    SetBanks1_2_3
        ...
每帧：  CALL    0x42F1              ;画一个字
```

每帧/每 N 帧调用一次（视脚本而定，例如 `TickCounter & 0x0F` 或 7 帧计数），即可产生逐字显示效果。

### 6.7 PrintDialogText（对话入口）

```asm
; === PrintDialogText (0x4286, bank 0) ===
PrintDialogText:
        CP      0xff
        RET     z                   ;0xFF = 无对话
        PUSH    af
        CALL    SetBanksA_B_C       ;0x4212
        POP     af
        LD      de,0xa9c0           ;对话指针表
        CALL    GetPointerDE2A      ;0x447C → DE = word[0xA9C0 + A*2]
        EX      de,hl               ;HL = 流地址
        CALL    PrintTextXY         ;0x48F3
        JP      SetBanks1_2_3       ;恢复影子 bank
```

调用者（bank 2/3/B 等）只负责给出索引 A；函数内部完成 bank 切换、查表、绘制、恢复。

### 6.8 其他文本相关入口

| 入口 | 流程 |
|---|---|
| 标题菜单闪烁 | `BlinkSelectedMenuItem`（0x5E4F）：按 `WaitCounter` bit2 交替 `PrintTextXY`/`EraseTextXY`，流 0x63BC/0x63CB |
| 标题光标 | `PreDrawTitleCursor`（0x4458）→ `DrawTitleModeCursor`（0x4462）→ `DrawCursor`（0x4476）：`HL=0x63D8`（码 0xBC 0xBD），DE=光标位置，`JP PrintText` |
| HUD 数字 | `DrawBcdNumber`（0x4420）/`DrawBcdDigit`（0x4438）：BCD 半字节 + 0x20 → 码 → `DrawChar`，X += 8；前导 0 用掩码消隐 |
| HUD 文本 | `DrawGameHud`（0x43E2）：`PrintTextXY` 名字流（0x6412/0x641E）+ 标签流（0x63F0），再画金钱/生命/体力 |
| Game Over | `gs_playing` 0x5FCC：切换 bank 0x18 → `ZGameOverPrint`（0x6000）→ `PrintTextXY`；原版用 bank1 的 0x63DB/0x63E3 |
| 商店对话 | `DrawShopDialog`（bank 2 0x828F）→ `PrintDialogText(A)` |

---

## 7. 绘制流程

### 7.1 启动时：字模就绪

```
InitHardware CHGMOD 5
   │
   ├─ SetupTitleVram / BuildGameField / 标题状态
   │     └─ LoadTitleScreenAssets (0x4A6D)
   │           ├─ Load1bppTiles 145 字 → VRAM 0x9C00 区（码 0x20–0xB0）
   │           ├─ Load1bppTiles  10 字 → 码 0xB1–0xBA
   │           ├─ LoadTilesGfx  3 个图块
   │           └─ ZhFontTramp → LoadChineseFont（magic 保护，只装一次）
   ▼
   文本系统就绪
```

### 7.2 单字节文本

```
PrintTextXY(HL=流)
   │  D=(HL++), E=(HL++)
   ▼
PrintText
   │  A=(HL++)
   ├─ 0xFF → RET
   ├─ 0xFE → PrintTextXY（重读 X/Y）
   ├─ ≥0xC0 → PrintTextZh
   └─ 其它 ─→ PUSH AF
              AND C（0xFF/0x00）
              DrawChar
                 ├─ A=0 → 源 0x8000
                 └─ A>0 → GetTileXY → 源 0x9C00+...
              VDP_Copy_Byte（HMMM 8×8）
              POP AF
              D += 4/8
              JR PrintText
```

### 7.3 中文文本

```
PrintText: A ≥ 0xC0
   │
   ▼
PrintTextZh (0x4920)
   │  PUSH BC
   ▼
ZhDrawStub (0x4251)
   │  DI; 0x8000 ← bank 0x10; CALL 0x80BD
   ▼
ZhDispatch (0x80BD)
   │  flag==0 → DrawChineseChar
   ▼
DrawChineseChar (0x8075)
   │  C==0 ? idx=456 : idx=(A-0xC0)*256+(HL)
   │  INC HL（跳过第二字节）
   │  block=idx>>4, col=idx&15
   │  SX=col*16+2, SY=0x200+block*12
   ▼
VDP_Copy_Byte（HMMM 12×12）
   │
   ▼
ZhDrawStub 恢复 0x8000 与 BanksIn80；EI
   │
   ▼
PrintTextZh: D += 12; JR PrintText
```

### 7.4 擦除

```
EraseTextXY
   │  C = 0x00
   ▼
PrintText
   │  单字节：A & 0x00 = 0 → DrawChar 从 0x8000 复制空白
   │  中文：  C = 0 → DrawChineseChar 用 idx=456 的空白格
   ▼
   与绘制相同的宽度前进（4/8/12px）
```

### 7.5 打字机（逐字显示）

```
初始化 0x42E1：0xCD61/0xCD63 ← DE，0xCD65 ← HL，0xCD67 ← 0
每帧 0x42F1：
   ├─ done ? → RET
   ├─ 取码，HL++
   ├─ 0xFF/0xE0 → done=1
   ├─ 0xFE      → Y += 8，X 回行首（中文流用两个 0xFE → 16px）
   ├─ 0xE1-0xFD → X += (code-0xE0)*8
   ├─ 0xC0-0xDF → ZhTypewriterChar → 12px（不返回）
   └─ 其它      → DrawChar → 4/8px
```

### 7.6 HUD 数字

```
DrawBcdNumber(HL=BCD 串, DE=起点, B=字节数)
   │  C = 0x00（掩码：空白）
   └─ 每字节（从高到低；B==1 的那一字节先把 C 置 0xFF）：
       高半字节 → DrawBcdDigit
       低半字节 → DrawBcdDigit
       HL--
DrawBcdDigit:
   A = digit（0..9）
   若 A != 0 → C = 0xFF            ;出现过非零位后，后面的 0 才显示
   A += 0x20                       ;码 → '0'..'9'
   A &= C                          ;前导 0 → 0（空白格）
   DrawChar；D += 8
```

即：最高字节强制显示，其余字节里只有"第一个非零位之后"的 0 显示为 `0`，之前的 0 一律画成空白。

---

## 8. 关键细节与约束

1. **码即格号**：没有字符映射表，`code` 直接当 VRAM 字模索引；这也是 0x6A 以上可以兼作图块的原因。
2. **0xC0 阈值**：`PrintText` 用 `CP 0xC0` 区分单/双字节；原版正文最大码 0xBD，因此 0xC0+ 可安全征用。光标图块 0xBC/0xBD 恰好在阈值之下。
3. **擦除的 0xFE 陷阱**：`0xFE` 分支跳到 `PrintTextXY` 会把 C 重置为 0xFF，因此擦除流必须是单段（无 0xFE）。
4. **bank 与流**：`ZhDrawStub` 只切 0x8000，所以：
   - bank 1/0x18 的流（0x6000）安全；
   - bank C/F 的流（0xA000）安全；
   - bank 2 的流（0x8000）必须在切 bank 前读走第二字节（`ZhTypewriterChar`），并且 0x8000 上放的是影子 bank 0x16。
5. **`R#17` 与命令口**：所有 HMMM 传送前都先 `WaitVdpCmd` 等 CE=0，再 `DI` 写 15 字节命令；命令执行期间不能再发命令。
6. **中断安全**：`ZhWriteRowP2` 在"设地址 + OTIR"期间 `DI`，因为 VDP 的地址锁存在中断里的 VRAM 访问后会被改掉。
7. **12px vs 8px**：中文 12px 高，普通流行距由流内 `0xFE X Y` 决定（汉化对话用 11px，`y` 与 `y+11`）；打字机流固定 8px/行，汉化用 `FE FE` 得到 16px 行距。
8. **8px 小字**：HUD/菜单用索引 434–455 的 7×7 字形，放在 12×12 cell 顶部；仍按 12px 前进，因此它们与 12px 正文可以混排，但水平间距是 12px。
9. **字模只装一次**：`ZhFontLoaded`（0xC238）= 0x5A 后 `LoadChineseFont` 直接返回；若运行中 VRAM page 2 被清，需要先清该标志。
10. **对话指针表重建**：汉化版 `PrintDialogText` 读到的 0xA9C0 表在影子 bank 0x15 中，指针指向 0xAAB0–0xB6D3 的新流；原 bank C 完全未动。
11. **长度限制**：bank 1 固定流必须等长（补 0x00），bank C 对话区上限 0xB6D3-0xAAB0，打字机流受 `alloc` 限制；超限由 `build_texts.py` 报错。
12. **颜色固定**：中文与文本都是 0x0E；没有逐字着色机制（调色板可整体改）。

---

## 9. 源码与工具索引

| 文件 | 内容 |
|---|---|
| `logic/print_text_xy.asm` | `PrintTextXY` / `EraseTextXY` / `PrintText` / `PrintTextZh` / `ZhTypewriterChar` |
| `logic/set_banks1_2_3.asm` | `SetBanksN` / `ZhDrawStub` / `DrawChar` / `PrintDialogText` |
| `logic/zh_font_loader.asm` | `LoadChineseFont` / `DrawChineseChar(C)` / `ZhDispatch` / `ZhExpandGlyph` / `ZhWriteRowP2` |
| `logic/rle_decompress.asm` | 打字机初始化 0x42E1 与推进 0x42F1 |
| `gfx/vdp_copy_byte.asm` | `VDP_Copy_Byte` / `Load1bppTiles` / `Decode1bppTile` / `LoadTileGfx` |
| `gfx/draw_tile.asm` | `GetTileXY` / `DrawTile` |
| `gfx/zh_font_tramp.asm` | bank F 尾部的 `ZhFontTramp` |
| `gfx/zh_glyphs_bank11.asm`、`bank12.asm` | 中文字模 1bpp 数据（456 字） |
| `gfx/load_title_screen_assets.asm` | 8×8 字模加载入口 |
| `logic/store_controls.asm` | `SetUpKonamiLogo`（logo 图块加载） |
| `logic/draw_bcd_num01.asm` | `DrawBcdNumber` / `DrawBcdDigit` / `DrawCursor` |
| `logic/draw_game_hud.asm` | HUD 文本入口 |
| `logic/game_status_logic.asm` | 标题菜单闪烁 |
| `logic/gs_playing.asm`、`logic/zh_gameover.asm` | Game Over 文本 |
| `data/txt_*.asm` | 对话/菜单文本流原始数据 |
| `tools/export_texts.py` | 从原 ROM 提取 → `texts.tsv` |
| `tools/make_textscn.py` | 生成 `textscn.tsv` 初稿 |
| `tools/bdf2asm.py` | BDF → 中文字模 asm + 索引表 |
| `tools/build_texts.py` | 编码/重排 → 影子 bank 0x14–0x18 |

---

## 附录 A：ASCII 图例——一次中文绘制

```
            VRAM                                    屏幕
 0x10000 ┌──────────────┐                  ┌────────────────────┐
         │ idx 0  密    │   HMMM 12×12     │  D=X, E=Y          │
         │ idx 1  码    │ ───────────────► │  SX=col*16+2       │
         │ ...          │                  │  SY=0x200+block*12 │
 0x1A840 │ idx 456 空白 │                  └────────────────────┘
         └──────────────┘
```

一次中文绘制的完整调用栈：

```
PrintText(HL→流, C=mask, DE=位置)
  └─ PrintTextZh
       └─ ZhDrawStub            ; 0x8000 ← bank 0x10
            └─ ZhDispatch       ; flag? DrawChineseChar : DrawChineseCharC
                 └─ DrawChineseChar
                      └─ VDP_Copy_Byte   ; HMMM, NX=NY=12
                           └─ WaitVdpCmd → R#17=0x20 → 15 字节命令 → 0xD0
       └─ D += 12
```

## 附录 B：一次 8×8 绘制

```
DrawChar(A=code, C=mask, DE=位置)
  ├─ A == 0 → 源 0x8000（空白）
  └─ A != 0 → GetTileXY → 源 0x9C00 + (A>>5)*0x400 + (A&31)*4
  └─ VDP_Copy_Byte（8×8 HMMM，模式字节 0x01）
```

## 附录 C：运行时验证记录（openMSX）

机器 `C-BIOS_MSX2_JP`，运行 `out/ganbare.rom`，`screenGetMode` = 5。

| 观察点 | 数值 | 结论 |
|---|---|---|
| `0x0007`（BIOS 头部字节） | 0x98 | `VDP_Copy_Byte` 用 `(0x7); INC A` 得到 0x99 |
| VRAM 0x8000 起 | 全 0 | 空白格 |
| VRAM 0xA080 | `00 EE EE 00` | 码 0x20（`0`）row1 |
| VRAM 0xA0C0 | `00 00 E0 00` | 码 0x30（`あ`）row1 |
| VRAM 0x10080 | `00 00 00 0E 00 00 00 00` | 中文 idx 0（密）row1 |
| VRAM 0x10088 | `00 EE EE 0E EE EE 00 00` | 中文 idx 1（码）row1 |

这些数值与 §3.3、§3.7 的地址公式完全吻合，说明字模表布局、颜色（0x0E）与 page 2 基址的判断正确。
