# 《大盗五右卫门 - 机关道中》 汉化（256 KiB 扩容版）

## 游戏信息
- Ganbare Geomon (大盗五右卫门 - 机关道中)
  https://generation-msx.nl/software/konami/ganbare-goemon/923

## 游戏简介

《大盗五右卫门 - 机关道中》是 MSX2 动作游戏。本汉化版将标题、状态栏、对话等界面文本译为中文。

## 构建

使用 SjASMPlus 1.24 或更新版本：

```sh
make            # 编译汇编代码
make run        # 在 openMSX 中运行
```

## 源码结构

- `Ganbare.asm` — 入口，包含常量与各 bank 分组
- `Banks0123.asm`、`Banks456.asm`、`Banks789.asm`、`BanksABC.asm`、`BanksDEF.asm` — 原版 16 个 bank，按运行地址 `PHASE` 后顺序 include 模块
- `BanksExpansion.asm` — 扩容 bank `0x10`–`0x1F`（中文字库、影子文本、Game Over）
- `logic/` — 游戏逻辑、状态机、输入、文本绘制
- `data/` — 数据表与文本流
- `gfx/` — 显示/精灵代码、图形与字库数据
- `sound/` — PSG 驱动
- `constants/` — BIOS、系统变量与游戏变量

模块顺序由 `Banks*.asm` 决定。文件名优先采用模块内第一个有意义的标号（如 `logic/print_text_xy.asm`、`logic/game_status_logic.asm`）；没有可识别标号的模块使用 `code_b<bank>_<地址>.asm` 或 `data_b<bank>_<地址>.asm`。

汇编代码组织形式参考了 https://github.com/GuillianSeed/MetalGear ，在此表示感谢！

## 工具和相关资源

- z80dasm
  https://www.tablix.org/~avian/blog/articles/z80dasm/
- Ghidra
  https://github.com/NationalSecurityAgency/ghidra
- sjasmplus
  https://github.com/z00m128/sjasmplus
- Fusion Pixel Font
  https://github.com/TakWolf/fusion-pixel-font
- openMSX
  https://openmsx.org/

## 版权声明

本项目仅供学习使用，所涉版权归属游戏原公司。
